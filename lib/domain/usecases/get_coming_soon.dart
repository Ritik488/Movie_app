import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/entities/no_params.dart';
import 'package:movie_app/domain/repositories/movie_repositories.dart';
import 'package:movie_app/domain/usecases/usecase.dart';

class GetComingSoon extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepository movieRepository;

  GetComingSoon(this.movieRepository);

  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await movieRepository.getComingSoon();
  }
}
