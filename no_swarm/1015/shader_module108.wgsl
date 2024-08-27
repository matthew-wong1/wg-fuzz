struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<u32>(0u, 31724u, 54019u, 1u), Struct_1(vec4<f32>(-255f, -313f, -210f, -197f)), Struct_1(vec4<f32>(660f, -695f, 240f, -1010f)), vec2<bool>(true, true), vec2<i32>(2147483647i, 1958i)));

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<i32>(-20914i, 30376i, -37938i), Struct_2(vec4<u32>(0u, 0u, 40092u, 20804u), Struct_1(vec4<f32>(1000f, -595f, -352f, -103f)), Struct_1(vec4<f32>(-344f, 1153f, 1000f, 498f)), vec2<bool>(true, true), vec2<i32>(-32777i, -16519i)), 1370u), Struct_3(vec3<i32>(40835i, 2147483647i, -62046i), Struct_2(vec4<u32>(4294967295u, 22052u, 0u, 4294967295u), Struct_1(vec4<f32>(1179f, 942f, 981f, 728f)), Struct_1(vec4<f32>(-1051f, 137f, -1000f, -1155f)), vec2<bool>(true, false), vec2<i32>(-6496i, i32(-2147483648))), 1u), Struct_3(vec3<i32>(-22459i, 1i, -1i), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 0u), Struct_1(vec4<f32>(-2226f, 1069f, -872f, -420f)), Struct_1(vec4<f32>(-1262f, -728f, -310f, 767f)), vec2<bool>(true, false), vec2<i32>(43463i, 36654i)), 33246u), Struct_3(vec3<i32>(2147483647i, 1i, 1i), Struct_2(vec4<u32>(72801u, 4294967295u, 0u, 42025u), Struct_1(vec4<f32>(-578f, 150f, 217f, 734f)), Struct_1(vec4<f32>(998f, 131f, -806f, -1325f)), vec2<bool>(true, false), vec2<i32>(-32434i, 2147483647i)), 1u), Struct_3(vec3<i32>(1i, 10400i, -1i), Struct_2(vec4<u32>(31715u, 44793u, 3358u, 0u), Struct_1(vec4<f32>(-1884f, -1585f, -1361f, -1490f)), Struct_1(vec4<f32>(728f, -1443f, 829f, -437f)), vec2<bool>(true, false), vec2<i32>(4680i, 2147483647i)), 0u), Struct_3(vec3<i32>(-55832i, -12102i, -52668i), Struct_2(vec4<u32>(1u, 36587u, 48913u, 3376u), Struct_1(vec4<f32>(-1763f, -141f, -911f, -282f)), Struct_1(vec4<f32>(-1181f, -1815f, 434f, -690f)), vec2<bool>(true, false), vec2<i32>(1i, 14140i)), 66610u), Struct_3(vec3<i32>(87932i, -55333i, 1i), Struct_2(vec4<u32>(29683u, 0u, 0u, 1u), Struct_1(vec4<f32>(419f, 809f, 223f, -438f)), Struct_1(vec4<f32>(525f, -861f, 1000f, -144f)), vec2<bool>(true, false), vec2<i32>(-15482i, 13029i)), 18557u), Struct_3(vec3<i32>(-30473i, 0i, i32(-2147483648)), Struct_2(vec4<u32>(21372u, 11753u, 0u, 3035u), Struct_1(vec4<f32>(634f, -1000f, 148f, 437f)), Struct_1(vec4<f32>(789f, -179f, 279f, 633f)), vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648))), 70991u), Struct_3(vec3<i32>(0i, -7411i, -1i), Struct_2(vec4<u32>(65967u, 38610u, 0u, 7607u), Struct_1(vec4<f32>(227f, -845f, -100f, -1637f)), Struct_1(vec4<f32>(1669f, 349f, 1070f, -1423f)), vec2<bool>(false, false), vec2<i32>(-1i, 20404i)), 0u), Struct_3(vec3<i32>(1i, 22006i, 47050i), Struct_2(vec4<u32>(39387u, 67101u, 4294967295u, 1u), Struct_1(vec4<f32>(-265f, -1098f, 501f, 1000f)), Struct_1(vec4<f32>(517f, -1393f, 1078f, 1074f)), vec2<bool>(true, true), vec2<i32>(1i, 47575i)), 50037u), Struct_3(vec3<i32>(-14023i, 0i, 59406i), Struct_2(vec4<u32>(1051u, 4294967295u, 0u, 4294967295u), Struct_1(vec4<f32>(276f, 2271f, -1433f, 1930f)), Struct_1(vec4<f32>(1413f, 738f, 309f, 592f)), vec2<bool>(true, false), vec2<i32>(-24071i, i32(-2147483648))), 206u), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 13236i), Struct_2(vec4<u32>(3590u, 0u, 15253u, 51606u), Struct_1(vec4<f32>(-417f, 1000f, -166f, -1962f)), Struct_1(vec4<f32>(1121f, -381f, 908f, 2369f)), vec2<bool>(true, true), vec2<i32>(0i, i32(-2147483648))), 52677u), Struct_3(vec3<i32>(i32(-2147483648), 4586i, 12960i), Struct_2(vec4<u32>(0u, 41851u, 0u, 1u), Struct_1(vec4<f32>(512f, -304f, 1166f, 314f)), Struct_1(vec4<f32>(1446f, 1140f, -224f, 256f)), vec2<bool>(false, false), vec2<i32>(-38985i, 36192i)), 1u), Struct_3(vec3<i32>(i32(-2147483648), 6231i, -22892i), Struct_2(vec4<u32>(35643u, 4294967295u, 0u, 4294967295u), Struct_1(vec4<f32>(-788f, -519f, 616f, -105f)), Struct_1(vec4<f32>(-2260f, 2778f, -1091f, 197f)), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -25i)), 5838u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    var var_0 = Struct_3((max(vec3<i32>(1i, 2147483647i, u_input.b) >> (u_input.a % vec3<u32>(32u)), -vec3<i32>(-11923i, -73019i, u_input.b)) >> (vec3<u32>(~u_input.a.x, 26853u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-55798i, 2032i, u_input.b)), abs(-vec3<i32>(-2147483647i, u_input.b, 0i))), Struct_2(vec4<u32>(~u_input.c, _wgslsmith_mult_u32(17388u, 140249u), 0u, 4294967295u) << (countOneBits(~vec4<u32>(4294967295u, u_input.a.x, 104257u, 9268u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1173f, 361f, -888f, -1702f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-381f, 707f, -649f, 510f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -403f, 702f, 544f))), vec2<bool>(true, true), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(34492i, u_input.b), vec2<i32>(u_input.b, -1i)))), ~u_input.c);
    let var_1 = (19289u | ~reverseBits(abs(var_0.c))) < 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -854f);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = ~vec4<i32>(-2147483647i, u_input.b, firstLeadingBit(-(i32(-1i) * -143i)), 36000i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) * 1055f) - _wgslsmith_div_f32(642f, 1262f)) + _wgslsmith_f_op_f32(func_3()));
    global0 = array<Struct_2, 1>();
    let var_2 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-522f * var_1)))) + var_1));
    var var_3 = 12200u < u_input.a.x;
    return -1219f;
}

fn func_1() -> f32 {
    var var_0 = 0i;
    var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1072f)), _wgslsmith_f_op_f32(func_2(~1u))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-827f, 358f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2068f, 1042f))))))));
    var var_2 = Struct_3(-(~countOneBits(~vec3<i32>(-2147483647i, 0i, 2147483647i))), global0[_wgslsmith_index_u32(u_input.c, 1u)], u_input.c);
    let var_3 = Struct_4(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 14>();
    global0 = array<Struct_2, 1>();
    global1 = array<Struct_3, 14>();
    let var_0 = ~(-select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(-1i, 62857i, -1i)), abs(vec3<i32>(0i, -54892i, u_input.b)), any(vec4<bool>(false, true, true, true)))) | vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(~u_input.b, -1i)), u_input.b, countOneBits(~32322i) | (-1i | (u_input.b & u_input.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-609f))), _wgslsmith_f_op_f32(389f + -525f), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 277f, 1000f, -333f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1336f, -1309f, 1348f, 182f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1129f, -900f, -457f, 1574f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(889f, -857f, -636f, -1000f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(740f, -597f, -1459f, -1298f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_0.zy & firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.b, 28266i)))), _wgslsmith_f_op_f32(floor(var_1.x)));
}

