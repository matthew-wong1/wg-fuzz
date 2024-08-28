struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(8484i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global2: u32 = 4054u;

var<private> global3: array<Struct_2, 19>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(-219f)), -1200f, -131f)));
    let var_1 = !(!vec3<bool>(!all(vec3<bool>(true, false, false)), select(true, true, all(vec4<bool>(false, true, false, true))), true && all(vec3<bool>(true, true, true))));
    let var_2 = Struct_1(~(1247u >> (~u_input.e % 32u)), !(!all(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, true, true, true), vec4<bool>(false, false, true, var_1.x)))), var_0.x);
    let var_3 = var_2;
    global2 = ~59315u;
    return all(var_1.yx);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = ~arg_0 >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.a, arg_2.a, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.a, arg_0.x), ~arg_0)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, 809f, arg_2.c))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c))))));
    global2 = 26338u;
    global3 = array<Struct_2, 19>();
    let var_2 = any(vec4<bool>(true, !(!arg_2.b), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_1.x), vec2<i32>(-1i, 2147483647i))), true));
    return u_input.e;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(1u, u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.c, 1337f) - vec2<f32>(-853f, -159f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.c, arg_3.c), vec2<f32>(arg_3.c, -2299f)))))), !(!all(!vec2<bool>(arg_3.b, arg_3.b))), arg_3);
    let var_1 = ~(_wgslsmith_mult_vec2_u32(min(vec2<u32>(arg_3.a, arg_1), vec2<u32>(1u, arg_3.a)) | _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 62855u), vec2<u32>(81903u, 1u)), ~(vec2<u32>(var_0.a, u_input.e) & vec2<u32>(var_0.e.a, 26746u))) << (vec2<u32>(arg_1, var_0.e.a) % vec2<u32>(32u)));
    global1 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(arg_2.x ^ global1.x, select(~8836i, var_0.b, var_0.e.c == var_0.c.x)), firstTrailingBit(select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, u_input.b), u_input.c), 37727i, true)), u_input.c.x >> (var_1.x % 32u), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, arg_2.x), vec3<i32>(-23859i, var_0.b, 2147483647i)))));
    global3 = array<Struct_2, 19>();
    let var_2 = var_0.e.c;
    return Struct_2(~firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1, ~var_1)), -42719i << (arg_3.a % 32u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(512f)) * _wgslsmith_f_op_f32(-arg_3.c))), -1342f), var_1.x <= 40323u, arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -(u_input.c | max(vec2<i32>(-11033i ^ global1.x, firstTrailingBit(u_input.d)), select(-vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(arg_0.b, u_input.a), any(vec4<bool>(false, arg_2.b, true, false)))));
    let var_1 = func_4(func_4(arg_2.b, 13081u, (vec4<i32>(u_input.d, 1103i, 9307i, 12359i) ^ vec4<i32>(global1.x, -1346i, 12327i, -54013i)) >> (~(~arg_1) % vec4<u32>(32u)), arg_2).d, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~firstLeadingBit(4294967295u), u_input.e), ~40158u), ~firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, global1.x, -17371i, var_0.x), vec4<i32>(arg_0.b, var_0.x, var_0.x, -2147483647i)), vec4<i32>(2147483647i, 0i, 0i, -22891i) >> (vec4<u32>(1u, 38097u, arg_2.a, 25059u) % vec4<u32>(32u)), any(vec3<bool>(false, arg_0.d, true)))), arg_2).e;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(236f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(401f - var_1.c), var_1.c))), arg_0.e.c, _wgslsmith_div_f32(arg_0.e.c, -380f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, arg_0.c.x, -885f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, var_1.c, 389f) - vec3<f32>(arg_2.c, arg_0.c.x, -908f)) + vec3<f32>(1122f, var_1.c, arg_0.e.c))))));
    return func_4(arg_0.d, _wgslsmith_div_u32(countOneBits(~(~4294967295u)), arg_1.x), firstTrailingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(arg_0.b, global1.x, global1.x, u_input.b), vec4<i32>(global1.x, global1.x, -34753i, -1639i), !vec4<bool>(true, true, arg_0.e.b, var_1.b)), ~abs(vec4<i32>(arg_0.b, -21023i, 84660i, u_input.b)))), arg_0.e);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = global1.xyx;
    let var_1 = func_5(func_4(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.x, u_input.e), u_input.e) <= ~54488u, func_2(arg_0, _wgslsmith_mod_vec4_i32(-vec4<i32>(10624i, 2147483647i, 1i, global1.x), -vec4<i32>(global1.x, -14013i, var_0.x, var_0.x)), Struct_1(0u >> (u_input.e % 32u), true, -1686f)), select(reverseBits(select(vec4<i32>(var_0.x, var_0.x, -49343i, 65521i), vec4<i32>(global1.x, -56278i, u_input.c.x, var_0.x), vec4<bool>(true, false, false, true))), _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.x, -41247i, u_input.b, 37262i), -vec4<i32>(var_0.x, -23835i, -38030i, 1i)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), Struct_1(_wgslsmith_dot_vec2_u32(min(vec2<u32>(56098u, arg_0.x), vec2<u32>(7428u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0.yz, arg_0.yz)), select(true, true, false) && all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-571f)) - -1658f))), min(~(~max(vec4<u32>(u_input.e, u_input.e, 26932u, u_input.e), vec4<u32>(0u, arg_0.x, 26045u, 37501u))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, u_input.e, arg_0.x, 71455u), vec4<u32>(arg_0.x, arg_0.x, 76066u, 11816u)))), func_4(true, (u_input.e | _wgslsmith_add_u32(arg_0.x, u_input.e)) << (~abs(26875u) % 32u), min(select(vec4<i32>(21790i, var_0.x, -17675i, u_input.a), max(vec4<i32>(-49228i, 5i, 5739i, global1.x), vec4<i32>(u_input.c.x, var_0.x, 2147483647i, var_0.x)), all(vec4<bool>(true, false, false, false))), _wgslsmith_add_vec4_i32(~vec4<i32>(12740i, u_input.a, var_0.x, var_0.x), vec4<i32>(u_input.b, 0i, global1.x, 37744i) << (vec4<u32>(arg_0.x, u_input.e, arg_0.x, 12990u) % vec4<u32>(32u)))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(u_input.e, 23888u, arg_0.x, 0u)), reverseBits(u_input.e), ~1u), true, _wgslsmith_f_op_f32(ceil(-455f)))).e);
    global1 = -(vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(u_input.d, var_0.x), select(var_0.x, var_0.x, var_1.e.b), _wgslsmith_clamp_i32(global1.x, var_0.x, 53115i)));
    let var_2 = select(vec3<bool>(!(all(vec3<bool>(true, false, var_1.e.b)) && any(vec3<bool>(var_1.d, true, false))), var_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.e.c)))) > var_1.c.x), vec3<bool>(!(!var_1.d || true), var_1.d, false), var_1.e.b);
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    return -1634f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1u, u_input.e <= 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1594f))) - _wgslsmith_f_op_f32(f32(-1f) * -512f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1336f + _wgslsmith_f_op_f32(-1251f + 541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(52238u, 0u, u_input.e)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(func_5(global3[_wgslsmith_index_u32(var_0.a >> (u_input.e % 32u), 19u)], vec4<u32>(32728u, ~0u, var_0.a, ~var_0.a), Struct_1(92971u, -179f >= var_0.c, _wgslsmith_f_op_f32(round(var_0.c)))).e.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(872f)) + var_0.c)), _wgslsmith_f_op_f32(step(181f, -156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-576f, -1487f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -768f, -531f, 248f) - vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)), vec4<f32>(var_0.c, var_0.c, 278f, 881f)) * vec4<f32>(_wgslsmith_div_f32(666f, 706f), _wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(min(-878f, var_0.c)), _wgslsmith_f_op_f32(-var_0.c))))));
    let var_2 = -(i32(-1i) * -2147483647i);
    var var_3 = !(!vec4<bool>(true, all(!vec2<bool>(var_0.b, var_0.b)), func_5(global3[_wgslsmith_index_u32(u_input.e, 19u)], vec4<u32>(var_0.a, 84951u, var_0.a, var_0.a), func_5(global3[_wgslsmith_index_u32(21024u, 19u)], vec4<u32>(21893u, u_input.e, 0u, 79401u), Struct_1(u_input.e, var_0.b, var_1.x)).e).d, all(vec2<bool>(var_0.b, true))));
    let var_4 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_4(true, func_5(Struct_2(707u, global1.x, var_1.zw, false, Struct_1(u_input.e, true, -1000f)), max(vec4<u32>(var_0.a, 29672u, var_0.a, u_input.e), vec4<u32>(0u, 64750u, 81402u, u_input.e)), Struct_1(19439u, false, var_1.x)).e.a, -vec4<i32>(0i, -2147483647i, 80591i, u_input.b) & vec4<i32>(global1.x, u_input.d, -1i, var_2), func_5(global3[_wgslsmith_index_u32(func_5(Struct_2(53865u, u_input.c.x, var_1.wy, false, Struct_1(0u, var_3.x, var_1.x)), vec4<u32>(var_0.a, var_0.a, 16683u, 0u), Struct_1(0u, var_3.x, 1000f)).a, 19u)], vec4<u32>(u_input.e, u_input.e, 52389u, 36533u), func_4(false, u_input.e, vec4<i32>(-31786i, 17767i, -46567i, 2147483647i), Struct_1(0u, var_3.x, var_0.c)).e).e).e.a, 133126u, 4294967295u), 19u)], _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, _wgslsmith_add_u32(0u, var_0.a), 0u, u_input.e) ^ (vec4<u32>(29465u, u_input.e, 4294967295u, 1u) ^ ~vec4<u32>(u_input.e, 35681u, u_input.e, u_input.e)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, 28793u, u_input.e, 4294967295u), vec4<u32>(var_0.a, var_0.a, 11051u, u_input.e), vec4<u32>(var_0.a, u_input.e, var_0.a, 21875u)), min(vec4<u32>(60668u, 1u, 1u, 1u), vec4<u32>(var_0.a, var_0.a, u_input.e, u_input.e)))), func_4(!func_4(true, 4294967295u, firstLeadingBit(vec4<i32>(global1.x, 8434i, -1i, global1.x)), func_5(global3[_wgslsmith_index_u32(4294967295u, 19u)], vec4<u32>(42436u, 4294967295u, u_input.e, 0u), Struct_1(u_input.e, true, var_0.c)).e).d, 90669u, -vec4<i32>(global1.x, -17058i, -36624i, -6730i) & ~max(vec4<i32>(22040i, 1i, -25575i, -829i), vec4<i32>(-1i, 2147483647i, -7647i, -4227i)), func_5(func_4(all(var_3.wx), 28058u, select(vec4<i32>(var_2, -1i, 56391i, 1i), vec4<i32>(-10951i, u_input.d, 1487i, var_2), vec4<bool>(var_3.x, true, true, var_3.x)), func_5(Struct_2(0u, global1.x, var_1.zz, false, Struct_1(83948u, var_0.b, var_0.c)), vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u), Struct_1(16704u, true, var_0.c)).e), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e, 47387u, var_0.a, 4294967295u), firstTrailingBit(vec4<u32>(0u, 82801u, 4294967295u, 4294967295u))), Struct_1(u_input.e, -2147483647i < var_2, var_1.x)).e).e).e.a;
    let var_5 = _wgslsmith_div_vec2_f32(var_1.zw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, var_0.c)), var_1.wy));
    let var_6 = !(!(!var_0.b));
    global0 = -334f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i) & vec2<i32>(global1.x, -49911i), -global1.zx), -8458i), 0i));
}

