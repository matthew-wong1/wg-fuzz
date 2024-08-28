struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(31389i, 0i, 2147483647i, 0i, i32(-2147483648), 41962i, 39006i, i32(-2147483648));

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(-1000f, -1408f, 1u, vec3<u32>(80053u, 1427u, 43769u), 42924u), vec2<u32>(35536u, 11868u), Struct_2(16374i, Struct_1(328f, -495f, 0u, vec3<u32>(1u, 1u, 46078u), 41608u), -431f, vec2<u32>(0u, 4294967295u)), vec3<i32>(1i, -20708i, i32(-2147483648)), Struct_1(-457f, -1166f, 4294967295u, vec3<u32>(4294967295u, 60605u, 1u), 4294967295u)), Struct_3(Struct_1(133f, -259f, 4294967295u, vec3<u32>(1u, 16636u, 43914u), 4294967295u), vec2<u32>(1u, 14138u), Struct_2(-12551i, Struct_1(2401f, 289f, 1u, vec3<u32>(0u, 4294967295u, 4294967295u), 31805u), -946f, vec2<u32>(27320u, 0u)), vec3<i32>(-1i, -10137i, 24886i), Struct_1(-238f, 263f, 1u, vec3<u32>(4294967295u, 91510u, 1u), 50543u)), Struct_3(Struct_1(-2031f, -318f, 68251u, vec3<u32>(8932u, 1u, 16115u), 2977u), vec2<u32>(4294967295u, 0u), Struct_2(1i, Struct_1(1384f, -1068f, 4294967295u, vec3<u32>(4831u, 1u, 0u), 1u), 720f, vec2<u32>(4294967295u, 29924u)), vec3<i32>(-30706i, 2147483647i, 1i), Struct_1(1000f, 176f, 48903u, vec3<u32>(94101u, 1u, 0u), 77310u)), Struct_3(Struct_1(-721f, -1829f, 16496u, vec3<u32>(0u, 26169u, 0u), 223u), vec2<u32>(4294967295u, 1u), Struct_2(i32(-2147483648), Struct_1(-853f, 1799f, 4294967295u, vec3<u32>(29413u, 25431u, 25862u), 4294967295u), 1000f, vec2<u32>(9052u, 0u)), vec3<i32>(-61139i, 1i, 2147483647i), Struct_1(-406f, -1391f, 0u, vec3<u32>(4294967295u, 1u, 11756u), 73860u)), Struct_3(Struct_1(-2157f, 140f, 72624u, vec3<u32>(1u, 50061u, 4294967295u), 4294967295u), vec2<u32>(0u, 65644u), Struct_2(0i, Struct_1(1183f, 1000f, 20784u, vec3<u32>(1u, 0u, 4294967295u), 40165u), 655f, vec2<u32>(10257u, 4294967295u)), vec3<i32>(0i, -17266i, 0i), Struct_1(-137f, -216f, 4294967295u, vec3<u32>(34389u, 30493u, 1u), 0u)), Struct_3(Struct_1(-849f, -545f, 94981u, vec3<u32>(1u, 14876u, 134u), 4294967295u), vec2<u32>(0u, 4294967295u), Struct_2(-70275i, Struct_1(1000f, 1449f, 66112u, vec3<u32>(32514u, 0u, 1u), 4294967295u), -503f, vec2<u32>(6425u, 24418u)), vec3<i32>(-1634i, 2147483647i, -20747i), Struct_1(-165f, -292f, 1u, vec3<u32>(0u, 16506u, 52758u), 9786u)));

var<private> global2: array<f32, 12>;

var<private> global3: array<f32, 24> = array<f32, 24>(274f, -306f, -729f, -2170f, -934f, 910f, 686f, 1158f, 356f, 251f, 1169f, 360f, 757f, 1000f, 856f, -607f, -600f, 1000f, 559f, -1015f, 2039f, -271f, -1332f, 1197f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 8u)];
    return arg_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> u32 {
    global3 = array<f32, 24>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(-15418i, 25414i), vec2<i32>(-8805i, arg_1.a.a), false), vec2<i32>(arg_1.a.a, 0i)));
    global1 = array<Struct_3, 6>();
    let var_1 = arg_1;
    var var_2 = select(vec2<bool>(all(vec3<bool>(true, true, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true)))), vec2<bool>(true, true & any(vec3<bool>(true, true, true))), arg_1.a.a == arg_1.a.a);
    return ~abs(arg_1.a.d.x);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = -28371i;
    let var_1 = select(-(~arg_0.b.yyy >> (arg_0.a.b.d % vec3<u32>(32u))), arg_0.b.wwy, false);
    var var_2 = vec2<bool>(true, true);
    let var_3 = !(!vec3<bool>(true, select(u_input.a >= 4294967295u, all(vec2<bool>(var_2.x, var_2.x)), false), global2[_wgslsmith_index_u32(arg_1.c, 12u)] > 566f));
    var var_4 = Struct_2(arg_2.x, Struct_1(-1469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2041f)), select(func_4(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(1911f, 476f), vec4<f32>(1000f, -595f, 1363f, -1318f), Struct_3(arg_1, arg_1.d.yz, Struct_2(arg_3.x, arg_1, global2[_wgslsmith_index_u32(15471u, 12u)], arg_1.d.zz), arg_0.b.wyy, Struct_1(986f, arg_1.a, 22477u, arg_0.a.b.d, 4294967295u)))), Struct_4(arg_0.a)), _wgslsmith_add_u32(17172u, arg_1.d.x) >> (_wgslsmith_add_u32(0u, 1u) % 32u), select(all(vec3<bool>(false, true, false)), any(var_3), any(var_3.zx))), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(arg_1.d, vec3<u32>(13942u, 54682u, 42345u)), arg_1.d), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) - _wgslsmith_f_op_f32(arg_0.a.c - 1953f)), vec2<u32>(_wgslsmith_clamp_u32(arg_1.c, arg_0.a.b.e, reverseBits(~u_input.b)), ~72619u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.a.b.e, 12u)], 674f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1753f, 626f) - vec2<f32>(arg_0.a.b.b, global2[_wgslsmith_index_u32(23260u, 12u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 12u)] * 105f), _wgslsmith_f_op_f32(-609f - arg_1.b), _wgslsmith_div_f32(647f, 150f), -1071f)), global1[_wgslsmith_index_u32(~15599u, 6u)])).x, _wgslsmith_f_op_f32(-1478f - -762f), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u >> (u_input.b % 32u), ~0u), ~firstTrailingBit(arg_1.d.yz)), vec3<u32>(_wgslsmith_div_u32(0u, ~18106u), ~_wgslsmith_clamp_u32(min(var_4.b.e, arg_1.c), 29309u ^ var_4.b.c, ~4294967295u), ~46089u), ~arg_1.c);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_5) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0.x, 12u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.a.d, arg_2.a.b.d), 24u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1716f - 127f))))), arg_2.a.c);
    global3 = array<f32, 24>();
    var var_1 = select(arg_2.b, vec4<i32>(_wgslsmith_add_i32(~select(-26353i, arg_2.a.a, true), 30586i), 3125i, -1i, abs(-(~20698i))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, false)), true, all(vec4<bool>(true, true, false, true))), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_2 = vec2<bool>(true != (var_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(83654u, 12u)])))), all(vec4<bool>(select(true, any(vec4<bool>(true, false, true, false)), true), _wgslsmith_f_op_f32(-arg_1.e.a) == -1953f, true, true)));
    var_1 = vec4<i32>(-2147483647i, -select(firstLeadingBit(-var_1.x), firstLeadingBit(0i), !var_2.x & all(vec3<bool>(true, var_2.x, false))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2.b, arg_2.b << (vec4<u32>(arg_0.x, u_input.b, 27955u, arg_2.a.b.c) % vec4<u32>(32u))), vec4<i32>(-1i) * -arg_2.b), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_2.b.x, 18110i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], arg_2.a.a, arg_1.d.x, 2147483647i)), firstTrailingBit(0i), -var_1.x, ~0i))), reverseBits(countOneBits(_wgslsmith_div_i32(~arg_1.d.x, arg_1.c.a))));
    return -1i;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> StorageBuffer {
    return StorageBuffer(vec2<i32>(-_wgslsmith_dot_vec4_i32(~arg_1, -vec4<i32>(60695i, 4171i, 2147483647i, -36797i)), func_5(~vec2<u32>(u_input.a, 1u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(13458u, u_input.a), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), Struct_3(func_2(Struct_5(Struct_2(arg_1.x, Struct_1(-1000f, -410f, u_input.b, vec3<u32>(u_input.a, u_input.a, 1u), 0u), global3[_wgslsmith_index_u32(60384u, 24u)], vec2<u32>(1u, 10363u)), arg_1), Struct_1(global3[_wgslsmith_index_u32(u_input.a, 24u)], -225f, 4294967295u, vec3<u32>(1u, 13344u, u_input.b), u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(32434u, 8u)]), vec2<i32>(-2147483647i, -28472i)), ~vec2<u32>(0u, u_input.a), Struct_2(-1i, Struct_1(-1166f, 2621f, u_input.b, vec3<u32>(4294967295u, 48643u, u_input.b), u_input.a), global2[_wgslsmith_index_u32(2791u, 12u)], vec2<u32>(u_input.a, 51154u)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -38719i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 8u)])), func_2(Struct_5(Struct_2(global0[_wgslsmith_index_u32(50269u, 8u)], Struct_1(1403f, 992f, u_input.b, vec3<u32>(u_input.a, 4589u, u_input.b), 1u), arg_0, vec2<u32>(25063u, 9309u)), vec4<i32>(-2147483647i, 2147483647i, 0i, arg_1.x)), Struct_1(global3[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, vec3<u32>(4294967295u, u_input.b, u_input.b), 17727u), vec2<i32>(43974i, global0[_wgslsmith_index_u32(u_input.a, 8u)]), arg_1.xz)), Struct_5(Struct_2(arg_1.x, Struct_1(726f, -1049f, 4294967295u, vec3<u32>(1u, u_input.a, u_input.a), 1u), -428f, vec2<u32>(u_input.a, u_input.b)), arg_1))), reverseBits(firstTrailingBit(~(~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b)))), global0[_wgslsmith_index_u32(u_input.a, 8u)], 4220u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    var var_0 = 124f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-735f))));
    let var_1 = 0u;
    let var_2 = vec3<i32>(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(reverseBits(var_1), _wgslsmith_div_u32(87167u, var_1))), 8u)], ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b)), 8u)] << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b & u_input.a, var_1), ~21766u) % 32u), global0[_wgslsmith_index_u32(1u, 8u)] << (u_input.b % 32u));
    global1 = array<Struct_3, 6>();
    global3 = array<f32, 24>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(68567u, var_1), 24u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(5821u, 24u)]))), vec4<i32>(0i, global0[_wgslsmith_index_u32(104953u, 8u)], global0[_wgslsmith_index_u32(var_1, 8u)], -firstTrailingBit(-2147483647i)) >> ((_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, 0u, var_1, u_input.b)), vec4<u32>(1u, var_1, u_input.b, 4294967295u)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.b), ~vec4<u32>(0u, u_input.b, 4294967295u, 23750u))) % vec4<u32>(32u)));
}

