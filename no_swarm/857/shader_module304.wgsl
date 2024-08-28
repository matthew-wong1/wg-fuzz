struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: array<bool, 15>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(8563i, 0i, -80837i, -1i), 0u, false, false, vec3<f32>(1922f, -341f, -1000f)), Struct_1(vec4<i32>(27566i, 1i, -21336i, -36089i), 4294967295u, false, true, vec3<f32>(630f, -1181f, -414f)), Struct_1(vec4<i32>(23161i, 967i, 2147483647i, 6747i), 1130u, true, false, vec3<f32>(-367f, 732f, 127f)), Struct_1(vec4<i32>(39445i, -1i, i32(-2147483648), 2147483647i), 28328u, false, true, vec3<f32>(376f, -131f, -1000f)), Struct_1(vec4<i32>(1i, 28256i, -1i, 27637i), 0u, true, true, vec3<f32>(1060f, -561f, -121f)), Struct_1(vec4<i32>(-2894i, 2147483647i, -60831i, 31353i), 0u, false, false, vec3<f32>(-1019f, -1602f, 1038f)), Struct_1(vec4<i32>(11437i, -53559i, i32(-2147483648), -1i), 0u, true, true, vec3<f32>(299f, -968f, 397f)), Struct_1(vec4<i32>(2147483647i, 0i, 9356i, 30359i), 4294967295u, true, true, vec3<f32>(787f, -1074f, 268f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -28107i, 19999i), 45144u, false, true, vec3<f32>(1000f, 1711f, 520f)), Struct_1(vec4<i32>(-1i, 22986i, -13896i, 1i), 40521u, true, false, vec3<f32>(1900f, -382f, 739f)), Struct_1(vec4<i32>(2147483647i, 7235i, -68692i, -5569i), 31034u, false, false, vec3<f32>(586f, -919f, 346f)), Struct_1(vec4<i32>(22082i, 0i, -10612i, -15940i), 51338u, false, true, vec3<f32>(2039f, 466f, 143f)), Struct_1(vec4<i32>(-25355i, 35419i, 2147483647i, -9291i), 1u, true, true, vec3<f32>(150f, -1699f, -1780f)), Struct_1(vec4<i32>(-39007i, 0i, 1i, 11458i), 24596u, false, false, vec3<f32>(1422f, 224f, -373f)), Struct_1(vec4<i32>(64516i, 2147483647i, 0i, 0i), 6113u, false, false, vec3<f32>(-1000f, 766f, 775f)), Struct_1(vec4<i32>(2398i, 21862i, 0i, 12702i), 6761u, false, true, vec3<f32>(-474f, 887f, 481f)), Struct_1(vec4<i32>(1i, 10289i, -1i, 1i), 4294967295u, true, false, vec3<f32>(-1601f, -389f, -1801f)), Struct_1(vec4<i32>(-17211i, 0i, -23737i, 0i), 4294967295u, false, true, vec3<f32>(-805f, -594f, -444f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i), 0u, true, true, vec3<f32>(239f, -891f, 906f)), Struct_1(vec4<i32>(i32(-2147483648), 1i, -11378i, -4465i), 8228u, true, true, vec3<f32>(183f, -785f, -1302f)), Struct_1(vec4<i32>(1i, 2147483647i, 50034i, -5244i), 1u, false, true, vec3<f32>(-491f, 774f, 174f)), Struct_1(vec4<i32>(27262i, -51156i, -38465i, 39713i), 1u, false, false, vec3<f32>(-1117f, 522f, 1000f)), Struct_1(vec4<i32>(1i, 1i, 17681i, -40088i), 76274u, true, true, vec3<f32>(2625f, -1155f, -1660f)), Struct_1(vec4<i32>(1i, 0i, -33128i, -1i), 24048u, true, true, vec3<f32>(-969f, -1000f, 1623f)), Struct_1(vec4<i32>(0i, 31558i, 12128i, 60854i), 34156u, false, false, vec3<f32>(1000f, 1291f, -912f)), Struct_1(vec4<i32>(-1i, 53542i, -1i, 1i), 4294967295u, true, true, vec3<f32>(942f, 1000f, -1000f)), Struct_1(vec4<i32>(4495i, -1222i, 0i, i32(-2147483648)), 3402u, false, false, vec3<f32>(694f, -369f, 1000f)), Struct_1(vec4<i32>(-44335i, 53415i, 27432i, -37305i), 42689u, false, false, vec3<f32>(429f, -325f, 1000f)));

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<u32>(0u, 21418u, 945u, 4294967295u), true), Struct_3(vec4<u32>(0u, 4294967295u, 5977u, 20402u), false), Struct_3(vec4<u32>(46950u, 5275u, 1u, 1u), false), Struct_3(vec4<u32>(4294967295u, 1u, 26162u, 4294967295u), false), Struct_3(vec4<u32>(35136u, 44949u, 14503u, 1u), true), Struct_3(vec4<u32>(19041u, 35587u, 69475u, 61091u), false), Struct_3(vec4<u32>(6035u, 1u, 1u, 12999u), false), Struct_3(vec4<u32>(4294967295u, 37086u, 4294967295u, 51849u), false), Struct_3(vec4<u32>(0u, 0u, 6552u, 0u), true), Struct_3(vec4<u32>(52162u, 35531u, 0u, 50377u), true), Struct_3(vec4<u32>(1u, 0u, 7532u, 1u), true), Struct_3(vec4<u32>(4294967295u, 8580u, 1u, 71131u), false), Struct_3(vec4<u32>(1u, 74641u, 25399u, 8401u), true), Struct_3(vec4<u32>(4294967295u, 5018u, 1u, 27746u), false), Struct_3(vec4<u32>(1u, 1u, 0u, 4294967295u), true), Struct_3(vec4<u32>(4294967295u, 4793u, 1u, 4294967295u), false), Struct_3(vec4<u32>(23427u, 1u, 82676u, 72468u), false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = vec4<i32>(u_input.a, ~max(~(-u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(51620i, -16286i, 26462i, u_input.a), vec4<i32>(u_input.a, u_input.a, -15004i, -2147483647i)) >> (88682u % 32u)), (u_input.a << (_wgslsmith_sub_u32(u_input.b, max(9662u, 0u)) % 32u)) ^ _wgslsmith_div_i32(-10334i, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(~vec2<i32>(2147483647i, -8058i), vec2<i32>(u_input.a, 65134i)), firstTrailingBit(-vec2<i32>(u_input.a, u_input.a))), -abs(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(38659i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1658f, -469f)), _wgslsmith_f_op_f32(687f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-682f))))) * _wgslsmith_f_op_f32(sign(-324f)));
    let var_3 = global2[_wgslsmith_index_u32(u_input.b, 3u)];
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(538f, _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-1382f - _wgslsmith_f_op_f32(-var_2))))));
    return -1311f;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~24177u, 3u)];
    global4 = array<Struct_3, 17>();
    global1 = array<bool, 15>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))), _wgslsmith_f_op_f32(abs(-1407f)), !arg_1 || all(var_0.b.xyw))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.c, 81576i, 6826i, -1914i) & vec4<i32>(12520i, arg_3, 1i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(26508i, var_0.c, arg_3, var_0.c) | vec4<i32>(u_input.a, 2147483647i, arg_0, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, var_0.c, arg_0, 2147483647i), vec4<i32>(arg_0, var_0.c, -10252i, var_0.c)))), _wgslsmith_mult_vec4_i32(~max(vec4<i32>(1i, u_input.a, 39904i, -32791i), vec4<i32>(u_input.a, 15640i, arg_3, 14879i)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, 2147483647i, -2147483647i)), firstTrailingBit(vec4<i32>(-60659i, -2147483647i, 1i, u_input.a)), -vec4<i32>(arg_0, u_input.a, var_0.c, var_0.c)))), vec2<bool>(arg_2.x, (arg_0 ^ ~arg_0) != ~(var_0.c & -1i)), !arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -798f, var_0.d, 1528f));
    return var_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> vec3<i32> {
    var var_0 = arg_2.b;
    let var_1 = arg_0;
    var var_2 = arg_0.c;
    var var_3 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, min(vec2<u32>(9331u, 75163u), u_input.c)) ^ 1u, _wgslsmith_div_u32(~(1u | u_input.c.x), u_input.b));
    let var_4 = Struct_1(select(arg_2.a, arg_2.a, !select(arg_1, arg_1, false)) << (((select(vec4<u32>(u_input.c.x, 0u, 4294967295u, 4523u), vec4<u32>(1u, var_3.x, 71255u, 0u), arg_0.c.x) & ~vec4<u32>(0u, 17094u, var_3.x, 4294967295u)) >> (abs(vec4<u32>(var_3.x, u_input.c.x, u_input.b, 0u) | vec4<u32>(arg_2.b, arg_2.b, 2267u, arg_2.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), 1u, any(select(arg_1, arg_1, var_1.d)) & select(any(arg_1.zx), -26811i > arg_2.a.x, arg_2.d), !(_wgslsmith_dot_vec4_u32(~vec4<u32>(35944u, var_3.x, u_input.c.x, 4294967295u), ~vec4<u32>(52267u, arg_2.b, u_input.b, 22359u)) != arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, _wgslsmith_f_op_f32(var_1.a * 182f), _wgslsmith_f_op_f32(round(arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_2.e.x, -113f)))));
    return _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(countOneBits(arg_2.a.xyx), vec3<i32>(36990i, var_4.a.x, -35251i) & ~vec3<i32>(arg_0.b, 0i, var_1.b)), ~vec3<i32>(arg_0.b, -arg_0.b, -49364i));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    global1 = array<bool, 15>();
    let var_0 = -280f;
    global3 = array<Struct_1, 28>();
    global1 = array<bool, 15>();
    global2 = array<Struct_2, 3>();
    return Struct_1(min(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -12733i, 14339i), vec4<i32>(24872i, arg_0.x, u_input.a, -33903i)), vec4<i32>(8687i, u_input.a | u_input.a, -u_input.a, 0i)) >> (vec4<u32>(u_input.c.x, ~u_input.b, ~select(1u, arg_1.a.x, false), ~u_input.b) % vec4<u32>(32u)), reverseBits(~(~0u)), !arg_1.b, !((!arg_1.b && any(vec2<bool>(false, true))) & !arg_1.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-473f, var_0, 903f) - vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1225f, var_0, var_0) + vec3<f32>(-318f, var_0, -979f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1972f, var_0, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -301f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1429f, 367f, var_0), vec3<f32>(-1307f, 1000f, var_0)))), -arg_0.x > firstTrailingBit(reverseBits(u_input.a)))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(79350u), _wgslsmith_mod_u32(u_input.b, abs(arg_0.x))), 1u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 88913u, arg_0.x, u_input.c.x) >> (vec4<u32>(0u, arg_0.x, 54789u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.b, u_input.b, 53234u), vec4<u32>(4294967295u, u_input.b, 1u, 4294967295u))), 1u)]), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f + 118f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f))));
    var var_1 = func_5(func_4(Struct_4(-656f, -3122i | func_2(u_input.a, global1[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(global1[_wgslsmith_index_u32(32430u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), -1i), vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(19917u, 15u)], false)), true), true), !select(vec4<bool>(global1[_wgslsmith_index_u32(35734u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)], false, global1[_wgslsmith_index_u32(22112u, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 15u)], true, true, false), false), Struct_1(-vec4<i32>(-2147483647i, u_input.a, u_input.a, -17157i) << (~vec4<u32>(37264u, 901u, u_input.b, arg_0.x) % vec4<u32>(32u)), reverseBits(~arg_0.x), !(!global1[_wgslsmith_index_u32(4294967295u, 15u)]), true, vec3<f32>(_wgslsmith_div_f32(var_0.x, 1442f), var_0.x, _wgslsmith_div_f32(692f, 1000f))), true), Struct_3(select(vec4<u32>(firstLeadingBit(73538u), arg_0.x, firstLeadingBit(arg_0.x), 0u), vec4<u32>(abs(5293u), select(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(34342u, 15u)]), 22402u, 97632u), any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)])) || false), !global1[_wgslsmith_index_u32(~18014u, 15u)]));
    var var_2 = vec3<i32>(min(-2147483647i, _wgslsmith_mod_i32(759i, _wgslsmith_clamp_i32(-2147483647i, abs(-26074i), ~u_input.a))), ~(-33473i), 1i);
    let var_3 = ~(~abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.x, 25184u, var_1.b, 1u), vec4<u32>(arg_0.x, arg_0.x, 0u, var_1.b)), firstTrailingBit(vec4<u32>(u_input.b, 15636u, var_1.b, 22758u)))));
    let var_4 = ~u_input.c.x << (var_1.b % 32u);
    return !select(!select(select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, true), vec2<bool>(var_1.d, false)), !vec2<bool>(var_1.d, false), any(vec2<bool>(false, var_1.d))), vec2<bool>(!var_1.c, all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 15u)], false, global1[_wgslsmith_index_u32(0u, 15u)], var_1.c))), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(15463u, arg_0.x << (u_input.c.x % 32u)), 15u)], !(!var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -((-(vec3<i32>(-5901i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -19070i)) << (vec3<u32>(u_input.c.x, select(4294967295u, u_input.c.x, true), u_input.b) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a >> (u_input.b % 32u), ~0i), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -52089i), vec3<i32>(u_input.a, u_input.a, -30130i)), vec3<i32>(u_input.a, 58346i, u_input.a), ~vec3<i32>(u_input.a, 2147483647i, u_input.a))));
    global1 = array<bool, 15>();
    global3 = array<Struct_1, 28>();
    let var_1 = Struct_4(-2120f, _wgslsmith_div_i32(var_0.x, firstTrailingBit(countOneBits(~(-12881i)))), select(!select(vec2<bool>(global1[_wgslsmith_index_u32(34653u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), func_1(vec3<u32>(6793u, u_input.b, u_input.c.x)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 15u)], true)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 15u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(46406u, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(63886u, 15u)])), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 15u)]), false)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)]))), global1[_wgslsmith_index_u32(~u_input.b, 15u)]);
    global4 = array<Struct_3, 17>();
    var var_2 = ~vec3<u32>(u_input.b, 4294967295u & ~u_input.c.x, 1u);
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(-var_1.b), reverseBits(90111u));
}

