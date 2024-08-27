struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    let var_0 = -u_input.a;
    let var_1 = vec2<bool>(arg_1.x > ~45335u, all(!vec4<bool>(true, u_input.a < var_0, arg_2, !arg_0.x)));
    let var_2 = vec3<i32>(1i, ~_wgslsmith_sub_i32(reverseBits(1i), -(0i >> (arg_1.x % 32u))), var_0);
    var var_3 = ~vec2<u32>(arg_1.x >> (((arg_1.x ^ arg_1.x) & ~arg_1.x) % 32u), ~arg_1.x);
    var var_4 = 2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - -1000f);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_0.a, select(vec2<bool>(min(-27461i, u_input.a) > _wgslsmith_mod_i32(u_input.a, 2147483647i), arg_0.a), !(!(!vec2<bool>(arg_0.a, false))), !arg_0.b));
    let var_1 = !vec2<bool>(var_0.b.x, any(!select(vec3<bool>(false, var_0.b.x, false), vec3<bool>(true, arg_0.b.x, var_0.a), vec3<bool>(arg_0.b.x, false, arg_0.a))));
    var var_2 = _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~1u, 0u));
    let var_3 = ~38265u;
    var_2 = abs(var_3);
    return ~_wgslsmith_div_i32(u_input.a, u_input.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(!vec2<bool>(arg_2.b.x, false), vec2<u32>(~26346u, abs(arg_3)), any(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_2.b.x, true), arg_2.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f - -902f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -112f))))));
    let var_1 = arg_0.x << (0u % 32u);
    let var_2 = vec2<i32>(-5979i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a ^ -20253i, abs(var_1), func_3(arg_2), func_3(arg_2)), ~(vec4<i32>(2147483647i, var_1, 9298i, 14065i) & vec4<i32>(15133i, u_input.a, u_input.a, arg_0.x)))) & ~arg_0.yy;
    let var_3 = vec4<bool>(all(vec4<bool>(true, !arg_1.x && true, all(arg_1), true)), true, true, (!(arg_3 == arg_3) | all(vec3<bool>(arg_2.a, true, arg_2.a))) | false);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * -425f), -336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -831f)) * var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(exp2(var_0)), var_3.x))))));
    return -1150f;
}

fn func_4(arg_0: f32) -> vec2<bool> {
    var var_0 = 461f;
    var var_1 = select(~reverseBits(abs(vec4<u32>(0u, 21361u, 1u, 0u))), ~(~(min(vec4<u32>(60469u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 63469u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), select(!vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false));
    let var_2 = select(!(!vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), select(vec2<bool>(firstTrailingBit(0i) > _wgslsmith_add_i32(u_input.a, u_input.a), -880f >= arg_0), vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), true);
    var_1 = ~(~(~((vec4<u32>(var_1.x, 69844u, var_1.x, var_1.x) << (vec4<u32>(4294967295u, var_1.x, var_1.x, 43575u) % vec4<u32>(32u))) >> (~vec4<u32>(var_1.x, 31708u, 1u, 0u) % vec4<u32>(32u)))));
    return select(var_2, !var_2, vec2<bool>(var_2.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = vec2<bool>(true, !(-66734i == (min(u_input.a, 25829i) | (i32(-1i) * -1i))));
    let var_2 = Struct_1(true, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f - _wgslsmith_div_f32(-654f, -1240f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, u_input.a, -1i), vec3<bool>(false, var_1.x, var_1.x), Struct_1(var_1.x, vec2<bool>(var_1.x, false)), 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1346f)))));
    var_0 = _wgslsmith_mult_i32(1i, u_input.a) >> (_wgslsmith_sub_u32(~_wgslsmith_add_u32(countOneBits(1u), 1u), 19782u) % 32u);
    var_0 = func_3(Struct_1(true, func_4(_wgslsmith_f_op_f32(select(-1376f, 131f, false)))));
    var var_3 = _wgslsmith_sub_vec2_u32(~(max(vec2<u32>(1u, 1u), vec2<u32>(21312u, 2506u)) >> (select(vec2<u32>(28431u, 0u), vec2<u32>(91157u, 27934u), var_1.x) % vec2<u32>(32u))) & vec2<u32>(1u, 1u), vec2<u32>(0u, 5585u));
    var_0 = -_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a & 10919i, u_input.a ^ 14614i), abs(~u_input.a)) >> (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(113f, -1299f, -1129f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1221f, -405f, 244f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -135f, 1599f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_f32(step(266f, _wgslsmith_f_op_f32(func_1(vec3<i32>(0i, u_input.a, u_input.a), vec3<bool>(var_1.x, false, var_1.x), Struct_1(false, vec2<bool>(var_1.x, false)), 35234u))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2369f + 1000f)), 1000f, -2353f)), u_input.a, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 84040i, -2147483647i, 1i), -vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 94335i, u_input.a), vec4<i32>(-46337i, u_input.a, u_input.a, 2223i))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, 10425i), vec4<i32>(u_input.a, u_input.a, u_input.a, 51179i))), ~min(vec4<i32>(35213i, u_input.a, 1i, -1i), vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a))), abs(vec2<u32>(29934u, ~_wgslsmith_mod_u32(var_3.x, var_3.x))));
}

