struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(12984u, 0u), vec2<u32>(21172u, 0u), vec2<u32>(0u, 49575u), vec2<u32>(0u, 130879u), vec2<u32>(146572u, 0u), vec2<u32>(91156u, 4631u), vec2<u32>(1u, 47173u), vec2<u32>(21035u, 4294967295u), vec2<u32>(4294967295u, 64978u), vec2<u32>(54423u, 25245u), vec2<u32>(0u, 35146u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 723u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(35746u, 4294967295u), vec2<u32>(13208u, 0u), vec2<u32>(0u, 0u), vec2<u32>(42731u, 4294967295u), vec2<u32>(0u, 97767u), vec2<u32>(4294967295u, 39466u));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-1i, i32(-2147483648), -50619i, 2147483647i), vec4<i32>(i32(-2147483648), -25788i, 2147483647i, 22758i), vec4<i32>(17460i, -1i, -10303i, -13004i), vec4<i32>(58678i, 11121i, i32(-2147483648), 2147483647i), vec4<i32>(-7718i, -11438i, -16939i, 61751i), vec4<i32>(-15346i, 0i, i32(-2147483648), -83542i));

var<private> global4: u32 = 17120u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = abs(firstLeadingBit(1i)) ^ ~_wgslsmith_dot_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(-509i, 2147483647i))), max(vec2<i32>(-29252i, 1i), firstTrailingBit(vec2<i32>(11984i, 66599i))));
    global1 = array<vec2<u32>, 21>();
    var var_1 = Struct_3(firstLeadingBit(vec4<u32>(arg_1.b.x, ~global0.b.b.x, _wgslsmith_div_u32(~23063u, 23576u), 1u)), Struct_2(vec2<f32>(166f, _wgslsmith_f_op_f32(sign(global0.a.x))), arg_1), _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(1u, 4294967295u, 0u, global0.b.b.x), u_input.a, global0.b.a)), countOneBits(~countOneBits(u_input.a))), max(_wgslsmith_div_vec4_u32(u_input.a, min(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), abs(vec4<u32>(1u, u_input.b.x, 35450u, 4294967295u)))), u_input.a), ~select((vec2<i32>(-1i, 1i) >> (global0.b.b % vec2<u32>(32u))) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(0i, 32575i), -15935i), false));
    var var_2 = arg_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) - 1395f), all(!vec3<bool>(arg_1.a, false, true)))) * global0.a.x), 1000f, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(ceil(1094f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(global0.a.x - var_1.b.a.x)))), _wgslsmith_f_op_f32(-global0.a.x));
    return max(65158u, _wgslsmith_mod_u32(abs(var_2.b.x), ~(abs(var_1.c.x) >> ((10122u ^ u_input.a.x) % 32u))));
}

fn func_2() -> i32 {
    let var_0 = ~select(-(~1i), 20052i, false);
    let var_1 = Struct_3(vec4<u32>(_wgslsmith_add_u32(min(~4294967295u, ~0u), firstTrailingBit(~4294967295u)), 1u, u_input.b.x, 1u), Struct_2(global0.a, global0.b), vec4<u32>(41055u, _wgslsmith_add_u32(global0.b.c, (u_input.a.x & 8946u) ^ _wgslsmith_sub_u32(global0.b.b.x, u_input.a.x)), firstLeadingBit(1u), 1u), countOneBits(u_input.a), vec2<i32>(29971i, (2147483647i & _wgslsmith_mult_i32(-8060i, var_0)) >> ((30103u | (u_input.b.x | 1414u)) % 32u)));
    var var_2 = select(u_input.a.zwz ^ vec3<u32>(func_3(var_1.b.b.a, var_1.b.b), var_1.c.x, ~select(1u, 0u, var_1.b.b.a)), abs(~var_1.d.www), global2.x);
    let var_3 = Struct_5(global2.xx, _wgslsmith_div_f32(var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_div_f32(var_1.b.a.x, var_1.b.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_1.b.a.x)) * 1f))), any(select(select(vec4<bool>(true, var_1.b.b.a, global2.x, global2.x), !vec4<bool>(true, false, true, global0.b.a), select(vec4<bool>(true, false, var_1.b.b.a, var_1.b.b.a), vec4<bool>(global2.x, true, var_1.b.b.a, true), vec4<bool>(false, true, global2.x, true))), !select(vec4<bool>(true, global0.b.a, true, true), vec4<bool>(false, global0.b.a, var_1.b.b.a, true), true), any(!global2.zz))));
    let var_4 = var_1;
    return -1i;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_4(firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, -20387i, 0i), global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))) & vec4<i32>(countOneBits(~0i), 2147483647i, func_2(), func_2()), reverseBits(u_input.a), false, Struct_3(vec4<u32>(global0.b.c & _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), arg_0, u_input.a.x, countOneBits(4294967295u)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, vec2<bool>(global2.x, global2.x)))), Struct_1(global0.b.a, vec2<u32>(u_input.a.x, 34981u) ^ global1[_wgslsmith_index_u32(10427u, 21u)], arg_0)), u_input.a, vec4<u32>(min(42217u, _wgslsmith_mult_u32(global0.b.c, u_input.b.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(27872u, arg_0, 83429u, arg_0), u_input.a), 43717u, global0.b.b.x), firstLeadingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(0i, 1i), vec2<i32>(11410i, 44309i)))));
    var var_1 = Struct_5(global2.xx, global0.a.x, (-34653i < var_0.a.x) && true);
    global0 = var_0.d.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1306f, -1347f, 347f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1318f)), var_0.d.b.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.d.b.a.x)), var_0.d.b.a.x)), 478f, 1000f, _wgslsmith_f_op_f32(-var_1.b)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b, -344f, global2.x)), -513f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1368f) - _wgslsmith_f_op_f32(ceil(global0.a.x))))));
    return all(vec3<bool>(global2.x, !(all(global2.zx) || !var_1.a.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_div_u32(1u, 1u);
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, all(vec4<bool>(global2.x, false, false, false)), func_1(global0.b.c), true | global0.b.a)), true, global2.x), vec3<bool>(true, 1442f > global0.a.x, global0.b.a), !vec3<bool>(func_1(1u), false, global2.x));
    var var_1 = Struct_3(u_input.a, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.a)) * vec2<f32>(global0.a.x, global0.a.x)), vec2<f32>(-517f, 893f)), Struct_1(var_0.x, global0.b.b ^ ~global0.b.b, u_input.b.x)), vec4<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(1u), min(global0.b.c, 11754u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.b.c, 69725u, u_input.a.x), ~u_input.a)), global0.b.b.x, global0.b.b.x, ~1u >> (_wgslsmith_mult_u32(u_input.a.x, 14970u) % 32u)), u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(6316i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 53346i, 0i), vec3<i32>(4296i, 2147483647i, 0i))) | _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -33699i), vec2<i32>(-43917i, 24864i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -6898i), vec2<i32>(func_2(), 1i))));
    global4 = ~global0.b.b.x;
    var var_2 = global0.b;
    var var_3 = Struct_5(global2.xx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -681f)), all(select(vec4<bool>(any(vec4<bool>(global2.x, true, false, false)), false, global0.b.a | false, func_1(1u)), vec4<bool>(true, true, true, true), select(!vec4<bool>(false, var_0.x, var_2.a, false), vec4<bool>(true, var_2.a, true, global2.x), select(vec4<bool>(global0.b.a, false, true, global0.b.a), vec4<bool>(global0.b.a, false, var_2.a, true), vec4<bool>(var_1.b.b.a, var_2.a, var_1.b.b.a, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, 947f, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32((global3[_wgslsmith_index_u32(var_1.a.x, 6u)] & global3[_wgslsmith_index_u32(var_1.d.x, 6u)]) & reverseBits(global3[_wgslsmith_index_u32(global0.b.c, 6u)]), abs(select(vec4<i32>(var_1.e.x, var_1.e.x, -32066i, -27038i), global3[_wgslsmith_index_u32(4294967295u, 6u)], vec4<bool>(false, true, true, false)))), min(global3[_wgslsmith_index_u32(global0.b.c, 6u)] | global3[_wgslsmith_index_u32(u_input.b.x, 6u)], vec4<i32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x)) ^ vec4<i32>(-1i, var_1.e.x, 58571i, ~var_1.e.x), global3[_wgslsmith_index_u32(~(~(~13467u)), 6u)]), vec3<u32>(16864u, ~(~firstLeadingBit(u_input.b.x)), u_input.b.x), firstLeadingBit(~(~(~var_1.e.x))));
}

