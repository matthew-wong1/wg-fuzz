struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<u32>(34577u, 80441u), Struct_1(false, vec2<f32>(703f, 1567f), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), -2518f, vec4<i32>(-17274i, -1i, -92743i, 34536i)), Struct_1(false, vec2<f32>(579f, -442f), vec4<u32>(52528u, 17600u, 40615u, 41701u), -589f, vec4<i32>(-26658i, 2147483647i, -36645i, -45423i))), Struct_2(vec2<u32>(6084u, 1u), Struct_1(false, vec2<f32>(-1809f, -867f), vec4<u32>(32014u, 47408u, 1u, 17926u), -410f, vec4<i32>(-3279i, 1i, -36637i, 22411i)), Struct_1(false, vec2<f32>(-1319f, -2047f), vec4<u32>(0u, 13955u, 76199u, 1u), -2254f, vec4<i32>(-29804i, 1318i, 2147483647i, i32(-2147483648)))), Struct_2(vec2<u32>(1u, 25760u), Struct_1(true, vec2<f32>(-438f, -1721f), vec4<u32>(24578u, 1u, 1u, 34439u), 924f, vec4<i32>(61730i, 49553i, -1i, 0i)), Struct_1(true, vec2<f32>(254f, 938f), vec4<u32>(0u, 4294967295u, 45258u, 0u), -1000f, vec4<i32>(-18483i, 21491i, 26016i, 8108i))), Struct_2(vec2<u32>(7611u, 11137u), Struct_1(true, vec2<f32>(881f, 309f), vec4<u32>(0u, 73527u, 1u, 1u), -118f, vec4<i32>(0i, -40922i, i32(-2147483648), 1i)), Struct_1(false, vec2<f32>(1417f, 230f), vec4<u32>(0u, 56533u, 1u, 55042u), -1878f, vec4<i32>(1i, -17307i, -1i, 2147483647i))), Struct_2(vec2<u32>(27614u, 11366u), Struct_1(true, vec2<f32>(1000f, -1000f), vec4<u32>(1u, 7480u, 4294967295u, 29206u), 120f, vec4<i32>(30635i, i32(-2147483648), 1i, -35754i)), Struct_1(true, vec2<f32>(2059f, 739f), vec4<u32>(0u, 0u, 49137u, 1u), 151f, vec4<i32>(1i, 2147483647i, 2147483647i, 1i))), Struct_2(vec2<u32>(42574u, 46737u), Struct_1(true, vec2<f32>(-259f, -437f), vec4<u32>(1u, 1u, 1u, 35612u), -1705f, vec4<i32>(1i, -1i, -32484i, 18173i)), Struct_1(true, vec2<f32>(248f, 1000f), vec4<u32>(7424u, 1u, 27381u, 0u), -743f, vec4<i32>(0i, -29304i, 0i, i32(-2147483648)))), Struct_2(vec2<u32>(1u, 71344u), Struct_1(true, vec2<f32>(1282f, 426f), vec4<u32>(1u, 1u, 0u, 57731u), -564f, vec4<i32>(-1i, i32(-2147483648), 1i, -3563i)), Struct_1(true, vec2<f32>(-1000f, 1658f), vec4<u32>(1u, 13780u, 1u, 0u), -464f, vec4<i32>(-1i, 1i, 2147483647i, -1i))), Struct_2(vec2<u32>(1u, 20577u), Struct_1(false, vec2<f32>(723f, 529f), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), 121f, vec4<i32>(38583i, -28993i, -1i, 33094i)), Struct_1(true, vec2<f32>(1980f, -152f), vec4<u32>(1u, 2611u, 51159u, 10965u), 978f, vec4<i32>(i32(-2147483648), -33894i, 13889i, 1i))), Struct_2(vec2<u32>(39206u, 45u), Struct_1(false, vec2<f32>(-638f, -1594f), vec4<u32>(4294967295u, 42576u, 27740u, 4294967295u), -1043f, vec4<i32>(-1i, 5579i, -7145i, -21028i)), Struct_1(false, vec2<f32>(-607f, 1764f), vec4<u32>(7075u, 1u, 109598u, 0u), -382f, vec4<i32>(2147483647i, 43023i, -52588i, 26555i))), Struct_2(vec2<u32>(1u, 19970u), Struct_1(true, vec2<f32>(722f, -717f), vec4<u32>(1u, 1u, 1u, 1u), 1581f, vec4<i32>(-42780i, 0i, -45035i, 1i)), Struct_1(false, vec2<f32>(-1000f, -1189f), vec4<u32>(0u, 0u, 21371u, 0u), 303f, vec4<i32>(1i, 1i, -15602i, 2147483647i))), Struct_2(vec2<u32>(41104u, 1u), Struct_1(true, vec2<f32>(-251f, -707f), vec4<u32>(21741u, 4366u, 13291u, 4294967295u), 241f, vec4<i32>(2147483647i, -4623i, -16567i, -4197i)), Struct_1(false, vec2<f32>(-1539f, 1385f), vec4<u32>(19226u, 14735u, 0u, 0u), -415f, vec4<i32>(-44631i, i32(-2147483648), 1i, -1i))), Struct_2(vec2<u32>(46295u, 4294967295u), Struct_1(false, vec2<f32>(354f, 817f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), 1019f, vec4<i32>(1i, -10893i, -51774i, 2147483647i)), Struct_1(true, vec2<f32>(-763f, 465f), vec4<u32>(36214u, 1u, 8784u, 4294967295u), 385f, vec4<i32>(22870i, 37789i, -38071i, -1i))), Struct_2(vec2<u32>(40239u, 1u), Struct_1(true, vec2<f32>(656f, -329f), vec4<u32>(3782u, 4294967295u, 4294967295u, 0u), 359f, vec4<i32>(1732i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec2<f32>(287f, -796f), vec4<u32>(65440u, 79763u, 4294967295u, 76620u), -1590f, vec4<i32>(-35512i, i32(-2147483648), 0i, 29636i))), Struct_2(vec2<u32>(36758u, 78044u), Struct_1(true, vec2<f32>(-204f, 410f), vec4<u32>(10707u, 22841u, 0u, 1023u), -280f, vec4<i32>(-1715i, 1i, 7040i, 23317i)), Struct_1(true, vec2<f32>(307f, 721f), vec4<u32>(388u, 109412u, 46078u, 11356u), 874f, vec4<i32>(12984i, i32(-2147483648), i32(-2147483648), -53963i))), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(false, vec2<f32>(1530f, 318f), vec4<u32>(1u, 1u, 4294967295u, 8638u), 1689f, vec4<i32>(-12533i, -17970i, 0i, 11465i)), Struct_1(true, vec2<f32>(-229f, -1281f), vec4<u32>(56719u, 39999u, 0u, 1u), 1009f, vec4<i32>(8532i, 1i, 0i, 2147483647i))), Struct_2(vec2<u32>(4294967295u, 28035u), Struct_1(false, vec2<f32>(-202f, 1137f), vec4<u32>(12178u, 1u, 115142u, 4294967295u), -648f, vec4<i32>(32256i, i32(-2147483648), 0i, 0i)), Struct_1(false, vec2<f32>(188f, -513f), vec4<u32>(4294967295u, 60475u, 4294967295u, 26452u), 1183f, vec4<i32>(-32189i, i32(-2147483648), 2147483647i, 0i))), Struct_2(vec2<u32>(1u, 32177u), Struct_1(true, vec2<f32>(1000f, 1755f), vec4<u32>(4294967295u, 37300u, 87226u, 35033u), 780f, vec4<i32>(0i, 35487i, -1i, 1i)), Struct_1(false, vec2<f32>(-1072f, 833f), vec4<u32>(73745u, 4294967295u, 26245u, 0u), -1170f, vec4<i32>(-1i, 10617i, -31637i, -1i))), Struct_2(vec2<u32>(1959u, 14695u), Struct_1(false, vec2<f32>(-522f, -981f), vec4<u32>(0u, 79706u, 1u, 30428u), -1338f, vec4<i32>(-1i, 8245i, 2410i, -1i)), Struct_1(true, vec2<f32>(-514f, 358f), vec4<u32>(16612u, 41440u, 1u, 0u), -136f, vec4<i32>(0i, -1i, 2147483647i, -1i))), Struct_2(vec2<u32>(34266u, 4294967295u), Struct_1(false, vec2<f32>(148f, 2537f), vec4<u32>(4294967295u, 36441u, 1u, 1u), 457f, vec4<i32>(0i, 2147483647i, i32(-2147483648), 1i)), Struct_1(false, vec2<f32>(-269f, 1970f), vec4<u32>(4294967295u, 11698u, 1u, 40943u), -121f, vec4<i32>(2147483647i, i32(-2147483648), 7212i, -53647i))));

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 39603i), vec2<i32>(-1i, 0i), vec2<i32>(59097i, 1i));

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = -global3.c.e;
    var var_1 = Struct_5(global3.c.c.yzw, global3.c.e.x);
    global3 = Struct_2(global3.b.c.xw, global3.b, global3.c);
    var var_2 = -var_1.b;
    let var_3 = -vec3<i32>(-10680i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-63266i, var_0.x, u_input.d.x, 55364i), vec4<i32>(var_1.b, global3.b.e.x, var_0.x, 2147483647i))), countOneBits(-1i));
    return vec4<bool>(true, _wgslsmith_f_op_f32(trunc(arg_1.x)) < 383f, !global3.b.a, select(global3.b.a, global3.c.a, all(!vec2<bool>(true, global3.c.a))));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = 15763u;
    let var_1 = Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(global3.c.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global3.b.b, _wgslsmith_f_op_vec2_f32(-global3.b.b), !vec2<bool>(global3.c.a, false))))), firstLeadingBit(~global3.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.b.x - global3.c.d), 2077f)), reverseBits(vec4<i32>(u_input.c, u_input.c, min(global3.c.e.x, u_input.c), 0i))), global3.c);
    let var_2 = vec3<bool>(all(func_3(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-836f, global3.b.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.b.x, 1257f))), -727f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(313f, 1423f, -1077f, 575f), vec4<f32>(global3.b.b.x, -812f, -1202f, -269f)) - vec4<f32>(global3.b.d, -1761f, var_1.b.d, global3.c.d)))), _wgslsmith_mod_i32(i32(-1i) * -var_1.c.e.x, 0i) > -(~(~23949i)), any(vec3<bool>(all(vec2<bool>(var_1.b.a, false)), !any(vec2<bool>(var_1.b.a, false)), select(global3.c.a, false, false))));
    let var_3 = Struct_5(global3.c.c.zxw << ((var_1.c.c.yzz >> (~(vec3<u32>(0u, 4294967295u, 4294967295u) | var_1.c.c.wyx) % vec3<u32>(32u))) % vec3<u32>(32u)), select(u_input.e, var_1.b.e.x, true) << ((select(u_input.a, 1u, global3.c.a) | ~(~1u)) % 32u));
    global3 = Struct_2(select(max(vec2<u32>(global1.x, 41247u), var_1.b.c.wx) | (var_1.c.c.xw | global3.a), max(vec2<u32>(0u, 17358u), global3.a), _wgslsmith_clamp_i32(u_input.e, -3383i, -2147483647i) > var_1.b.e.x) & vec2<u32>(var_1.b.c.x, 49061u), global3.b, Struct_1(all(select(!vec4<bool>(false, true, global3.c.a, global3.b.a), vec4<bool>(global3.c.a, var_2.x, var_2.x, false), all(vec3<bool>(global3.b.a, global3.b.a, false)))), vec2<f32>(-1389f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-var_1.b.d), true))), min(global3.c.c, ~(global3.b.c ^ vec4<u32>(var_3.a.x, global1.x, global3.b.c.x, global3.a.x))), -1977f, vec4<i32>(abs(firstLeadingBit(var_1.c.e.x)), 30017i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.c.e.x, var_3.b), ~var_3.b), var_3.b)));
    return !vec4<bool>(!any(!var_2), true, select(true, !func_3(u_input.a, global3.b.b, var_1.c.d, vec4<f32>(369f, global3.b.b.x, 154f, 456f)).x, !(!global3.b.a)), var_1.c.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, firstTrailingBit(-2147483647i), countOneBits(-21963i), u_input.d.x ^ -1686i), vec4<i32>(min(u_input.d.x, 2147483647i), 1i, 2147483647i, arg_1.x)), global3.c.e), countOneBits(-u_input.c) << (select(global1.x, (u_input.a >> (global1.x % 32u)) >> (reverseBits(u_input.a) % 32u), true) % 32u), -global3.b.e.x);
    let var_1 = true;
    var var_2 = !func_2(_wgslsmith_mult_u32(43781u, global3.c.c.x) << ((1u ^ ~global1.x) % 32u));
    let var_3 = Struct_5(vec3<u32>(firstLeadingBit(10181u), 1u, 4294967295u), -_wgslsmith_mod_i32(firstTrailingBit(u_input.c), 17264i));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1000f)))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(~firstTrailingBit(~(global3.a & vec2<u32>(u_input.b, global1.x))), func_1(firstTrailingBit(firstLeadingBit(global2[_wgslsmith_index_u32(global1.x, 4u)]) ^ vec2<i32>(u_input.e, 2147483647i)), ~(-vec2<i32>(-76925i, u_input.d.x)), _wgslsmith_clamp_i32(-7567i, _wgslsmith_clamp_i32(max(u_input.c, u_input.d.x), _wgslsmith_clamp_i32(global3.b.e.x, global3.c.e.x, global3.c.e.x), u_input.d.x), (-29873i | u_input.c) << (abs(4294967295u) % 32u))), global3.c);
    global2 = array<vec2<i32>, 4>();
    var var_0 = _wgslsmith_add_vec3_i32(reverseBits(func_1(vec2<i32>(u_input.e, max(u_input.d.x, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(44412i, 2147483647i), vec2<i32>(u_input.e, -2147483647i))), countOneBits(u_input.c)).e.yyx), -(~(~vec3<i32>(-38284i, -5114i, global3.b.e.x)) | vec3<i32>(~u_input.e, -43628i, abs(global3.c.e.x))));
    var var_1 = global3.b;
    var_0 = vec3<i32>(u_input.d.x, var_1.e.x, ~1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c.d, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b.b.x)) * -571f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))))));
    global3 = global0[_wgslsmith_index_u32(~0u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(global3.c.e.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-13049i, 1i, var_1.e.x, -24696i), var_1.e), global3.b.e >> (vec4<u32>(43295u, 4294967295u, 35805u, 19479u) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i, -25979i, u_input.e) << (vec3<u32>(1u, u_input.a, var_1.c.x) % vec3<u32>(32u))), u_input.d), -12228i, ~(i32(-1i) * -1i)), vec2<u32>(_wgslsmith_add_u32(abs(95160u), 71360u), 6529u) | max(abs(max(vec2<u32>(u_input.b, 32347u), global3.c.c.yw)), var_1.c.xz), _wgslsmith_mult_vec3_u32(~(~var_1.c.yxz | global3.c.c.xxy), select(vec3<u32>(countOneBits(global1.x), ~42395u, _wgslsmith_sub_u32(12349u, u_input.a)), abs(reverseBits(vec3<u32>(33404u, 0u, 0u))), vec3<bool>(global3.c.a, 492f <= var_2.x, true))), _wgslsmith_clamp_u32(firstTrailingBit(~67738u) << (var_1.c.x % 32u), max(global3.c.c.x, u_input.b), select(u_input.b, ~(~41080u), !any(vec4<bool>(true, global3.b.a, var_1.a, global3.b.a)))), 0u);
}

