struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3.a;
    var var_1 = _wgslsmith_div_i32(1i, ~1i);
    var_0 = ~reverseBits(arg_3.a);
    var var_2 = arg_0.a;
    var_0 = _wgslsmith_mult_i32(arg_0.d.a, -30818i);
    return arg_0.b;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    var var_0 = Struct_2(vec2<bool>(true, all(!vec2<bool>(arg_1.x, arg_1.x))));
    var_0 = Struct_2(func_3(Struct_4(Struct_3(Struct_2(var_0.a), Struct_2(vec2<bool>(arg_1.x, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false))), vec3<bool>(true, u_input.a >= u_input.b, !arg_1.x), Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(arg_1.yy), Struct_2(arg_1.xx), Struct_2(vec2<bool>(false, false))), Struct_1(-arg_2.x, select(vec2<bool>(false, var_0.a.x), arg_1.xx, arg_1.x), _wgslsmith_clamp_u32(u_input.a, 6531u, 26318u), ~u_input.b, true)), var_0.a.x, arg_0 > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1232f, -1572f, arg_3)))), Struct_1(firstLeadingBit(arg_2.x), func_3(Struct_4(Struct_3(Struct_2(arg_1.zy), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, arg_1.x)), Struct_2(vec2<bool>(arg_1.x, false))), arg_1, Struct_3(Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, var_0.a.x)), Struct_2(arg_1.xx), Struct_2(vec2<bool>(true, arg_1.x))), Struct_1(arg_2.x, vec2<bool>(arg_3, var_0.a.x), 6361u, 4759u, true)), any(vec4<bool>(false, arg_3, arg_1.x, arg_1.x)), !arg_1.x, Struct_1(arg_2.x, arg_1.yy, 17264u, 104239u, false)).zz, 4294967295u, _wgslsmith_div_u32(0u, ~1u), -1127f <= _wgslsmith_f_op_f32(-arg_0))).yz);
    global0 = array<vec3<i32>, 15>();
    var var_1 = !arg_1.x;
    global0 = array<vec3<i32>, 15>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 466f))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(649f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1152f, 345f)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), select(func_3(Struct_4(Struct_3(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false))), vec3<bool>(true, false, false), Struct_3(Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false))), Struct_1(960i, vec2<bool>(false, true), 0u, 17282u, false)), false, false, Struct_1(-18389i, vec2<bool>(false, true), 0u, 1u, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), true)), vec3<i32>(27466i, firstLeadingBit(1i) >> (u_input.a % 32u), 1i), 4294967295u == u_input.b)));
    global0 = array<vec3<i32>, 15>();
    var var_1 = vec3<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.b << (u_input.a % 32u), ~((u_input.b | u_input.a) >> (abs(1u) % 32u))), 0u);
    return Struct_2(!vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_4 {
    global0 = array<vec3<i32>, 15>();
    let var_0 = func_2();
    let var_1 = !select(vec3<bool>(var_0.a.x, (u_input.b << (arg_0 % 32u)) < 6877u, false), select(!select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(false, true, false), vec3<bool>(true, var_0.a.x, true)), vec3<bool>(false, !var_0.a.x, var_0.a.x), ~arg_0 > 43223u), select(func_3(Struct_4(Struct_3(Struct_2(var_0.a), Struct_2(var_0.a), Struct_2(var_0.a), var_0), vec3<bool>(var_0.a.x, false, var_0.a.x), Struct_3(Struct_2(vec2<bool>(var_0.a.x, true)), Struct_2(vec2<bool>(true, var_0.a.x)), var_0, var_0), Struct_1(23129i, vec2<bool>(false, var_0.a.x), u_input.b, u_input.a, false)), true, all(vec4<bool>(false, var_0.a.x, var_0.a.x, true)), Struct_1(0i, vec2<bool>(true, true), arg_0, 55688u, false)), vec3<bool>(false, true, 383f <= arg_1.x), vec3<bool>(false, true, all(vec3<bool>(var_0.a.x, true, var_0.a.x)))));
    let var_2 = Struct_4(Struct_3(var_0, func_2(), Struct_2(!vec2<bool>(false, var_1.x)), var_0), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_1, arg_0 > arg_0), Struct_3(var_0, Struct_2(vec2<bool>(true, var_1.x)), var_0, Struct_2(var_0.a)), Struct_1(-20258i, var_1.zz, abs(~64562u ^ ~u_input.a), 1u, any(func_3(Struct_4(Struct_3(Struct_2(vec2<bool>(true, var_1.x)), var_0, Struct_2(var_1.zy), Struct_2(var_0.a)), vec3<bool>(var_1.x, false, true), Struct_3(Struct_2(var_1.zx), var_0, var_0, Struct_2(vec2<bool>(false, false))), Struct_1(-1i, var_1.xy, u_input.a, u_input.a, false)), true & var_0.a.x, true, Struct_1(0i, vec2<bool>(false, var_0.a.x), 10875u, u_input.a, var_1.x)))));
    var var_3 = Struct_4(Struct_3(func_2(), var_0, func_2(), var_0), vec3<bool>(func_2().a.x, var_1.x, false), var_2.a, Struct_1(-2147483647i, !func_3(var_2, var_2.c.a.a.x, !var_1.x, var_2.d).zz, 18924u, arg_0, (any(vec3<bool>(true, false, var_2.c.c.a.x)) & (false | var_0.a.x)) && false));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    var var_0 = func_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(u_input.b, 24076u)), ~(~_wgslsmith_add_u32(u_input.a, u_input.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(537f, -655f, -1335f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1207f, -196f, 735f)))))));
    let var_1 = vec3<bool>(false, !select(false, !func_2().a.x, true), abs(u_input.b) > _wgslsmith_mult_u32(~firstLeadingBit(u_input.a), 18548u));
    let var_2 = max(0u, 1u << (max(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(1u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13332u, 1u, u_input.b), ~vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u))) % 32u));
    global0 = array<vec3<i32>, 15>();
    var var_3 = _wgslsmith_f_op_f32(1083f - 1469f);
    global0 = array<vec3<i32>, 15>();
    var var_4 = Struct_1(~_wgslsmith_mult_i32(var_0.d.a, var_0.d.a), vec2<bool>(true, var_1.x), 2306u ^ u_input.a, var_2, true);
    let x = u_input.a;
    s_output = StorageBuffer(58014i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1337f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(116f, -116f))))), reverseBits(vec4<i32>(~(-25887i), var_4.a | -2147483647i, ~var_0.d.a, max(var_4.a, var_0.d.a)) & firstLeadingBit(~vec4<i32>(27911i, var_0.d.a, var_0.d.a, -11340i))), ~(~(~(~vec4<u32>(60495u, var_2, 1u, var_0.d.c)))));
}

