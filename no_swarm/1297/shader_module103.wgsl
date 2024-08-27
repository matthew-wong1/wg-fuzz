struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(1950f, -576f, -902f, -522f), vec4<f32>(-392f, 936f, -988f, 2745f), vec4<f32>(2071f, -856f, -907f, 1259f), vec4<f32>(-1582f, 823f, -1060f, -1702f), vec4<f32>(-1378f, 463f, -429f, 519f), vec4<f32>(-489f, 189f, 563f, -1169f), vec4<f32>(-619f, 898f, -828f, 1000f), vec4<f32>(-1000f, -240f, 708f, 349f), vec4<f32>(275f, -302f, -481f, 577f), vec4<f32>(-558f, -601f, -422f, 1000f), vec4<f32>(-1277f, -1000f, -1671f, -548f), vec4<f32>(-1821f, 2000f, 874f, -1497f), vec4<f32>(862f, 1416f, -227f, 1462f), vec4<f32>(331f, 396f, -763f, -288f), vec4<f32>(-244f, 333f, -1508f, -411f), vec4<f32>(-872f, 688f, -241f, 273f), vec4<f32>(-922f, -1000f, -1701f, 144f), vec4<f32>(676f, 1000f, 226f, 295f), vec4<f32>(576f, -653f, 1005f, 2408f), vec4<f32>(-898f, -837f, 387f, 516f), vec4<f32>(1198f, 193f, -1587f, 1989f), vec4<f32>(-1531f, -1000f, -345f, 934f), vec4<f32>(1078f, -255f, 640f, 739f), vec4<f32>(-312f, 646f, 375f, 678f), vec4<f32>(104f, -1000f, 2759f, 208f), vec4<f32>(-920f, 882f, 2506f, -694f), vec4<f32>(-1271f, 241f, -1848f, -1548f), vec4<f32>(-597f, 844f, 100f, 691f), vec4<f32>(-1000f, 1000f, 503f, 125f), vec4<f32>(-963f, 1000f, -505f, 1158f), vec4<f32>(1000f, -1524f, 536f, -1320f), vec4<f32>(368f, -638f, -1409f, 646f));

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(685f, 1160f, -326f, 993f), vec4<f32>(1000f, -812f, 207f, -564f), vec4<f32>(1937f, -1325f, -908f, -104f), vec4<f32>(169f, 1447f, -353f, -560f), vec4<f32>(1000f, -1352f, -479f, -994f), vec4<f32>(2372f, 504f, -780f, 620f), vec4<f32>(281f, 1672f, -601f, 541f), vec4<f32>(-556f, 1000f, -3336f, -1257f), vec4<f32>(2539f, 982f, 393f, -807f), vec4<f32>(1246f, -1476f, 1000f, -170f), vec4<f32>(-631f, 407f, -648f, 491f), vec4<f32>(-1823f, -901f, 642f, 105f), vec4<f32>(469f, 841f, -1287f, -1031f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(u_input.c & u_input.c, ~vec3<u32>(45138u, reverseBits(0u), u_input.c.x)));
    var var_1 = 6787i;
    return _wgslsmith_sub_i32(~0i, -2848i);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = abs(14561u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1213f * arg_2.b))), -657f, _wgslsmith_f_op_f32(-183f * _wgslsmith_f_op_f32(1000f - -2206f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -1896f, -298f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(646f, 256f, 324f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(180f, 982f, arg_2.b)))))));
    var var_2 = arg_2;
    let var_3 = -vec3<i32>(func_3(var_1, select(arg_0, vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0)), _wgslsmith_mult_i32(7070i, min(countOneBits(u_input.a.x), 1i)), arg_1);
    var var_4 = ~(~vec4<u32>(~u_input.c.x, 18808u, 4294967295u, 55267u));
    return ~(-29401i);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    global1 = array<vec4<f32>, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -915f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), 952f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f + -1425f) + -1657f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-589f))))));
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.a.x, ~func_2(vec4<bool>(var_1.a, var_1.a, false, false), u_input.b.x, arg_0)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - arg_0.b), _wgslsmith_f_op_f32(-var_1.b));
    return Struct_1(false, _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(exp2(var_0.x)), all(!(!vec3<bool>(false, arg_0.a, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(632f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1815f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(426f, 420f))))));
    let var_1 = -u_input.b.x;
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + var_0), -229f) + _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f))))));
    global1 = array<vec4<f32>, 13>();
    var var_3 = vec2<u32>(max(~u_input.c.x ^ u_input.d, 1u), 1u);
    let var_4 = func_1(var_2, var_3.x, firstTrailingBit(0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~3635u), 8612u, ~_wgslsmith_mult_u32(9825u, u_input.d), 22462u) << (reverseBits(select(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, var_3.x), vec4<bool>(var_4.a, var_2.a, true, var_4.a)) & firstLeadingBit(vec4<u32>(var_3.x, 19562u, 0u, u_input.d))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(-1874f, 1533f, var_2.a))))), 0u, select(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(31146i, -14248i), _wgslsmith_clamp_i32(var_1, -1i, -1i), 0i, -26391i), u_input.a), reverseBits(select(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), countOneBits(vec4<i32>(-51286i, 16021i, 23884i, 2147483647i)), var_2.a)), (abs(33648i) >> (abs(0u) % 32u)) > var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-566f)) * -399f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.b)) + _wgslsmith_f_op_f32(sign(var_2.b))), var_0)));
}

