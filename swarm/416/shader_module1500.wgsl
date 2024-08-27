struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(false, vec4<u32>(13764u, 0u, 1u, 11029u), vec4<u32>(10397u, 4294967295u, 0u, 56790u)), Struct_1(false, vec4<u32>(94309u, 52791u, 17718u, 53955u), vec4<u32>(28221u, 22122u, 2082u, 4294967295u)), Struct_1(true, vec4<u32>(1u, 1u, 20722u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 22791u)), Struct_1(false, vec4<u32>(6826u, 67926u, 8498u, 49343u), vec4<u32>(45652u, 1049u, 17713u, 32404u)), Struct_1(false, vec4<u32>(27956u, 0u, 41966u, 0u), vec4<u32>(31641u, 61049u, 1u, 4294967295u)), Struct_1(false, vec4<u32>(0u, 1u, 11259u, 75169u), vec4<u32>(4970u, 4294967295u, 12765u, 1u)), Struct_1(false, vec4<u32>(20914u, 1u, 25750u, 0u), vec4<u32>(0u, 27914u, 31127u, 0u)), Struct_1(true, vec4<u32>(4294967295u, 81335u, 17013u, 15864u), vec4<u32>(43334u, 1u, 68250u, 29564u)), Struct_1(false, vec4<u32>(1u, 5216u, 4294967295u, 1u), vec4<u32>(0u, 1u, 16686u, 1u)));

var<private> global1: array<i32, 29> = array<i32, 29>(0i, 8353i, 2147483647i, i32(-2147483648), -1i, 2147483647i, -25053i, i32(-2147483648), 2147483647i, 30028i, -22100i, 2147483647i, 0i, -17122i, i32(-2147483648), 26742i, 1i, 2147483647i, 39316i, 2147483647i, 0i, -14807i, -18998i, 1i, 100052i, 0i, -37727i, -1i, -1i);

var<private> global2: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

var<private> global3: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_2(false, vec2<bool>(false, true), 32681u, -768f), vec4<u32>(32437u, 0u, 1u, 148236u), vec2<i32>(20839i, -6613i)), Struct_5(Struct_2(true, vec2<bool>(false, true), 0u, 736f), vec4<u32>(0u, 1u, 17231u, 35334u), vec2<i32>(19717i, 1i)), Struct_5(Struct_2(false, vec2<bool>(false, false), 30854u, 440f), vec4<u32>(4294967295u, 1u, 0u, 70767u), vec2<i32>(15986i, -30858i)), Struct_5(Struct_2(true, vec2<bool>(true, true), 5105u, -749f), vec4<u32>(98706u, 19300u, 7539u, 23962u), vec2<i32>(-37157i, 1i)), Struct_5(Struct_2(false, vec2<bool>(false, false), 1u, -791f), vec4<u32>(1u, 94447u, 4294967295u, 0u), vec2<i32>(20601i, i32(-2147483648))), Struct_5(Struct_2(true, vec2<bool>(false, false), 0u, 850f), vec4<u32>(39426u, 32344u, 40658u, 0u), vec2<i32>(-3151i, -10129i)), Struct_5(Struct_2(true, vec2<bool>(false, true), 60635u, -1388f), vec4<u32>(12466u, 1u, 76667u, 86313u), vec2<i32>(2147483647i, 2147483647i)), Struct_5(Struct_2(false, vec2<bool>(true, true), 15489u, 565f), vec4<u32>(2047u, 0u, 4115u, 4294967295u), vec2<i32>(1i, 1i)), Struct_5(Struct_2(true, vec2<bool>(true, false), 4294967295u, 328f), vec4<u32>(99868u, 1u, 12423u, 37216u), vec2<i32>(-2351i, -3501i)), Struct_5(Struct_2(true, vec2<bool>(true, true), 1u, -1000f), vec4<u32>(79745u, 34214u, 0u, 26617u), vec2<i32>(0i, 1i)), Struct_5(Struct_2(false, vec2<bool>(true, true), 63687u, 1000f), vec4<u32>(4294967295u, 4294967295u, 46432u, 28688u), vec2<i32>(70i, -5395i)), Struct_5(Struct_2(true, vec2<bool>(true, true), 0u, -857f), vec4<u32>(44403u, 10590u, 1u, 0u), vec2<i32>(261i, 1i)), Struct_5(Struct_2(false, vec2<bool>(false, true), 65411u, 1000f), vec4<u32>(1u, 53997u, 0u, 0u), vec2<i32>(-1i, -37298i)), Struct_5(Struct_2(true, vec2<bool>(false, true), 1u, 1000f), vec4<u32>(4294967295u, 0u, 8587u, 62516u), vec2<i32>(50747i, 19790i)), Struct_5(Struct_2(false, vec2<bool>(true, true), 448u, -142f), vec4<u32>(1u, 33532u, 34034u, 4294967295u), vec2<i32>(2147483647i, -1i)), Struct_5(Struct_2(false, vec2<bool>(true, true), 10068u, -859f), vec4<u32>(0u, 0u, 0u, 4294967295u), vec2<i32>(-51233i, 2266i)), Struct_5(Struct_2(true, vec2<bool>(true, false), 1u, -433f), vec4<u32>(118504u, 38420u, 0u, 1u), vec2<i32>(0i, -1i)), Struct_5(Struct_2(false, vec2<bool>(false, false), 4294967295u, -1720f), vec4<u32>(2608u, 4294967295u, 0u, 1997u), vec2<i32>(67830i, 33152i)), Struct_5(Struct_2(false, vec2<bool>(false, false), 4294967295u, -356f), vec4<u32>(0u, 73103u, 0u, 25890u), vec2<i32>(9410i, 25891i)), Struct_5(Struct_2(true, vec2<bool>(false, true), 23544u, -1171f), vec4<u32>(4294967295u, 0u, 14751u, 4294967295u), vec2<i32>(1i, -28299i)), Struct_5(Struct_2(false, vec2<bool>(true, false), 91893u, -1527f), vec4<u32>(0u, 0u, 4294967295u, 52976u), vec2<i32>(-1i, i32(-2147483648))), Struct_5(Struct_2(true, vec2<bool>(false, true), 37899u, -663f), vec4<u32>(22110u, 48504u, 817u, 52771u), vec2<i32>(-1i, 18821i)), Struct_5(Struct_2(true, vec2<bool>(true, false), 1u, -2359f), vec4<u32>(4294967295u, 4294967295u, 74386u, 1u), vec2<i32>(-2842i, -57361i)), Struct_5(Struct_2(false, vec2<bool>(false, false), 17442u, 1152f), vec4<u32>(24216u, 78600u, 13283u, 25683u), vec2<i32>(39869i, 2147483647i)), Struct_5(Struct_2(false, vec2<bool>(false, true), 91101u, 555f), vec4<u32>(38985u, 4294967295u, 4294967295u, 1u), vec2<i32>(-36238i, i32(-2147483648))), Struct_5(Struct_2(true, vec2<bool>(false, true), 29013u, 424f), vec4<u32>(35954u, 34306u, 1u, 1u), vec2<i32>(56621i, 2147483647i)), Struct_5(Struct_2(false, vec2<bool>(true, false), 25444u, 732f), vec4<u32>(1u, 30457u, 4294967295u, 0u), vec2<i32>(2147483647i, 66297i)), Struct_5(Struct_2(false, vec2<bool>(false, true), 9439u, -967f), vec4<u32>(0u, 96579u, 4294967295u, 67293u), vec2<i32>(i32(-2147483648), 2147483647i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec2<bool> {
    global3 = array<Struct_5, 28>();
    var var_0 = !select(select(!(!global2[_wgslsmith_index_u32(arg_0.b.c, 18u)]), vec3<bool>(arg_0.a.a, false, true), !arg_2.x), !vec3<bool>(arg_0.b.d < arg_0.b.d, false, all(arg_2.xx)), ~(~4294967295u) <= arg_0.b.c);
    var_0 = global2[_wgslsmith_index_u32(max(u_input.e.x, 21337u), 18u)];
    global0 = array<Struct_1, 9>();
    var var_1 = !(!(_wgslsmith_f_op_f32(-127f * 215f) > arg_0.b.d) || (332f == arg_0.b.d));
    return arg_2.zx;
}

fn func_2() -> f32 {
    var var_0 = -10100i;
    let var_1 = vec3<i32>(max(56221i, firstTrailingBit(~u_input.b) >> (~u_input.a.x % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), u_input.c.yz), 1i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i << (0u % 32u), u_input.d), -(0i << (u_input.a.x % 32u)), 5520i)), -global1[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.a.x)), 29u)]);
    var var_2 = Struct_5(Struct_2(true, !(!func_3(Struct_3(Struct_1(true, u_input.e, vec4<u32>(u_input.a.x, u_input.e.x, 1u, 53631u)), Struct_2(false, vec2<bool>(true, false), u_input.e.x, -1218f)), vec4<i32>(2590i, 2147483647i, u_input.d, var_1.x), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, 4811u, u_input.e.x) >> (vec4<u32>(4294967295u, 56481u, u_input.a.x, 655u) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(u_input.e, u_input.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(217f, _wgslsmith_f_op_f32(-483f * -258f), 2147483647i <= var_1.x))))), ~countOneBits(u_input.e), var_1.zz);
    global0 = array<Struct_1, 9>();
    let var_3 = var_2.a;
    return var_3.d;
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<u32>(4294967295u, u_input.a.x, u_input.a.x & u_input.e.x);
    let var_1 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 1686f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1442f, 1411f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-171f, -1000f))), vec2<f32>(565f, 111f)), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1327f, 1000f), vec2<f32>(629f, -941f), vec2<bool>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, 333f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(372f, -236f), vec2<f32>(167f, -1790f))))))));
    global1 = array<i32, 29>();
    var var_3 = Struct_3(Struct_1(all(select(vec3<bool>(true, var_1.a, true), !vec3<bool>(var_1.a, true, false), select(global2[_wgslsmith_index_u32(u_input.e.x, 18u)], vec3<bool>(false, var_1.a, false), global2[_wgslsmith_index_u32(1u, 18u)]))), ~vec4<u32>(var_1.b.x, var_1.c.x, 518u, var_1.b.x) >> (select(_wgslsmith_add_vec4_u32(u_input.e, var_1.c), ~var_1.c, select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(true, var_1.a, false, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, true))) % vec4<u32>(32u)), abs(_wgslsmith_mod_vec4_u32(var_1.b >> (vec4<u32>(8755u, u_input.e.x, var_1.b.x, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, var_1.b.x, 27242u)))), Struct_2(!func_3(Struct_3(global0[_wgslsmith_index_u32(var_1.c.x, 9u)], Struct_2(var_1.a, vec2<bool>(var_1.a, false), 4480u, var_2.x)), u_input.c, !vec4<bool>(false, var_1.a, true, var_1.a)).x, select(select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), var_1.a), !vec2<bool>(var_1.a, false), func_3(Struct_3(global0[_wgslsmith_index_u32(15130u, 9u)], Struct_2(true, vec2<bool>(var_1.a, var_1.a), var_1.b.x, 1834f)), vec4<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 29u)], u_input.c.x, 74140i, -1i), vec4<bool>(var_1.a, false, true, true)).x), select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, false), false), vec2<bool>(true, false), vec2<bool>(true, true)), var_1.c.x < var_0.x), 0u, var_2.x));
    return Struct_5(Struct_2(countOneBits(-60438i) != (-48889i ^ u_input.c.x), !select(vec2<bool>(false, var_3.a.a), var_3.b.b, !var_3.b.a), _wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(1u), ~0u, ~0u), abs(~4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))), var_1.b, ~(-firstTrailingBit(u_input.c.yx)));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.a.d))));
    var_0 = Struct_5(func_1().a, arg_2.b ^ vec4<u32>(0u, arg_0.b.x, _wgslsmith_mod_u32(~arg_1, 1u), 40565u), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] ^ -2760i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 29u)], -20652i)), var_0.c.x), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, var_0.c.x)), 0i)));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(arg_0.c, ~vec2<i32>(-1446i, 25823i)) < ~(-1i), vec4<u32>(4294967295u, 23516u, arg_1, u_input.a.x), var_0.b);
    global0 = array<Struct_1, 9>();
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(-(reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]) ^ _wgslsmith_div_i32(u_input.b, u_input.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~0u, ~1433u), 22233u), 29u)]);
    let var_1 = Struct_1(any(!func_4(func_1(), ~u_input.e.x, global0[_wgslsmith_index_u32(~4294967295u, 9u)])), firstTrailingBit(u_input.e) | ~countOneBits(~vec4<u32>(u_input.a.x, u_input.e.x, 0u, 35323u)), firstLeadingBit(~(~vec4<u32>(36757u, u_input.a.x, u_input.e.x, 0u))) | u_input.e);
    let var_2 = global3[_wgslsmith_index_u32(~var_1.c.x, 28u)];
    global1 = array<i32, 29>();
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -780f), _wgslsmith_f_op_f32(f32(-1f) * -318f)));
    var var_4 = var_2.a.c | _wgslsmith_sub_u32(var_2.a.c, 4294967295u);
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(800f, 2031f, var_2.a.d), vec3<f32>(-496f, var_2.a.d, 1381f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.d, var_2.a.d, 961f), vec3<f32>(-515f, var_2.a.d, -755f))))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.d))), var_2.a.d, -173f)));
    var var_6 = ~_wgslsmith_sub_u32(u_input.e.x, 1u);
    let var_7 = vec4<u32>(~_wgslsmith_add_u32(select(min(var_1.c.x, 0u), 1928u, var_2.a.d <= 1328f), max(~108358u, 87148u)), 1u, 0u, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - 375f) + -309f), var_5.x)), -24726i);
}

