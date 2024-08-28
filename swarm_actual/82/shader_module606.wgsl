struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_3(Struct_1(vec4<f32>(2129f, -878f, 694f, -1630f), true, vec4<i32>(-24491i, 1i, 1i, 2147483647i), -466f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-477f, -216f, -1010f, -405f), false, vec4<i32>(i32(-2147483648), -10987i, -1i, 1i), 603f))), Struct_5(Struct_3(Struct_1(vec4<f32>(1119f, 521f, -934f, -1781f), false, vec4<i32>(34021i, -1i, -1i, -1i), -1000f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-511f, -1841f, 751f, 291f), true, vec4<i32>(22545i, 6676i, -18958i, 52915i), -727f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-116f, 976f, -1598f, 379f), true, vec4<i32>(1i, -16678i, -10462i, -1i), 1698f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-3089f, 1000f, -144f, -717f), true, vec4<i32>(i32(-2147483648), -25467i, 0i, 0i), -801f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-936f, 218f, 780f, 300f), true, vec4<i32>(48565i, -16057i, 0i, -7552i), -1977f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-972f, 948f, 881f, -110f), true, vec4<i32>(i32(-2147483648), 6592i, -1i, 0i), -589f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-1386f, 1000f, -1437f, 1697f), true, vec4<i32>(i32(-2147483648), 33679i, -1107i, 1i), -3132f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-976f, 451f, -1101f, -156f), true, vec4<i32>(-1i, 2147483647i, -40405i, 26119i), -2128f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-1254f, 1116f, -577f, -2180f), false, vec4<i32>(1i, 54840i, -12392i, -25320i), 1229f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-368f, -1891f, -2379f, -1720f), false, vec4<i32>(49660i, 4244i, -26931i, -5605i), 508f))), Struct_5(Struct_3(Struct_1(vec4<f32>(-664f, -124f, 807f, 1005f), false, vec4<i32>(1i, i32(-2147483648), 9647i, 2147483647i), -599f))), Struct_5(Struct_3(Struct_1(vec4<f32>(939f, 246f, -989f, 556f), false, vec4<i32>(1i, i32(-2147483648), 4329i, -5193i), -446f))), Struct_5(Struct_3(Struct_1(vec4<f32>(2220f, 958f, -1115f, 796f), true, vec4<i32>(-24348i, i32(-2147483648), 2147483647i, 31429i), 263f))));

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(296f, 1000f, 514f, -361f), vec4<f32>(-1000f, 1298f, 632f, 358f), vec4<f32>(-998f, -489f, -1000f, 935f), vec4<f32>(1055f, -185f, 121f, 838f), vec4<f32>(1313f, -390f, 1229f, 399f), vec4<f32>(-1000f, -377f, -774f, 213f), vec4<f32>(-3482f, 1000f, 1294f, 142f), vec4<f32>(2185f, 1135f, 611f, 440f), vec4<f32>(-241f, -284f, -1000f, -1871f), vec4<f32>(222f, 597f, -1435f, -152f), vec4<f32>(1706f, 1000f, -796f, 276f), vec4<f32>(-1000f, 1493f, -1074f, 275f), vec4<f32>(292f, -741f, 408f, -805f), vec4<f32>(1713f, 1895f, 847f, -983f), vec4<f32>(1000f, -148f, 388f, 1000f), vec4<f32>(-113f, -1129f, -489f, -424f), vec4<f32>(-280f, 2134f, -757f, 1000f), vec4<f32>(1451f, -1066f, 2422f, 249f), vec4<f32>(1000f, 238f, -303f, 1000f), vec4<f32>(268f, 1428f, 352f, 1000f), vec4<f32>(2397f, -902f, 907f, 1193f), vec4<f32>(499f, -818f, -414f, -1000f), vec4<f32>(260f, 219f, -2131f, -1005f), vec4<f32>(-592f, -1000f, 1000f, -646f), vec4<f32>(-383f, 1138f, -1160f, -1440f), vec4<f32>(1063f, -1858f, -1139f, -674f));

var<private> global4: array<vec2<u32>, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a.a.c.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(round(global1.a.a.a));
    global4 = array<vec2<u32>, 2>();
    var var_1 = 32571u;
    let var_2 = global1.a.a.c.www;
    global1 = global2[_wgslsmith_index_u32(~u_input.a.x, 15u)];
    let var_3 = !(!select(vec3<bool>(global1.a.a.b, global1.a.a.b, true), !(!vec3<bool>(true, global1.a.a.b, global1.a.a.b)), select(vec3<bool>(global1.a.a.b, global1.a.a.b, global1.a.a.b), !vec3<bool>(global1.a.a.b, true, global1.a.a.b), select(vec3<bool>(global1.a.a.b, global1.a.a.b, global1.a.a.b), vec3<bool>(true, false, global1.a.a.b), global1.a.a.b))));
    var_1 = _wgslsmith_mod_u32(min(firstLeadingBit(u_input.a.x), firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), 18310u);
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_0.yzz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, ~0u, firstLeadingBit(u_input.a.x)));
}

