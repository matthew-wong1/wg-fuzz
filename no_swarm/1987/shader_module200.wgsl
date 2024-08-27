struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 2147483647i, -51001i);

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(false, Struct_1(vec3<f32>(-848f, -1000f, 530f), -1056f), Struct_1(vec3<f32>(748f, -538f, 357f), 1000f), Struct_1(vec3<f32>(-1004f, 107f, -1000f), 257f), false), Struct_2(true, Struct_1(vec3<f32>(949f, 389f, -1000f), -536f), Struct_1(vec3<f32>(1586f, -126f, -994f), 1000f), Struct_1(vec3<f32>(-672f, -681f, -700f), -1408f), true), Struct_2(false, Struct_1(vec3<f32>(-1109f, 1000f, 374f), 253f), Struct_1(vec3<f32>(-656f, -1058f, 323f), 998f), Struct_1(vec3<f32>(1448f, 308f, 407f), -233f), true), Struct_2(false, Struct_1(vec3<f32>(-1820f, 1525f, 1316f), 134f), Struct_1(vec3<f32>(1634f, 1237f, 254f), -975f), Struct_1(vec3<f32>(-349f, -762f, -548f), 612f), true), Struct_2(false, Struct_1(vec3<f32>(-1593f, -119f, 715f), 186f), Struct_1(vec3<f32>(689f, -1349f, -539f), -2129f), Struct_1(vec3<f32>(-1067f, -1749f, 1316f), -2808f), false), Struct_2(false, Struct_1(vec3<f32>(466f, 1965f, -783f), -1312f), Struct_1(vec3<f32>(1361f, 180f, 129f), 1000f), Struct_1(vec3<f32>(-1441f, 754f, 1728f), 946f), true), Struct_2(false, Struct_1(vec3<f32>(371f, 813f, -195f), 196f), Struct_1(vec3<f32>(179f, -1762f, -717f), -175f), Struct_1(vec3<f32>(410f, 401f, 1862f), 455f), false), Struct_2(false, Struct_1(vec3<f32>(-346f, -202f, -308f), -540f), Struct_1(vec3<f32>(578f, -299f, -449f), 130f), Struct_1(vec3<f32>(-867f, 1342f, 1058f), -1065f), true), Struct_2(false, Struct_1(vec3<f32>(-1865f, -1770f, -1122f), 1000f), Struct_1(vec3<f32>(-1808f, -1817f, 1387f), 1115f), Struct_1(vec3<f32>(202f, 419f, 591f), -644f), true), Struct_2(false, Struct_1(vec3<f32>(-497f, 1549f, -661f), 512f), Struct_1(vec3<f32>(1128f, -1618f, 347f), -646f), Struct_1(vec3<f32>(-305f, 257f, -1745f), 336f), true), Struct_2(true, Struct_1(vec3<f32>(219f, 1218f, -1130f), 457f), Struct_1(vec3<f32>(312f, -1078f, 479f), 327f), Struct_1(vec3<f32>(559f, 742f, -1886f), 275f), true), Struct_2(true, Struct_1(vec3<f32>(-722f, 1331f, -1003f), -865f), Struct_1(vec3<f32>(184f, 1600f, -1588f), 397f), Struct_1(vec3<f32>(-377f, -668f, 1081f), -1762f), false), Struct_2(true, Struct_1(vec3<f32>(-406f, 1000f, 654f), 1000f), Struct_1(vec3<f32>(293f, 409f, 1000f), 831f), Struct_1(vec3<f32>(1000f, -1027f, -793f), -930f), true), Struct_2(true, Struct_1(vec3<f32>(910f, 1501f, 412f), -692f), Struct_1(vec3<f32>(828f, 111f, 256f), 489f), Struct_1(vec3<f32>(533f, 1000f, -508f), -828f), true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> Struct_2 {
    let var_0 = firstTrailingBit(u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(global1.d.a)), global1.b.a)), vec3<f32>(-411f, -703f, _wgslsmith_f_op_f32(-428f * global1.b.b))), _wgslsmith_f_op_vec3_f32(-global1.d.a), global1.e)), -623f);
    let var_2 = global1.b;
    global0 = !select(!(!(!vec3<bool>(true, global0.x, false))), vec3<bool>(global0.x, global1.a, global1.e), !global0.x);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.d.b, _wgslsmith_f_op_f32(-527f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.d.a.x))))))));
    return Struct_2(false, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), _wgslsmith_div_f32(1333f, var_3), _wgslsmith_f_op_f32(select(global1.c.a.x, -1293f, true))))), _wgslsmith_f_op_f32(f32(-1f) * -514f)), Struct_1(vec3<f32>(626f, _wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -879f)), global1.d.b), Struct_1(var_1.a, _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f + var_1.a.x))))), !(!global1.a) == (~u_input.d < ~var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!(!vec4<bool>(global1.e, global0.x, global1.e, global0.x)))), vec4<bool>(true, global0.x, any(!vec4<bool>(true, global0.x, global1.a, global1.e)), true), global1.e);
    global3 = array<Struct_2, 14>();
    var var_1 = 1u <= reverseBits(~(_wgslsmith_dot_vec2_u32(vec2<u32>(14540u, u_input.d), vec2<u32>(1u, 4294967295u)) & 1u));
    global1 = func_1();
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-133f, firstTrailingBit(u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(286f - _wgslsmith_f_op_f32(global1.c.a.x - 187f)), -505f, global1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -205f))), u_input.a.x);
}

