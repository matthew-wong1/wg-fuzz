struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
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

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-554f, -1499f, 1119f, -880f), vec4<f32>(-430f, 178f, -2028f, 673f), vec4<f32>(495f, 1641f, 1740f, 1272f), vec4<f32>(1152f, -811f, -1397f, 1000f), vec4<f32>(-1020f, 632f, -1225f, -929f), vec4<f32>(-1531f, 655f, 428f, -1155f), vec4<f32>(-243f, 361f, -1000f, -294f), vec4<f32>(120f, 2203f, -1000f, -1872f), vec4<f32>(204f, 2392f, 254f, 1658f), vec4<f32>(-816f, 564f, -1737f, 1256f), vec4<f32>(484f, -183f, -1633f, 1959f), vec4<f32>(-349f, -1435f, 308f, -1017f), vec4<f32>(1000f, -1972f, -1585f, 202f), vec4<f32>(1096f, 1000f, -415f, 1177f), vec4<f32>(2789f, 311f, 2138f, -555f), vec4<f32>(489f, 617f, -972f, -156f), vec4<f32>(-586f, -112f, -1647f, -1066f), vec4<f32>(753f, 107f, -170f, 1202f), vec4<f32>(1938f, -129f, -417f, -1193f), vec4<f32>(-1218f, 1501f, 144f, -1854f), vec4<f32>(-784f, -988f, 1000f, -1826f), vec4<f32>(-389f, 375f, 245f, 1071f), vec4<f32>(627f, 951f, -759f, 585f), vec4<f32>(1371f, -1308f, -667f, -1686f), vec4<f32>(-1834f, -126f, 1211f, 1024f), vec4<f32>(-574f, 1032f, 104f, -1561f), vec4<f32>(-2056f, 1933f, -1765f, -567f), vec4<f32>(-1724f, -150f, -624f, -485f), vec4<f32>(515f, -131f, -204f, 1000f), vec4<f32>(255f, -452f, 1745f, -933f));

var<private> global1: array<vec3<bool>, 14>;

var<private> global2: array<vec3<i32>, 1>;

var<private> global3: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-739f, 1000f), vec2<f32>(-281f, -1653f), vec2<f32>(-136f, -1399f), vec2<f32>(634f, -881f), vec2<f32>(-181f, 637f), vec2<f32>(-217f, 2125f), vec2<f32>(423f, -1720f), vec2<f32>(-1204f, 414f), vec2<f32>(-551f, -432f), vec2<f32>(-579f, -1088f), vec2<f32>(256f, 211f), vec2<f32>(891f, -721f), vec2<f32>(-361f, 1138f), vec2<f32>(-1756f, 1399f), vec2<f32>(-1218f, 489f), vec2<f32>(2331f, -239f), vec2<f32>(1165f, 1260f), vec2<f32>(-1218f, -1469f), vec2<f32>(2047f, 1392f), vec2<f32>(-164f, -729f), vec2<f32>(-1996f, -225f), vec2<f32>(418f, 1510f), vec2<f32>(-592f, -247f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = array<vec4<f32>, 30>();
    let var_0 = Struct_2(arg_2);
    global1 = array<vec3<bool>, 14>();
    let var_1 = true;
    var var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_mod_i32(~u_input.a.x, -2147483647i)));
    return -_wgslsmith_add_i32(2723i, abs(~(~u_input.d.x)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> bool {
    global3 = array<vec2<f32>, 23>();
    let var_0 = arg_0;
    let var_1 = -vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a), u_input.c.x);
    var var_2 = _wgslsmith_clamp_i32(arg_0, u_input.d.x, select(abs(firstLeadingBit(_wgslsmith_add_i32(arg_0, 1i))), 2147483647i, any(global1[_wgslsmith_index_u32(arg_2.x ^ 95212u, 14u)])));
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, abs(abs(i32(-1i) * -13187i)), _wgslsmith_mod_i32(-2147483647i, -20420i)), abs(var_1));
    return !arg_3;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = vec4<i32>(35141i, select(firstTrailingBit(-u_input.d.x), _wgslsmith_mod_i32(1i, func_2(u_input.a.x, true, Struct_1(4294967295u, arg_0.x)) >> (_wgslsmith_div_u32(0u, 37815u) % 32u)), func_3(2147483647i >> (1u % 32u), true, vec3<u32>(min(119262u, 1u), abs(1u), 1u), false)), u_input.c.x, ~2147483647i);
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(floor(-387f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-662f * arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))))), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(0u), ~1u), 1u), var_1.a.x));
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, 0i, -22881i, 0i), reverseBits(vec4<i32>(-2147483647i, 48532i, 1789i, 2147483647i)), ~vec4<i32>(var_0.x, 2147483647i, var_0.x, -1i)), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(7113i, 32837i, -33625i, 28244i), vec4<i32>(1i, var_0.x, u_input.a.x, 2147483647i)), min(-42278i, var_0.x), -2147483647i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, var_0.x, u_input.b.x), vec4<i32>(2147483647i, u_input.c.x, -18485i, var_0.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, -1i, var_0.x), vec4<i32>(u_input.c.x, u_input.b.x, var_0.x, u_input.d.x) & vec4<i32>(73527i, 2147483647i, -2147483647i, var_0.x)), select(vec4<i32>(u_input.d.x, 27362i, -1i, 58722i), firstLeadingBit(vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.a.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))))), vec4<i32>(u_input.a.x, ~abs(-1i), countOneBits(2147483647i), -(~var_0.x & -35408i)));
    var_2 = Struct_2(var_2.a);
    return countOneBits(var_2.a.a);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global2 = array<vec3<i32>, 1>();
    var var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-arg_0.b))), -1304f);
    return Struct_2(Struct_1(~27068u, 242f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~(_wgslsmith_mult_u32(1220u, 1u) ^ func_1(global0[_wgslsmith_index_u32(122853u, 30u)])), _wgslsmith_f_op_f32(1303f * _wgslsmith_f_op_f32(-1f))));
    global1 = array<vec3<bool>, 14>();
    global1 = array<vec3<bool>, 14>();
    let var_1 = firstLeadingBit(min(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, u_input.d.x, 0i, u_input.d.x)), vec4<i32>(func_2(2147483647i, true, Struct_1(4294967295u, -367f)), 1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, 61346i, 0i)), u_input.b.x), ~(-vec4<i32>(2147483647i, u_input.a.x, -1092i, 38322i))), vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.b.x, u_input.d.x), ~u_input.c.x, func_2(u_input.d.x, false, var_0.a)) | vec4<i32>(2147483647i, abs(u_input.b.x), u_input.c.x, ~7139i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a, 1u, var_0.a.a), vec3<u32>(var_0.a.a, 0u, var_0.a.a)), 30u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a.b, var_0.a.b, var_0.a.b) + vec4<f32>(var_0.a.b, 244f, -539f, 370f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(func_1(vec4<f32>(var_0.a.b, var_0.a.b, -599f, 986f)), 30u)])))));
    var var_3 = !(reverseBits(max(18344u >> (var_0.a.a % 32u), firstTrailingBit(var_0.a.a))) < func_1(global0[_wgslsmith_index_u32(~(~43611u), 30u)]));
    global1 = array<vec3<bool>, 14>();
    let var_4 = firstLeadingBit(_wgslsmith_add_vec4_u32(~select(~vec4<u32>(9360u, var_0.a.a, 4294967295u, 4294967295u), vec4<u32>(var_0.a.a, 1u, 100087u, var_0.a.a) >> (vec4<u32>(7927u, var_0.a.a, 66154u, var_0.a.a) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.a.a, var_0.a.a, var_0.a.a, 0u)), vec4<u32>(var_0.a.a, var_0.a.a, ~1u, 30102u))));
    var var_5 = _wgslsmith_add_u32(var_0.a.a, var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

