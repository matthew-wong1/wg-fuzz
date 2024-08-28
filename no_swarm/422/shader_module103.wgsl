struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i, -1i, 0i, -47771i, -10035i, 10297i, 45944i, -19106i, 2147483647i, 0i, -25955i, -14195i, 2147483647i, -1i);

var<private> global1: array<i32, 16> = array<i32, 16>(-9970i, 0i, 27739i, 0i, i32(-2147483648), 29150i, 7016i, 2147483647i, -1i, -4612i, 1i, 0i, -29711i, i32(-2147483648), 2147483647i, 23557i);

var<private> global2: array<i32, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = 631f;
    var var_1 = -vec4<i32>(-u_input.c, global0[_wgslsmith_index_u32(u_input.b, 17u)], ~(-(~global1[_wgslsmith_index_u32(52160u, 16u)])), global1[_wgslsmith_index_u32(u_input.a.x, 16u)]);
    let var_2 = _wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, u_input.a.x, ~u_input.a.x, 0u), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 0u, u_input.a.x, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 1u, 35963u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b), ~u_input.b, u_input.b | u_input.a.x, select(4294967295u, 157019u, false))), vec4<u32>(1u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 40071u, 54268u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x)) ^ 27956u, ~u_input.b), vec4<bool>((u_input.a.x != 0u) || false, !(u_input.b <= u_input.b), all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true)))), abs(firstLeadingBit(~vec4<u32>(63264u, 1u, u_input.b, u_input.a.x))));
    let var_3 = abs(u_input.c);
    let var_4 = arg_0.x;
    return 414f;
}

fn func_4(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b < _wgslsmith_sub_u32(_wgslsmith_mod_u32(~19821u, firstTrailingBit(54705u)), _wgslsmith_dot_vec3_u32(abs(u_input.a), u_input.a << (u_input.a % vec3<u32>(32u)))), ~max(~countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(14170u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)])), _wgslsmith_add_vec4_i32(-vec4<i32>(-10656i, u_input.c, 2147483647i, -17534i), -vec4<i32>(global0[_wgslsmith_index_u32(58173u, 17u)], -1i, global0[_wgslsmith_index_u32(1u, 17u)], -2147483647i))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(round(-1177f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2292f))), 740f)));
    global0 = array<i32, 17>();
    global2 = array<i32, 12>();
    let var_1 = Struct_1(!(true & all(select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, false), vec3<bool>(true, false, false)))), vec4<i32>(~(global2[_wgslsmith_index_u32(u_input.b, 12u)] >> (u_input.b % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(14571u, 17u)], var_0.b.x, -2147483647i), vec3<i32>(-8886i, 2147483647i, 1i)) << (select(10985u, u_input.b, false) % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b) >> (u_input.b % 32u), 17u)]), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.b.wxz, var_0.b.wwz), var_0.b.x), -1i >> (u_input.a.x % 32u), 2147483647i), _wgslsmith_mod_i32(u_input.c, abs(-global2[_wgslsmith_index_u32(u_input.b, 12u)]))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_0.c, var_0.c)))), vec2<f32>(var_0.c.x, arg_0.x), false | !var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, _wgslsmith_f_op_f32(max(var_0.c.x, 341f))) + arg_0.xx))));
    let var_2 = arg_0;
    return select(vec3<bool>(all(select(!vec4<bool>(true, true, true, var_0.a), vec4<bool>(false, var_0.a, true, var_1.a), true)), _wgslsmith_clamp_u32(~21285u, 61349u, 1u) <= ~(~u_input.b), false), vec3<bool>(true, !any(!vec2<bool>(var_1.a, var_1.a)), any(select(!vec2<bool>(false, var_1.a), select(vec2<bool>(false, var_0.a), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(var_1.a, var_0.a), vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a))))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.a, var_0.a), !var_1.a), !select(select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_0.a, var_1.a, true), var_0.a), select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, true, var_0.a)), var_0.a), true));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = any(select(func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2.c.x)), _wgslsmith_f_op_f32(select(arg_3.c.x, arg_2.c.x, true)), _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_1, -492f))))), vec3<bool>(arg_2.b.x <= abs(arg_3.b.x), select(false, true, -32740i < global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !(!arg_0)), !(!vec3<bool>(false, arg_2.a, arg_2.a))));
    global1 = array<i32, 16>();
    let var_1 = ~_wgslsmith_div_u32(36413u, ~7660u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c.x)));
    global1 = array<i32, 16>();
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(!(!func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -867f), Struct_1(true, vec4<i32>(-1i, -1i, -37648i, global0[_wgslsmith_index_u32(4037u, 17u)]), vec2<f32>(286f, -439f)), Struct_1(true, vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.c), vec2<f32>(-897f, -246f)))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~select(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 12u)], u_input.c, 1i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(35336u, 16u)], arg_0, global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c), true), firstLeadingBit(vec4<i32>(arg_0, -19432i, arg_0, 22698i)) << (vec4<u32>(1u, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u))), -vec4<i32>(min(-65222i, -6177i), global2[_wgslsmith_index_u32(~u_input.b, 12u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 12u)], 17834i), abs(global1[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, _wgslsmith_div_f32(-784f, -1399f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-418f, -1000f), vec2<f32>(901f, 173f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -404f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, 960f) * vec2<f32>(1212f, 192f))))));
    let var_1 = u_input.b;
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(1i, 0i, arg_1.b.x)), _wgslsmith_sub_vec3_i32(arg_1.b.wxz, vec3<i32>(-21215i, -1i, var_0.b.x)) | -vec3<i32>(2147483647i, 1i, global1[_wgslsmith_index_u32(1u, 16u)])), vec3<i32>(24532i, -1i, 1i));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.c))));
    let var_4 = arg_0;
    return Struct_1(true, _wgslsmith_mult_vec4_i32(-var_2.b, arg_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-186f))));
    var var_1 = func_5(func_1(global2[_wgslsmith_index_u32(7825u, 12u)]), func_1(u_input.c));
    let var_2 = ~_wgslsmith_mult_u32(40344u, 1u);
    let var_3 = Struct_1(var_1.c.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-699f, var_1.c.x))), func_5(Struct_1(false, var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.c)), func_5(func_5(func_5(Struct_1(var_1.a, var_1.b, vec2<f32>(117f, var_1.c.x)), Struct_1(var_1.a, var_1.b, var_1.c)), func_1(var_1.b.x)), func_1(u_input.c))).b, vec2<f32>(-478f, var_1.c.x));
    var var_4 = var_3;
    var var_5 = global2[_wgslsmith_index_u32(var_2, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(var_3, func_1(26516i)).b, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(0u), _wgslsmith_add_u32(u_input.a.x, ~var_2)), ~vec2<u32>(u_input.a.x, 1u)));
}

