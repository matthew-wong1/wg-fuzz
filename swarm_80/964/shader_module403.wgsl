struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(1000f, -247f, 1633f, 289f), vec4<f32>(-2014f, 649f, -721f, 544f), vec4<f32>(-419f, -824f, -578f, 2152f), vec4<f32>(330f, -710f, -1000f, 408f), vec4<f32>(-1733f, 454f, 1000f, -843f), vec4<f32>(-1000f, -158f, 1000f, 1000f), vec4<f32>(-353f, -108f, 820f, -1288f), vec4<f32>(1407f, 415f, 831f, -350f), vec4<f32>(-1000f, -504f, 1136f, -1444f), vec4<f32>(629f, -3406f, 2004f, -297f), vec4<f32>(-2093f, -324f, 1994f, -3069f), vec4<f32>(1444f, 350f, 1000f, -1000f), vec4<f32>(444f, -880f, 2338f, -114f), vec4<f32>(-1586f, 896f, 1623f, 1033f), vec4<f32>(293f, 2962f, -195f, 463f), vec4<f32>(-1058f, -1000f, 680f, 371f), vec4<f32>(-2138f, 627f, -220f, 822f), vec4<f32>(-683f, -862f, 978f, 457f), vec4<f32>(180f, 1880f, 1000f, 146f), vec4<f32>(-116f, -684f, -381f, 161f), vec4<f32>(676f, -1116f, -2120f, 223f), vec4<f32>(-477f, -160f, 1465f, -1668f), vec4<f32>(-712f, -1000f, -1435f, 157f), vec4<f32>(502f, -2326f, 1654f, 969f), vec4<f32>(-219f, -1352f, -357f, -938f), vec4<f32>(-1206f, -1144f, 1000f, -2336f), vec4<f32>(-1000f, 413f, 367f, -206f), vec4<f32>(-1002f, 762f, -1000f, 288f), vec4<f32>(331f, 225f, -950f, -180f), vec4<f32>(-441f, -1006f, -1619f, 401f), vec4<f32>(-1693f, -2654f, -209f, -794f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec4<f32>, 31>();
    return vec2<bool>(_wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(0u, u_input.a) >> (reverseBits(u_input.c.zy) % vec2<u32>(32u))) < 85104u, true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = !func_3();
    global0 = array<Struct_3, 18>();
    let var_1 = arg_1.a;
    global1 = array<vec4<f32>, 31>();
    var var_2 = Struct_1(vec2<u32>(0u, ~arg_1.a), !any(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, arg_2.b, false, false), vec4<bool>(false, true, true, arg_0.c.d.x))), _wgslsmith_f_op_vec2_f32(-arg_1.b.c.c), arg_1.b.d.zy);
    return select(vec3<bool>(arg_2.b, false, func_3().x), arg_1.b.d, false);
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a * -145f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.c.c.x))))), true, arg_0.b.c, !select(select(arg_0.b.d, func_2(Struct_2(692f, false, Struct_1(arg_0.b.c.a, false, vec2<f32>(arg_0.b.c.c.x, -309f), arg_0.b.c.d), arg_0.b.d), Struct_3(arg_0.a, Struct_2(-522f, false, Struct_1(u_input.c.xy, false, vec2<f32>(arg_0.b.c.c.x, arg_0.b.c.c.x), arg_0.b.d.yz), vec3<bool>(arg_0.b.c.d.x, arg_0.b.c.d.x, arg_0.b.d.x))), Struct_1(u_input.c.zy, false, vec2<f32>(arg_0.b.c.c.x, 1019f), arg_0.b.d.xz)), arg_0.b.d), arg_0.b.d, false));
    let var_1 = _wgslsmith_div_u32(abs(81075u), var_0.c.a.x);
    global1 = array<vec4<f32>, 31>();
    let var_2 = arg_0.b.d.x;
    global1 = array<vec4<f32>, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_1, 31u)] - vec4<f32>(-1372f, _wgslsmith_f_op_f32(round(arg_0.b.c.c.x)), _wgslsmith_f_op_f32(floor(-682f)), _wgslsmith_f_op_f32(exp2(var_0.a)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec4<f32>, 31>();
    global1 = array<vec4<f32>, 31>();
    var var_0 = arg_1.b.c;
    let var_1 = arg_1.b;
    global0 = array<Struct_3, 18>();
    return arg_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-319f * -1715f);
    var var_1 = Struct_2(var_0, false, func_4(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(~(~1u), 18u)])), global0[_wgslsmith_index_u32(~u_input.c.x, 18u)]), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !vec3<bool>(func_4(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], Struct_3(u_input.a, Struct_2(var_0, false, Struct_1(vec2<u32>(u_input.c.x, 0u), false, vec2<f32>(var_0, var_0), vec2<bool>(true, false)), vec3<bool>(true, true, false)))).b, all(vec2<bool>(true, false)), true), func_2(Struct_2(-506f, any(vec3<bool>(false, false, true)), Struct_1(u_input.c.yy, true, vec2<f32>(-2425f, -1058f), vec2<bool>(true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 18u)], Struct_1(~u_input.c.xy, true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(194f, 741f))), vec2<bool>(true, true)))));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global1 = array<vec4<f32>, 31>();
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(~(~u_input.c.zx), ~_wgslsmith_sub_vec2_u32(var_1.c.a | vec2<u32>(var_1.c.a.x, var_1.c.a.x), vec2<u32>(1u, 4294967295u) & vec2<u32>(u_input.a, 1u))), false && var_1.d.x, var_1.c.c, vec2<bool>(true, any(vec4<bool>(var_1.a <= -1136f, select(true, var_1.b, false), true || var_1.d.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec3<u32>(0u, u_input.c.x, 4294967295u), u_input.c, var_1.c.b) ^ reverseBits(vec3<u32>(var_2.a.x, 4294967295u, 88251u)))));
}

