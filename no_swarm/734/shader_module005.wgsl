struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2003f, -912f), vec2<f32>(1730f, -2428f), false)), vec2<f32>(-1910f, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, global0.x))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(289f, global0.x), _wgslsmith_f_op_f32(trunc(1425f)))) - _wgslsmith_f_op_f32(246f - _wgslsmith_div_f32(-108f, global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f * global0.x))))));
    var var_0 = ~vec4<u32>(3613u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)) & (vec4<u32>(46146u, u_input.b.x, 104025u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(31017u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 73674u, 9109u))), u_input.b.x << ((4294967295u << (_wgslsmith_div_u32(39220u, u_input.b.x) % 32u)) % 32u), u_input.b.x);
    let var_1 = _wgslsmith_mult_u32(abs(u_input.b.x), ~(~(~1u)));
    var var_2 = Struct_2(abs(var_1) < var_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(343f, global0.x, -411f, global0.x), vec4<f32>(-471f, 2079f, global0.x, -1301f), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))))))));
    return -38448i;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(func_3(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)) | 1i, _wgslsmith_add_i32(~(~max(u_input.a, 90615i)), _wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_clamp_i32(-7798i, u_input.a, u_input.c)) & ~u_input.a), ~u_input.b.x, 1u);
    let var_1 = vec2<i32>(~(~var_0.b >> (39784u % 32u)), (1i >> (u_input.b.x % 32u)) >> (countOneBits(28238u) % 32u)) >> ((~vec2<u32>(u_input.b.x, reverseBits(4294967295u)) << (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.d, u_input.b.x), var_0.d | 30019u), ~20224u) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 136f) * vec2<f32>(global0.x, -1244f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 2029f)))) + vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(333f, -1198f)) - global0.x)))));
    let var_2 = -21256i <= _wgslsmith_sub_i32(firstTrailingBit(func_3(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), _wgslsmith_add_i32(var_0.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(-25268i, var_0.a, u_input.a), vec3<i32>(1i, -1i, 36618i))));
    var var_3 = vec4<bool>(var_2, !all(vec3<bool>(!var_2, true, var_2)), any(!select(vec2<bool>(var_2, false), !vec2<bool>(var_2, false), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), false))), var_2);
    return Struct_3(abs(-1i), var_1.x, ~46520u, countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 89500u, 33248u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x)))) ^ ~(~3255u));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 1438f, _wgslsmith_f_op_f32(global0.x - 868f)) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x), global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1559f, global0.x, 366f, global0.x)))) * vec4<f32>(1f, _wgslsmith_f_op_f32(floor(global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 592f, 444f)))))));
    let var_2 = 1000f;
    let var_3 = Struct_2(false);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2)) + var_2)));
    return Struct_1(select(~(~_wgslsmith_mod_u32(arg_0.c, 0u)), ~(u_input.b.x | ~1u), true));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~max(u_input.b.x, 83932u), arg_1.a) >> (vec2<u32>(0u, _wgslsmith_sub_u32(reverseBits(6201u), u_input.b.x)) % vec2<u32>(32u)), u_input.b);
    var var_1 = Struct_3(-_wgslsmith_sub_i32(firstTrailingBit(u_input.a) << (0u % 32u), ~2147483647i), _wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, 33912i, 74370i)), vec4<i32>(u_input.c, 45574i, u_input.c, 9935i), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0)) >> (abs(~vec4<u32>(var_0, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), -firstTrailingBit(~vec4<i32>(-1i, u_input.c, 2147483647i, u_input.a))), 4294967295u, 1u);
    var var_2 = Struct_3(1i, u_input.c, func_4(Struct_3(7253i, var_1.b, 0u, arg_1.a)).a, abs(var_1.c) & (var_0 | 4294967295u));
    var_1 = Struct_3(abs(countOneBits(u_input.a)) << (min(~1u, _wgslsmith_div_u32(u_input.b.x, reverseBits(1u))) % 32u), _wgslsmith_mod_i32(~(~(-2147483647i)), firstTrailingBit(u_input.c)), ~var_1.d, ~(~firstTrailingBit(var_0)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-353f, 1028f)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, global0.x) + vec2<f32>(632f, _wgslsmith_div_f32(1478f, 1f))), true));
    return Struct_1(~(~u_input.b.x));
}

fn func_1() -> f32 {
    let var_0 = func_5(true, func_4(func_2()));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(4294967295u, var_0.a, 1u, var_0.a)) & ~vec4<u32>(20670u, 4294967295u, u_input.b.x, 2820u))), vec4<u32>(_wgslsmith_mod_u32(abs(var_0.a | 1u), 14564u), _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(var_0.a, u_input.b.x)), vec2<u32>(57378u, ~75466u)), func_4(func_2()).a, u_input.b.x));
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(step(399f, _wgslsmith_div_f32(global0.x, global0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, 1000f))))));
    var var_4 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1490f - _wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_div_f32(200f, -485f));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = vec2<u32>(select(u_input.b.x, firstTrailingBit(0u), !(4294967295u != firstTrailingBit(u_input.b.x))), ~4294967295u ^ _wgslsmith_div_u32(_wgslsmith_div_u32(select(31120u, 13038u, true), u_input.b.x), 4294967295u));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(607f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(-1189f))), -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f * var_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -833f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.x, var_0.x)), 1785f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(-global0.x)), global0.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1651f, 1636f, 1476f, 1192f))))), vec4<f32>(_wgslsmith_f_op_f32(select(1816f, var_0.x, true)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -671f), 2087f), _wgslsmith_f_op_f32(select(var_0.x, global0.x, true)) <= -853f))));
    var_2 = u_input.b;
    var var_4 = !any(select(vec2<bool>(all(vec2<bool>(false, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(true, false, true) || true));
    var var_5 = _wgslsmith_mult_vec3_i32(max(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 1870i, 1i), ~vec3<i32>(u_input.a, u_input.c, u_input.a)), ~min(vec3<i32>(-21575i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.c, -2147483647i))), abs(~vec3<i32>(0i, 65173i, -71017i)) & (_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.c, 17389i), vec3<i32>(9750i, u_input.c, u_input.c)) << (vec3<u32>(u_input.b.x, 25879u, var_2.x) % vec3<u32>(32u)))) | min(~(~vec3<i32>(-19819i, u_input.c, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c), -vec3<i32>(u_input.c, 2147483647i, u_input.c)) >> (vec3<u32>(var_2.x, max(22031u, u_input.b.x), 1u) % vec3<u32>(32u)));
    let var_6 = Struct_3(var_5.x, 1i, u_input.b.x, 44967u);
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -1i, ~(-min(vec3<i32>(u_input.c, 1i, -45450i), abs(vec3<i32>(-35086i, 51527i, var_7.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))));
}

