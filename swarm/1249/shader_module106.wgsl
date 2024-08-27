struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<i32, 22> = array<i32, 22>(-41192i, 1i, 19057i, -51617i, -31672i, i32(-2147483648), 27105i, 0i, -44945i, -21120i, 3227i, -45276i, -34062i, 0i, 0i, 12640i, 2147483647i, 13281i, 18540i, 0i, -1i, 0i);

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<i32>(2147483647i, 1i, 15253i), vec3<u32>(99728u, 1u, 4294967295u), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(28280i, 0i, 29702i), vec3<u32>(1u, 1u, 549u), vec3<bool>(false, true, true)), Struct_4(vec3<i32>(30615i, 14265i, 0i), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(true, false, false)), Struct_4(vec3<i32>(27186i, -1i, -6342i), vec3<u32>(1u, 28175u, 28293u), vec3<bool>(true, false, false)), Struct_4(vec3<i32>(1i, 33594i, 0i), vec3<u32>(64762u, 8149u, 0u), vec3<bool>(false, false, false)), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), -21616i), vec3<u32>(0u, 9427u, 46317u), vec3<bool>(false, false, true)), Struct_4(vec3<i32>(38262i, 23824i, 2939i), vec3<u32>(4294967295u, 0u, 17759u), vec3<bool>(false, false, true)), Struct_4(vec3<i32>(-20727i, 30563i, 2147483647i), vec3<u32>(51133u, 38502u, 62779u), vec3<bool>(false, false, false)), Struct_4(vec3<i32>(1i, -1i, 1913i), vec3<u32>(33643u, 6450u, 48693u), vec3<bool>(false, false, true)));

var<private> global4: i32 = 1687i;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_4(vec3<i32>(global2[_wgslsmith_index_u32(2914u, 22u)] >> (74283u % 32u), -u_input.c.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.d & 1u, u_input.a, firstLeadingBit(u_input.a & u_input.d)), 22u)]), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.d, u_input.d), min(vec3<u32>(u_input.a, u_input.d, 33383u), vec3<u32>(u_input.d, u_input.a, u_input.a)))), !vec3<bool>(false | !arg_0, false, false));
    global4 = -44115i;
    var var_1 = _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_0.a.x, 1i)), ~((var_0.a.x >> (min(29604u, 17761u) % 32u)) ^ -7658i));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 820f)), global0.x)))) != global0.x;
    var var_3 = select(global2[_wgslsmith_index_u32(var_0.b.x, 22u)], ~global2[_wgslsmith_index_u32(~1u, 22u)], !arg_0);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, -1168f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) + vec2<f32>(-1972f, 232f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 1064f), vec2<f32>(global0.x, 1542f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(814f, global0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, global0.x), vec2<f32>(1440f, global0.x))))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -2165f)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1093f))), -1566f));
    var var_1 = !select(!vec4<bool>(true, all(vec2<bool>(false, false)), true, false), vec4<bool>(select(true, u_input.a < 1u, any(vec4<bool>(true, false, false, true))), true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), all(vec4<bool>(u_input.c.x <= arg_2, true, select(true, false, false), select(true, false, true))));
    let var_2 = Struct_3(vec3<u32>(~u_input.d, ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, 0u, u_input.a), ~vec4<u32>(u_input.d, 37291u, u_input.d, u_input.a) | (vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.d) << (vec4<u32>(1u, u_input.d, 4294967295u, u_input.d) % vec4<u32>(32u))))), !(!(min(0u, u_input.d) != _wgslsmith_mod_u32(u_input.a, u_input.a))));
    global0 = _wgslsmith_f_op_vec2_f32(func_3((true && !(arg_1.a <= arg_1.a)) == true));
    global0 = vec2<f32>(_wgslsmith_div_f32(748f, 1065f), _wgslsmith_f_op_f32(floor(-1000f)));
    return vec3<bool>(var_2.b, true != !any(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, false, true, false), true)), false);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, u_input.a, 24130u), ~vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(1668u, u_input.d, 4294967295u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a, 12248u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.d, 1u), vec3<u32>(96414u, 44211u, 0u))) | ~vec3<u32>(u_input.d, u_input.d, 32664u)) >> (~select(abs(vec3<u32>(4294967295u, 1u, 11524u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(12407u, 4294967295u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(u_input.d, u_input.d, 4294967295u) | vec3<u32>(100381u, u_input.d, u_input.d), select(vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), arg_0.a)), select(func_2(-14735i, Struct_2(-1102f), u_input.b, global0.x), !vec3<bool>(arg_0.a, arg_0.a, true), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), -1265f, _wgslsmith_f_op_f32(ceil(-2688f)), global0.x) - vec4<f32>(-1224f, _wgslsmith_f_op_vec2_f32(func_3(false)).x, _wgslsmith_f_op_f32(718f + 2049f), _wgslsmith_f_op_f32(min(1265f, _wgslsmith_f_op_f32(-global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)), _wgslsmith_f_op_f32(trunc(global0.x)), global0.x, 1000f));
    return ~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(i32(-1i) * -1i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u ^ u_input.a, u_input.d), 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_mod_i32(~reverseBits(_wgslsmith_sub_i32(abs(772i), -u_input.b)), 0i);
    var var_0 = Struct_1(true);
    let var_1 = _wgslsmith_add_vec3_i32(~vec3<i32>(-firstLeadingBit(global2[_wgslsmith_index_u32(24533u, 22u)]), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(11466u, 22u)], u_input.b, u_input.c.x, global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec4<i32>(-2357i, -55921i, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)])), reverseBits(-global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, u_input.c), u_input.c, vec3<i32>(-37955i, 0i, u_input.b)), vec3<i32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.a, 22u)], func_1(Struct_1(var_0.a))))));
    let var_2 = Struct_3(~(~select(vec3<u32>(u_input.a, u_input.a, 28089u) >> (vec3<u32>(26705u, u_input.d, 4294967295u) % vec3<u32>(32u)), vec3<u32>(0u, 12866u, u_input.d), func_2(global2[_wgslsmith_index_u32(u_input.a, 22u)], Struct_2(861f), u_input.b, -977f).x)), false);
    global1 = array<Struct_1, 28>();
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)))))));
    var var_3 = Struct_3(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.a, ~var_2.a) | var_2.a, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d, 43133u, 72966u), vec4<u32>(93124u, 4294967295u, 69151u, u_input.a)), ~_wgslsmith_clamp_u32(u_input.a, 69997u, u_input.d), ~abs(57550u))), func_2(abs(u_input.b), Struct_2(488f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(var_2.a.zy >> (_wgslsmith_div_vec2_u32(var_2.a.yx, firstLeadingBit(vec2<u32>(0u, 0u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~var_2.a.zx, ~vec2<u32>(0u, u_input.a))), var_1.xy, global0.x, ~((vec3<i32>(41272i, 1i, u_input.b) | u_input.c) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -40223i, 1i), u_input.c)) | ~(~vec3<i32>(var_1.x, global2[_wgslsmith_index_u32(1u, 22u)], var_1.x) & abs(vec3<i32>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(var_3.a.x, 22u)]))));
}

