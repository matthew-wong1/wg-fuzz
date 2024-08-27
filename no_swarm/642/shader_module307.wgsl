struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<f32>(-944f, 349f), vec3<f32>(-940f, -281f, -319f)), Struct_3(vec2<f32>(-450f, 794f), vec3<f32>(1000f, -1099f, 700f)), Struct_3(vec2<f32>(-1107f, 943f), vec3<f32>(-389f, -656f, 291f)), Struct_3(vec2<f32>(1173f, 1000f), vec3<f32>(-521f, 1000f, -2119f)), Struct_3(vec2<f32>(884f, -1225f), vec3<f32>(646f, 531f, 362f)), Struct_3(vec2<f32>(-879f, 188f), vec3<f32>(-632f, -1111f, -214f)), Struct_3(vec2<f32>(797f, -121f), vec3<f32>(1048f, -1000f, -234f)), Struct_3(vec2<f32>(1607f, 571f), vec3<f32>(-106f, -136f, 1648f)), Struct_3(vec2<f32>(561f, 1000f), vec3<f32>(-1000f, 1199f, 892f)), Struct_3(vec2<f32>(411f, 138f), vec3<f32>(-1418f, 1101f, -102f)), Struct_3(vec2<f32>(393f, 282f), vec3<f32>(1036f, 1200f, -332f)), Struct_3(vec2<f32>(-1159f, -135f), vec3<f32>(-1020f, 161f, -1448f)), Struct_3(vec2<f32>(-803f, -1416f), vec3<f32>(497f, 978f, -911f)), Struct_3(vec2<f32>(151f, -795f), vec3<f32>(102f, 717f, 1395f)), Struct_3(vec2<f32>(-361f, 659f), vec3<f32>(1292f, 236f, 932f)), Struct_3(vec2<f32>(-1114f, -655f), vec3<f32>(-2811f, 771f, -409f)), Struct_3(vec2<f32>(-682f, -695f), vec3<f32>(2650f, 706f, -388f)), Struct_3(vec2<f32>(206f, 290f), vec3<f32>(-571f, -1043f, 964f)), Struct_3(vec2<f32>(-228f, 1000f), vec3<f32>(837f, 1438f, -1434f)), Struct_3(vec2<f32>(1014f, -1000f), vec3<f32>(1136f, -509f, -1624f)), Struct_3(vec2<f32>(1890f, -1000f), vec3<f32>(333f, -1147f, -1000f)), Struct_3(vec2<f32>(-993f, 432f), vec3<f32>(-443f, -274f, 719f)), Struct_3(vec2<f32>(-1440f, 1622f), vec3<f32>(1000f, -1523f, -1680f)), Struct_3(vec2<f32>(347f, -930f), vec3<f32>(-1148f, -1994f, -1073f)), Struct_3(vec2<f32>(1032f, 248f), vec3<f32>(492f, -485f, -710f)), Struct_3(vec2<f32>(-632f, 1285f), vec3<f32>(-1190f, -1421f, -168f)), Struct_3(vec2<f32>(406f, 808f), vec3<f32>(1046f, -464f, -110f)), Struct_3(vec2<f32>(-342f, 608f), vec3<f32>(768f, 670f, -362f)), Struct_3(vec2<f32>(-1000f, -2824f), vec3<f32>(-2221f, 1153f, 1523f)), Struct_3(vec2<f32>(-212f, 413f), vec3<f32>(-1301f, 586f, -705f)), Struct_3(vec2<f32>(705f, -287f), vec3<f32>(597f, -441f, 2381f)));

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global2: bool;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2) -> f32 {
    return 220f;
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global2 = arg_0;
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    global1 = array<vec3<bool>, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(613f, -810f, 786f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, -230f, 722f, 1092f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -731f, 227f) * vec4<f32>(337f, -207f, 481f, 1000f)), true)))))));
    return vec4<f32>(169f, -682f, _wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1065f, 1060f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(383f, 1145f))), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(220f, -286f)))))));
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(round(-200f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1773f, _wgslsmith_f_op_f32(arg_0 - 1534f), _wgslsmith_f_op_f32(trunc(arg_0))))) - _wgslsmith_f_op_vec4_f32(func_3(any(global1[_wgslsmith_index_u32(max(abs(0u), ~0u), 20u)]))));
    var var_1 = vec3<bool>(true, true, select(select(true, false, true), select(true, false, all(select(global1[_wgslsmith_index_u32(48985u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], vec3<bool>(false, true, false)))), false));
    let var_2 = u_input.a.x;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1138f) * var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(13242u, 64869u), 0u));
    global2 = all(global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), 0u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), reverseBits(vec2<u32>(1u, 1u)))), 20u)]);
    global2 = true;
    global3 = array<Struct_2, 32>();
    let var_1 = Struct_2(Struct_1(true, vec3<u32>(1u, abs(0u), ~1u), reverseBits(vec2<u32>(22770u, 35205u) >> (countOneBits(vec2<u32>(56685u, 1u)) % vec2<u32>(32u))), vec2<u32>(~(~5289u), firstTrailingBit(_wgslsmith_mult_u32(20074u, 55206u)))), ~countOneBits(vec4<u32>(0u, firstLeadingBit(4294967295u), 0u, _wgslsmith_clamp_u32(0u, 0u, 4294967295u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -211f))));
    var_0 = _wgslsmith_div_u32(var_1.b.x, 4294967295u);
    let var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.c, 390f, var_1.a.a)), _wgslsmith_f_op_f32(ceil(var_1.c)), any(vec2<bool>(true, false)))) < var_1.c), false, var_1.a.a, _wgslsmith_f_op_f32(func_1(936f)) > -124f);
    global3 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.ywy, vec2<f32>(1277f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(var_1.c - 143f)))), vec4<f32>(3014f, _wgslsmith_div_f32(423f, _wgslsmith_f_op_f32(f32(-1f) * -554f)), 2541f, -1426f), var_1.a.c);
}

