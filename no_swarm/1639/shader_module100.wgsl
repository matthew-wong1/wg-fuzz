struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(8207u, 1u, 57306u, 58664u, 0u, 79716u, 21726u, 30460u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<f32, 5> = array<f32, 5>(-350f, 1020f, -1753f, 674f, 785f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = !arg_3.xw;
    global0 = array<u32, 9>();
    let var_1 = Struct_3(Struct_1(~(~(~global1.a)), _wgslsmith_f_op_f32(-168f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1856f)), global1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, global2[_wgslsmith_index_u32(~13601u, 5u)])), _wgslsmith_sub_i32(global1.d, ~(i32(-1i) * -43219i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + 1704f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1833f, -1464f)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(max(43867u, 1u), 9u)], arg_0.x), 9u)] & _wgslsmith_mult_u32(global1.a.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global1.a.x << (u_input.a.x % 32u), 9u)], _wgslsmith_dot_vec2_u32(global1.a.zy, vec2<u32>(4294967295u, u_input.a.x)))), global1.a.zy, var_0.x, ~(94747u & u_input.a.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(~countOneBits(var_1.a.a), vec4<u32>(1u, abs(32824u), 4294967295u, global0[_wgslsmith_index_u32(min(1u, arg_0.x), 9u)])), 265f, var_1.a.c, reverseBits(firstLeadingBit(global1.d)), var_1.a.c), u_input.a, vec4<i32>(reverseBits(max(global1.d, _wgslsmith_mult_i32(2147483647i, var_1.a.d))), -(~0i), var_1.a.d ^ 0i, countOneBits(firstTrailingBit(-8096i)) << (_wgslsmith_clamp_u32(34177u, ~4294967295u, arg_0.x) % 32u)), var_1.a, Struct_1(_wgslsmith_div_vec4_u32(global1.a, ~(~var_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95450u, 9u)], 5u)])) * _wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_1.a.c, global1.c))))), global1.d, global1.e));
    let var_3 = Struct_5(Struct_2(var_2.d, _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.a.x, 1u) << (~arg_0.yz % vec2<u32>(32u)), var_2.a.a.yy), var_2.c, var_2.a, Struct_1(_wgslsmith_sub_vec4_u32(reverseBits(var_2.e.a), vec4<u32>(0u, var_1.c.x, arg_0.x, 4294967295u)), _wgslsmith_f_op_f32(-258f - _wgslsmith_f_op_f32(-var_1.a.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(934f, -733f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(297f, -1151f)))), -801i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.b, -2125f), var_1.a.c, var_1.d)), vec2<f32>(-119f, global2[_wgslsmith_index_u32(40383u, 5u)])))), _wgslsmith_add_i32(-8313i, abs(reverseBits(13204i))), countOneBits(abs(vec3<i32>(arg_1, _wgslsmith_mult_i32(-1i, global1.d), -2147483647i))), 4294967295u, select(select(arg_3.xx, vec2<bool>(true, all(arg_3.xy)), !all(arg_3)), !arg_3.xz, var_0));
    return abs(var_1.c.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    global0 = array<u32, 9>();
    var var_0 = 1033i;
    let var_1 = Struct_3(Struct_1(vec4<u32>(abs(countOneBits(0u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 1u), global0[_wgslsmith_index_u32(func_3(vec3<u32>(global1.a.x, 37256u, u_input.a.x), _wgslsmith_sub_i32(4621i, 1i), true, vec4<bool>(false, true, true, false)), 9u)], ~global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -858f), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global1.a.x), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 5u)]))), arg_1, global1.c), u_input.a.x, u_input.a, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)) | true, 4294967295u);
    let var_2 = Struct_5(Struct_2(var_1.a, abs(~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(global1.a.x, 1u))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, global1.d), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -40542i), arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-42824i, var_1.a.d, global1.d), vec3<i32>(2147483647i, 0i, -39252i))), max(_wgslsmith_mod_i32(var_1.a.d, arg_1), abs(arg_0.x)), arg_1, 26497i), Struct_1(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 9871u), var_1.c.x | u_input.a.x, var_1.c.x, global1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_1.c.x, 5u)])))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.e.x, -1135f), global1.e)), vec2<f32>(var_1.a.b, 1639f), vec2<bool>(var_1.d, var_1.d))), abs(-29910i), _wgslsmith_div_vec2_f32(var_1.a.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)))), var_1.a), var_1.a.d, vec3<i32>(_wgslsmith_div_i32(2147483647i, i32(-1i) * -1i), -arg_1, 1i), 825u, !select(vec2<bool>(any(vec2<bool>(true, var_1.d)), true), vec2<bool>(false, !var_1.d), select(vec2<bool>(var_1.d, false), vec2<bool>(true, true), false)));
    global2 = array<f32, 5>();
    return var_2.c.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    global1 = Struct_1(_wgslsmith_sub_vec4_u32(~global1.a, ~global1.a >> (~global1.a % vec4<u32>(32u))) ^ ~(~global1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1274f * -1394f), -1245f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.e - vec2<f32>(global2[_wgslsmith_index_u32(global1.a.x, 5u)], -631f)), arg_1))), global1.e), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.c), vec2<f32>(399f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 5u)]))), global1.e))));
    var var_0 = max(41749i, _wgslsmith_div_i32(max(global1.d, select(func_2(vec2<i32>(-579i, -10609i), global1.d), 0i, any(vec4<bool>(arg_0, arg_0, arg_0, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1700i, global1.d, -39597i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global1.d, global1.d, 1i), vec4<i32>(-35598i, global1.d, global1.d, 58353i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.d, global1.d, global1.d, 0i), ~vec4<i32>(0i, 2147483647i, global1.d, -31885i)))));
    global0 = array<u32, 9>();
    var_0 = _wgslsmith_sub_i32(-reverseBits(global1.d), 1i);
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_vec2_f32(exp2(arg_1)), select(global1.d, -7181i >> (global0[_wgslsmith_index_u32(u_input.a.x, 9u)] % 32u), all(!vec4<bool>(arg_0, false, true, arg_0)) & (_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 5u)], -1000f)) > 891f)), vec2<f32>(global1.b, 231f));
    return 4109u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b - -1378f))), global2[_wgslsmith_index_u32(~94061u, 5u)]))));
    let var_2 = global2[_wgslsmith_index_u32(func_1(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), false)), global1.e), 5u)] >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.x, 5u)])))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(13178u, func_1(true, global1.e), ~0u, global0[_wgslsmith_index_u32(countOneBits(27324u), 9u)]), reverseBits(vec4<u32>(8412u, u_input.a.x, global1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), 1692f, global1.e, _wgslsmith_div_i32(-global1.d, ~(~(-35612i))), global1.c), vec2<u32>(57722u, reverseBits(4294967295u)) >> ((_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(global1.a.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])) << (_wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, global1.a.wy)) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(reverseBits(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-14639i, 72168i, 9585i, var_0)), select(vec4<i32>(var_0, global1.d, global1.d, global1.d), vec4<i32>(global1.d, -27963i, 816i, var_0), vec4<bool>(var_2, var_2, var_2, var_2))))), Struct_1(~select(vec4<u32>(global1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 4294967295u, 0u), ~vec4<u32>(34064u, global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u, global0[_wgslsmith_index_u32(29411u, 9u)]), var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(global1.c.x + -218f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1351f + -1298f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e) + _wgslsmith_f_op_vec2_f32(floor(global1.c))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(656f, global2[_wgslsmith_index_u32(4294967295u, 5u)]), global1.e))), global1.d & 1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, global1.b))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global1.a.x, 9u)], global1.a.x), 5u)], 1971f), vec2<bool>(true, var_0 > -53040i)))), Struct_1(_wgslsmith_mod_vec4_u32(global1.a, _wgslsmith_mod_vec4_u32(~global1.a, global1.a)), global1.b, global1.c, global1.d, global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x * -1061f)))));
}

