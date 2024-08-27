struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec4<f32>(-272f, 1000f, -159f, -811f), Struct_1(vec4<bool>(false, false, true, true)), 140f), Struct_4(vec4<f32>(-1381f, 539f, -139f, -762f), Struct_1(vec4<bool>(true, true, true, false)), -1000f), Struct_4(vec4<f32>(665f, 1376f, -1000f, 876f), Struct_1(vec4<bool>(false, false, false, true)), -741f), Struct_4(vec4<f32>(-701f, -284f, 1000f, -131f), Struct_1(vec4<bool>(false, false, false, false)), -688f), Struct_4(vec4<f32>(-2393f, -556f, -357f, 1126f), Struct_1(vec4<bool>(false, false, true, false)), -147f), Struct_4(vec4<f32>(-766f, 753f, -1000f, 584f), Struct_1(vec4<bool>(false, true, false, true)), -288f), Struct_4(vec4<f32>(-1175f, -894f, 1000f, -827f), Struct_1(vec4<bool>(true, true, true, true)), 1010f), Struct_4(vec4<f32>(1000f, 407f, 477f, -449f), Struct_1(vec4<bool>(true, true, false, false)), -1967f), Struct_4(vec4<f32>(-1000f, 1132f, -1063f, 1407f), Struct_1(vec4<bool>(false, true, false, true)), -1100f), Struct_4(vec4<f32>(-884f, 1267f, -695f, -262f), Struct_1(vec4<bool>(true, false, false, true)), -1000f), Struct_4(vec4<f32>(-639f, -146f, -272f, 614f), Struct_1(vec4<bool>(true, false, true, false)), 733f), Struct_4(vec4<f32>(772f, -1128f, 230f, 1000f), Struct_1(vec4<bool>(true, true, true, false)), 118f), Struct_4(vec4<f32>(1317f, 954f, 2403f, -796f), Struct_1(vec4<bool>(false, false, true, false)), -135f), Struct_4(vec4<f32>(2816f, -1985f, -595f, -1422f), Struct_1(vec4<bool>(true, false, false, true)), 685f), Struct_4(vec4<f32>(-2494f, -142f, -752f, -115f), Struct_1(vec4<bool>(true, true, true, false)), -421f), Struct_4(vec4<f32>(-896f, 965f, -621f, -353f), Struct_1(vec4<bool>(true, false, true, true)), -1954f), Struct_4(vec4<f32>(889f, 791f, -487f, -1255f), Struct_1(vec4<bool>(false, false, false, false)), -691f), Struct_4(vec4<f32>(-704f, 784f, -146f, 233f), Struct_1(vec4<bool>(false, false, false, true)), -292f), Struct_4(vec4<f32>(458f, -1076f, -871f, -205f), Struct_1(vec4<bool>(true, true, false, true)), 520f), Struct_4(vec4<f32>(-255f, -619f, 502f, 285f), Struct_1(vec4<bool>(false, true, false, false)), 588f), Struct_4(vec4<f32>(582f, 1006f, 658f, 810f), Struct_1(vec4<bool>(false, true, false, false)), -1307f), Struct_4(vec4<f32>(565f, 372f, 245f, -259f), Struct_1(vec4<bool>(true, true, true, true)), 1000f), Struct_4(vec4<f32>(458f, -1685f, 992f, -261f), Struct_1(vec4<bool>(false, true, false, false)), 172f), Struct_4(vec4<f32>(137f, 1412f, -1957f, 1166f), Struct_1(vec4<bool>(false, false, false, true)), 844f), Struct_4(vec4<f32>(590f, 552f, 1000f, -881f), Struct_1(vec4<bool>(true, false, true, false)), -458f), Struct_4(vec4<f32>(873f, -449f, -221f, 2011f), Struct_1(vec4<bool>(false, false, false, true)), 934f), Struct_4(vec4<f32>(-227f, 592f, -1373f, -113f), Struct_1(vec4<bool>(false, false, true, true)), 665f), Struct_4(vec4<f32>(-1000f, -678f, 769f, 1665f), Struct_1(vec4<bool>(true, true, false, true)), 322f), Struct_4(vec4<f32>(1015f, -627f, -1000f, 1335f), Struct_1(vec4<bool>(false, true, true, true)), -737f), Struct_4(vec4<f32>(1291f, 895f, -865f, -179f), Struct_1(vec4<bool>(true, false, true, true)), 738f), Struct_4(vec4<f32>(910f, 876f, 756f, -162f), Struct_1(vec4<bool>(true, true, false, false)), -1000f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(593f * -155f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.d, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(u_input.d, u_input.b, 1u))), u_input.d), !(!(!global0.a.a.x))), ~vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_div_u32(53079u, 118679u), u_input.b, u_input.d));
}

