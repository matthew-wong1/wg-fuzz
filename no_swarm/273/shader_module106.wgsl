struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(4842u, 11442u), vec2<u32>(1u, 72023u), vec2<u32>(23218u, 59092u), vec2<u32>(4294967295u, 36147u), vec2<u32>(4294967295u, 80927u), vec2<u32>(37758u, 0u), vec2<u32>(4849u, 49199u), vec2<u32>(0u, 69458u), vec2<u32>(22666u, 11710u), vec2<u32>(57753u, 10834u), vec2<u32>(28986u, 14682u), vec2<u32>(19673u, 31383u), vec2<u32>(8955u, 4294967295u), vec2<u32>(0u, 21155u), vec2<u32>(34499u, 31640u), vec2<u32>(652u, 4294967295u), vec2<u32>(0u, 31017u), vec2<u32>(19625u, 14168u), vec2<u32>(1u, 0u), vec2<u32>(1u, 24912u), vec2<u32>(64938u, 5287u), vec2<u32>(48987u, 35609u), vec2<u32>(0u, 25230u), vec2<u32>(3060u, 30414u), vec2<u32>(26869u, 67520u), vec2<u32>(4294967295u, 1u), vec2<u32>(41784u, 80770u), vec2<u32>(11182u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(71205u, 43380u), vec2<u32>(15043u, 31149u));

var<private> global1: array<vec4<i32>, 24>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<u32> = vec3<u32>(16843u, 1u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> bool {
    let var_0 = 2147483647i;
    global2 = select(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 4294967295u, 22207u), vec3<u32>(global2.x, global3.x, 4294967295u)), ~4294967295u, firstTrailingBit(global2.x) << (global3.x % 32u)), select(~(~vec3<u32>(80871u, 61437u, 15028u)), ~(vec3<u32>(global2.x, 0u, global3.x) << (vec3<u32>(global2.x, global3.x, global2.x) % vec3<u32>(32u))), vec3<bool>(all(arg_0.xyz), true, true || arg_0.x)) << (min(reverseBits(vec3<u32>(25653u, arg_1, global2.x) | vec3<u32>(37796u, global3.x, arg_1)), vec3<u32>(4294967295u, ~global3.x, 28595u)) % vec3<u32>(32u)), vec3<bool>(true, true, arg_0.x & false));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> bool {
    global3 = vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, ~43928u), 13314u), abs(global2.x), 63829u);
    global1 = array<vec4<i32>, 24>();
    global0 = array<vec2<u32>, 32>();
    let var_0 = 5133u;
    let var_1 = Struct_4(vec4<bool>(!arg_2, arg_2, arg_3.c, any(vec2<bool>(true | arg_1.b.x, var_0 < var_0))), true, 1i, Struct_3(arg_3.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(338f, arg_3.b.a, 2309f, -1253f)) * arg_3.a), true));
    return func_3(!var_1.a, 33823u);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec3<bool> {
    let var_0 = 0u == global2.x;
    global1 = array<vec4<i32>, 24>();
    let var_1 = global3.x;
    global0 = array<vec2<u32>, 32>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-285f, 758f))), _wgslsmith_f_op_f32(sign(1158f)), -1791f))));
    return !select(select(vec3<bool>(false, !arg_1, true), vec3<bool>(arg_1 | var_0, true, var_0 | var_0), func_3(vec4<bool>(var_0, var_0, var_0, var_0), 1u)), select(vec3<bool>(true, false, true), vec3<bool>(arg_1, var_0, func_3(vec4<bool>(var_0, false, true, arg_1), global3.x)), vec3<bool>(any(vec4<bool>(var_0, var_0, false, false)), arg_1, false)), vec3<bool>(func_3(vec4<bool>(arg_1, false, arg_1, true), 49749u ^ global2.x), false, !(!var_0)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec2<bool> {
    global3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global2.x, 1u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(global3.x, global2.x), firstLeadingBit(global2.x), global2.x), countOneBits(~global3.x)) ^ vec3<u32>(0u, firstTrailingBit(global3.x), ~(~global2.x)), select(vec3<u32>(_wgslsmith_add_u32(29644u, 2575u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global3.x, 1u, 0u), vec4<u32>(global2.x, 53507u, 105747u, 4167u)), vec4<u32>(global2.x, global3.x, global3.x, 21273u)), _wgslsmith_add_u32(global3.x ^ 1u, ~global2.x)), ~firstTrailingBit(vec3<u32>(4294967295u, 30083u, global2.x)) ^ (vec3<u32>(global2.x, 40421u, global2.x) & (vec3<u32>(30791u, 1u, 1u) >> (vec3<u32>(4294967295u, 1u, global3.x) % vec3<u32>(32u)))), !func_4(~global1[_wgslsmith_index_u32(global2.x, 24u)], func_2(arg_1, arg_1, arg_0.x, Struct_2(vec4<f32>(arg_1.a, 440f, -1319f, arg_2), Struct_1(-1000f, arg_1.b), arg_0.x, vec2<bool>(arg_1.b.x, arg_0.x), true)))));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3, -reverseBits(~29807i)), vec2<i32>(arg_3, _wgslsmith_sub_i32(-43602i, -26601i)));
    let var_2 = _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, global2.x, 0u), ~vec3<u32>(0u, global3.x, 0u)), vec3<u32>(firstLeadingBit(75551u), global3.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(15674u, 0u, global3.x), vec3<u32>(global2.x, 1u, global3.x) | vec3<u32>(global3.x, 29628u, 0u)))), ~abs(~(~vec3<u32>(global2.x, global3.x, global2.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 40566u, global3.x), vec3<u32>(global2.x, 0u, 4294967295u) << (vec3<u32>(global2.x, 28874u, 3523u) % vec3<u32>(32u))) ^ ~((vec3<u32>(global2.x, 0u, 0u) ^ vec3<u32>(global3.x, global3.x, global2.x)) & (vec3<u32>(global2.x, 0u, 1u) | vec3<u32>(global2.x, 101484u, 36249u))));
    var var_3 = 1u;
    return !(!arg_1.b.yz);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    global3 = _wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_clamp_u32(global2.x, ~19040u << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 4294967295u, global2.x), vec3<u32>(45811u, 36099u, 82621u)) % 32u), global2.x), 0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global3.x, 2536u, global2.x), vec3<u32>(global2.x, 1u, global3.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 3115u, global3.x) ^ vec3<u32>(25733u, 0u, global2.x), abs(vec3<u32>(global2.x, global2.x, global3.x)), vec3<u32>(global2.x, 0u, 1u))) | vec3<u32>(global2.x, ~countOneBits(global3.x), abs(21625u)));
    global2 = _wgslsmith_mod_vec3_u32((vec3<u32>(~0u, ~global3.x, global3.x) >> (vec3<u32>(79701u >> (1u % 32u), 1u, 64228u) % vec3<u32>(32u))) | countOneBits(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global3.x, 1u, global3.x)), vec3<u32>(55667u, global2.x, 4294967295u) ^ vec3<u32>(global3.x, global3.x, 46137u), max(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(global3.x, global2.x, global2.x)))), vec3<u32>(global3.x << (13282u % 32u), global3.x, 1u) ^ vec3<u32>(global3.x, ~(~4294967295u), 1u));
    global3 = ~reverseBits(vec3<u32>(0u, ~global3.x, 40362u));
    global3 = ~vec3<u32>(global2.x, 4118u, global3.x);
    let var_0 = vec4<i32>(max(-1963i, countOneBits(select(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 16436i, u_input.b.x, -45203i), global1[_wgslsmith_index_u32(global3.x, 24u)]), true))), ~(-firstTrailingBit(1i)), -u_input.a, u_input.a);
    return StorageBuffer(~max(0u, ~_wgslsmith_mult_u32(40198u, 62338u)), _wgslsmith_f_op_vec4_f32(arg_3.b - _wgslsmith_f_op_vec4_f32(-arg_3.b)), vec2<u32>(global3.x, _wgslsmith_mod_u32(~(~global2.x), ~(~4497u))), arg_3.b.zw, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, global2.x), vec4<u32>(0u, global2.x, global2.x, global2.x)) ^ ~global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -532f;
    global2 = vec3<u32>(abs(4294967295u), reverseBits(countOneBits(107726u)), ~global2.x);
    var var_1 = -2147483647i;
    global1 = array<vec4<i32>, 24>();
    global0 = array<vec2<u32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-764f)));
    var_1 = _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(global3.x, 24u)] & global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(10867u, global3.x), 24u)], global1[_wgslsmith_index_u32(1u, 24u)]);
    let x = u_input.a;
    s_output = func_5(select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), func_1(vec4<bool>(true, true, false, false), Struct_1(-1280f, vec3<bool>(true, false, false)), 572f, -52754i)), global3.x >= 0u), false), select(!vec4<bool>(var_2 >= var_2, false, true, u_input.b.x == u_input.a), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), select(false, var_2 > var_0, true)), !(~50265i > firstTrailingBit(u_input.b.x))), Struct_1(-380f, func_4(~(vec4<i32>(2859i, u_input.a, -12869i, 2147483647i) << (vec4<u32>(0u, global2.x, global3.x, 0u) % vec4<u32>(32u))), true)), Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -193f, var_0, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, 650f, -480f, var_2))), true));
}

