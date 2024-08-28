struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<bool, 5>;

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(60526i, 2147483647i, i32(-2147483648), 25525i), 1000f, vec2<u32>(1073u, 8330u), vec2<u32>(34561u, 0u)), vec2<i32>(19494i, -16740i)), vec2<u32>(4294967295u, 101536u)), -373f, vec2<u32>(43950u, 4294967295u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 13909i, 1i, 2147483647i), -1202f, vec2<u32>(4294967295u, 30691u), vec2<u32>(9248u, 27371u)), vec2<i32>(40927i, -9662i)), vec2<u32>(4294967295u, 4294967295u)), 1155f, vec2<u32>(19914u, 13639u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 45428i, 6757i, -5749i), 1924f, vec2<u32>(1u, 21740u), vec2<u32>(4294967295u, 0u)), vec2<i32>(-1i, i32(-2147483648))), vec2<u32>(80358u, 24860u)), -1076f, vec2<u32>(4294967295u, 1u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 53896i, 5350i, i32(-2147483648)), -827f, vec2<u32>(4294967295u, 61757u), vec2<u32>(67425u, 14570u)), vec2<i32>(-24633i, 0i)), vec2<u32>(1u, 2714u)), -284f, vec2<u32>(1u, 4294967295u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 1i, -2079i, 16281i), 1000f, vec2<u32>(26188u, 1u), vec2<u32>(40019u, 4294967295u)), vec2<i32>(11296i, 0i)), vec2<u32>(5555u, 1u)), -1000f, vec2<u32>(43060u, 18310u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(42927i, 14028i, 0i, 1i), -580f, vec2<u32>(1u, 1u), vec2<u32>(1u, 827u)), vec2<i32>(-26460i, 17274i)), vec2<u32>(34205u, 10510u)), 1305f, vec2<u32>(1u, 47169u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(24876i, i32(-2147483648), -53875i, -60265i), -302f, vec2<u32>(41807u, 50066u), vec2<u32>(1u, 24456u)), vec2<i32>(1i, 0i)), vec2<u32>(4294967295u, 30414u)), 193f, vec2<u32>(1u, 6423u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -95681i, 0i, -1i), 694f, vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(32409i, 37638i)), vec2<u32>(0u, 10000u)), -103f, vec2<u32>(25874u, 21353u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -4493i, 15287i, i32(-2147483648)), -753f, vec2<u32>(25657u, 4294967295u), vec2<u32>(1u, 1132u)), vec2<i32>(i32(-2147483648), 0i)), vec2<u32>(21218u, 6717u)), -355f, vec2<u32>(10469u, 40485u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(38091i, 39146i, -18579i, -51793i), -233f, vec2<u32>(76990u, 0u), vec2<u32>(73822u, 11387u)), vec2<i32>(-1i, 102279i)), vec2<u32>(4294967295u, 97835u)), -227f, vec2<u32>(0u, 0u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 7220i, 1i, -1i), 340f, vec2<u32>(1u, 65521u), vec2<u32>(100200u, 39737u)), vec2<i32>(-9204i, -81071i)), vec2<u32>(37705u, 36038u)), 1944f, vec2<u32>(4294967295u, 68326u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(39095i, 2147483647i, 0i, 0i), -1000f, vec2<u32>(0u, 4294967295u), vec2<u32>(1713u, 4294967295u)), vec2<i32>(i32(-2147483648), 0i)), vec2<u32>(34169u, 4294967295u)), 260f, vec2<u32>(1u, 23121u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 2147483647i, -23582i, 1i), 374f, vec2<u32>(1u, 0u), vec2<u32>(35697u, 0u)), vec2<i32>(0i, 1i)), vec2<u32>(4294967295u, 1u)), 632f, vec2<u32>(1u, 59514u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 1i, 1i, 0i), 1878f, vec2<u32>(0u, 7870u), vec2<u32>(51466u, 7746u)), vec2<i32>(-58764i, -21187i)), vec2<u32>(0u, 82125u)), 435f, vec2<u32>(1u, 28154u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -38i, 1i, -51660i), -1254f, vec2<u32>(0u, 4294967295u), vec2<u32>(9939u, 59710u)), vec2<i32>(1i, 1i)), vec2<u32>(7173u, 4294967295u)), 452f, vec2<u32>(1u, 0u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -67833i, -13151i, 1i), 169f, vec2<u32>(60350u, 22865u), vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(0i, -23277i)), vec2<u32>(0u, 59220u)), 1288f, vec2<u32>(0u, 53452u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(11750i, 1i, 39058i, i32(-2147483648)), 532f, vec2<u32>(2114u, 1u), vec2<u32>(59204u, 35543u)), vec2<i32>(-9106i, i32(-2147483648))), vec2<u32>(3733u, 1u)), 1371f, vec2<u32>(4294967295u, 66619u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -3699i, -1532i, 1i), -1284f, vec2<u32>(62038u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<i32>(-1i, -10798i)), vec2<u32>(7962u, 11227u)), 1446f, vec2<u32>(49205u, 6312u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -65622i, -8276i, i32(-2147483648)), -1348f, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6853u, 33240u)), vec2<i32>(i32(-2147483648), -21241i)), vec2<u32>(62073u, 15571u)), 866f, vec2<u32>(0u, 34115u)), Struct_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, -19779i, 0i, -18145i), 579f, vec2<u32>(4294967295u, 39437u), vec2<u32>(4294967295u, 0u)), vec2<i32>(1i, -1i)), vec2<u32>(27879u, 1u)), 1631f, vec2<u32>(14961u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_4, 20>();
    global0 = array<vec3<bool>, 29>();
    var var_0 = true;
    global0 = array<vec3<bool>, 29>();
    global0 = array<vec3<bool>, 29>();
    return Struct_1(select(select(select(!vec2<bool>(global1[_wgslsmith_index_u32(35427u, 5u)], global1[_wgslsmith_index_u32(56740u, 5u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], true)), vec2<bool>(true, true | global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(93025u, 5u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), global1[_wgslsmith_index_u32(1u, 5u)])), !(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 5u)]))), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_sub_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(63851i, 2147483647i, -35945i, 871i), vec4<i32>(2147483647i, -1i, -2147483647i, 1i))), -vec4<i32>(1i, 0i, 1i, -1i)), 1f, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.a.x, 19215u), ~vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(global1[_wgslsmith_index_u32(1u, 5u)], false)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yz), 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~u_input.a.zy, vec2<u32>(u_input.a.x, ~u_input.a.x))), u_input.a.yy);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(func_2(), vec2<i32>(firstTrailingBit(-342i), _wgslsmith_dot_vec4_i32(vec4<i32>(-7848i, 2147483647i, 15756i, 1i), min(vec4<i32>(5500i, 87001i, 38329i, 2147483647i), vec4<i32>(3172i, -1i, 0i, -1i))))), vec2<u32>(countOneBits(4294967295u), u_input.a.x));
    let var_1 = 25054u;
    return Struct_3(var_0.a, vec2<u32>(var_0.a.a.e.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -578f);
    let var_1 = 1i;
    let var_2 = Struct_5(_wgslsmith_clamp_u32(10466u, u_input.a.x, u_input.a.x));
    let var_3 = func_1();
    global0 = array<vec3<bool>, 29>();
    global1 = array<bool, 5>();
    var var_4 = func_2().b;
    var var_5 = -769f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-116f, 1f, _wgslsmith_f_op_f32(sign(var_3.a.a.c))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(562f)), _wgslsmith_div_f32(934f, -743f), -338f))), func_1().a.a.a.x | ((u_input.a.x | u_input.a.x) <= ~var_3.b.x))), vec2<u32>(1u, ~(~(0u | var_3.b.x))), u_input.a.x | (1u << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, var_3.a.a.d.x), var_2.a) % 32u)));
}

