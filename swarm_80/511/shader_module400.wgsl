struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(2416f, -233f), -133f, -432f), Struct_1(vec2<f32>(-1000f, -369f), 549f, -1561f), Struct_1(vec2<f32>(-253f, -1000f), -1670f, 295f), Struct_1(vec2<f32>(446f, -1617f), 137f, 496f), Struct_1(vec2<f32>(1797f, 264f), -946f, -1000f), Struct_1(vec2<f32>(-1175f, -510f), 448f, -264f), Struct_1(vec2<f32>(-306f, -1000f), 906f, -1000f), Struct_1(vec2<f32>(359f, -489f), -1000f, -1000f), Struct_1(vec2<f32>(452f, -551f), 756f, -1334f), Struct_1(vec2<f32>(281f, 1000f), 731f, 939f), Struct_1(vec2<f32>(-1009f, -442f), 1000f, 1819f), Struct_1(vec2<f32>(1518f, -1349f), -1154f, 2159f), Struct_1(vec2<f32>(1269f, -139f), 593f, 2094f), Struct_1(vec2<f32>(2610f, -1548f), -1263f, 1000f), Struct_1(vec2<f32>(647f, 215f), -708f, 727f), Struct_1(vec2<f32>(750f, -1000f), 340f, 210f), Struct_1(vec2<f32>(2239f, -1933f), 824f, -1280f), Struct_1(vec2<f32>(-211f, 284f), -552f, -592f), Struct_1(vec2<f32>(1000f, -435f), -608f, 1223f), Struct_1(vec2<f32>(-1268f, 1000f), 353f, 388f), Struct_1(vec2<f32>(460f, 683f), -942f, 144f), Struct_1(vec2<f32>(-1319f, 226f), -541f, 525f), Struct_1(vec2<f32>(-155f, -1062f), 926f, 247f), Struct_1(vec2<f32>(1000f, 2241f), 721f, 943f), Struct_1(vec2<f32>(-714f, -691f), -1395f, 390f), Struct_1(vec2<f32>(689f, 1274f), 1314f, -311f), Struct_1(vec2<f32>(-1063f, 434f), 297f, 1000f), Struct_1(vec2<f32>(-139f, 528f), -221f, -129f), Struct_1(vec2<f32>(-1788f, 1828f), 1000f, 575f), Struct_1(vec2<f32>(1224f, 398f), 1000f, -135f));

var<private> global1: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-275f, -353f, -282f), vec3<f32>(537f, 822f, 223f), vec3<f32>(1217f, -924f, 618f), vec3<f32>(-897f, -826f, -1560f), vec3<f32>(-352f, -2403f, 989f), vec3<f32>(306f, 1000f, -825f), vec3<f32>(1331f, 429f, 111f), vec3<f32>(430f, 164f, -516f), vec3<f32>(2824f, 403f, -1847f), vec3<f32>(-918f, -1436f, -328f), vec3<f32>(-383f, -1293f, 277f), vec3<f32>(-1000f, -1564f, 291f), vec3<f32>(1062f, 275f, 982f), vec3<f32>(-615f, -517f, 1000f), vec3<f32>(-1000f, 537f, 930f), vec3<f32>(652f, -221f, -113f), vec3<f32>(-1532f, -1513f, -435f), vec3<f32>(1285f, 747f, 121f), vec3<f32>(1262f, 273f, 1031f), vec3<f32>(932f, -1000f, -1274f), vec3<f32>(-1516f, -101f, -1325f), vec3<f32>(-930f, -417f, 739f), vec3<f32>(-435f, 397f, -427f), vec3<f32>(-1000f, 260f, -464f));

var<private> global2: u32;

var<private> global3: array<u32, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> bool {
    global2 = _wgslsmith_dot_vec2_u32(~(~(~arg_1.zz >> ((vec2<u32>(arg_1.x, 88740u) << (u_input.c.xz % vec2<u32>(32u))) % vec2<u32>(32u)))), ~select(firstTrailingBit(~arg_1.zy), u_input.e.zy, arg_2.a));
    let var_0 = arg_2.d.a;
    var var_1 = 8986u;
    var var_2 = arg_2.b.x;
    global2 = ~u_input.c.x;
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    global2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7553u, ~max(global3[_wgslsmith_index_u32(u_input.c.x, 29u)], u_input.e.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), u_input.b.zzx));
    return vec2<f32>(arg_1.d.c, _wgslsmith_f_op_f32(f32(-1f) * -645f));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-189f)) + _wgslsmith_f_op_f32(ceil(1722f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(573f))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_3(-902f, u_input.b, Struct_2(true, vec4<bool>(false, true, false, false), u_input.d.x, Struct_1(vec2<f32>(353f, -115f), -226f, 965f)), u_input.d.x) | all(vec4<bool>(false, false, true, true)), Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 29u)] <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 29u)], 29u)], vec4<bool>(true, true, true, true), ~44759i, Struct_1(vec2<f32>(187f, 235f), -101f, 510f)))), _wgslsmith_f_op_f32(1066f + -1148f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-212f, 1458f), _wgslsmith_f_op_f32(floor(3059f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-1000f)))))), Struct_2(!(!all(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), func_3(279f, vec4<u32>(34376u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 29u)]), Struct_2(false, vec4<bool>(false, true, true, true), -1i, Struct_1(vec2<f32>(971f, -188f), 889f, 551f)), -23692i)), !all(vec4<bool>(false, false, true, true))), u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(true, Struct_2(false, vec4<bool>(false, true, true, true), u_input.d.x, Struct_1(vec2<f32>(-2107f, -601f), 1118f, -302f))))), _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1020f + 1555f)))), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~1u), abs(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 29u)], 29u)], 29u)], u_input.e.x))), ~(countOneBits(u_input.e.x) >> (~u_input.e.x % 32u))));
    let var_2 = var_1.a;
    global1 = array<vec3<f32>, 24>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.a.x, var_2.a.x, var_1.b.a)), var_2.a.x, _wgslsmith_f_op_f32(abs(var_1.a.b)), -1070f))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -1573f) * -259f))), _wgslsmith_f_op_f32(sign(-1000f))) + var_1.a.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.d.x, arg_3.x, firstTrailingBit(-1i)), max(u_input.d.yyx, vec3<i32>(2147483647i, u_input.a, 0i)) | u_input.d.zxz) & ~u_input.d.ywy, -reverseBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(41130i, arg_3.x), vec2<i32>(arg_1, -31782i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -684f), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-760f, -590f)), arg_0.x)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 623f)), Struct_2(true, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), 1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(4294967295u, 29u)]), 29u)] << (firstTrailingBit(global3[_wgslsmith_index_u32(54181u, 29u)]) % 32u), 30u)]), ~0u), _wgslsmith_mult_vec4_i32(vec4<i32>(-3878i, _wgslsmith_add_i32(-6191i, arg_3.x), u_input.d.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 246i), u_input.a)), select(u_input.d, vec4<i32>(arg_3.x, ~(-33389i), -17532i ^ u_input.d.x, u_input.d.x), true)));
    global1 = array<vec3<f32>, 24>();
    global0 = array<Struct_1, 30>();
    global1 = array<vec3<f32>, 24>();
    return var_1.d.b;
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<Struct_1, 30>();
    global3 = array<u32, 29>();
    var var_0 = firstTrailingBit(firstTrailingBit(~_wgslsmith_mod_vec3_u32(~u_input.b.wwx, u_input.b.zxz)));
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~min(48340u, 1u), 29u)], 29u)], 29u)], 30u)], global0[_wgslsmith_index_u32(firstTrailingBit(0u), 30u)], func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -297f) + _wgslsmith_f_op_vec2_f32(func_2(u_input.d.x)))), abs(0i), 4294967295u, ~u_input.d.zz), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(69278u, 17727u), vec2<u32>(global3[_wgslsmith_index_u32(var_0.x, 29u)], var_0.x), false), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.x), u_input.b.wy)), firstTrailingBit(~49749u) >> (_wgslsmith_div_u32(0u, 5217u) % 32u)), 43280u);
    global2 = ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~(~(~u_input.c.x)), 29u)], 69322u << (~_wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(var_1.e, 29u)]) % 32u));
    return min(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 42284u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global3 = array<u32, 29>();
    let var_0 = !vec4<bool>(true, false, false, all(vec4<bool>(true, true, true, true)));
    global1 = array<vec3<f32>, 24>();
    global2 = _wgslsmith_div_u32(~(~u_input.e.x), _wgslsmith_div_u32(func_1(-262f) >> (global3[_wgslsmith_index_u32(1u, 29u)] % 32u), 47135u) >> (1u % 32u));
    var var_1 = !var_0.zwx;
    let var_2 = vec2<bool>(any(var_1.xz), var_0.x);
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(abs(20982u), 30u)], Struct_2(true, select(select(select(var_0, var_0, vec4<bool>(true, var_1.x, true, true)), !vec4<bool>(var_1.x, var_0.x, var_1.x, true), !var_1.x), var_0, func_5(vec2<f32>(-141f, -1358f), abs(2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(119425u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27397u, 29u)], 29u)], global3[_wgslsmith_index_u32(17862u, 29u)]), vec3<u32>(4294967295u, 78647u, 11490u)), u_input.d.yx).b.x), 1i, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1785f) - vec2<f32>(-588f, -125f)))), 498f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1767f, 1000f))))), 16024u ^ ~(~u_input.c.x & select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23100u, 29u)], 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 29u)], true)));
    global3 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(abs(max(10480u, 110596u))), countOneBits(max(1425u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_3.b.d.b))) - _wgslsmith_f_op_f32(select(-1275f, var_3.a.c, true)))), ~(~(~vec3<u32>(var_3.c, 0u, 11631u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.a.b - var_3.b.d.b), var_3.b.d.a.x, _wgslsmith_f_op_f32(var_3.b.d.b - 441f), 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1386f - var_3.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.b.d.a.x, 988f))), select(u_input.b, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b << (vec4<u32>(9501u, global3[_wgslsmith_index_u32(4342u, 29u)], 11197u, 83897u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), vec4<u32>(global3[_wgslsmith_index_u32(var_3.c, 29u)], u_input.b.x, 1u, 1u) & vec4<u32>(1u, var_3.c, var_3.c, u_input.b.x)), !var_1.x));
}

