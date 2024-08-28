struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(0i, 56556i, -600i), vec3<i32>(31840i, -7100i, 58064i), vec3<i32>(-61383i, -53759i, 19622i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-1265i, i32(-2147483648), -4526i));

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), false, 317f, vec3<i32>(78112i, -1i, 36636i)), 27352u), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), false, -108f, vec3<i32>(i32(-2147483648), 0i, 25932i)), 22608u), Struct_2(Struct_1(true, vec4<bool>(false, false, false, true), false, -915f, vec3<i32>(2147483647i, i32(-2147483648), 16194i)), 0u), Struct_2(Struct_1(true, vec4<bool>(true, true, true, false), false, 557f, vec3<i32>(i32(-2147483648), 29950i, 39496i)), 46170u), Struct_2(Struct_1(false, vec4<bool>(true, false, true, true), true, -148f, vec3<i32>(-12019i, -45671i, -1i)), 0u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), false, 1000f, vec3<i32>(15531i, 40333i, 13586i)), 8085u), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), false, -174f, vec3<i32>(47913i, i32(-2147483648), 3751i)), 29877u), Struct_2(Struct_1(true, vec4<bool>(false, false, false, false), true, -2013f, vec3<i32>(-16660i, -15563i, 1i)), 1u), Struct_2(Struct_1(true, vec4<bool>(true, true, true, true), false, -335f, vec3<i32>(i32(-2147483648), -15401i, 79451i)), 10185u), Struct_2(Struct_1(true, vec4<bool>(true, false, true, true), false, 731f, vec3<i32>(1i, i32(-2147483648), 26525i)), 0u), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), true, -236f, vec3<i32>(-43208i, -22085i, 32871i)), 47893u), Struct_2(Struct_1(true, vec4<bool>(false, false, true, true), true, -169f, vec3<i32>(8948i, -20070i, 1i)), 1u), Struct_2(Struct_1(true, vec4<bool>(false, true, false, false), true, 1150f, vec3<i32>(-1i, 1i, -76484i)), 0u), Struct_2(Struct_1(false, vec4<bool>(true, true, false, false), false, 1467f, vec3<i32>(249i, -1i, 1i)), 68698u), Struct_2(Struct_1(true, vec4<bool>(true, true, true, false), false, -941f, vec3<i32>(-71480i, -2803i, -24623i)), 4294967295u), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), false, -1496f, vec3<i32>(16190i, 7561i, 14509i)), 40068u), Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), true, 383f, vec3<i32>(-74739i, 19519i, 41594i)), 1u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), false, 1470f, vec3<i32>(0i, -46289i, -20313i)), 0u), Struct_2(Struct_1(false, vec4<bool>(false, false, false, false), false, 106f, vec3<i32>(-32632i, 2147483647i, 1i)), 1u), Struct_2(Struct_1(false, vec4<bool>(true, false, false, false), false, -1330f, vec3<i32>(-26253i, 42770i, 1i)), 4294967295u), Struct_2(Struct_1(true, vec4<bool>(true, false, true, true), false, 1323f, vec3<i32>(2147483647i, 0i, 1i)), 38918u), Struct_2(Struct_1(false, vec4<bool>(false, false, true, false), false, -291f, vec3<i32>(9955i, 28991i, -9030i)), 14524u), Struct_2(Struct_1(true, vec4<bool>(false, true, true, true), true, 1395f, vec3<i32>(-1i, 37617i, -16541i)), 62271u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), false, -623f, vec3<i32>(-18463i, 2147483647i, -11706i)), 4294967295u), Struct_2(Struct_1(true, vec4<bool>(true, true, false, false), true, 380f, vec3<i32>(-1i, 28018i, 30620i)), 1u), Struct_2(Struct_1(true, vec4<bool>(false, true, false, true), true, -1461f, vec3<i32>(i32(-2147483648), 2147483647i, -6310i)), 0u), Struct_2(Struct_1(true, vec4<bool>(true, false, true, true), true, 1536f, vec3<i32>(2147483647i, 41773i, 38643i)), 0u), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false), true, -521f, vec3<i32>(33623i, -1i, i32(-2147483648))), 11342u), Struct_2(Struct_1(true, vec4<bool>(false, true, false, false), false, 1285f, vec3<i32>(-34472i, 2147483647i, -1797i)), 1u), Struct_2(Struct_1(true, vec4<bool>(true, true, true, false), true, -208f, vec3<i32>(2147483647i, -9488i, 29964i)), 37073u), Struct_2(Struct_1(false, vec4<bool>(false, false, false, true), true, 270f, vec3<i32>(0i, 582i, -1i)), 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 31>();
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 31u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 117075u, var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(var_0.b, u_input.b, var_0.b))), (vec4<u32>(var_0.b, u_input.c, u_input.b, 4422u) << (vec4<u32>(var_0.b, 4294967295u, var_0.b, 1u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, var_0.b, u_input.a, u_input.c) % vec4<u32>(32u))), 4294967295u, 4294967295u) & ~31691u, 31u)];
}

fn func_3() -> i32 {
    let var_0 = vec3<f32>(-1098f, 1f, 1000f);
    let var_1 = func_2().a;
    let var_2 = abs(_wgslsmith_sub_u32(u_input.b, ~u_input.c));
    global1 = array<Struct_2, 31>();
    var var_3 = var_1.e.x;
    return select(countOneBits(_wgslsmith_clamp_i32(min(var_1.e.x | var_1.e.x, var_1.e.x), ~_wgslsmith_dot_vec2_i32(var_1.e.xz, vec2<i32>(var_1.e.x, var_1.e.x)), var_1.e.x)), min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.e.x), -var_1.e.yx)), var_1.e.x), var_1.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    var var_0 = true;
    var_0 = arg_0.a.a;
    let var_1 = arg_0.a;
    var var_2 = i32(-1i) * -21509i;
    let var_3 = func_2();
    return any(vec2<bool>(arg_0.a.a, !(func_3() < -44598i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f + 960f)))));
    global1 = array<Struct_2, 31>();
    let var_1 = false;
    var var_2 = all(select(vec3<bool>(any(vec2<bool>(var_1, true)) != func_1(Struct_2(Struct_1(var_1, vec4<bool>(var_1, var_1, var_1, true), var_1, 1354f, vec3<i32>(-2350i, 1i, 22505i)), u_input.a), vec3<f32>(235f, 2025f, var_0)), !var_1, true), func_2().a.b.zxw, true));
    global0 = array<vec3<i32>, 5>();
    var_2 = all(vec2<bool>(!(_wgslsmith_f_op_f32(round(var_0)) == 619f), func_1(func_2(), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_0, var_0)))) || func_2().a.c));
    global0 = array<vec3<i32>, 5>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))))), 1275f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0))))))), _wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1265f), ~max(~(-14269i), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(-2147483647i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1015f + -1353f), 1687f)) - var_0)));
}

