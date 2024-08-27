struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return arg_0.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_5) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_2.a, ~(~_wgslsmith_mult_u32(arg_2.b.x, 54375u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(arg_2.b.xy, arg_2.b.yw) << (_wgslsmith_mult_u32(u_input.a, abs(50647u)) % 32u), select(_wgslsmith_dot_vec2_u32(select(vec2<u32>(34507u, 1u), vec2<u32>(0u, arg_3.c.c), true), reverseBits(vec2<u32>(arg_3.c.c, 62082u))), 1u, any(!vec3<bool>(false, arg_3.d, arg_2.d)))));
    var_0 = arg_2.b.zz;
    var var_1 = !vec4<bool>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.a.x, 1i, 63638i, -19742i)), abs(vec4<i32>(u_input.b.x, arg_2.c.a.x, 44114i, -1i))) >= -countOneBits(0i), arg_3.d, -_wgslsmith_dot_vec2_i32(vec2<i32>(34882i, -22537i), arg_2.c.a) > arg_3.c.a.x, any(select(select(vec2<bool>(false, arg_2.d), vec2<bool>(arg_2.d, true), true), vec2<bool>(arg_3.d, arg_2.d), vec2<bool>(true, true))));
    var_0 = arg_2.b.wy;
    var var_2 = !vec4<bool>(false, !(true != var_1.x), -1i >= countOneBits(_wgslsmith_add_i32(u_input.b.x, 0i)), false);
    return _wgslsmith_f_op_f32(arg_0.x + -1447f);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(vec4<f32>(-196f, -411f, _wgslsmith_f_op_f32(420f + 1435f), _wgslsmith_f_op_f32(floor(399f))), Struct_1(vec2<i32>(u_input.b.x, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1u), Struct_5(u_input.a, ~vec4<u32>(0u, u_input.a, u_input.a, 48426u), Struct_1(u_input.c, -1212f, u_input.a), true), Struct_5(func_3(Struct_1(u_input.b.yy, -3294f, 79486u), vec4<u32>(u_input.a, 1u, u_input.a, 16602u), Struct_1(vec2<i32>(0i, -14659i), -506f, 0u), Struct_1(vec2<i32>(-59372i, 0i), -874f, u_input.a)), vec4<u32>(u_input.a, 0u, 46202u, 21489u) | vec4<u32>(u_input.a, 46544u, 6962u, u_input.a), Struct_1(u_input.c, 536f, 15166u), false))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-698f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))), Struct_3(~abs(~vec3<u32>(u_input.a, u_input.a, 0u)), firstLeadingBit(u_input.c.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-var_0))), var_0))), 2270f, _wgslsmith_mult_vec3_i32(~reverseBits(u_input.b), firstTrailingBit(vec3<i32>(2147483647i, firstLeadingBit(2147483647i), 0i))));
    var var_2 = _wgslsmith_f_op_f32(658f - _wgslsmith_f_op_f32(f32(-1f) * -668f));
    var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0)))), var_0, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, false, false))))), var_1.b, vec2<f32>(-1265f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-293f - 670f)))), -305f, vec3<i32>(~1i, -var_1.b.b & (_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7186i, 2147483647i, 1i), vec4<i32>(-1i, 2147483647i, -15367i, u_input.b.x)) ^ max(var_1.e.x, var_1.e.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(26849i, u_input.c.x, u_input.c.x, -2147483647i), min(vec4<i32>(var_1.b.b, -11269i, var_1.e.x, u_input.c.x), vec4<i32>(u_input.c.x, 3282i, -24137i, 2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.b, u_input.b.x, 0i, var_1.e.x), vec4<i32>(21313i, 1i, var_1.b.b, var_1.e.x)))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)) - 2317f)))), Struct_3(var_1.b.a, u_input.b.x), vec2<f32>(var_0, 312f), _wgslsmith_f_op_f32(step(530f, _wgslsmith_f_op_f32(exp2(var_0)))), var_1.e);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1397f)));
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2()));
    let var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f * var_1.b));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~4294967295u, 1u, _wgslsmith_mult_u32(arg_1.a, u_input.a), reverseBits(0u)), vec4<u32>(12952u, 4294967295u, _wgslsmith_div_u32(~arg_1.a, _wgslsmith_div_u32(u_input.a, u_input.a)), select(~3761u, 29392u, arg_1.d & arg_1.d))), 34847u);
    return -var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(select(~vec4<i32>(-2147483647i, u_input.b.x, u_input.c.x, -13615i), vec4<i32>(1i, u_input.c.x, u_input.b.x, -1i), true) | vec4<i32>(func_1(36602i, Struct_5(34517u, vec4<u32>(0u, 35959u, u_input.a, u_input.a), Struct_1(vec2<i32>(-44092i, u_input.b.x), 1140f, u_input.a), false)), firstTrailingBit(u_input.b.x), -3694i, ~u_input.c.x)));
    let var_1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 0u), 1u, ~firstTrailingBit(u_input.a))), ~select(vec4<u32>(~u_input.a, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 0u)), ~0u), select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 7828u, u_input.a, 78687u), vec4<bool>(true, true, true, true)) << ((vec4<u32>(u_input.a, u_input.a, u_input.a, 55725u) & vec4<u32>(26290u, u_input.a, 55797u, u_input.a)) % vec4<u32>(32u)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), 1719f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-645f, -697f))), vec2<f32>(-1752f, 913f)))));
    var var_3 = var_0.x;
    var_3 = _wgslsmith_mod_i32(-max(_wgslsmith_div_i32(min(var_0.x, 37724i), var_0.x), -var_0.x >> (_wgslsmith_clamp_u32(u_input.a, 1u, var_1.x) % 32u)), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0.x), u_input.b.yy) >> (~abs(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(var_0.x, ~u_input.c.x)));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(16414i, var_0.x, var_0.x, u_input.b.x), vec4<i32>(44831i, var_0.x, u_input.c.x, -1038i)), 3668i, u_input.c.x, countOneBits(u_input.b.x)) & -vec4<i32>(u_input.c.x, var_0.x, u_input.b.x, var_0.x), ~min(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, -8903i, -1i), vec4<i32>(u_input.c.x, var_0.x, u_input.b.x, var_0.x)), firstLeadingBit(vec4<i32>(var_0.x, u_input.b.x, var_0.x, u_input.c.x)))) >> ((vec4<u32>(min(24870u, 0u), var_1.x, ~(~u_input.a), _wgslsmith_sub_u32(1u, var_1.x)) >> (var_1 % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = ~(~(max(vec4<i32>(var_0.x, var_0.x, -75803i, u_input.b.x), vec4<i32>(var_0.x, 1i, -36334i, 0i) & vec4<i32>(-34336i, var_0.x, 1i, var_0.x)) & select(vec4<i32>(-10329i, var_0.x, u_input.c.x, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -4368i), vec4<i32>(var_0.x, var_0.x, u_input.c.x, -19112i), vec4<i32>(-1i, u_input.c.x, -1i, u_input.b.x)), false)));
    var_3 = abs(countOneBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-13558i, var_0.x), var_0.xw, vec2<i32>(var_0.x, u_input.b.x))))) & countOneBits(2147483647i);
    let var_4 = Struct_3(~var_1.xwx, func_1(_wgslsmith_mod_i32(~var_0.x, var_0.x), Struct_5(1u, vec4<u32>(~var_1.x, 100286u, _wgslsmith_sub_u32(u_input.a, 66891u), 1u), Struct_1(~vec2<i32>(u_input.b.x, 2147483647i), var_2.x, _wgslsmith_sub_u32(54534u, u_input.a)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, -1000f, 457f, -1000f) + vec4<f32>(var_2.x, var_2.x, -317f, 626f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1209f, var_2.x, 1538f, var_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -666f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -325f, -1538f, 1522f))))), _wgslsmith_f_op_f32(round(var_2.x)), -83780i);
}

