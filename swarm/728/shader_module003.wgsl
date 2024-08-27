struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<f32>(470f, 1000f), Struct_1(vec2<f32>(-862f, -619f), vec4<bool>(false, false, true, true), vec3<f32>(1381f, 685f, 962f)), false, vec3<bool>(false, false, false), -4801i), Struct_3(vec2<f32>(-417f, 283f), Struct_1(vec2<f32>(-1459f, -992f), vec4<bool>(false, true, false, false), vec3<f32>(582f, -890f, 347f)), false, vec3<bool>(false, false, false), i32(-2147483648)), Struct_3(vec2<f32>(-308f, -463f), Struct_1(vec2<f32>(1198f, 1618f), vec4<bool>(false, true, true, true), vec3<f32>(-1404f, -1056f, -1320f)), true, vec3<bool>(true, false, true), 1i), Struct_3(vec2<f32>(1297f, 675f), Struct_1(vec2<f32>(-551f, -1199f), vec4<bool>(false, true, true, true), vec3<f32>(-320f, 1230f, 1474f)), false, vec3<bool>(true, true, true), 12127i), Struct_3(vec2<f32>(-223f, 749f), Struct_1(vec2<f32>(1209f, 317f), vec4<bool>(false, false, true, true), vec3<f32>(-737f, 909f, 109f)), true, vec3<bool>(true, true, false), i32(-2147483648)), Struct_3(vec2<f32>(1173f, 553f), Struct_1(vec2<f32>(-263f, 201f), vec4<bool>(false, false, false, false), vec3<f32>(874f, -311f, 1758f)), false, vec3<bool>(false, true, false), 22448i), Struct_3(vec2<f32>(1376f, 514f), Struct_1(vec2<f32>(-1605f, 443f), vec4<bool>(false, true, false, false), vec3<f32>(-750f, -1034f, -266f)), true, vec3<bool>(false, false, false), 1i), Struct_3(vec2<f32>(-253f, -1133f), Struct_1(vec2<f32>(1100f, -398f), vec4<bool>(false, false, false, true), vec3<f32>(-258f, 1209f, 2002f)), true, vec3<bool>(true, false, true), -21900i), Struct_3(vec2<f32>(-2206f, 210f), Struct_1(vec2<f32>(596f, 947f), vec4<bool>(true, false, true, false), vec3<f32>(-240f, -711f, -1740f)), false, vec3<bool>(true, false, true), 0i), Struct_3(vec2<f32>(187f, 245f), Struct_1(vec2<f32>(-195f, 1000f), vec4<bool>(false, false, false, true), vec3<f32>(-273f, -1000f, 682f)), true, vec3<bool>(true, true, false), -35055i), Struct_3(vec2<f32>(-1844f, -422f), Struct_1(vec2<f32>(-277f, 154f), vec4<bool>(true, true, true, true), vec3<f32>(-1000f, -325f, -685f)), false, vec3<bool>(false, false, true), 0i), Struct_3(vec2<f32>(-156f, -1307f), Struct_1(vec2<f32>(413f, 1939f), vec4<bool>(true, true, false, true), vec3<f32>(-1144f, -1304f, -513f)), true, vec3<bool>(true, true, true), 2147483647i), Struct_3(vec2<f32>(-1271f, -173f), Struct_1(vec2<f32>(-1655f, -1116f), vec4<bool>(false, true, false, true), vec3<f32>(930f, -332f, 294f)), true, vec3<bool>(true, false, true), 58153i), Struct_3(vec2<f32>(-1866f, 761f), Struct_1(vec2<f32>(821f, 245f), vec4<bool>(true, false, false, false), vec3<f32>(-260f, -567f, 2174f)), true, vec3<bool>(false, false, true), 0i), Struct_3(vec2<f32>(-655f, -650f), Struct_1(vec2<f32>(-488f, -537f), vec4<bool>(true, true, false, false), vec3<f32>(450f, -1470f, -469f)), true, vec3<bool>(false, true, false), -23393i), Struct_3(vec2<f32>(-758f, 960f), Struct_1(vec2<f32>(1152f, -330f), vec4<bool>(false, false, false, false), vec3<f32>(1156f, 262f, -285f)), false, vec3<bool>(false, false, false), 2734i), Struct_3(vec2<f32>(565f, 212f), Struct_1(vec2<f32>(570f, 658f), vec4<bool>(true, true, true, false), vec3<f32>(500f, -1000f, 828f)), true, vec3<bool>(false, false, true), 2147483647i), Struct_3(vec2<f32>(-490f, -217f), Struct_1(vec2<f32>(1338f, -739f), vec4<bool>(false, true, false, true), vec3<f32>(1654f, 1000f, -505f)), false, vec3<bool>(false, true, true), 2147483647i), Struct_3(vec2<f32>(-1211f, -255f), Struct_1(vec2<f32>(298f, -412f), vec4<bool>(false, true, true, false), vec3<f32>(-509f, -374f, -1161f)), false, vec3<bool>(true, false, true), 0i), Struct_3(vec2<f32>(380f, 613f), Struct_1(vec2<f32>(-1294f, 1220f), vec4<bool>(true, false, true, true), vec3<f32>(-1000f, 571f, 494f)), false, vec3<bool>(true, false, true), -24370i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    let var_0 = max(vec2<u32>(10292u, ~_wgslsmith_mod_u32(u_input.a, 0u)), vec2<u32>(~u_input.a, ~_wgslsmith_div_u32(19318u, u_input.a)) << (vec2<u32>(u_input.a, ~min(4294967295u, u_input.a)) % vec2<u32>(32u)));
    global1 = array<Struct_3, 20>();
    var var_1 = Struct_2(vec3<bool>(true, false, u_input.a >= abs(1u >> (var_0.x % 32u))));
    global0 = any(!var_1.a.xz);
    global1 = array<Struct_3, 20>();
    var var_2 = 103916u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(f32(-1f) * -396f)));
}

