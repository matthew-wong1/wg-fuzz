struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(i32(-2147483648), -1156i), 0u, i32(-2147483648), vec3<bool>(true, false, false), 103125u), Struct_1(vec2<i32>(1i, -18839i), 4294967295u, -22617i, vec3<bool>(false, false, false), 25326u), Struct_1(vec2<i32>(2147483647i, -17317i), 1u, 0i, vec3<bool>(false, true, true), 1u), Struct_1(vec2<i32>(1i, -1i), 1u, 1i, vec3<bool>(false, false, false), 40022u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 10726u, 0i, vec3<bool>(false, false, true), 1u), Struct_1(vec2<i32>(-22017i, 6834i), 6364u, -1i, vec3<bool>(true, false, true), 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), 42942i), 14465u, -1i, vec3<bool>(false, false, false), 35763u), Struct_1(vec2<i32>(-1i, -3313i), 4294967295u, 1i, vec3<bool>(false, true, true), 0u), Struct_1(vec2<i32>(2147483647i, 0i), 0u, 0i, vec3<bool>(true, true, true), 0u), Struct_1(vec2<i32>(i32(-2147483648), 34727i), 17377u, 2147483647i, vec3<bool>(true, false, true), 24314u), Struct_1(vec2<i32>(-26950i, 0i), 42045u, 221i, vec3<bool>(false, true, false), 0u), Struct_1(vec2<i32>(5007i, -33407i), 4294967295u, -49804i, vec3<bool>(true, true, false), 36659u), Struct_1(vec2<i32>(0i, -1i), 1u, i32(-2147483648), vec3<bool>(true, true, false), 24187u), Struct_1(vec2<i32>(1i, 0i), 4294967295u, -35659i, vec3<bool>(true, true, false), 23410u), Struct_1(vec2<i32>(1i, 14116i), 4142u, -1i, vec3<bool>(false, false, false), 4294967295u), Struct_1(vec2<i32>(45169i, 2147483647i), 6543u, 2147483647i, vec3<bool>(true, true, false), 12378u), Struct_1(vec2<i32>(i32(-2147483648), -23675i), 3380u, -13961i, vec3<bool>(false, true, false), 5406u), Struct_1(vec2<i32>(0i, -9001i), 1u, 2147483647i, vec3<bool>(true, false, true), 22489u), Struct_1(vec2<i32>(i32(-2147483648), -19999i), 1879u, -1i, vec3<bool>(false, false, false), 68030u), Struct_1(vec2<i32>(1i, 2147483647i), 0u, 0i, vec3<bool>(false, false, true), 4294967295u), Struct_1(vec2<i32>(-1i, 2147483647i), 41668u, i32(-2147483648), vec3<bool>(true, false, true), 1u), Struct_1(vec2<i32>(i32(-2147483648), -33790i), 0u, 16240i, vec3<bool>(false, false, false), 30915u), Struct_1(vec2<i32>(-57268i, i32(-2147483648)), 33398u, -15394i, vec3<bool>(false, true, true), 4294967295u), Struct_1(vec2<i32>(28641i, 4660i), 0u, 31281i, vec3<bool>(true, false, true), 3691u), Struct_1(vec2<i32>(i32(-2147483648), 4177i), 4294967295u, i32(-2147483648), vec3<bool>(true, true, true), 1u), Struct_1(vec2<i32>(-16852i, 2147483647i), 0u, 2147483647i, vec3<bool>(true, true, false), 14359u), Struct_1(vec2<i32>(-39466i, -1i), 59111u, i32(-2147483648), vec3<bool>(true, true, false), 0u), Struct_1(vec2<i32>(0i, i32(-2147483648)), 2781u, 7213i, vec3<bool>(false, false, true), 0u), Struct_1(vec2<i32>(-57094i, 15387i), 17575u, -11028i, vec3<bool>(false, true, false), 104499u));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, 0i), 0u, 6407i, vec3<bool>(false, true, false), 36655u);

var<private> global2: array<vec2<bool>, 17>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<i32> {
    global3 = !(!select(select(vec3<bool>(global1.d.x, true, false), !global1.d, true), !vec3<bool>(true, global1.d.x, global3.x), true));
    var var_0 = global0[_wgslsmith_index_u32(1u, 29u)];
    let var_1 = vec2<u32>(select(~43993u, _wgslsmith_mod_u32(1u, global1.e), true), ~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.e, 6780u), 4294967295u)));
    var var_2 = ~0u;
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(select(vec2<i32>(-812i, reverseBits(-17768i)), ~vec2<i32>(2147483647i, -1i), !global2[_wgslsmith_index_u32(~4294967295u, 17u)]), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global1.c, u_input.a), vec2<i32>(26314i, -5454i)))), ~var_1.x, _wgslsmith_mod_i32((abs(u_input.a) ^ -19333i) << (var_1.x % 32u), -35877i), select(select(var_0.d, vec3<bool>(!global3.x, false, true), global1.d), select(select(vec3<bool>(global3.x, global3.x, var_0.d.x), vec3<bool>(var_0.d.x, global3.x, global3.x), !vec3<bool>(global3.x, true, var_0.d.x)), select(vec3<bool>(global1.d.x, global1.d.x, var_0.d.x), var_0.d, true), select(select(var_0.d, global1.d, vec3<bool>(true, global3.x, false)), !vec3<bool>(var_0.d.x, false, false), true)), false), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x) >> (~var_1.x % 32u), 1u, ~0u), _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_0.b, global1.e, global1.b), vec3<u32>(4294967295u, global1.b, var_1.x) & vec3<u32>(var_1.x, 1u, 32311u), global3.x & true), max(vec3<u32>(var_1.x, global1.e, 51590u), vec3<u32>(4294967295u, global1.b, 0u)) << (vec3<u32>(var_0.b, 0u, var_1.x) % vec3<u32>(32u)))));
    return ~(~vec2<i32>(var_3.a.x, abs(-2147483647i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(-10146i, firstTrailingBit(global1.c)), -36397i), global1.e, ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, global1.a.x), global1.a), _wgslsmith_add_vec2_i32(func_3(), reverseBits(global1.a))), select(vec3<bool>(global3.x, global3.x && global3.x, global3.x), !vec3<bool>(false, any(vec2<bool>(global3.x, true)), global1.d.x), !(!vec3<bool>(global3.x, global3.x, true))), ~(~select(29578u, global1.b, global3.x)) & global1.b);
    global3 = select(select(!select(vec3<bool>(true, false, true), global1.d, vec3<bool>(global3.x, var_0.d.x, var_0.d.x)), vec3<bool>(true, global3.x, false), global3.x), select(select(select(select(vec3<bool>(global3.x, global3.x, global1.d.x), global1.d, false), vec3<bool>(var_0.d.x, var_0.d.x, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, global1.d.x), true)), global1.d, any(!vec3<bool>(var_0.d.x, false, true))), select(select(!vec3<bool>(var_0.d.x, false, var_0.d.x), global1.d, true), global1.d, global3.x), true), global1.d.x);
    var var_1 = _wgslsmith_f_op_f32(-1384f + -763f);
    global0 = array<Struct_1, 29>();
    var var_2 = select(!select(global1.d.xx, global3.yx, all(global1.d.xx)), vec2<bool>(true, true), !(!vec2<bool>(global1.d.x || global1.d.x, true)));
    return firstTrailingBit(66911u);
}

fn func_1() -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(global1.e, 29u)];
    global1 = Struct_1(global1.a, func_2(), _wgslsmith_mod_i32(_wgslsmith_mult_i32(31523i, global1.a.x), 2147483647i), global1.d, global1.b);
    global1 = global0[_wgslsmith_index_u32(1u, 29u)];
    global2 = array<vec2<bool>, 17>();
    global3 = !(!vec3<bool>((false | global3.x) & false, !(!global3.x), any(vec3<bool>(false, false, global1.d.x))));
    return global0[_wgslsmith_index_u32(global1.e, 29u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = vec4<i32>(24353i, ~global1.c, -20518i, -_wgslsmith_sub_i32(abs(arg_2.c), 2147483647i)) << (~abs(reverseBits(~vec4<u32>(arg_3, arg_3, arg_2.b, 4294967295u))) % vec4<u32>(32u));
    global1 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.xy, vec2<i32>(arg_2.a.x, global1.a.x >> (24264u % 32u))), arg_2.a), ~(~(global1.e >> (global1.e % 32u))) >> (func_2() % 32u), -26667i, vec3<bool>((any(vec4<bool>(global1.d.x, global3.x, true, true)) || !arg_0.x) | !global3.x, arg_0.x, arg_0.x), ~_wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3, global1.b, global1.e), vec4<u32>(1u, arg_3, arg_2.b, 1u)), arg_3 >> (arg_3 % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(36006u, 4294967295u), vec2<u32>(1u, 0u)) & ~6214u));
    let var_1 = vec3<u32>(abs(~_wgslsmith_add_u32(_wgslsmith_mult_u32(88392u, global1.b), _wgslsmith_clamp_u32(arg_3, arg_3, global1.b))), 31508u, ~global1.b);
    var var_2 = global0[_wgslsmith_index_u32(global1.b, 29u)];
    var var_3 = Struct_1(vec2<i32>(func_3().x, 38066i) ^ (-vec2<i32>(-49008i, 58920i) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, global1.b), vec2<u32>(var_2.e, arg_3)) % vec2<u32>(32u))), ~reverseBits(~arg_2.b), func_1().a.x ^ var_2.a.x, vec3<bool>(!(_wgslsmith_mult_u32(arg_2.b, 14990u) > global1.b), (var_2.d.x || true) || true, all(select(select(vec4<bool>(true, arg_0.x, var_2.d.x, true), vec4<bool>(var_2.d.x, global3.x, global3.x, var_2.d.x), vec4<bool>(global3.x, global1.d.x, false, var_2.d.x)), !vec4<bool>(var_2.d.x, false, var_2.d.x, arg_2.d.x), all(vec4<bool>(false, false, true, false))))), ~31992u);
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(55345u, var_3.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(75296u, 67734u), var_1.zx, ~vec2<u32>(var_1.x, arg_2.b))), ~(~(~vec2<u32>(1u, var_3.e))), vec2<u32>(~arg_2.e >> (~var_2.b % 32u), global1.e)) ^ vec2<u32>(~arg_2.b, 42729u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(global1.b, 31646u)), ~(global1.b & 0u)), ~select(firstLeadingBit(4294967295u), _wgslsmith_add_u32(0u, 42200u), global3.x)), select(func_4(global3.zy, 1i, func_1(), _wgslsmith_mod_u32(global1.b, ~global1.e)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global1.e), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 22498u), vec2<u32>(global1.b, global1.e))), vec2<u32>(~global1.e, global1.e)), func_1().d.yz));
    global0 = array<Struct_1, 29>();
    var var_2 = Struct_1(abs(vec2<i32>(global1.c, ~0i)), _wgslsmith_sub_u32(1u, select(1u, global1.e, all(vec2<bool>(global3.x, global3.x)))), -35691i, select(global1.d, global1.d, !global1.d), func_1().e);
    let var_3 = 19469i << (global1.e % 32u);
    var var_4 = firstTrailingBit(~vec4<u32>(30164u, var_2.e, 121640u, _wgslsmith_mod_u32(var_2.b, var_2.b) | 1u));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1612f, -919f, 1000f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(511f, -1235f, -2213f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -368f, 140f) + vec3<f32>(1000f, 358f, 1347f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2322f, 1730f, -192f))))))), ~(~57643u), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.e, 1118u, 53658u), 39314u, var_4.x), _wgslsmith_clamp_u32(~var_4.x, global1.e & 3412u, var_1.x)), abs(var_2.e));
}

