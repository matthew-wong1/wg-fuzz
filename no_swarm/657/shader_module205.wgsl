struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 16>;

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: array<vec3<u32>, 27>;

var<private> global4: vec3<i32> = vec3<i32>(1i, 34883i, 52803i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = -7117i;
    let var_1 = Struct_1(reverseBits(firstTrailingBit(12916u)) ^ countOneBits(~1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_sub_u32(22724u, 15571u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 56038u, 12677u), vec3<u32>(8133u, 28977u, 1u))), max(min(vec4<u32>(4294967295u, 0u, 53241u, 0u), vec4<u32>(34610u, 42204u, 1u, 37016u)), vec4<u32>(1110u, 40793u, 4294967295u, 0u)), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~(~(~1u)));
    global4 = _wgslsmith_mod_vec3_i32(-select(vec3<i32>(abs(1i), var_0, min(arg_2, global1[_wgslsmith_index_u32(var_1.c, 16u)])), (vec3<i32>(arg_1, -9429i, 6634i) & vec3<i32>(arg_2, global1[_wgslsmith_index_u32(4294967295u, 16u)], arg_2)) & ~vec3<i32>(2147483647i, 51684i, 31033i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 16147u, var_1.c)), ~var_1.b.yyy), 31u)]), ((vec3<i32>(var_0, arg_2, -19406i) ^ -vec3<i32>(arg_1, 40326i, 1131i)) >> (vec3<u32>(var_1.b.x ^ var_1.a, abs(var_1.a), ~var_1.a) % vec3<u32>(32u))) >> (min(global3[_wgslsmith_index_u32(~43916u, 27u)], global3[_wgslsmith_index_u32(~(var_1.a >> (1u % 32u)), 27u)]) % vec3<u32>(32u)));
    global4 = -(~vec3<i32>(_wgslsmith_div_i32(-2147483647i, global1[_wgslsmith_index_u32(2672u, 16u)] << (30421u % 32u)), -1i & (global1[_wgslsmith_index_u32(0u, 16u)] << (var_1.a % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), global4.zy))));
    var var_2 = global1[_wgslsmith_index_u32(var_1.b.x, 16u)];
    return var_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = -1273f;
    var var_1 = true;
    let var_2 = -2147483647i;
    var var_3 = -2031f;
    let var_4 = ~1u;
    return Struct_1(4294967295u, vec4<u32>(~select(~var_4, ~var_4, true), 60641u, 0u, _wgslsmith_mod_u32(1u, var_4)), func_3(~3791i, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_2), global4.xx, vec2<i32>(global1[_wgslsmith_index_u32(46268u, 16u)], global4.x))), global4.zz), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1458f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> Struct_3 {
    global2 = array<vec3<bool>, 31>();
    let var_0 = true;
    let var_1 = vec3<u32>(~(arg_1.c.a.x | ~arg_2.a), ~_wgslsmith_clamp_u32(~(~11538u), ~58702u, _wgslsmith_dot_vec3_u32(~arg_2.b.xxy, vec3<u32>(arg_1.d.a, arg_2.a, 0u))), arg_2.a);
    var var_2 = vec2<bool>(!all(!(!vec4<bool>(true, var_0, arg_0, false))), !arg_1.b);
    var var_3 = abs(_wgslsmith_mult_u32(arg_2.c, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1366u), vec2<u32>(arg_1.a.c, arg_1.c.c.x))));
    return Struct_3(_wgslsmith_sub_vec3_u32(arg_1.a.b.yzz, _wgslsmith_mult_vec3_u32(arg_2.b.yxw, _wgslsmith_div_vec3_u32(arg_1.a.b.yzz, vec3<u32>(4294967295u, var_1.x, arg_1.c.a.x)))), Struct_2(func_3(31993i, max(0i, abs(global4.x)), ~1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c.d.x)))), func_2(), abs(-9237i >> (var_1.x % 32u)), arg_1.a), ~(~_wgslsmith_div_vec4_u32(arg_1.a.b, vec4<u32>(arg_2.c, 0u, arg_2.b.x, 7311u))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.d.x)), arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x), true);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_4 {
    var var_0 = func_4(false, Struct_4(func_2(), !(!(true & arg_2)), Struct_3(vec3<u32>(firstTrailingBit(31322u), _wgslsmith_mult_u32(6701u, 83900u), 1u), Struct_2(abs(44283u), func_2(), 1i, Struct_1(34632u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30254u), 30383u)), ~(~vec4<u32>(1u, 26135u, 1u, 2484u)), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 851f), -1000f, _wgslsmith_f_op_f32(323f + 504f), _wgslsmith_f_op_f32(f32(-1f) * -145f)), all(arg_1)), Struct_2(4294967295u, Struct_1(~31891u, vec4<u32>(1u, 1u, 1u, 1u), max(17720u, 1u)), -2147483647i, Struct_1(12026u, ~vec4<u32>(4294967295u, 4294967295u, 91434u, 33676u), 33766u))), func_2());
    var var_1 = var_0.b;
    var var_2 = Struct_4(var_1.d, false, Struct_3(var_1.b.b.yxx, var_0.b, ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_1.a), _wgslsmith_mult_u32(var_1.b.a, 6015u), _wgslsmith_div_u32(var_0.c.x, 16799u), ~var_1.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -1042f, _wgslsmith_f_op_f32(step(var_0.d.x, -1000f)), _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)))), firstTrailingBit(~37549u) <= countOneBits(var_1.d.c)), var_0.b);
    var_2 = Struct_4(Struct_1(0u, vec4<u32>(~var_2.a.c, _wgslsmith_add_u32(~var_2.d.b.c, ~38069u), var_1.a, func_3(1i, ~global1[_wgslsmith_index_u32(28428u, 16u)], min(75458i, var_2.c.b.c), 1554f)), 0u), false, var_2.c, var_2.c.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-673f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c.d.x), -1234f)), _wgslsmith_f_op_f32(step(-287f, 240f)), _wgslsmith_f_op_f32(var_2.c.d.x * 278f)))));
    return Struct_4(var_0.b.d, false, Struct_3(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.c.x, 2661u), 1u), 4294967295u, 21674u), var_0.b, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.c, 4294967295u) | vec2<u32>(4294967295u, var_0.c.x), ~var_0.b.b.b.xx), 5389u, var_2.a.c, var_2.d.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.d.x + 599f)), -1873f, var_2.c.d.x, _wgslsmith_div_f32(var_2.c.d.x, _wgslsmith_f_op_f32(1000f + 1333f))), all(select(vec4<bool>(arg_1.x, arg_2, arg_2, true), vec4<bool>(arg_1.x, var_2.c.e, var_0.e, var_2.b), var_2.b))), func_4(!var_2.c.e, Struct_4(var_2.a, func_4(arg_2, Struct_4(var_0.b.b, var_2.b, var_2.c, var_2.c.b), Struct_1(var_0.a.x, var_1.d.b, 4645u)).e | all(vec2<bool>(arg_1.x, arg_1.x)), Struct_3(_wgslsmith_div_vec3_u32(global3[_wgslsmith_index_u32(10663u, 27u)], vec3<u32>(var_1.b.a, 1u, 5082u)), var_2.d, max(var_1.d.b, var_2.a.b), _wgslsmith_f_op_vec4_f32(var_3 * vec4<f32>(var_3.x, var_2.c.d.x, var_2.c.d.x, var_0.d.x)), var_0.e), var_0.b), var_0.b.d).b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = func_4(false, arg_0, arg_0.a);
    let var_1 = Struct_2(1u, Struct_1(max(var_0.a.x, ~abs(arg_1.c)), var_0.b.b.b, ~1919u), -14479i, arg_0.d.d);
    var var_2 = arg_0;
    var var_3 = Struct_4(func_1(14285i, !select(vec3<bool>(false, var_0.e, false), select(arg_3, global2[_wgslsmith_index_u32(30815u, 31u)], vec3<bool>(var_2.c.e, false, true)), !arg_0.b), false & any(select(arg_3, vec3<bool>(false, true, var_0.e), arg_3.x))).d.d, true, Struct_3(_wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(var_2.b, Struct_4(arg_1, var_2.c.e, Struct_3(var_1.d.b.zxz, var_1, vec4<u32>(49169u, arg_2, 55325u, var_0.b.b.a), var_2.c.d, false), Struct_2(arg_0.a.c, var_2.c.b.b, u_input.a, arg_0.c.b.b)), Struct_1(arg_2, var_2.d.d.b, 0u)).a.x, 6126u), 27u)], _wgslsmith_mult_vec3_u32(vec3<u32>(63507u, 1u, 4294967295u), _wgslsmith_add_vec3_u32(var_1.b.b.yzy, vec3<u32>(12445u, 66248u, 0u))), vec3<u32>(~arg_1.b.x, _wgslsmith_div_u32(arg_2, var_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(31226u, 72647u, 23890u, 24714u), var_1.b.b))), func_4(select(all(vec2<bool>(true, var_0.e)), !var_0.e, false), func_1(2147483647i, arg_3, var_2.c.e), Struct_1(_wgslsmith_mod_u32(40669u, var_2.d.a), _wgslsmith_mod_vec4_u32(arg_1.b, var_0.b.d.b), _wgslsmith_add_u32(arg_0.c.c.x, 20235u))).b, (arg_1.b << (firstLeadingBit(vec4<u32>(37727u, 4294967295u, 27947u, arg_2)) % vec4<u32>(32u))) << (~min(arg_0.c.b.d.b, var_0.b.b.b) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(trunc(var_0.d)), all(vec4<bool>(arg_0.c.e, !arg_3.x, var_2.c.e == var_0.e, false))), func_1(~(-1i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_2) << ((~4294967295u | ~var_2.c.b.d.a) % 32u), 31u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.c, -1i, -2147483647i), vec3<i32>(1i, u_input.a, -51368i)), ~var_1.c) >= ((22501i << (1u % 32u)) << (var_1.a % 32u))).c.b);
    var var_4 = func_4((var_2.c.d.x < -668f) | all(vec2<bool>(true, func_1(-26052i, arg_3, true).b)), func_1(var_3.d.c, vec3<bool>(all(arg_3.yz) & var_2.c.e, -u_input.a < max(0i, 0i), false), true), var_0.b.d);
    return Struct_3(_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_1.b.x, arg_0.c.a.x, var_0.b.d.a), vec3<u32>(arg_2, 1u, var_3.a.b.x), var_0.e), var_3.d.d.b.zzz), vec3<u32>(~firstTrailingBit(var_0.a.x), var_4.c.x, var_3.c.b.d.b.x)), Struct_2(~(~countOneBits(1u)), func_4(0i != _wgslsmith_mod_i32(var_1.c, u_input.a), arg_0, Struct_1(var_2.a.b.x, vec4<u32>(arg_1.c, arg_1.a, arg_2, 0u), 4294967295u ^ arg_0.d.b.b.x)).b.b, ~(-2147483647i), Struct_1(~var_0.a.x ^ ~0u, arg_0.a.b, arg_1.a)), vec4<u32>(39314u, _wgslsmith_add_u32(var_4.b.a, countOneBits(4294967295u)), 67788u, arg_2) ^ ((~var_4.b.d.b | vec4<u32>(var_1.b.a, arg_0.a.a, arg_2, var_2.d.d.b.x)) ^ ~(vec4<u32>(var_1.b.a, 27422u, arg_1.a, 0u) & arg_1.b)), var_3.c.d, select(true, false, var_3.b && arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-1200f, _wgslsmith_f_op_f32(f32(-1f) * -528f)));
    var var_1 = Struct_1(4294967295u, ~max(abs(max(vec4<u32>(51579u, 1u, 4294967295u, 0u), vec4<u32>(15000u, 0u, 1u, 0u))), vec4<u32>(~4294967295u, _wgslsmith_add_u32(1u, 59940u), ~30460u, 0u)), 53320u);
    var var_2 = func_5(func_1(u_input.a, select(global2[_wgslsmith_index_u32(var_1.a, 31u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.b.zy, vec2<u32>(114863u, 105326u)), 31u)], true), select(all(vec4<bool>(true, true, true, true)), true, true)), Struct_1(var_1.c, vec4<u32>(_wgslsmith_div_u32(111413u, var_1.a), ~var_1.a, _wgslsmith_clamp_u32(var_1.b.x, ~var_1.a, 59662u), var_1.b.x), ~(~firstTrailingBit(var_1.b.x))), select(~_wgslsmith_sub_u32(~41808u, var_1.a), ~func_3(~1i, 1i, global1[_wgslsmith_index_u32(max(var_1.b.x, var_1.a), 16u)], -209f), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), vec3<bool>(func_1(-7642i, global2[_wgslsmith_index_u32(32988u, 31u)], false).c.e, true, true));
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(var_2.d.zz * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_5(func_1(-15501i, global2[_wgslsmith_index_u32(4294967295u, 31u)], true), func_4(false, Struct_4(var_2.b.b, true, Struct_3(var_2.a, Struct_2(var_2.c.x, var_2.b.b, -16531i, Struct_1(var_2.c.x, vec4<u32>(0u, 63753u, var_1.a, 4294967295u), 1u)), var_2.b.b.b, vec4<f32>(1539f, 537f, -386f, var_2.d.x), var_3), Struct_2(var_1.a, var_2.b.d, -2147483647i, Struct_1(var_1.a, vec4<u32>(0u, 1u, 1u, 4294967295u), var_2.a.x))), Struct_1(var_1.c, var_2.c, 36893u)).b.d, ~4294967295u, select(vec3<bool>(var_3, var_3, var_2.e), global2[_wgslsmith_index_u32(var_2.b.a, 31u)], var_2.e)).d.x, var_0), _wgslsmith_f_op_vec2_f32(trunc(func_1(~(-8134i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.b, var_2.c), 31u)], true && var_2.e).c.d.zx)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, var_3))), vec2<bool>(-227f <= var_2.d.x, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, func_5(Struct_4(func_5(func_1(var_2.b.c, global2[_wgslsmith_index_u32(var_2.c.x, 31u)], true), func_1(global4.x, vec3<bool>(var_2.e, true, var_2.e), var_3).a, var_1.a, select(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(var_2.b.d.c, 31u)], global2[_wgslsmith_index_u32(31220u, 31u)])).b.d, !var_3, Struct_3(~vec3<u32>(var_1.b.x, 67441u, var_1.b.x), var_2.b, vec4<u32>(var_2.c.x, 0u, 42459u, var_2.b.d.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, -1064f, -2142f, var_4.x)), true), func_4(var_2.e, Struct_4(var_2.b.d, true, Struct_3(vec3<u32>(18469u, var_1.a, var_2.b.b.c), var_2.b, var_1.b, vec4<f32>(219f, var_0, var_0, -319f), false), Struct_2(var_2.c.x, var_2.b.b, var_2.b.c, var_2.b.d)), Struct_1(0u, var_1.b, 29438u)).b), func_4(var_2.e, func_1(func_5(Struct_4(Struct_1(var_2.a.x, var_2.b.d.b, 38477u), true, Struct_3(global3[_wgslsmith_index_u32(0u, 27u)], var_2.b, var_1.b, var_2.d, var_3), var_2.b), Struct_1(68666u, var_1.b, var_1.c), 4294967295u, vec3<bool>(var_2.e, var_2.e, true)).b.c, vec3<bool>(true, true, false), 44028i < var_2.b.c), Struct_1(75174u, vec4<u32>(34539u, 0u, var_1.c, var_1.c), _wgslsmith_add_u32(var_1.b.x, var_1.c))).b.d, 90143u, select(!global2[_wgslsmith_index_u32(min(4294967295u, 1u), 31u)], !(!global2[_wgslsmith_index_u32(var_1.a, 31u)]), vec3<bool>(true, 54192u != var_1.c, !var_2.e))).d.x, global1[_wgslsmith_index_u32(70640u, 16u)]);
}

