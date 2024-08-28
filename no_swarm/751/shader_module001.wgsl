struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(min(0i ^ abs(arg_1.x), -1i), ~abs(arg_1.x), ~(~2147483647i)), 1i);
    let var_1 = Struct_3(arg_2.a.zwx, var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1090f + arg_2.a.x))), vec2<bool>(arg_0, arg_0), ~(max(u_input.b, ~vec2<u32>(u_input.a, 20677u)) << (~vec2<u32>(0u, u_input.d) % vec2<u32>(32u))));
    var var_2 = arg_2;
    var var_3 = var_0;
    var var_4 = Struct_5(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_3.a | -2147483647i, firstTrailingBit(1i)), 2147483647i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 24397i, 0i, -24960i), ~vec4<i32>(var_0.a, 1i, 62642i, -1i)), -var_3.a)), arg_2, vec4<u32>(var_1.e.x, 17179u, min(u_input.a, _wgslsmith_mult_u32(var_1.e.x >> (9463u % 32u), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.e.x, u_input.b.x)))), 36606u), Struct_3(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_1.a.x - arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * var_2.a.x) + _wgslsmith_f_op_f32(abs(-629f)))), var_1.b, var_2.a.x, select(!select(var_1.d, vec2<bool>(var_1.d.x, false), true), var_1.d, var_1.d), u_input.b));
    return arg_2.a.x;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1575f) * _wgslsmith_f_op_f32(round(796f))), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(func_3(true, min(u_input.c.xy, u_input.c.xz), Struct_2(vec4<f32>(-416f, 154f, -274f, -1928f)))), _wgslsmith_f_op_f32(f32(-1f) * -957f))));
    let var_1 = Struct_5(_wgslsmith_dot_vec2_i32(u_input.c.zz, -u_input.c.xx), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)))), ~(~vec4<u32>(u_input.a ^ 31667u, abs(u_input.d), ~u_input.b.x, min(7225u, 35359u))), Struct_3(var_0.a.ywx, Struct_1(max(u_input.c.x, -2147483647i) >> (u_input.b.x % 32u), u_input.c.x), _wgslsmith_f_op_f32(-var_0.a.x), vec2<bool>(true, var_0.a.x == _wgslsmith_f_op_f32(floor(var_0.a.x))), ~(~u_input.b)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-218f, 906f, 207f))))))), var_1.d.b, _wgslsmith_f_op_f32(-1000f - 1052f), var_1.d.d, var_1.d.e);
    var_2 = var_1.d;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_0.a)));
    return Struct_5(-2147483647i, Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_1.b.a))), vec4<u32>(0u, abs(25u), ~(~1u), _wgslsmith_dot_vec2_u32(var_1.d.e, abs(firstTrailingBit(var_1.c.xx)))), var_1.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-702f * _wgslsmith_f_op_f32(arg_3.a.x - arg_3.c)), arg_3.c, _wgslsmith_f_op_f32(arg_3.a.x - _wgslsmith_f_op_f32(871f - arg_3.c)))), Struct_1(_wgslsmith_dot_vec3_i32(u_input.c, ~(-vec3<i32>(arg_3.b.a, 2147483647i, arg_2))), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) - 1893f)))), arg_1.yx, arg_3.e);
    var var_1 = func_2();
    var_0 = func_2().d;
    var_1 = func_2();
    var var_2 = Struct_4(Struct_2(var_1.b.a), ~(~_wgslsmith_mult_u32(0u, 1u)), -(~vec4<i32>(1i, 22093i, arg_3.b.b, 37939i)) & max(select(vec4<i32>(u_input.c.x, -1i, 2147483647i, 1i), vec4<i32>(u_input.c.x, arg_2, var_1.a, var_1.d.b.b), arg_1) ^ _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.b.a, var_1.a, 1i, 36915i), vec4<i32>(2472i, u_input.c.x, arg_3.b.b, var_1.d.b.a)), -vec4<i32>(9783i, arg_2, arg_0.x, var_1.a) >> (var_1.c % vec4<u32>(32u))));
    return _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, ~arg_3.e.x, ~(var_1.d.e.x >> (0u % 32u)), arg_3.e.x), vec4<u32>(~(u_input.e << (arg_3.e.x % 32u)), var_2.b, u_input.d ^ var_1.d.e.x, arg_3.e.x & ~var_2.b), select(!(!vec4<bool>(arg_1.x, false, false, true)), arg_1, select(vec4<bool>(var_1.d.d.x, true, var_0.d.x, var_1.d.d.x), select(vec4<bool>(arg_1.x, arg_3.d.x, false, arg_1.x), vec4<bool>(false, false, var_1.d.d.x, false), true), arg_1))), max(func_2().c | var_1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, min(0u, 4294967295u), ~u_input.b.x, _wgslsmith_add_u32(var_0.e.x, 4294967295u)), ~(~var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec4<bool>(all(vec2<bool>(false, true)), false, all(vec2<bool>(true, false)), !(u_input.c.x <= u_input.c.x)), vec4<bool>(true, true, true, true), true | !(-17001i <= u_input.c.x)));
    var_0 = true;
    let var_1 = true;
    let var_2 = vec3<u32>(abs(u_input.d) & (_wgslsmith_dot_vec4_u32(func_1(u_input.c, vec4<bool>(false, true, false, var_1), 26294i, Struct_3(vec3<f32>(440f, 388f, -406f), Struct_1(u_input.c.x, -36143i), -843f, vec2<bool>(true, var_1), vec2<u32>(u_input.b.x, u_input.d))), vec4<u32>(1u, 4294967295u, 0u, u_input.a)) << (27582u % 32u)), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.d, select(44649u, 30171u, true)), 15477u, u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(~8271u, u_input.d & 0u, abs(u_input.b.x)), vec3<u32>(~u_input.e, 4294967295u, 41901u))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(550f, _wgslsmith_f_op_f32(453f - 1000f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2459f * 908f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-554f, 1498f)), _wgslsmith_f_op_f32(f32(-1f) * -425f)), true)), u_input.c.x);
}

