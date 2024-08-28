struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = arg_1.c.x;
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    return 28848i;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = global0[_wgslsmith_index_u32(~5138u, 3u)];
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1)), -848f, true)) - -709f), arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, 1245f, arg_1))) - vec3<f32>(-592f, 1711f, _wgslsmith_f_op_f32(trunc(578f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-508f, arg_3.c.x, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.c.x, arg_3.c.x, -297f)))))), select(vec3<bool>(true, true, -24577i >= var_0.b), vec3<bool>(arg_0, true, 0i >= arg_2.x), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, arg_0), true)))));
    return Struct_1(var_0.c, arg_3.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(650f, arg_3.a.x))), vec2<f32>(-569f, -491f), !arg_0)))), firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec3_i32(arg_3.d, _wgslsmith_sub_vec3_i32(vec3<i32>(-46657i, var_0.b, -2147483647i), vec3<i32>(arg_3.e, 9134i, arg_2.x))))), countOneBits(var_0.b));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = func_3(firstLeadingBit(arg_2.d.x) > ~((i32(-1i) * -2147483647i) >> (u_input.a.x % 32u)), -383f, abs(vec4<i32>(abs(arg_2.d.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_2.d.x, arg_2.d.x), 1i), _wgslsmith_div_i32(func_2(arg_1, Struct_1(vec2<f32>(arg_2.c.x, -242f), arg_2.d.x, vec2<f32>(946f, arg_2.c.x), arg_2.d, 30611i), 17768u), arg_2.d.x >> (0u % 32u)), -(~12561i))), arg_2);
    var_0 = func_3(arg_1 || arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + var_0.c.x)))), vec4<i32>(_wgslsmith_dot_vec2_i32(abs(-var_0.d.zz), arg_2.d.yy), arg_2.b, abs(_wgslsmith_div_i32(arg_2.e, arg_2.b)), -var_0.d.x), func_3(abs(42941u) < u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-491f))))), firstTrailingBit(reverseBits(-vec4<i32>(arg_2.d.x, 34979i, 58225i, -69998i))), func_3(select(true, false, any(vec2<bool>(arg_0, arg_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.c.x))), vec4<i32>(arg_2.d.x, var_0.d.x, 4512i, 46577i) & (vec4<i32>(-23381i, arg_2.e, 76809i, var_0.e) & vec4<i32>(arg_2.e, var_0.d.x, var_0.d.x, 53798i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, arg_2.c.x)), ~36160i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-727f, 579f))), vec3<i32>(arg_2.e, 1i, var_0.e) | vec3<i32>(-613i, var_0.b, 1i), ~(-42569i)))));
    let var_1 = u_input.a.x;
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    var_0 = func_3(arg_1, var_2.c.x, -(~_wgslsmith_mult_vec4_i32(vec4<i32>(41259i, 23715i, 1i, 17593i) << (vec4<u32>(1u, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(0i, 5825i, arg_2.e, var_0.d.x))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(var_1, var_1)), 3u)]);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var_0 = vec3<bool>(var_0.x, true | all(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), !var_0.x)), func_1(!(u_input.a.x < 35095u), all(vec4<bool>(true, false, true, any(var_0.yx))), global0[_wgslsmith_index_u32(49201u, 3u)]));
    let var_1 = global0[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, u_input.a), u_input.a) >> ((~(~u_input.a.x) & _wgslsmith_add_u32(u_input.a.x, ~1u)) % 32u)), 3u)];
    var_0 = vec3<bool>(var_0.x, any(select(select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x)), vec3<bool>(true, var_0.x & false, false), vec3<bool>(true, true, true))), var_0.x);
    let var_2 = func_3(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f - var_1.a.x))))), -abs(vec4<i32>(var_1.b, -var_1.e, -64614i, -28017i)), Struct_1(_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c.x, -1859f))) - vec2<f32>(var_1.c.x, -1996f))), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.d.x, var_1.b), var_1.d.x), 35735i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)), vec3<i32>(1i, var_1.e, var_1.e) | -vec3<i32>(3394i, 6994i, var_1.d.x), -2147483647i));
    var var_3 = func_3(!func_1(!var_0.x, !any(var_0.zx), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(16189u, u_input.a.x), 3u)]), _wgslsmith_div_f32(860f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -1776f))))), _wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(-1i, var_2.d.x, var_1.b, var_1.d.x)) | (-vec4<i32>(-64008i, var_2.e, var_2.e, 29018i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, var_2.d.x, var_2.e, var_2.e), vec4<i32>(var_2.e, var_2.d.x, -4348i, 0i))), vec4<i32>(-firstTrailingBit(var_2.b), var_1.e, var_1.d.x, var_1.d.x)), func_3(all(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(max(-1116f, var_2.c.x)), ~(-vec4<i32>(-2147483647i, var_2.b, var_1.b, 28715i)) ^ vec4<i32>(_wgslsmith_mult_i32(var_2.b, 18825i), _wgslsmith_mult_i32(0i, 76055i), _wgslsmith_mult_i32(1i, var_1.d.x), -16756i), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2445f)))), u_input.a.x);
}

