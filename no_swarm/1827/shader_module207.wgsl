struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(2147483647i, Struct_1(vec4<f32>(-342f, 803f, -1399f, 245f), vec2<i32>(-59613i, -25664i)), vec2<bool>(true, true), Struct_1(vec4<f32>(-2086f, 508f, -357f, -1000f), vec2<i32>(-30096i, 0i)), false), Struct_2(0i, Struct_1(vec4<f32>(-1163f, 992f, -1000f, 954f), vec2<i32>(35727i, 17377i)), vec2<bool>(true, false), Struct_1(vec4<f32>(-699f, 615f, 341f, -944f), vec2<i32>(i32(-2147483648), 17974i)), false), Struct_2(2147483647i, Struct_1(vec4<f32>(-833f, 241f, -1569f, -1541f), vec2<i32>(-1i, -2386i)), vec2<bool>(true, false), Struct_1(vec4<f32>(-127f, 951f, 401f, -692f), vec2<i32>(59025i, 2147483647i)), false), Struct_2(1i, Struct_1(vec4<f32>(257f, 1300f, -120f, 1748f), vec2<i32>(-1i, 0i)), vec2<bool>(false, false), Struct_1(vec4<f32>(-1234f, 447f, -1643f, 330f), vec2<i32>(-1i, 0i)), true), Struct_2(1i, Struct_1(vec4<f32>(845f, 445f, 1082f, -379f), vec2<i32>(-15626i, -1i)), vec2<bool>(false, true), Struct_1(vec4<f32>(-149f, 1666f, -183f, 871f), vec2<i32>(14039i, 48372i)), true), Struct_2(-1i, Struct_1(vec4<f32>(479f, -218f, 777f, -931f), vec2<i32>(2147483647i, -16081i)), vec2<bool>(true, true), Struct_1(vec4<f32>(-378f, 244f, 693f, -309f), vec2<i32>(2147483647i, 20551i)), true), Struct_2(30580i, Struct_1(vec4<f32>(-111f, -832f, 521f, 1871f), vec2<i32>(0i, 0i)), vec2<bool>(false, true), Struct_1(vec4<f32>(1475f, 439f, 2587f, 911f), vec2<i32>(0i, 0i)), true), Struct_2(12826i, Struct_1(vec4<f32>(1266f, 929f, 1000f, -356f), vec2<i32>(-80420i, 0i)), vec2<bool>(true, true), Struct_1(vec4<f32>(1094f, -179f, -1342f, -1000f), vec2<i32>(2147483647i, i32(-2147483648))), true), Struct_2(-9719i, Struct_1(vec4<f32>(-704f, 1154f, -755f, -1156f), vec2<i32>(-22481i, 2147483647i)), vec2<bool>(false, false), Struct_1(vec4<f32>(-933f, -1401f, -281f, -1000f), vec2<i32>(33473i, 5865i)), false), Struct_2(-47163i, Struct_1(vec4<f32>(-339f, -873f, 1814f, -992f), vec2<i32>(42797i, i32(-2147483648))), vec2<bool>(true, false), Struct_1(vec4<f32>(-671f, -170f, 134f, -370f), vec2<i32>(-39051i, 1i)), true), Struct_2(2147483647i, Struct_1(vec4<f32>(563f, -1933f, 384f, -870f), vec2<i32>(-6198i, -1i)), vec2<bool>(true, true), Struct_1(vec4<f32>(-2013f, -1344f, 1000f, 242f), vec2<i32>(0i, i32(-2147483648))), true), Struct_2(-10716i, Struct_1(vec4<f32>(-1954f, -885f, -1146f, 475f), vec2<i32>(0i, 2147483647i)), vec2<bool>(false, false), Struct_1(vec4<f32>(-1176f, 1000f, -313f, -348f), vec2<i32>(-86174i, -21166i)), true), Struct_2(16363i, Struct_1(vec4<f32>(547f, 1415f, 935f, 1478f), vec2<i32>(53167i, 2147483647i)), vec2<bool>(false, false), Struct_1(vec4<f32>(1122f, 1000f, 1000f, 1035f), vec2<i32>(84113i, -1i)), true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_2, 13>();
    let var_0 = vec2<u32>(select(1u, 1u, false), ~1u) << (_wgslsmith_div_vec2_u32(~vec2<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(5329u, 1u)), ~firstLeadingBit(vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    var var_1 = vec4<bool>(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), ~var_0.x != 1u);
    let var_2 = ~(-abs(-(~vec4<i32>(0i, -8159i, -2147483647i, -56891i))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)), _wgslsmith_f_op_vec4_f32(min(arg_1.a, vec4<f32>(arg_0, arg_0, -558f, -652f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 248f, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), _wgslsmith_f_op_f32(step(arg_1.a.x, arg_0))))), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(var_2.x, u_input.c, var_2.x, arg_1.b.x))), firstLeadingBit(vec4<i32>(u_input.a, u_input.c, 1i, 0i))), -15423i));
    return _wgslsmith_f_op_f32(sign(arg_0));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1599f + 445f))), 467f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(350f)), Struct_1(vec4<f32>(1897f, -1719f, 1000f, -1031f), u_input.b.xx))))), 307f), vec2<i32>(select(i32(-1i) * -18009i, -1i, true), u_input.a >> (~12380u % 32u)));
    global0 = array<Struct_2, 13>();
    var var_1 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))));
    let var_2 = var_0.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f - var_2.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, -354f)))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(23061u, 1u, 76306u), vec3<u32>(67670u, 4294967295u, 4294967295u)), firstLeadingBit(vec3<u32>(1u, 18626u, 0u)))));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_1 = 2147483647i;
    var var_2 = var_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, -609f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-175f + -783f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1811f, 403f, 1484f), vec3<f32>(-1951f, -334f, -193f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-800f, 1233f, 703f), vec3<f32>(515f, -972f, -1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_1()));
}

