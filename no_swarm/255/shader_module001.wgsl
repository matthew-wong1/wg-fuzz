struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 39945i, -1i, -8886i);

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(2147483647i, 27228i), vec2<i32>(-50337i, 2147483647i), vec2<i32>(-3492i, -14597i), vec2<i32>(i32(-2147483648), -17932i), vec2<i32>(1i, -52448i), vec2<i32>(6589i, 15724i), vec2<i32>(-21598i, -18047i), vec2<i32>(6798i, -39887i), vec2<i32>(44646i, -1i), vec2<i32>(-52112i, 15683i), vec2<i32>(-12562i, 34284i), vec2<i32>(-1i, -47694i), vec2<i32>(-1i, 26912i), vec2<i32>(1i, -3108i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, 44760i), vec2<i32>(1i, i32(-2147483648)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global1 = array<Struct_1, 27>();
    let var_0 = !(true == !all(vec3<bool>(true, true, true)));
    global1 = array<Struct_1, 27>();
    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~45192u, 5897u >> (~4294967295u % 32u), abs(u_input.c)), ~abs(reverseBits(4294967295u))), max(vec3<u32>(1u, 53131u, 0u), ~(u_input.b ^ ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.c))), any(select(vec3<bool>(!var_0, var_0, all(vec3<bool>(var_0, var_0, var_0))), vec3<bool>(!var_0, all(vec2<bool>(false, var_0)), any(vec3<bool>(var_0, false, var_0))), !select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, var_0), var_0))), vec3<i32>(_wgslsmith_mod_i32(~(-21800i), reverseBits(u_input.a.x)), -reverseBits(_wgslsmith_div_i32(-2145i, global0.x)), _wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(firstLeadingBit(-29630i), global0.x), countOneBits(global0.x | global0.x))));
    global2 = array<vec2<i32>, 17>();
    return true;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(314f)))), !arg_1.x));
    var var_1 = Struct_1(min(~select(u_input.c, _wgslsmith_mod_u32(2067u, u_input.c), all(arg_1.zyz)), _wgslsmith_clamp_u32(arg_2, u_input.c, ~(~u_input.b.x))), u_input.b, false, _wgslsmith_div_vec3_i32(vec3<i32>(1i, ~(-2147483647i), -(~arg_3.x)), abs(max(max(vec3<i32>(2147483647i, arg_0, -1i), u_input.a), vec3<i32>(-2147483647i, arg_0, arg_3.x)))));
    var var_2 = var_1.c;
    let var_3 = ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(14186u, ~0u, _wgslsmith_sub_u32(u_input.c, 2223u))), min(var_1.b, select(u_input.b, var_1.b, arg_1.zyw)));
    let var_4 = vec3<u32>(_wgslsmith_mod_u32(75107u | _wgslsmith_mod_u32(0u, ~arg_2), _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(~1u, reverseBits(22174u)))), abs(3195u), ~(1u >> (u_input.c % 32u)));
    return -1251f;
}

fn func_2(arg_0: i32) -> f32 {
    global2 = array<vec2<i32>, 17>();
    var var_0 = vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(u_input.a.yz, abs(vec2<i32>(1i, global0.x)) ^ u_input.a.yy);
    let var_1 = ~u_input.b ^ u_input.b;
    global2 = array<vec2<i32>, 17>();
    var_0 = min(~(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(29173i, -2147483647i)), global2[_wgslsmith_index_u32(u_input.b.x, 17u)] | vec2<i32>(var_0.x, -47659i))), reverseBits(reverseBits(global0.yw ^ global2[_wgslsmith_index_u32(u_input.c, 17u)]) & ~abs(global2[_wgslsmith_index_u32(var_1.x, 17u)])));
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_add_i32(2147483647i ^ global0.x, ~(-7755i)), vec4<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), 37608i == var_0.x)), true, func_3(), false), 0u, vec3<i32>(-var_0.x, -_wgslsmith_mult_i32(u_input.d, u_input.d) & (-var_0.x | firstLeadingBit(69522i)), arg_0)));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(138f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1071f * -431f)))), -710f, _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(-20029i, u_input.d), firstLeadingBit(0i))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, -779f, 365f, 1102f)) + vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = ~arg_0;
    let var_2 = u_input.b.zy | ~reverseBits((vec2<u32>(u_input.c, 0u) | vec2<u32>(u_input.b.x, u_input.c)) >> (~vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)));
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.x, arg_0, 1i), vec3<i32>(0i, arg_0, u_input.a.x), vec3<bool>(false, false, true)), vec3<i32>(u_input.a.x, global0.x, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_div_i32(global0.x, arg_0), _wgslsmith_sub_i32(46574i, -569i) | global0.x), ~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, arg_0, arg_0, arg_0), vec4<i32>(-54702i, u_input.d, -10757i, 2147483647i), vec4<i32>(41558i, arg_0, -2147483647i, global0.x)), ~vec4<i32>(global0.x, 17761i, -33856i, 31475i), true), firstTrailingBit(reverseBits(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 2147483647i) ^ vec4<i32>(-13079i, global0.x, 395i, 39726i)))), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 31161i, 1i, 2147483647i) ^ vec4<i32>(-3962i, u_input.a.x, arg_0, 1i)) & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, u_input.a.x, u_input.d), vec4<i32>(-2147483647i, u_input.d, -905i, arg_0)), -1i, arg_0, _wgslsmith_sub_i32(global0.x, global0.x)), ~(~vec4<i32>(global0.x, u_input.d, -2147483647i, -8914i)) << (select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u) & vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), ~vec4<u32>(u_input.b.x, var_2.x, u_input.c, u_input.c), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))) % vec4<u32>(32u))));
    var var_3 = global1[_wgslsmith_index_u32(~4294967295u, 27u)];
    return 28067u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = global1[_wgslsmith_index_u32(1u, 27u)];
    var var_2 = var_0.x;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x))))));
    let var_3 = vec3<bool>(-470f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1414f, var_0.x) * 1230f)), var_1.c, (var_1.a << (4294967295u % 32u)) > 1u);
    let var_4 = Struct_1(firstTrailingBit(4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(14206u << (0u % 32u), 157u), ~(~u_input.c), 81108u), vec3<u32>(u_input.b.x, func_1(u_input.a.x ^ -1i), u_input.c), vec3<u32>(u_input.c, var_1.a, _wgslsmith_add_u32(1u, u_input.b.x))), true, var_1.d);
    global0 = vec4<i32>(-1i) * -max(vec4<i32>(-1i, u_input.a.x, global0.x, var_1.d.x) >> (firstLeadingBit(vec4<u32>(7843u, 4294967295u, 1u, 1u)) % vec4<u32>(32u)), abs(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_4.d.x) & vec4<i32>(2147483647i, global0.x, 4067i, 10343i)));
    let var_5 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, ~var_1.b.x, var_4.a), vec3<u32>(~55940u, _wgslsmith_sub_u32(28965u, var_1.a), var_4.a & var_4.a)));
    var_2 = _wgslsmith_f_op_f32(func_4(-(-(var_4.d.x >> (u_input.b.x % 32u)) | var_4.d.x), select(select(select(select(vec4<bool>(false, var_4.c, var_3.x, true), vec4<bool>(var_4.c, false, false, false), true), select(vec4<bool>(var_3.x, false, true, var_3.x), vec4<bool>(true, var_4.c, false, var_3.x), var_3.x), false), vec4<bool>(true, true, any(vec2<bool>(false, true)), var_3.x), func_3()), vec4<bool>(all(!var_3), all(vec4<bool>(var_4.c, var_4.c, false, true)), 0u <= var_4.a, var_1.c), !select(vec4<bool>(var_4.c, false, var_1.c, true), vec4<bool>(var_3.x, false, true, var_1.c), vec4<bool>(var_4.c, false, true, false))), 19115u, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.x, u_input.a.x) >> ((0u >> (var_5.x % 32u)) % 32u), -var_1.d.x, _wgslsmith_mod_i32(29955i, global0.x)), ~reverseBits(~var_4.d), vec3<i32>(var_4.d.x, select(-2147483647i, -366i >> (var_1.a % 32u), !var_4.c), u_input.d ^ -21867i))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(-vec4<i32>(u_input.a.x, var_4.d.x, -16897i, -7697i), vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a.x, 1i, u_input.a.x), -u_input.d == -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1106f, 1283f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - var_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-814f, _wgslsmith_f_op_f32(-var_0.x)), 965f, 1007f)));
}

