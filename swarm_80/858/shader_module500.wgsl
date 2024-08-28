struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(2059u, 56997u, 22729u), Struct_1(vec3<f32>(161f, 1260f, 670f), vec3<f32>(-869f, -728f, 935f), vec2<u32>(4831u, 10639u)), vec4<f32>(-2645f, 545f, 930f, 579f)), Struct_2(vec3<u32>(109510u, 4294967295u, 10736u), Struct_1(vec3<f32>(-202f, 970f, -328f), vec3<f32>(-396f, -1083f, -278f), vec2<u32>(13580u, 1u)), vec4<f32>(339f, 191f, 1000f, 383f)), Struct_2(vec3<u32>(0u, 83020u, 10183u), Struct_1(vec3<f32>(1000f, 469f, 460f), vec3<f32>(1345f, 911f, -767f), vec2<u32>(1u, 0u)), vec4<f32>(369f, 157f, -386f, -1013f)), Struct_2(vec3<u32>(28033u, 58443u, 0u), Struct_1(vec3<f32>(335f, 159f, -535f), vec3<f32>(628f, -343f, -586f), vec2<u32>(23010u, 0u)), vec4<f32>(-690f, -484f, 1866f, 1249f)), Struct_2(vec3<u32>(11574u, 4294967295u, 0u), Struct_1(vec3<f32>(-587f, -1060f, 1789f), vec3<f32>(649f, 204f, -434f), vec2<u32>(17791u, 81797u)), vec4<f32>(2316f, -311f, -651f, 632f)), Struct_2(vec3<u32>(15092u, 34317u, 122685u), Struct_1(vec3<f32>(-1628f, 1109f, -1188f), vec3<f32>(-1415f, 164f, -858f), vec2<u32>(51958u, 49019u)), vec4<f32>(2150f, 110f, -1000f, -1000f)), Struct_2(vec3<u32>(46275u, 0u, 1u), Struct_1(vec3<f32>(-584f, -196f, 1000f), vec3<f32>(781f, -1000f, -671f), vec2<u32>(35629u, 42242u)), vec4<f32>(-1353f, 1635f, 1003f, 659f)), Struct_2(vec3<u32>(1u, 36573u, 4294967295u), Struct_1(vec3<f32>(961f, -133f, -1000f), vec3<f32>(-1793f, 1000f, 1000f), vec2<u32>(22738u, 1u)), vec4<f32>(1553f, -545f, -1050f, 1372f)), Struct_2(vec3<u32>(39348u, 42715u, 4294967295u), Struct_1(vec3<f32>(-875f, -1557f, 164f), vec3<f32>(585f, 1783f, 722f), vec2<u32>(4294967295u, 0u)), vec4<f32>(-794f, 150f, -130f, -325f)), Struct_2(vec3<u32>(89343u, 30980u, 68476u), Struct_1(vec3<f32>(1000f, -1583f, -246f), vec3<f32>(-130f, -1000f, 714f), vec2<u32>(4294967295u, 19630u)), vec4<f32>(-131f, 221f, -456f, 1320f)), Struct_2(vec3<u32>(9443u, 0u, 0u), Struct_1(vec3<f32>(282f, 171f, 1074f), vec3<f32>(1546f, 1234f, 567f), vec2<u32>(75869u, 4294967295u)), vec4<f32>(1620f, 293f, 446f, 503f)), Struct_2(vec3<u32>(22833u, 0u, 75810u), Struct_1(vec3<f32>(2025f, 488f, -225f), vec3<f32>(666f, -927f, -648f), vec2<u32>(0u, 1u)), vec4<f32>(219f, 1488f, 974f, -465f)), Struct_2(vec3<u32>(6224u, 4294967295u, 0u), Struct_1(vec3<f32>(-163f, -396f, 868f), vec3<f32>(-492f, 1026f, 376f), vec2<u32>(4294967295u, 1u)), vec4<f32>(161f, -867f, 1000f, 242f)), Struct_2(vec3<u32>(1u, 2482u, 0u), Struct_1(vec3<f32>(-1202f, 758f, -511f), vec3<f32>(327f, -209f, -628f), vec2<u32>(19195u, 36043u)), vec4<f32>(621f, 1503f, 910f, -273f)), Struct_2(vec3<u32>(15835u, 45023u, 10295u), Struct_1(vec3<f32>(886f, -2443f, -1119f), vec3<f32>(420f, -350f, -343f), vec2<u32>(7081u, 4294967295u)), vec4<f32>(1237f, -1411f, -1511f, -364f)), Struct_2(vec3<u32>(30694u, 0u, 1u), Struct_1(vec3<f32>(756f, 1036f, -892f), vec3<f32>(-1235f, 471f, 2149f), vec2<u32>(11085u, 4294967295u)), vec4<f32>(1235f, 966f, 144f, 1000f)), Struct_2(vec3<u32>(4294967295u, 66373u, 4294967295u), Struct_1(vec3<f32>(-466f, -1290f, 135f), vec3<f32>(-186f, 441f, 963f), vec2<u32>(0u, 1u)), vec4<f32>(1152f, -244f, 730f, 1361f)), Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec3<f32>(446f, 1572f, 998f), vec3<f32>(220f, -1073f, -1000f), vec2<u32>(4294967295u, 0u)), vec4<f32>(1000f, -726f, 151f, -1000f)), Struct_2(vec3<u32>(1u, 0u, 25214u), Struct_1(vec3<f32>(300f, 644f, 1000f), vec3<f32>(316f, 470f, -224f), vec2<u32>(16218u, 8836u)), vec4<f32>(-455f, -137f, -713f, 763f)), Struct_2(vec3<u32>(4294967295u, 28313u, 25679u), Struct_1(vec3<f32>(-674f, -749f, -926f), vec3<f32>(341f, -586f, 1000f), vec2<u32>(1695u, 0u)), vec4<f32>(1362f, 1139f, 1679f, 394f)), Struct_2(vec3<u32>(3469u, 0u, 0u), Struct_1(vec3<f32>(-172f, -360f, 213f), vec3<f32>(1000f, -218f, 1000f), vec2<u32>(0u, 0u)), vec4<f32>(186f, 822f, -176f, 200f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    let var_0 = ~firstLeadingBit(min(vec2<u32>(1u, 46515u), vec2<u32>(1u, 1u)));
    global0 = array<Struct_2, 21>();
    return var_0.x;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(361f, _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(-488f - 1650f), 1305f) * vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-731f)), -145f, _wgslsmith_f_op_f32(sign(871f)), _wgslsmith_div_f32(1291f, -1000f))))));
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = false;
    var var_2 = u_input.d;
    return 29113u;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = !arg_0;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = arg_2;
    var_1 = vec4<u32>(~4294967295u, 0u, ~(var_1.x << ((~var_1.x ^ func_2()) % 32u)), 1u);
    return Struct_2(vec3<u32>(~756u, ~select(func_3(), firstTrailingBit(var_1.x), !arg_0), _wgslsmith_mult_u32(var_1.x, ~135016u) & _wgslsmith_mod_u32(1u, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-882f, 320f, 886f)) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1526f, -537f, -1000f), vec3<f32>(-971f, -1038f, -1122f), vec3<bool>(arg_0, arg_1.x, var_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1456f, -1000f, 1830f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -926f, -1061f))))), vec2<u32>(~min(4294967295u, 1u), ~(~var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, 860f, -1178f, 1631f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1844f, -135f, 178f, 1000f)), var_0)) + vec4<f32>(1f, 1f, 1f, 1f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1352f, arg_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.c.x), _wgslsmith_div_f32(arg_1.b.a.x, 943f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + -1605f) * -221f)), arg_1.c.xwx, arg_1.a.xx);
    global0 = array<Struct_2, 21>();
    let var_1 = false;
    return -807f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f * 381f)), true)), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-212f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<f32>(1000f, 1029f), func_1(true, vec2<bool>(true, false), vec4<u32>(1u, 38340u, 4988u, 4294967295u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(534f, 1000f)) + _wgslsmith_f_op_f32(min(-291f, -103f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c ^ -28014i);
}

