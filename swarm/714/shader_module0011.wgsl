struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-985f, 1265f, 208f), vec3<f32>(1110f, -2371f, -272f), vec3<f32>(700f, 1000f, -470f), vec3<f32>(174f, -599f, -842f), vec3<f32>(-299f, 245f, -402f), vec3<f32>(-1026f, 1000f, -364f), vec3<f32>(-1590f, 1818f, 1063f), vec3<f32>(-702f, 365f, -2444f), vec3<f32>(-455f, 915f, 1285f), vec3<f32>(227f, -112f, 1245f), vec3<f32>(982f, -1376f, -1891f), vec3<f32>(-857f, -2102f, 318f), vec3<f32>(1493f, -952f, 1000f), vec3<f32>(-334f, -486f, -958f), vec3<f32>(446f, -954f, -448f), vec3<f32>(-1193f, 1698f, 933f), vec3<f32>(-1340f, 130f, -475f), vec3<f32>(2016f, 978f, -382f), vec3<f32>(606f, -1697f, -1000f), vec3<f32>(-1447f, 740f, 428f), vec3<f32>(-288f, -1574f, -484f), vec3<f32>(155f, 1984f, -446f), vec3<f32>(-134f, -936f, -870f), vec3<f32>(177f, -397f, -785f), vec3<f32>(1466f, 233f, 645f));

var<private> global1: array<f32, 25> = array<f32, 25>(-978f, -1108f, 318f, -1132f, 285f, -544f, -733f, -1000f, 864f, 455f, -1348f, 208f, 938f, 859f, 110f, -1297f, -964f, 245f, -136f, -1704f, 476f, -523f, -170f, -573f, 252f);

var<private> global2: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 46751u), vec2<u32>(38369u, 3383u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 11732u), vec2<u32>(1u, 51245u));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(-1i, vec2<i32>(16000i, -13812i), 4294967295u, vec2<bool>(false, false), true), true, Struct_1(26145i, vec2<i32>(2147483647i, -16398i), 4294967295u, vec2<bool>(true, true), true), vec3<i32>(2147483647i, 12844i, 1i)), -1011f, Struct_2(Struct_1(31691i, vec2<i32>(-3968i, i32(-2147483648)), 4294967295u, vec2<bool>(false, false), false), true, Struct_1(15373i, vec2<i32>(2147483647i, -6610i), 1u, vec2<bool>(true, false), false), vec3<i32>(24993i, i32(-2147483648), 2147483647i)));

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 25u)] * -1294f))), _wgslsmith_f_op_f32(trunc(382f)), 1244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(850f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 1037f, 272f, -1607f) * vec4<f32>(362f, global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 1469f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.b, global3.b, 1000f, global3.b), vec4<f32>(global1[_wgslsmith_index_u32(1u, 25u)], global3.b, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 445f))))));
    var var_1 = Struct_4(0u, global4.b, !select(select(global4.c, global4.c, global4.c), !vec4<bool>(global3.a.c.e, false, true, false), global4.c));
    global1 = array<f32, 25>();
    global0 = array<vec3<f32>, 25>();
    global2 = array<vec2<u32>, 6>();
    return global2[_wgslsmith_index_u32(551u, 6u)];
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    global1 = array<f32, 25>();
    var var_0 = global4.c.x;
    var var_1 = 2147483647i;
    global2 = array<vec2<u32>, 6>();
    let var_2 = _wgslsmith_div_i32(-(~(-21589i)), ~arg_1);
    return Struct_3(Struct_2(Struct_1(-57338i, global4.b.d.xy, arg_2.c.c, !vec2<bool>(global3.a.c.e, global4.b.c.d.x), arg_2.c.e), false, Struct_1(global4.b.c.b.x, firstLeadingBit(~global4.b.a.b), global4.b.a.c, !vec2<bool>(global4.c.x, true), arg_2.a.d.x), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.c.a.b.x, arg_2.d.x, -1i), global3.c.d) >> (u_input.a % vec3<u32>(32u)))), global3.b, Struct_2(global3.a.c, any(vec2<bool>(global3.a.b, global4.b.a.d.x)) & true, global4.b.c, vec3<i32>(global3.a.d.x, var_2, 0i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = any(select(arg_0.yw, global3.c.c.d, arg_3));
    var var_1 = Struct_4(min(global3.c.c.c & 4294967295u, _wgslsmith_sub_u32(global3.a.a.c, 1u)), func_3(_wgslsmith_clamp_vec2_u32(~u_input.a.yz >> (firstLeadingBit(vec2<u32>(0u, global4.a)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(arg_2.x, arg_2.x), firstLeadingBit(4294967295u)), reverseBits(min(vec2<u32>(56385u, 0u), u_input.a.zy))), global4.b.d.x, Struct_2(Struct_1(8857i, min(arg_1.a.c.b, arg_1.c.a.b), _wgslsmith_sub_u32(56333u, 39413u), arg_0.yx, true), _wgslsmith_mult_i32(-21711i, global3.c.c.b.x) != firstLeadingBit(-9273i), Struct_1(arg_1.a.a.b.x, _wgslsmith_mod_vec2_i32(vec2<i32>(-63451i, 31424i), global4.b.d.zy), abs(u_input.a.x), arg_0.zw, !global3.c.b), -global4.b.d ^ reverseBits(global3.c.d))).a, vec4<bool>(all(arg_0.wwy) | true, false, false, any(!select(vec4<bool>(arg_0.x, global3.a.c.e, arg_0.x, arg_1.a.a.e), arg_0, global4.c))));
    let var_2 = Struct_4(firstLeadingBit(abs(arg_1.c.a.c)), arg_1.c, vec4<bool>(any(global3.c.a.d), true, any(vec4<bool>(false, global4.b.b, select(true, true, false), var_1.b.a.e)), true));
    let var_3 = vec2<i32>(firstTrailingBit(arg_1.c.c.a), var_2.b.d.x >> (_wgslsmith_div_u32(~reverseBits(26665u), _wgslsmith_mult_u32(var_2.b.a.c, 49640u)) % 32u));
    var var_4 = ~arg_2.x;
    return Struct_2(global3.c.c, true, Struct_1(-15055i, countOneBits(-global3.a.d.zz), select(firstTrailingBit(~u_input.a.x), global3.c.a.c, true), vec2<bool>(min(1i, -83260i) != ~var_1.b.a.a, any(vec3<bool>(false, global3.c.a.d.x, arg_3))), !all(vec2<bool>(true, true))), -vec3<i32>(var_1.b.a.a, 0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-27352i, var_1.b.a.b.x, 1i, var_1.b.d.x), vec4<i32>(-1i, global3.c.c.a, -31325i, arg_1.a.a.a))));
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = !(!global4.c);
    global2 = array<vec2<u32>, 6>();
    global2 = array<vec2<u32>, 6>();
    var var_1 = Struct_3(func_4(vec4<bool>(true, global4.b.a.d.x, true, global4.c.x | var_0.x), func_3(_wgslsmith_sub_vec2_u32(func_2(), firstLeadingBit(u_input.a.zz)), 86220i, global4.b), ~(~global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)])))))), func_3(~select(vec2<u32>(0u, u_input.a.x) << (u_input.a.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(0u, 0u)), !global4.c.x), _wgslsmith_dot_vec3_i32(-(vec3<i32>(global3.a.c.a, 0i, global4.b.c.a) >> (vec3<u32>(0u, global4.b.c.c, global4.b.a.c) % vec3<u32>(32u))), arg_0.zzz), Struct_2(func_3(vec2<u32>(44407u, 4294967295u), global3.c.a.b.x, func_3(vec2<u32>(u_input.a.x, 29803u), 2147483647i, global3.c).a).a.a, true, Struct_1(global4.b.a.a, global4.b.c.b, u_input.a.x, global3.c.a.d, select(false, true, global3.c.a.d.x)), global4.b.d)).c);
    var var_2 = func_4(global4.c, Struct_3(func_4(select(!global4.c, global4.c, global3.a.a.d.x), Struct_3(func_4(vec4<bool>(true, true, true, false), Struct_3(global3.a, global3.b, global4.b), global2[_wgslsmith_index_u32(63810u, 6u)], global3.c.a.d.x), var_1.b, global3.a), vec2<u32>(global4.a, ~global3.c.c.c), var_0.x && true), _wgslsmith_f_op_f32(f32(-1f) * -1149f), var_1.a), vec2<u32>(_wgslsmith_clamp_u32(1u, var_1.a.c.c, var_1.c.a.c) >> (min(_wgslsmith_mult_u32(4294967295u, var_1.c.c.c), ~65251u) % 32u), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~1u, 6u)], vec2<u32>(var_1.c.a.c, ~27211u))), !(true & !(var_0.x & var_1.a.a.d.x))).a;
    return abs(~(~u_input.a));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = i32(-1i) * -40659i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(65389u, 25u)]) + global1[_wgslsmith_index_u32(0u, 25u)]) - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(693f)))) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~(u_input.a.x << (global4.b.c.c % 32u)), 25u)]))));
    let var_2 = vec3<bool>(!global4.c.x, !global3.a.c.d.x, ~global3.c.c.c == 97338u);
    var var_3 = ~countOneBits(~abs(firstTrailingBit(vec4<u32>(arg_0.x, global3.a.a.c, 28955u, global4.a))));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(161f - global3.b), -2831f))))) * vec2<f32>(729f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~855u), 25u)])));
    return func_4(vec4<bool>(!all(vec2<bool>(true, true)), 738f == global3.b, !global3.a.b, select(all(select(global4.c.ywz, vec3<bool>(false, global3.a.c.e, false), var_2.x)), var_2.x, global3.c.c.e)), func_3(vec2<u32>(func_4(vec4<bool>(global4.c.x, true, global4.c.x, false), Struct_3(global3.a, 1311f, Struct_2(Struct_1(global4.b.d.x, vec2<i32>(-11381i, global3.a.d.x), global3.a.a.c, var_2.xx, var_2.x), global3.a.b, Struct_1(var_0, vec2<i32>(global4.b.d.x, global4.b.a.a), u_input.a.x, var_2.zx, true), global3.c.d)), global2[_wgslsmith_index_u32(0u, 6u)], any(global4.c.yzx)).c.c, ~42646u), _wgslsmith_sub_i32(global4.b.a.a, -global3.c.d.x) >> (firstLeadingBit(~var_3.x) % 32u), global3.a), vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 36456u), ~u_input.a.x), firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1, arg_0)))), var_0 > ~2147483647i).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4540u, 58032u)), vec3<u32>(countOneBits(4460u), 27403u, ~global4.b.a.c)), ~func_1(vec4<i32>(global3.a.a.a, 1i, -7062i, -2147483647i))), all(select(select(vec3<bool>(false, global3.c.a.d.x, global4.c.x), global4.c.wyz, vec3<bool>(global3.a.b, global4.c.x, global4.c.x)), !vec3<bool>(true, true, global3.c.a.d.x), select(global4.c.xzy, global4.c.xxw, vec3<bool>(global3.a.a.e, false, false)))) == ((~(-1i) ^ global3.a.d.x) <= -reverseBits(global4.b.d.x)), global3.c.a, abs(-global3.a.d));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, -246f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -315f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(3251u, 25u)], global3.b), vec2<f32>(365f, global1[_wgslsmith_index_u32(var_0.a.c, 25u)]))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(530f, 904f), vec2<f32>(1242f, global3.b), var_0.a.d)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-340f, global1[_wgslsmith_index_u32(74031u, 25u)]), vec2<f32>(global3.b, var_1.x), global3.c.c.d.x))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, var_1.x) + vec2<f32>(147f, -620f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b, 242f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(651f, var_1.x) + vec2<f32>(var_1.x, 466f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global4.a, 25u)], -270f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, 332f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(877f, -907f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 478f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b, global3.b), vec2<f32>(global3.b, -1237f), global3.c.c.d.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.b, 1120f), vec2<f32>(global1[_wgslsmith_index_u32(55408u, 25u)], -506f)))))));
    global4 = Struct_4(0u, func_4(!(!global4.c), func_3(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.c, 47311u), vec2<u32>(0u, u_input.a.x)), global4.b.c.a, global4.b), vec2<u32>(44746u | u_input.a.x, countOneBits(u_input.a.x)), true), global4.c);
    let var_2 = !(!vec3<bool>(!func_3(global2[_wgslsmith_index_u32(1446u, 6u)], 6636i, Struct_2(var_0.a, var_0.b, Struct_1(var_0.c.b.x, global3.c.a.b, global4.b.c.c, global4.c.zy, true), vec3<i32>(52179i, global3.c.d.x, var_0.d.x))).a.b, any(vec4<bool>(false, var_0.b, global3.c.c.e, false)), global4.b.a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(7717u, 6u)], func_1(vec4<i32>(0i, -1972i, var_0.d.x, -1i)).zz)), 0u);
}

