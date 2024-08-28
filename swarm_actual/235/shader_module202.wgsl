struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    global0 = Struct_4(vec4<i32>(-u_input.c.x << (reverseBits(1u) % 32u), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(abs(u_input.c.wwx), global0.a.zwx)), ~(-u_input.c.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-global0.a, global0.a | vec4<i32>(0i, global0.a.x, global0.a.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-20512i, u_input.c.x, u_input.a.x, global0.a.x), vec4<i32>(56598i, -12979i, 1i, global0.a.x)))));
    var var_0 = u_input.b >= ~(~(~(~4294967295u)));
    var_0 = false;
    var var_1 = all(vec4<bool>(!(~22995u <= firstLeadingBit(u_input.b)), any(!vec4<bool>(false, true, arg_0.x, true)) | arg_0.x, arg_0.x, select(!arg_0.x, arg_0.x | true, select(true, false, arg_0.x) | true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), 1f, _wgslsmith_f_op_f32(min(-384f, -1087f)), -1637f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, 609f, 1010f, -1353f)), vec4<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), !arg_0.x, all(vec4<bool>(false, arg_0.x, true, false)), all(arg_0))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -638f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), -611f))), vec4<bool>(false, !(arg_0.x | select(arg_0.x, arg_0.x, arg_0.x)), select(true, !arg_0.x, any(arg_0.yx)), false)));
    return vec4<u32>(u_input.b, 1u, ~4294967295u, u_input.b);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = func_3(select(vec3<bool>(var_0, false, true), vec3<bool>(!arg_1.b.b.x, all(!arg_1.b.b.yy), !arg_1.a.a.b.x), var_0));
    var_1 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, var_1.x, var_1.x, var_1.x), ~select(vec4<u32>(var_1.x, 21664u, 0u, 34579u), vec4<u32>(1u, u_input.b, var_1.x, u_input.b), arg_1.d)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~4404u, ~3780u, ~22828u), ~vec4<u32>(1u, 2701u, 27071u, 4294967295u)) % vec4<u32>(32u)));
    global0 = Struct_4(select(max(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.c, u_input.a.x, 0i, -30259i), arg_2 | vec4<i32>(-1i, 19696i, -23659i, u_input.a.x)), global0.a), vec4<i32>(-1i, 1i, ~(-2147483647i), arg_1.c.c), !(!(true != var_0))));
    var var_2 = ~countOneBits(u_input.b);
    return arg_1.c.b.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = 583f;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(~arg_0, u_input.b, all(vec2<bool>(false, true))), u_input.b), u_input.b), u_input.b, abs(0u));
    var var_2 = 46244u;
    var_0 = 275f;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, -885f)))), select(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), select(func_2(-2147483647i, Struct_3(Struct_2(Struct_1(vec2<f32>(-833f, -361f), vec3<bool>(false, false, false), -1095f), Struct_1(vec2<f32>(-908f, 846f), vec3<bool>(false, true, true), 1637f), global0.a.x), Struct_1(vec2<f32>(526f, 1075f), vec3<bool>(true, true, false), -581f), Struct_2(Struct_1(vec2<f32>(218f, 610f), vec3<bool>(false, true, false), -1204f), Struct_1(vec2<f32>(-1283f, 607f), vec3<bool>(false, true, true), 201f), global0.a.x), vec4<bool>(false, true, true, true)), global0.a), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), true)), -415f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-404f, -1527f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(974f, 752f)))), select(vec3<bool>(all(vec3<bool>(true, false, true)), true, true), vec3<bool>(any(vec2<bool>(false, true)), true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(231f - _wgslsmith_f_op_f32(sign(-914f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(771f)) * _wgslsmith_f_op_f32(-472f * 119f))))), _wgslsmith_div_i32(abs(global0.a.x) >> (arg_0 % 32u), 7208i) << (40470u % 32u));
    return var_3.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(arg_0.a.c, _wgslsmith_mult_i32(-u_input.a.x, select(global0.a.x, arg_0.a.c, arg_0.b.b.x)) << (~u_input.b % 32u)) <= ~_wgslsmith_dot_vec4_i32(global0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.c, 2147483647i, 1i, arg_1) & u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.c, global0.a.x, 49049i, 2147483647i), vec4<i32>(arg_0.a.c, arg_0.a.c, u_input.c.x, arg_0.a.c))));
    let var_1 = vec4<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_3(vec3<bool>(true, true, var_0)).x, 0u ^ u_input.b), ~77627u), _wgslsmith_mod_u32(u_input.b, u_input.b)), u_input.b, firstLeadingBit(~(~u_input.b)));
    global0 = Struct_4(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 77179i, arg_1, 2147483647i), global0.a), global0.a, !arg_0.a.b.b.x & true));
    let var_2 = u_input.b;
    let var_3 = Struct_5(!arg_0.d.x, ~_wgslsmith_mod_u32(~1u, var_1.x ^ 0u) >> (~var_2 % 32u), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a.x, 1i), u_input.c)), _wgslsmith_f_op_vec2_f32(ceil(arg_0.c.a.a)), arg_0);
    return Struct_4(select(vec4<i32>(-32426i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-35928i, u_input.c.x), 9869i), global0.a.x, ~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_1, 1i, -2147483647i))), vec4<i32>(abs(-2147483647i), -32667i, -65653i, (19344i | arg_0.a.c) & -4303i), !arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(4706i, -8630i), u_input.c.x, 54709i, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-16508i, u_input.c.x, global0.a.x), vec3<i32>(global0.a.x, global0.a.x, -22435i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 35748i), vec2<i32>(14556i, -71784i)))));
    global0 = func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1f, 1f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -845f)), Struct_1(vec2<f32>(-859f, -1000f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1172f)), 2147483647i), func_1(79891u), Struct_2(func_1(_wgslsmith_add_u32(u_input.b, u_input.b)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1311f, -462f), vec2<f32>(-2718f, 347f)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -2383f)), global0.a.x), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-1i, 20036i, max(~u_input.a.x, -63245i), min(~0i, func_4(Struct_3(Struct_2(Struct_1(vec2<f32>(1212f, -495f), vec3<bool>(true, true, false), -182f), Struct_1(vec2<f32>(-1226f, -212f), vec3<bool>(true, false, false), -897f), -28024i), Struct_1(vec2<f32>(-570f, 1157f), vec3<bool>(false, false, true), 117f), Struct_2(Struct_1(vec2<f32>(2236f, -407f), vec3<bool>(true, false, true), 1609f), Struct_1(vec2<f32>(-1024f, 1908f), vec3<bool>(true, false, true), -342f), 2147483647i), vec4<bool>(false, false, false, false)), 1i).a.x)), u_input.c.wyw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2264f, -2647f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1208f))) * 1876f), -482f));
}

