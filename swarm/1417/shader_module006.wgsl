struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(43803u, Struct_1(i32(-2147483648), vec2<i32>(-1i, -25597i), vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), 4294967295u), vec2<f32>(-1246f, 2427f)), Struct_2(14668u, Struct_1(1i, vec2<i32>(89595i, -69265i), vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), 2627u), vec2<f32>(525f, 734f)), Struct_2(0u, Struct_1(-793i, vec2<i32>(-1i, -1i), vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), 4294967295u), vec2<f32>(264f, -402f)), Struct_2(23131u, Struct_1(5300i, vec2<i32>(27297i, i32(-2147483648)), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), 1u), vec2<f32>(340f, -105f)), Struct_2(79041u, Struct_1(-1i, vec2<i32>(-1i, -23525i), vec4<bool>(true, true, true, false), vec3<bool>(false, true, true), 0u), vec2<f32>(252f, 365f)), Struct_2(16991u, Struct_1(-1i, vec2<i32>(2147483647i, 1i), vec4<bool>(false, false, false, true), vec3<bool>(false, false, true), 0u), vec2<f32>(-443f, 1572f)), Struct_2(51585u, Struct_1(-19589i, vec2<i32>(0i, 0i), vec4<bool>(true, true, true, false), vec3<bool>(false, false, false), 8867u), vec2<f32>(623f, 1628f)), Struct_2(31919u, Struct_1(-1i, vec2<i32>(0i, -1i), vec4<bool>(false, true, true, false), vec3<bool>(false, false, true), 1u), vec2<f32>(803f, -171f)), Struct_2(1u, Struct_1(2147483647i, vec2<i32>(2147483647i, 1i), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), 52939u), vec2<f32>(1039f, 1526f)), Struct_2(81659u, Struct_1(1i, vec2<i32>(2147483647i, -35483i), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), 0u), vec2<f32>(914f, -310f)), Struct_2(1u, Struct_1(0i, vec2<i32>(1i, -10018i), vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), 1u), vec2<f32>(1120f, -922f)), Struct_2(24867u, Struct_1(1i, vec2<i32>(i32(-2147483648), 35958i), vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), 0u), vec2<f32>(985f, 1158f)), Struct_2(28209u, Struct_1(27671i, vec2<i32>(0i, -18990i), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), 4294967295u), vec2<f32>(592f, -1635f)), Struct_2(33325u, Struct_1(0i, vec2<i32>(1i, -1i), vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), 37710u), vec2<f32>(-704f, 1384f)), Struct_2(4294967295u, Struct_1(1i, vec2<i32>(-1i, -1i), vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), 4294967295u), vec2<f32>(-360f, 651f)), Struct_2(50717u, Struct_1(0i, vec2<i32>(37344i, 39877i), vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), 62526u), vec2<f32>(-340f, 330f)), Struct_2(0u, Struct_1(-1i, vec2<i32>(-1i, 45651i), vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), 0u), vec2<f32>(1328f, 948f)), Struct_2(70680u, Struct_1(55999i, vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, true, false, true), vec3<bool>(false, true, false), 23154u), vec2<f32>(-1000f, 1395f)), Struct_2(73380u, Struct_1(-55183i, vec2<i32>(-2004i, 1i), vec4<bool>(true, false, false, false), vec3<bool>(false, false, true), 73u), vec2<f32>(-158f, 1378f)), Struct_2(1u, Struct_1(i32(-2147483648), vec2<i32>(0i, 2147483647i), vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), 1u), vec2<f32>(-237f, -808f)), Struct_2(0u, Struct_1(0i, vec2<i32>(8809i, -71911i), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 14571u), vec2<f32>(-1000f, 1000f)), Struct_2(118401u, Struct_1(36603i, vec2<i32>(2147483647i, 12539i), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false), 4294967295u), vec2<f32>(-891f, -1063f)), Struct_2(84762u, Struct_1(2147483647i, vec2<i32>(-47499i, -50712i), vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), 25056u), vec2<f32>(766f, 715f)), Struct_2(41897u, Struct_1(0i, vec2<i32>(1423i, 2147483647i), vec4<bool>(false, true, true, true), vec3<bool>(true, false, true), 0u), vec2<f32>(-2024f, -116f)), Struct_2(14412u, Struct_1(i32(-2147483648), vec2<i32>(25214i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), 1u), vec2<f32>(869f, 152f)), Struct_2(0u, Struct_1(-44277i, vec2<i32>(25070i, 2147483647i), vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), 0u), vec2<f32>(-1101f, -2260f)), Struct_2(11862u, Struct_1(0i, vec2<i32>(0i, 0i), vec4<bool>(true, false, true, false), vec3<bool>(false, true, false), 1u), vec2<f32>(2030f, 2134f)), Struct_2(38385u, Struct_1(18719i, vec2<i32>(2147483647i, -42527i), vec4<bool>(true, true, false, false), vec3<bool>(true, true, false), 4294967295u), vec2<f32>(-491f, 1782f)), Struct_2(4294967295u, Struct_1(0i, vec2<i32>(-3675i, 0i), vec4<bool>(false, false, false, false), vec3<bool>(true, false, false), 66987u), vec2<f32>(-1598f, -368f)), Struct_2(4294967295u, Struct_1(53182i, vec2<i32>(2147483647i, -32098i), vec4<bool>(false, false, true, true), vec3<bool>(false, true, false), 16278u), vec2<f32>(-1556f, -1000f)));

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(37194u, 45280u), vec2<u32>(13390u, 4294967295u), vec2<u32>(0u, 89601u), vec2<u32>(44336u, 57937u));

var<private> global2: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 6665i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = Struct_5(arg_1);
    var_0 = Struct_5(arg_1);
    return (vec3<i32>(-1i) * -select(-u_input.b.yzz, u_input.b.wxx << (vec3<u32>(7853u, 0u, var_0.a.a.d) % vec3<u32>(32u)), !vec3<bool>(arg_0.x, false, arg_0.x))) >> (firstTrailingBit(reverseBits(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(20465u, 1u, arg_1.a.d), vec3<u32>(0u, arg_1.a.d, arg_1.a.d))))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2179f + 627f) * _wgslsmith_f_op_f32(1000f + 1550f)), ~global2.x, 1529f, 4294967295u, true), -14101i, false));
    let var_1 = ~(var_0.a.a.d | var_0.a.a.d);
    global2 = func_3(select(select(vec2<bool>(all(arg_0.yxx), !arg_0.x), arg_0.xw, vec2<bool>(false, !var_0.a.c)), select(arg_0.wx, arg_0.xw, !arg_0.yw), var_0.a.a.e), var_0.a);
    let var_2 = Struct_4(var_0.a.a, var_0.a.a.b, -1153f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-762f + var_0.a.a.c))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, _wgslsmith_div_u32(4294967295u, var_2.a.d)), 30u)];
    return vec3<bool>(var_0.a.a.e, var_2.c | false, true);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = firstTrailingBit(-24849i);
    var var_1 = select(func_2(arg_0.b.c), vec3<bool>(true, arg_0.b.c.x | any(select(vec4<bool>(false, arg_1, arg_0.b.c.x, false), vec4<bool>(arg_1, true, true, arg_0.b.d.x), false)), func_2(select(!arg_0.b.c, !arg_0.b.c, arg_0.b.c)).x), true);
    var var_2 = countOneBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(26786u, 16159u, arg_0.b.e, arg_0.b.e) & vec4<u32>(1u, arg_0.a, arg_0.b.e, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.e, arg_0.b.e, 1u, 123249u), vec4<u32>(arg_0.a, arg_0.b.e, 169u, arg_0.a))));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(~1u, var_2.x, _wgslsmith_add_u32(reverseBits(abs(4294967295u)), arg_0.a), 46951u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(45517u, max(arg_0.a, 1u), 0u, 0u & var_2.x), vec4<u32>(_wgslsmith_div_u32(arg_0.a, arg_0.b.e), ~23524u, arg_0.b.e & var_2.x, ~var_2.x), abs(select(vec4<u32>(arg_0.b.e, var_2.x, 4909u, 1u), vec4<u32>(var_2.x, 4294967295u, 61584u, arg_0.b.e), arg_0.b.c)))));
    var_3 = select(~vec4<u32>(abs(var_2.x | var_3.x), var_3.x, firstLeadingBit(~42992u), ~(~4294967295u)), vec4<u32>(var_2.x, 50656u, ~var_3.x, 21738u), vec4<bool>(false, all(!vec4<bool>(var_1.x, arg_0.b.d.x, true, arg_1)), true, true));
    return Struct_2(var_3.x & max(var_3.x, countOneBits(~84483u)), arg_0.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global1 = array<vec2<u32>, 4>();
    let var_0 = vec3<i32>(~_wgslsmith_mult_i32(arg_0.b.a, ~min(-942i, global2.x)), -15366i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
    let var_1 = true;
    global2 = var_0;
    var var_2 = arg_0.b.c.xxx;
    return min(var_0.x, ~(-18982i)) ^ reverseBits(~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(reverseBits(u_input.b), vec4<i32>(global2.x, max(func_4(func_1(Struct_2(94806u, Struct_1(global2.x, u_input.b.xw, vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), 1u), vec2<f32>(-2004f, -774f)), false)), u_input.c), 1i, 33196i));
    let var_1 = select(vec3<bool>(any(vec3<bool>(true, true, true)), func_1(func_1(Struct_2(4294967295u, Struct_1(global2.x, var_0.yx, vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), 4294967295u), vec2<f32>(-466f, -276f)), false), true).b.c.x && true, true), vec3<bool>(!any(func_1(global0[_wgslsmith_index_u32(1u, 30u)], false).b.c), true, true), any(select(select(vec3<bool>(false, true, false), func_2(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true))), select(vec3<bool>(true, false, true), func_1(Struct_2(19041u, Struct_1(-42916i, vec2<i32>(u_input.b.x, global2.x), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), 50972u), vec2<f32>(-405f, -554f)), false).b.d, vec3<bool>(true, false, false)), false)));
    var var_2 = vec2<bool>(!(var_1.x | var_1.x), true);
    global0 = array<Struct_2, 30>();
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -560f, 820f)))))));
    global2 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(var_3, ~_wgslsmith_div_i32(16443i, -1i), func_4(global0[_wgslsmith_index_u32(26037u, 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~4294967295u), 17584u));
}

