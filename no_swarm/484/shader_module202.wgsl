struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(0u, vec2<bool>(false, true), -14820i), Struct_3(41306u, vec2<bool>(true, true), -32423i), Struct_3(22586u, vec2<bool>(false, false), -1i), Struct_3(60574u, vec2<bool>(false, true), i32(-2147483648)), Struct_3(11798u, vec2<bool>(false, true), 2147483647i), Struct_3(33496u, vec2<bool>(false, false), -1i), Struct_3(34237u, vec2<bool>(true, false), -36393i), Struct_3(4294967295u, vec2<bool>(false, false), i32(-2147483648)), Struct_3(41608u, vec2<bool>(true, false), 30182i), Struct_3(10175u, vec2<bool>(false, false), 2147483647i), Struct_3(32410u, vec2<bool>(true, false), 88747i), Struct_3(4294967295u, vec2<bool>(true, false), 64991i), Struct_3(4294967295u, vec2<bool>(true, true), 11472i), Struct_3(66641u, vec2<bool>(false, true), 0i), Struct_3(0u, vec2<bool>(false, false), 49988i), Struct_3(1u, vec2<bool>(true, false), -22294i), Struct_3(24767u, vec2<bool>(true, true), 29057i), Struct_3(14776u, vec2<bool>(true, false), 1i), Struct_3(54063u, vec2<bool>(false, false), 16526i), Struct_3(1u, vec2<bool>(true, true), i32(-2147483648)), Struct_3(0u, vec2<bool>(false, false), 203i), Struct_3(1u, vec2<bool>(true, false), -1i), Struct_3(4294967295u, vec2<bool>(true, false), 41279i), Struct_3(22932u, vec2<bool>(false, false), 26122i), Struct_3(6919u, vec2<bool>(false, true), 2147483647i), Struct_3(36900u, vec2<bool>(false, false), 27627i), Struct_3(1u, vec2<bool>(false, false), -1i), Struct_3(90388u, vec2<bool>(false, true), 14395i), Struct_3(0u, vec2<bool>(true, true), 1i));

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(952f, 1976f, -1143f, 1000f), vec4<f32>(729f, 957f, 502f, -1417f), vec4<f32>(1564f, 1862f, -643f, 416f), vec4<f32>(925f, 1000f, 325f, 779f), vec4<f32>(236f, 1000f, -1342f, 1380f), vec4<f32>(1045f, 2004f, -2258f, -484f), vec4<f32>(1207f, 633f, 182f, 507f), vec4<f32>(1000f, 1858f, -348f, -800f), vec4<f32>(828f, -161f, -1000f, -137f), vec4<f32>(-412f, -840f, -1965f, -281f), vec4<f32>(1103f, -663f, -441f, -1412f), vec4<f32>(256f, -408f, 1219f, -345f), vec4<f32>(1412f, -1132f, 212f, 1672f), vec4<f32>(-140f, 185f, 536f, 1029f), vec4<f32>(230f, -775f, -521f, -274f), vec4<f32>(311f, -192f, 778f, 1320f), vec4<f32>(526f, 1146f, 895f, 215f), vec4<f32>(283f, -665f, -973f, -1228f), vec4<f32>(-422f, 517f, -1000f, -204f), vec4<f32>(-178f, 682f, 845f, -137f), vec4<f32>(639f, 1172f, -577f, 410f), vec4<f32>(-2180f, -211f, 886f, 1849f), vec4<f32>(835f, 2150f, -911f, 171f));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    var var_0 = !(!(false && !(-512f > arg_0.b)));
    return u_input.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_3(4294967295u, vec2<bool>(true, any(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, global2.b <= 1222f))), ~u_input.b.x);
    global0 = array<Struct_3, 29>();
    var var_1 = 4294967295u;
    var var_2 = ~(~vec4<u32>(1u, arg_0.a, global2.a, arg_0.a) << (~(~(vec4<u32>(0u, arg_0.a, arg_0.a, global2.a) ^ vec4<u32>(global2.a, var_0.a, 81242u, arg_0.a))) % vec4<u32>(32u)));
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(min(1u, ~arg_0.a), abs(global2.a))), 29u)];
    return global2.b;
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_2, 1>();
    global3 = array<Struct_2, 1>();
    let var_0 = any(vec4<bool>(false, all(vec3<bool>(u_input.c.x > 81171u, any(vec4<bool>(true, false, true, false)), true)), (u_input.c.x >= ~1u) || any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false));
    var var_1 = Struct_2(40358u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c.x, _wgslsmith_f_op_f32(-global2.b)), ~func_2(global3[_wgslsmith_index_u32(19516u, 1u)], global2.a))))));
    let var_2 = ~vec2<i32>(abs(firstLeadingBit(20219i)), 2147483647i);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_2(global3[_wgslsmith_index_u32(1u, 1u)], ~abs(var_1.a)).x, ~_wgslsmith_mod_u32(~4294967295u, 1u), u_input.c.x), vec4<u32>(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(global2.a, 31717u, 10806u), u_input.c), abs(u_input.c)), var_1.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, global2.a), 0u << (0u % 32u)) & ~_wgslsmith_sub_u32(25543u, 1u), 4294967295u)), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(u_input.a < -2147483647i, global2.b <= -1032f), select(true, true, true)));
    let var_1 = ~(~(~u_input.c.yx));
    var var_2 = func_1();
    let var_3 = 77260i;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, countOneBits((vec4<i32>(-1i) * -vec4<i32>(70846i, 1i, var_3, 37732i)) << ((abs(vec4<u32>(36509u, 0u, 90064u, global2.a)) | ~vec4<u32>(var_1.x, 35941u, var_1.x, var_2.a)) % vec4<u32>(32u))));
}

