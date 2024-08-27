struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec2<u32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -31512i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = -1i;
    var var_1 = arg_3.x;
    var_1 = arg_0.b.c.a;
    let var_2 = Struct_5(Struct_3(arg_2.x, arg_0.b.c, Struct_1(u_input.a, arg_1, arg_0.b.b.c, select(!arg_2.zwz, vec3<bool>(false, true, false), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.d.c, vec3<f32>(1445f, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_2.x, false, false))))), arg_0.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, arg_0.b.c.c.x, arg_0.b.d.c.x, arg_0.a.x) + vec4<f32>(-1220f, arg_0.b.b.e.x, -184f, 973f)))), reverseBits(u_input.c), vec3<i32>(-6986i, 2147483647i & _wgslsmith_dot_vec2_i32(min(u_input.d.xx, vec2<i32>(arg_0.b.c.b.x, 1i)), firstLeadingBit(vec2<i32>(u_input.b, -2147483647i))), u_input.d.x), true);
    var var_3 = select(!arg_2.yzy, var_2.a.b.d, vec3<bool>(var_2.a.a, arg_0.b.d.d.x | all(select(arg_2, arg_2, false)), _wgslsmith_mult_i32(u_input.b, _wgslsmith_mult_i32(0i, 417i)) < ~arg_1.x));
    return vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(48719u, arg_0.c.x)), 4294967295u);
}

fn func_3() -> bool {
    let var_0 = select(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, 15121u), firstTrailingBit(vec3<u32>(44779u, u_input.a, 41928u))), _wgslsmith_mod_u32(1u, u_input.a), u_input.a), abs(reverseBits(vec3<u32>(0u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), false || !all(vec3<bool>(false, true, false))));
    var var_1 = abs(~vec3<i32>(0i, _wgslsmith_div_i32(u_input.c, 0i) << (46291u % 32u), -u_input.b | (20036i & u_input.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f * 1896f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f + -1415f) * -949f))), 1f), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2110f, 837f) * -441f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f + 1610f) * _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(sign(-1095f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-341f)) * _wgslsmith_f_op_f32(min(1337f, -571f))))), _wgslsmith_f_op_f32(step(1233f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(532f, -1866f) + _wgslsmith_div_f32(-389f, 1072f)))))));
    var_1 = abs(vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(var_1.x << (u_input.a % 32u)), ~1i), reverseBits(u_input.b >> (5199u % 32u)) & u_input.c, 46474i));
    global1 = abs(reverseBits(u_input.c));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(max(1352f, _wgslsmith_f_op_f32(sign(var_2.x))))) > -1461f);
}

fn func_1() -> vec3<f32> {
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), firstLeadingBit(vec2<i32>(0i, u_input.d.x))), -countOneBits(vec2<i32>(2147483647i, -2147483647i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) >> (min(1u, _wgslsmith_dot_vec2_u32(func_2(Struct_4(vec3<f32>(-586f, 204f, 550f), Struct_3(false, Struct_1(u_input.a, vec3<i32>(-2147483647i, u_input.d.x, u_input.c), vec3<f32>(-2323f, -255f, -194f), vec3<bool>(true, true, false), vec3<f32>(501f, 836f, -436f)), Struct_1(u_input.a, u_input.d, vec3<f32>(1273f, -981f, -950f), vec3<bool>(true, false, false), vec3<f32>(-469f, 446f, 906f)), Struct_1(8127u, u_input.d, vec3<f32>(1103f, 290f, -1440f), vec3<bool>(false, false, false), vec3<f32>(-666f, -678f, -218f))), vec2<u32>(u_input.a, u_input.a), 2147483647i), vec3<i32>(2147483647i, -33214i, u_input.c), vec4<bool>(true, true, true, false), vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, 1272u))) >> (u_input.a % 32u)) % 32u);
    global0 = -1354f;
    let var_0 = (~((vec2<u32>(4294967295u, 1u) & vec2<u32>(u_input.a, u_input.a)) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) << ((vec2<u32>(u_input.a, ~65180u) & select(vec2<u32>(5005u, u_input.a) << (vec2<u32>(20936u, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a), func_3())) % vec2<u32>(32u))) & firstLeadingBit(~(~vec2<u32>(u_input.a, u_input.a)));
    let var_1 = false;
    let var_2 = Struct_5(Struct_3(var_1, Struct_1(0u | func_2(Struct_4(vec3<f32>(624f, 680f, 1534f), Struct_3(var_1, Struct_1(1074u, u_input.d, vec3<f32>(-720f, 363f, 1220f), vec3<bool>(var_1, true, true), vec3<f32>(731f, 1478f, -647f)), Struct_1(1u, vec3<i32>(1i, 21635i, u_input.c), vec3<f32>(309f, -505f, -601f), vec3<bool>(var_1, var_1, false), vec3<f32>(314f, 1747f, -637f)), Struct_1(15608u, vec3<i32>(u_input.d.x, -2147483647i, u_input.b), vec3<f32>(460f, -223f, 845f), vec3<bool>(false, true, var_1), vec3<f32>(-1337f, 2449f, 1000f))), var_0, 24375i), u_input.d, vec4<bool>(var_1, true, false, var_1), var_0).x, _wgslsmith_mod_vec3_i32(vec3<i32>(2997i, u_input.c, -1i), u_input.d) & ~vec3<i32>(u_input.b, u_input.c, -35783i), vec3<f32>(-1465f, _wgslsmith_f_op_f32(-1728f + -663f), _wgslsmith_f_op_f32(trunc(-1205f))), !select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, false), var_1), vec3<f32>(_wgslsmith_f_op_f32(select(1000f, 286f, false)), 507f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(abs(_wgslsmith_mult_u32(51486u, 44471u)), u_input.d, vec3<f32>(_wgslsmith_f_op_f32(sign(-196f)), -534f, _wgslsmith_f_op_f32(floor(852f))), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true), !vec3<bool>(true, var_1, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -385f, 493f))), Struct_1(_wgslsmith_dot_vec2_u32(~var_0, vec2<u32>(58714u, 42508u)), _wgslsmith_sub_vec3_i32(u_input.d ^ vec3<i32>(u_input.b, 61586i, u_input.c), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1558f, -1000f, -2213f))), !select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(true, var_1, true)), vec3<f32>(_wgslsmith_f_op_f32(min(-1162f, -278f)), _wgslsmith_f_op_f32(816f * -404f), _wgslsmith_f_op_f32(473f - 349f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1477f, -1000f, 859f, 146f), vec4<f32>(-817f, 631f, -923f, -307f), vec4<bool>(var_1, false, var_1, var_1)))))))), u_input.d.x, u_input.d, var_1);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.a.b.e)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.d.c.x)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(var_2.b.x - var_2.a.b.c.x)) * var_2.a.c.c)) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_2.b.x, -2231f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.x * 1009f))), var_2.a.d.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, 1034f, 1864f)) - _wgslsmith_f_op_vec3_f32(func_1())))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(413f, -1034f, -700f), vec3<f32>(1311f, -2255f, -538f)))))), Struct_3(!any(vec3<bool>(true, true, true)) || false, Struct_1(u_input.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(-1658i, u_input.c, -2147483647i)), u_input.d & vec3<i32>(u_input.b, 20135i, u_input.d.x), countOneBits(vec3<i32>(-43443i, u_input.c, -2147483647i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1081f, 390f, 568f), vec3<f32>(-1199f, 2440f, -488f))))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1973f, -986f, 1005f))), Struct_1(68372u, u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1460f, 1542f, 1298f)), vec3<bool>(all(vec3<bool>(false, true, false)), 36062i > u_input.c, false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-682f, -1000f, -563f) + vec3<f32>(444f, -624f, 675f)), vec3<f32>(-578f, 399f, -1072f)))), Struct_1(~(48816u << (u_input.a % 32u)), u_input.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-967f, -652f, -1730f) - vec3<f32>(679f, 1215f, -1335f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1093f, 1407f, 219f))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1940f, 1011f, 526f)))))), vec2<u32>((_wgslsmith_dot_vec2_u32(vec2<u32>(36751u, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(699u, 0u, u_input.a)) % 32u)) | _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, 30793u))), 4294967295u), -1i);
    let var_1 = -579f;
    var var_2 = u_input.d;
    var var_3 = ~firstLeadingBit(var_0.c);
    var var_4 = vec3<i32>(2147483647i, 2147483647i, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_add_u32(var_0.c.x, var_3.x))), var_0.b.b.e, firstTrailingBit(4294967295u));
}

