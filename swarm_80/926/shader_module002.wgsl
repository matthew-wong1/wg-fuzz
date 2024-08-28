struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(-449f, -113f), vec4<u32>(30485u, 67727u, 1u, 0u), vec2<f32>(-377f, 518f), vec2<bool>(false, true)), Struct_1(vec2<f32>(1160f, -687f), vec4<u32>(0u, 8495u, 3390u, 64238u), vec2<f32>(749f, -500f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-742f, 579f), vec4<u32>(0u, 1u, 0u, 22253u), vec2<f32>(740f, -1000f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-979f, 1052f), vec4<u32>(4294967295u, 0u, 4821u, 26557u), vec2<f32>(-1000f, -532f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1702f, 494f), vec4<u32>(0u, 0u, 35732u, 0u), vec2<f32>(963f, 1547f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-1212f, -1017f), vec4<u32>(74337u, 46273u, 25607u, 35356u), vec2<f32>(892f, -304f), vec2<bool>(true, false)), Struct_1(vec2<f32>(750f, 803f), vec4<u32>(0u, 23891u, 7673u, 47279u), vec2<f32>(1664f, -107f), vec2<bool>(true, false)), Struct_1(vec2<f32>(1233f, 1672f), vec4<u32>(0u, 4294967295u, 28149u, 1u), vec2<f32>(2794f, -1658f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-222f, -430f), vec4<u32>(97564u, 71237u, 1u, 4294967295u), vec2<f32>(-516f, -790f), vec2<bool>(false, true)), Struct_1(vec2<f32>(334f, -1000f), vec4<u32>(0u, 66762u, 0u, 1748u), vec2<f32>(831f, 433f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-1973f, -875f), vec4<u32>(0u, 1u, 9258u, 1u), vec2<f32>(-713f, -255f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1759f, -1443f), vec4<u32>(0u, 8619u, 0u, 4294967295u), vec2<f32>(486f, 203f), vec2<bool>(true, true)), Struct_1(vec2<f32>(135f, -269f), vec4<u32>(36917u, 105285u, 1u, 89893u), vec2<f32>(-457f, -103f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1000f, 932f), vec4<u32>(0u, 97473u, 4294967295u, 105329u), vec2<f32>(-407f, 273f), vec2<bool>(false, true)), Struct_1(vec2<f32>(1246f, -470f), vec4<u32>(1u, 4294967295u, 65136u, 0u), vec2<f32>(1182f, 285f), vec2<bool>(false, false)), Struct_1(vec2<f32>(122f, 2248f), vec4<u32>(23413u, 4294967295u, 44928u, 25426u), vec2<f32>(1187f, 754f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-139f, 590f), vec4<u32>(50242u, 1u, 2624u, 4294967295u), vec2<f32>(162f, 622f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1868f, -220f), vec4<u32>(1u, 30717u, 24305u, 1u), vec2<f32>(249f, 1088f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-604f, 350f), vec4<u32>(0u, 50281u, 1u, 28646u), vec2<f32>(2115f, -229f), vec2<bool>(false, true)), Struct_1(vec2<f32>(111f, -891f), vec4<u32>(81982u, 0u, 21773u, 4294967295u), vec2<f32>(584f, -1000f), vec2<bool>(false, true)), Struct_1(vec2<f32>(587f, -679f), vec4<u32>(101792u, 113548u, 38594u, 1u), vec2<f32>(1063f, -746f), vec2<bool>(false, true)), Struct_1(vec2<f32>(174f, -167f), vec4<u32>(0u, 43871u, 37059u, 4294967295u), vec2<f32>(-453f, -541f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-292f, -958f), vec4<u32>(29995u, 7136u, 84579u, 0u), vec2<f32>(1570f, -605f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-340f, -1000f), vec4<u32>(17704u, 70230u, 0u, 27291u), vec2<f32>(1872f, -1263f), vec2<bool>(false, false)), Struct_1(vec2<f32>(175f, -138f), vec4<u32>(13414u, 8435u, 0u, 47729u), vec2<f32>(1094f, 1309f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-839f, 1446f), vec4<u32>(49992u, 116395u, 4294967295u, 1u), vec2<f32>(1099f, -1134f), vec2<bool>(true, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_1 = any(arg_1.c.xwz);
    global0 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(246f, arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1317f, -2010f, -590f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, 1000f) - vec3<f32>(-226f, arg_1.a.x, arg_1.a.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, -155f, 526f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * -1992f) * 1f), _wgslsmith_f_op_f32(min(-554f, var_2.x)))), vec4<u32>(~(~u_input.a.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(24995u, arg_2.x, arg_1.b, 0u)), abs(vec4<u32>(u_input.a.x, arg_1.b, 35506u, arg_2.x)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, 10063u, 24389u)), max(firstLeadingBit(firstLeadingBit(u_input.a.x)), max(arg_1.b, _wgslsmith_sub_u32(arg_1.b, arg_1.b))), min(1u, arg_1.b) << ((~u_input.a.x | 31632u) % 32u)), arg_1.a.xy, arg_1.c.zw);
    return ~_wgslsmith_sub_vec4_u32(var_3.b, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_3.b.x, arg_1.b), _wgslsmith_sub_u32(arg_1.b, 13049u), firstTrailingBit(u_input.a.x), arg_2.x), select(firstTrailingBit(var_3.b), ~vec4<u32>(arg_2.x, 0u, 4294967295u, arg_1.b), select(arg_1.c, arg_1.c, vec4<bool>(true, arg_1.c.x, true, true)))));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = reverseBits(func_3(vec2<bool>(!(arg_0 != u_input.a.x), !(!arg_1.c.x)), arg_1, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, arg_1.b, u_input.a.x), firstLeadingBit(u_input.a)), min(~u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), arg_1.a.x, _wgslsmith_f_op_f32(step(arg_1.a.x, -391f)), 133f));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -483f, -182f) * var_1.xzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.a.x, -1400f, 458f)))))), 4294967295u, arg_1.c);
    let var_3 = vec4<f32>(-141f, -406f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_f_op_f32(219f * var_1.x)))));
    var_0 = ~max(~(~vec4<u32>(arg_1.b, 71338u, var_2.b, arg_0) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b, 17203u, 44351u, var_2.b), vec4<u32>(var_0.x, 51779u, arg_0, arg_0)) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.b, var_2.b, 0u, arg_1.b), ~vec4<u32>(26705u, 0u, arg_1.b, arg_1.b), vec4<u32>(var_2.b, arg_0, 21633u, var_0.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_3.yy + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -110f), var_1.xy, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_2.a.x)), _wgslsmith_f_op_f32(floor(var_1.x))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-112f)), _wgslsmith_f_op_f32(555f * 414f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + 1636f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -269f), _wgslsmith_div_f32(-1374f, -365f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(func_2(21203u, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, 1000f, -353f)), arg_0, vec4<bool>(false, true, false, false)))), select(vec4<u32>(1u, 4294967295u, 4294967295u, 40148u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 19316u, u_input.a.x, u_input.a.x), vec4<u32>(56087u, 10925u, 61265u, u_input.a.x)), vec4<u32>(abs(2871u), _wgslsmith_div_u32(4294967295u, arg_0), u_input.a.x, 1u), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-811f, -318f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2047f + -1381f))), vec2<bool>(true, true)), vec4<u32>(~u_input.a.x >> (arg_0 % 32u), u_input.a.x, 35475u, ~40164u) & vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, arg_0), abs(0u), arg_0, max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 19222u)), _wgslsmith_sub_u32(7203u, u_input.a.x))));
    let var_1 = 17392i;
    var var_2 = !vec4<bool>(all(vec3<bool>(!var_0.c.d.x, var_0.a & var_0.c.d.x, any(vec4<bool>(false, true, false, false)))), true, true, false);
    var var_3 = var_0.b;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(143f, -990f) - _wgslsmith_f_op_f32(min(var_0.c.a.x, 1989f))) * _wgslsmith_f_op_f32(sign(var_0.c.c.x))) < var_0.b, var_0.c.c.x, var_0.c, abs(_wgslsmith_clamp_vec4_u32(var_0.c.b, ~(vec4<u32>(u_input.a.x, 0u, var_0.d.x, arg_0) << (vec4<u32>(4294967295u, u_input.a.x, var_0.d.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 36926u, 12281u, 1u), var_0.d, _wgslsmith_mod_vec4_u32(var_0.c.b, var_0.c.b)))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(~(~1560u), 12360u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 71341u), _wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(0u, 59496u)))) << (~vec4<u32>(_wgslsmith_clamp_u32(87926u, 4294967295u, 31293u), ~0u, ~u_input.a.x, ~u_input.a.x) % vec4<u32>(32u)));
    global0 = array<Struct_1, 26>();
    let var_1 = Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(var_0.x > var_0.x, true), select(true, true, true))), 1000f, func_1(u_input.a.x), firstTrailingBit(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 62842u), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)), ~vec4<u32>(var_0.x, var_0.x, 17811u, 45702u))));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_2 = all(select(select(!vec3<bool>(var_1.a, true, false), select(vec3<bool>(var_1.c.d.x, var_1.c.d.x, true), vec3<bool>(var_1.c.d.x, true, true), false), vec3<bool>(true, var_1.c.d.x, true)), !(!vec3<bool>(var_1.a, var_1.a, true)), var_1.a)) | var_1.a;
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(f32(-1f) * -611f), -511f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.c.c, var_1.c.a))) - var_1.c.c) + vec2<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-var_1.c.c.x)))));
}

