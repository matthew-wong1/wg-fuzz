struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<f32, 7> = array<f32, 7>(1062f, 266f, -128f, 1336f, 433f, -1353f, -453f);

var<private> global2: vec3<f32> = vec3<f32>(963f, 262f, 1573f);

var<private> global3: u32 = 54212u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    return Struct_1(u_input.a.x);
}

fn func_3() -> Struct_1 {
    return func_1();
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: f32) -> vec4<f32> {
    global0 = array<Struct_1, 6>();
    global1 = array<f32, 7>();
    let var_0 = vec4<i32>(-44383i, firstTrailingBit(arg_1 ^ -2147483647i), u_input.b, _wgslsmith_sub_i32(-52046i, u_input.c.x));
    let var_1 = func_3();
    var var_2 = Struct_1(~func_1().a);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1226f, -906f, -1210f, 423f)) + vec4<f32>(-1004f, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_2, -655f)), vec4<f32>(_wgslsmith_f_op_f32(-259f * -2087f), -234f, _wgslsmith_f_op_f32(min(-246f, arg_2)), global1[_wgslsmith_index_u32(43415u, 7u)]))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<bool> {
    global1 = array<f32, 7>();
    var var_0 = func_1();
    global3 = var_0.a >> (arg_2.a % 32u);
    global0 = array<Struct_1, 6>();
    let var_1 = any(select(vec2<bool>(arg_0, true), !vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, false)), arg_0 & false), !vec2<bool>(any(vec4<bool>(arg_0, false, arg_0, arg_0)), !arg_0)));
    return select(select(!vec2<bool>(arg_0, var_1), !select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), true), true), select(vec2<bool>(!any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true), !vec2<bool>(!arg_0, !var_1), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), vec2<bool>(var_1, u_input.b >= 0i))), true);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~36934u;
    let var_1 = -_wgslsmith_div_i32(~(~(-11164i)), -2147483647i) >> (1u % 32u);
    var var_2 = _wgslsmith_clamp_u32(~u_input.a.x, arg_0.a & 70487u, arg_0.a);
    let var_3 = Struct_1(0u);
    let var_4 = vec4<bool>(false, true, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(58381u, 7u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -482f)) != _wgslsmith_f_op_f32(-global2.x));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -27517i, -13245i, u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1967i, 62915i, u_input.c.x), vec4<i32>(u_input.c.x, -25332i, u_input.c.x, u_input.c.x)))), -vec4<i32>(~u_input.b, -45557i, _wgslsmith_mult_i32(-2663i, u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.c.x), u_input.c)));
    let var_1 = abs(vec3<i32>(min(select(-u_input.b, u_input.c.x, false), _wgslsmith_mult_i32(var_0.x, u_input.c.x)), _wgslsmith_mult_i32(var_0.x, i32(-1i) * -4514i), _wgslsmith_add_i32((var_0.x << (u_input.a.x % 32u)) & ~0i, _wgslsmith_sub_i32(~u_input.b, ~(-1i)))));
    var var_2 = select(u_input.a.x, select(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_mod_u32(select(4294967295u, 78361u, true), ~u_input.a.x)), ~_wgslsmith_clamp_u32(1u, firstTrailingBit(87367u), abs(49771u)), _wgslsmith_f_op_f32(f32(-1f) * -1557f) >= global1[_wgslsmith_index_u32(35716u, 7u)]), true);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(146820u, u_input.a.x, 22330u), vec3<u32>(u_input.a.x, u_input.a.x, 19922u)) & vec3<u32>(u_input.a.x, u_input.a.x, 1u)), 7u)] - 2220f), _wgslsmith_f_op_f32(sign(705f)));
    var_2 = _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u), 23387u, u_input.a.x), _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 1u, 47099u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), false), ~vec4<u32>(57446u, u_input.a.x, 30392u, u_input.a.x))));
    let var_4 = _wgslsmith_sub_vec3_i32(var_1, u_input.c) << (_wgslsmith_sub_vec3_u32(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 54480u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 40628u))), _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(17638u, 11888u, 2066u), vec3<u32>(1u, 62451u, 0u), vec3<u32>(4294967295u, 65157u, u_input.a.x)), ~(~vec3<u32>(1u, u_input.a.x, u_input.a.x)))) % vec3<u32>(32u));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-909f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 85696u, u_input.a.x), vec3<u32>(1u, 44814u, u_input.a.x)), 7u)])))));
    var var_5 = func_5(func_1(), func_4(!(u_input.a.x < firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1620f, -588f, var_3.x))) * _wgslsmith_f_op_vec4_f32(func_2(true, _wgslsmith_clamp_i32(1i, var_4.x, u_input.b), 441f))), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<i32>(-1i) * -var_1), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(25285u, firstLeadingBit(~(~u_input.a.x))), 6u)]);
    var var_6 = var_1.x & ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(155f, -247f), -1408f, -1000f, 1299f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1109f, -823f, var_3.x, global2.x))))), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-721f, _wgslsmith_f_op_f32(ceil(-2873f)), _wgslsmith_f_op_f32(max(739f, global1[_wgslsmith_index_u32(1u, 7u)])), 1710f) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(894f, var_3.x, global2.x, -2727f), vec4<f32>(global1[_wgslsmith_index_u32(var_5.a, 7u)], 217f, global2.x, -1339f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1643f, global2.x, var_3.x)))))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), var_5.a), 0u, 1u), firstLeadingBit(2937u)), u_input.c, vec2<f32>(718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
}

