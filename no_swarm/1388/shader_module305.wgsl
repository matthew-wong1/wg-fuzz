struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec3<f32>(1517f, -170f, -691f), vec3<i32>(-52284i, 2147483647i, 0i)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec3<f32>(-1306f, 1807f, 198f), vec3<i32>(-24454i, 1i, -18320i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, true, true), vec3<f32>(1000f, -179f, 505f), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, false), vec3<f32>(-733f, -182f, -677f), vec3<i32>(2147483647i, -1i, 0i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec3<f32>(-359f, -195f, 510f), vec3<i32>(-1i, -24744i, -38603i)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), vec3<f32>(881f, 187f, 884f), vec3<i32>(-1i, -8286i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, true), vec3<f32>(1000f, 825f, 2040f), vec3<i32>(40099i, -9104i, 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), vec3<f32>(-1000f, -609f, 384f), vec3<i32>(15212i, -6798i, 1i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false), vec3<f32>(887f, 402f, 304f), vec3<i32>(0i, i32(-2147483648), 4682i)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, true), vec3<f32>(1006f, -214f, -1625f), vec3<i32>(-6329i, i32(-2147483648), 0i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), vec3<f32>(521f, -1374f, -157f), vec3<i32>(-65684i, 1i, -60452i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, true, true), vec3<f32>(-1219f, -143f, -324f), vec3<i32>(i32(-2147483648), 10767i, 44594i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec3<f32>(1238f, -560f, 1131f), vec3<i32>(2780i, 14270i, i32(-2147483648))), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), vec3<f32>(-1236f, 1269f, -525f), vec3<i32>(21368i, -1i, 0i)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, false), vec3<f32>(225f, -164f, 640f), vec3<i32>(13038i, 44340i, 1i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, false, false), vec3<f32>(-418f, -1880f, -108f), vec3<i32>(1i, i32(-2147483648), -34654i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec3<f32>(124f, -197f, -1006f), vec3<i32>(1i, 23846i, 8220i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), vec3<f32>(942f, 675f, 407f), vec3<i32>(-57381i, -25349i, 16122i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, true, false), vec3<f32>(-291f, 1175f, 855f), vec3<i32>(1i, i32(-2147483648), 10169i)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, false, true), vec3<f32>(314f, -629f, -1047f), vec3<i32>(-1i, 2147483647i, 10313i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), vec3<f32>(575f, 595f, -1085f), vec3<i32>(4621i, i32(-2147483648), 15480i)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true), vec3<f32>(156f, 604f, -605f), vec3<i32>(-1i, 0i, 1i)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, false, false), vec3<f32>(-1820f, 1445f, 427f), vec3<i32>(22809i, -45286i, 13524i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), vec3<f32>(1396f, 1000f, -1363f), vec3<i32>(-1i, -5251i, -17984i)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false), vec3<f32>(883f, -1000f, -257f), vec3<i32>(1i, -24367i, -1277i)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, false), vec3<f32>(216f, -345f, 1187f), vec3<i32>(6519i, -37510i, 0i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), vec3<f32>(-1039f, 373f, 295f), vec3<i32>(i32(-2147483648), 42064i, -48431i)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec3<f32>(1368f, 1097f, 3372f), vec3<i32>(-14566i, -42894i, -23349i)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), vec3<f32>(562f, 137f, 381f), vec3<i32>(-20549i, 2147483647i, 1i)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec3<f32>(-713f, 477f, -858f), vec3<i32>(18727i, -45234i, -1i)));

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: array<u32, 14> = array<u32, 14>(89195u, 2539u, 132643u, 0u, 52455u, 27770u, 1u, 45514u, 36004u, 4294967295u, 33778u, 35070u, 0u, 1u);

var<private> global4: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-644f, -339f, 1043f, 725f), vec4<f32>(-234f, -817f, -2168f, -991f), vec4<f32>(2528f, -429f, -715f, -174f), vec4<f32>(-918f, 283f, -1448f, 477f), vec4<f32>(1000f, 1000f, -914f, -614f), vec4<f32>(-851f, -119f, 1185f, -960f), vec4<f32>(-700f, -569f, 103f, -378f), vec4<f32>(-490f, 927f, -620f, -573f), vec4<f32>(107f, 1394f, -259f, 211f), vec4<f32>(529f, 964f, 2216f, -541f), vec4<f32>(-1569f, -855f, 591f, 502f), vec4<f32>(-221f, 671f, -1450f, -1592f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    global3 = array<u32, 14>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f * 207f) - _wgslsmith_f_op_f32(min(822f, -1000f))), 188f, arg_0)), _wgslsmith_f_op_f32(round(550f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-638f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -300f)))), _wgslsmith_f_op_f32(f32(-1f) * -902f));
    let var_1 = Struct_1(select(!vec3<bool>(false, arg_0, arg_0), select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, false, arg_0), select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, true, arg_0), !vec3<bool>(false, true, arg_0))), any(!(!vec4<bool>(false, arg_0, false, arg_0)))), select(!select(!vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, true), !vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(arg_0, arg_0, false, true), select(select(vec4<bool>(arg_0, arg_0, false, false), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0), arg_0)), select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, arg_0, false), false), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, true), true), arg_0), vec4<bool>(true, true, true, true))), var_0.wzz, ~vec3<i32>(arg_2.x, arg_2.x | 2147483647i, arg_2.x) | -arg_2.zzy);
    var var_2 = var_1;
    let var_3 = _wgslsmith_mod_i32(14700i, var_2.d.x);
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(min(_wgslsmith_sub_vec2_u32(global1.yz, vec2<u32>(global1.x, 7096u) >> (vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 14u)], 14u)]) % vec2<u32>(32u))), global1.yy), u_input.c.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(~60052u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(25039u, 14u)], global1.x, 8292u)), ~vec3<u32>(20278u, global1.x, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), 14u)]), u_input.c.ww));
    var var_1 = global0[_wgslsmith_index_u32(1u, 30u)];
    global0 = array<Struct_1, 30>();
    global2 = global1.x;
    global1 = vec3<u32>(_wgslsmith_mult_u32(global1.x, ~u_input.c.x), var_0.x, ~_wgslsmith_sub_u32(var_0.x, u_input.c.x) << (countOneBits(func_3(arg_2.x, reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], u_input.c.x, global1.x, 46869u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, arg_1.d.x, arg_1.d.x), vec4<i32>(1i, -2147483647i, arg_1.d.x, 2147483647i)))) % 32u));
    return Struct_1(!(!arg_1.b.yyz), select(select(!arg_1.b, var_1.b, select(vec4<bool>(arg_1.a.x, false, arg_2.x, false), select(vec4<bool>(arg_1.b.x, arg_0, arg_1.a.x, arg_0), vec4<bool>(arg_0, arg_2.x, false, false), arg_1.b), !arg_1.b)), select(arg_1.b, vec4<bool>(true, arg_2.x, false, var_1.a.x), !(!var_1.b)), select(!(!var_1.b), var_1.b, !arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(min(278f, -607f)), _wgslsmith_f_op_f32(1442f - arg_1.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.c, arg_1.c, arg_0)))))), -vec3<i32>(arg_1.d.x, ~1i, abs(arg_1.d.x >> (global1.x % 32u))));
}

fn func_4(arg_0: Struct_1) -> bool {
    global4 = array<vec4<f32>, 12>();
    let var_0 = func_2(select(!all(vec4<bool>(true, true, arg_0.b.x, arg_0.a.x)), false, arg_0.b.x), func_2(any(arg_0.b.yzz), func_2(all(vec2<bool>(false, true)), Struct_1(func_2(false, arg_0, vec2<bool>(arg_0.a.x, arg_0.b.x)).b.zzy, arg_0.b, _wgslsmith_div_vec3_f32(arg_0.c, vec3<f32>(670f, -306f, arg_0.c.x)), arg_0.d), vec2<bool>(!arg_0.a.x, arg_0.a.x || true)), arg_0.a.yy), arg_0.a.xz);
    global0 = array<Struct_1, 30>();
    var var_1 = ~_wgslsmith_mult_i32(abs(~arg_0.d.x | var_0.d.x), ~1i);
    let var_2 = arg_0.c.x;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(func_4(func_2(false, Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec3<f32>(116f, 979f, 1379f), vec3<i32>(u_input.b.x, 0i, u_input.a)), vec2<bool>(false, false))), false, !(1u > _wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]))), select(!select(func_2(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], vec2<bool>(true, false)).b, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a >> (0u % 32u), u_input.b.x), ~(-vec3<i32>(u_input.b.x, -2147483647i, u_input.a)))));
    global2 = ~1u;
    global0 = array<Struct_1, 30>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x) + var_0.c.x), _wgslsmith_f_op_f32(floor(var_0.c.x)))), _wgslsmith_f_op_f32(876f * -274f), 321f);
    let var_2 = global0[_wgslsmith_index_u32(1u, 30u)];
    return Struct_1(var_2.b.wwz, vec4<bool>(all(vec2<bool>(false, !var_2.a.x)), var_2.a.x, all(vec4<bool>(true, true, 142f == var_1.x, true)), func_2(!(1000f >= var_0.c.x), Struct_1(!vec3<bool>(true, var_0.a.x, true), var_2.b, _wgslsmith_f_op_vec3_f32(exp2(var_0.c)), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), var_0.a.zz).b.x), vec3<f32>(-2647f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * 134f) * _wgslsmith_f_op_f32(-var_0.c.x))))), select(firstTrailingBit(vec3<i32>(-u_input.a, 1i | var_2.d.x, countOneBits(11537i))), var_0.d, all(vec2<bool>(true, any(var_0.b.xzx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39022u, 14u)], 12u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1357f, -1105f, -1450f, -989f), vec4<f32>(639f, -2115f, -296f, 2236f), false)))))));
    global3 = array<u32, 14>();
    global1 = u_input.c.wwz;
    global2 = ~global3[_wgslsmith_index_u32(u_input.c.x ^ (1u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 6964u, 1u, global1.x), vec4<u32>(u_input.c.x, 7759u, 4294967295u, global3[_wgslsmith_index_u32(global1.x, 14u)])) % 32u)), 14u)];
    let var_1 = func_1();
    var var_2 = ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~1u, 14u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c.x, global3[_wgslsmith_index_u32(92206u, 14u)]) << (u_input.c % vec4<u32>(32u)), vec4<u32>(u_input.c.x, 17074u, 4294967295u, global3[_wgslsmith_index_u32(47997u, 14u)])));
    var var_3 = func_2(false, global0[_wgslsmith_index_u32(4294967295u, 30u)], !var_1.a.xy).c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(max(var_1.d.x, -2147483647i), _wgslsmith_sub_i32(1i, -18050i), 2147483647i), var_1.d.x, -reverseBits(89310i)), ~(u_input.c.x | select(reverseBits(13688u), reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)]), all(vec4<bool>(false, true, var_1.a.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(func_2(false, var_1, var_1.b.zz).c.x - 401f))));
}

