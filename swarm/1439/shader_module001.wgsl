struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.a;
    var_0 = vec3<u32>(u_input.d.x, u_input.d.x, abs(46266u));
    let var_1 = Struct_2(Struct_1(abs(reverseBits(~1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1242f, 1712f))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))), !vec4<bool>(!(arg_1 & true), all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))), any(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, arg_1), arg_1)), arg_1));
    var var_2 = Struct_1(~1u);
    let var_3 = arg_2;
    return Struct_1(arg_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = func_2(Struct_3(~(~vec3<u32>(u_input.b, u_input.b, 24276u))));
    var var_1 = 4294967295u;
    var_0 = Struct_3(reverseBits(_wgslsmith_add_vec3_u32(countOneBits(~var_0.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.a, arg_1.a.a), var_0.a))));
    let var_2 = arg_1;
    var_0 = Struct_3(var_0.a & var_0.a);
    return func_2(func_2(Struct_3(vec3<u32>(1u, ~29389u, _wgslsmith_add_u32(25397u, 19887u)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = -335f;
    var var_1 = firstTrailingBit(1u);
    let var_2 = arg_1.a.x;
    var_1 = 44641u;
    var_1 = arg_2.a.x;
    return func_3(231f, !(374f == var_0), func_2(arg_1));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    let var_0 = func_5(func_4(func_3(arg_0.x, all(vec2<bool>(arg_2.x, false)) && true, func_2(arg_1)), Struct_2(Struct_1(max(arg_1.a.x, 63655u)), arg_0.xxz, select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), !vec4<bool>(false, false, arg_2.x, true), true))), func_4(func_3(_wgslsmith_f_op_f32(-arg_0.x), 3432u != _wgslsmith_add_u32(19344u, arg_1.a.x), func_4(func_3(arg_0.x, arg_2.x, Struct_3(vec3<u32>(33541u, 1u, arg_1.a.x))), Struct_2(Struct_1(arg_1.a.x), vec3<f32>(2180f, -162f, -269f), vec4<bool>(true, false, arg_2.x, arg_2.x)))), Struct_2(func_3(arg_0.x, true && arg_2.x, Struct_3(arg_1.a)), vec3<f32>(-947f, _wgslsmith_f_op_f32(-686f - 966f), arg_0.x), select(vec4<bool>(arg_2.x, arg_2.x, false, false), select(vec4<bool>(arg_2.x, true, true, true), vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(true, arg_2.x, false, arg_2.x)), select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), arg_2.x)))), Struct_3(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 60251u, arg_1.a.x), vec3<u32>(22639u, 1u, 4294967295u)), arg_1.a) ^ ~(~arg_1.a)));
    var var_1 = ~_wgslsmith_clamp_u32(arg_1.a.x, 9627u, ~_wgslsmith_sub_u32(1u, u_input.b)) << (arg_1.a.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1252f))));
    var var_3 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.yxy), arg_0.xwz, select(arg_2, arg_2, true))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1562f), 358f)))), vec4<bool>((0i < ~u_input.c) | arg_2.x, true, all(select(arg_2.zy, arg_2.yy, !vec2<bool>(false, arg_2.x))), arg_2.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(-859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) + _wgslsmith_f_op_f32(-540f - -194f))), -1399f, -1000f)));
    return var_3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, -1000f, -311f, -707f) - vec4<f32>(1271f, -714f, 665f, -304f)))), Struct_3(vec3<u32>(0u, 56367u, u_input.d.x)), vec3<bool>(true, true, true))), vec3<f32>(-2054f, 1f, 878f), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false))));
    var var_1 = 936f;
    let var_2 = _wgslsmith_sub_i32(u_input.e.x, 17031i);
    var_0 = Struct_2(func_5(Struct_3(vec3<u32>(u_input.b, 1u, func_4(Struct_1(var_0.a.a), Struct_2(var_0.a, var_0.b, var_0.c)).a.x)), Struct_3(vec3<u32>(u_input.b, ~119715u, ~u_input.b)), func_2(func_2(Struct_3(vec3<u32>(var_0.a.a, 0u, var_0.a.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(663f, var_0.b.x, _wgslsmith_f_op_f32(trunc(var_0.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) - var_0.b)) - var_0.b), var_0.c);
    var_1 = _wgslsmith_f_op_f32(440f + _wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = var_0.c.yw;
    var var_4 = var_0.b.x;
    var var_5 = Struct_3(vec3<u32>(u_input.d.x, u_input.d.x ^ u_input.b, abs(~(var_0.a.a ^ u_input.b))));
    let var_6 = Struct_3(vec3<u32>(~54491u, ~(~41735u >> (var_0.a.a % 32u)), _wgslsmith_dot_vec3_u32(func_4(func_5(Struct_3(var_5.a), Struct_3(vec3<u32>(var_5.a.x, 1u, 44401u)), Struct_3(vec3<u32>(9125u, u_input.b, u_input.b))), Struct_2(var_0.a, var_0.b, vec4<bool>(false, false, true, var_0.c.x))).a, _wgslsmith_mult_vec3_u32(var_5.a, vec3<u32>(var_0.a.a, var_5.a.x, var_0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(30522u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.a.a, 1u), u_input.d.x)), var_6.a.zx, var_6.a.xz, var_0.b.x, ~var_5.a.zy);
}

