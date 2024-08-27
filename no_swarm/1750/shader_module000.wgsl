struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: f32 = 258f;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(31660u, true, vec3<i32>(1i, -1i, 2147483647i)), Struct_1(1u, false, vec3<i32>(-14623i, -10072i, 8834i)), Struct_1(0u, true, vec3<i32>(2147483647i, i32(-2147483648), 2588i)), Struct_1(68305u, true, vec3<i32>(37809i, 2147483647i, 0i)), Struct_1(0u, false, vec3<i32>(2147483647i, 14744i, 0i)), Struct_1(1u, false, vec3<i32>(i32(-2147483648), 9340i, -19482i)), Struct_1(54815u, false, vec3<i32>(i32(-2147483648), -16807i, i32(-2147483648))), Struct_1(0u, true, vec3<i32>(23517i, 1i, 32203i)), Struct_1(0u, true, vec3<i32>(-7058i, 2147483647i, 61267i)), Struct_1(1u, true, vec3<i32>(8088i, 2147483647i, 405i)), Struct_1(53881u, true, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(1u, false, vec3<i32>(-1i, 25602i, 0i)), Struct_1(37462u, false, vec3<i32>(-9951i, i32(-2147483648), 0i)), Struct_1(0u, true, vec3<i32>(16708i, 32895i, -2070i)), Struct_1(1u, true, vec3<i32>(54357i, 7661i, 1i)), Struct_1(4294967295u, true, vec3<i32>(0i, -20324i, -24739i)), Struct_1(33461u, true, vec3<i32>(-1i, i32(-2147483648), -1i)), Struct_1(20032u, false, vec3<i32>(i32(-2147483648), -1i, -20593i)), Struct_1(1u, false, vec3<i32>(1i, 20453i, -60838i)), Struct_1(52576u, true, vec3<i32>(-50094i, -1i, 1i)));

var<private> global3: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> bool {
    global3 = ~u_input.b;
    global2 = array<Struct_1, 20>();
    var var_0 = Struct_4(_wgslsmith_mod_i32(-26020i, u_input.c.x));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-354f * -1560f), _wgslsmith_div_f32(873f, 1354f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-286f)))))), global0.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(f32(-1f) * -1919f), _wgslsmith_f_op_f32(-var_1), var_1))), global2[_wgslsmith_index_u32(0u << (u_input.d % 32u), 20u)], vec2<u32>(~u_input.b, _wgslsmith_mod_u32(countOneBits(u_input.b), ~(~u_input.b))), -vec4<i32>(arg_0.a, -26134i, 1i, -2147483647i) | ~select(firstLeadingBit(vec4<i32>(var_0.a, -30504i, arg_0.a, var_0.a)), ~vec4<i32>(u_input.a, 24758i, arg_0.a, arg_0.a), vec4<bool>(global0.x, global0.x, global0.x, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1)))));
    return any(!select(!(!vec3<bool>(var_2.b.b, var_2.b.b, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, var_2.b.b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = arg_0.xzz;
    global2 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d, ~(~abs(0u))), ~(~reverseBits(38207u)) ^ max(_wgslsmith_clamp_u32(4294967295u & u_input.d, ~4294967295u, min(u_input.b, 67436u)), u_input.d));
    global0 = select(arg_0.zyx, vec3<bool>(any(var_0.xz), select(any(!vec2<bool>(false, global0.x)), global0.x, _wgslsmith_f_op_f32(max(-1533f, arg_1)) > arg_1), true), !var_0);
    var var_2 = _wgslsmith_mod_i32(select(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, abs(vec3<i32>(u_input.a, 2147483647i, -35952i))) << (0u % 32u), func_3(Struct_4(u_input.c.x ^ u_input.c.x))), ~firstLeadingBit(-_wgslsmith_mult_i32(-58127i, 28061i)));
    return ~u_input.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1282f, arg_1))));
    global2 = array<Struct_1, 20>();
    let var_1 = ~vec4<u32>(_wgslsmith_add_u32(19073u, 29306u) << (_wgslsmith_mod_u32(u_input.d, u_input.d) % 32u), u_input.d, ~u_input.d, u_input.b) << (vec4<u32>(countOneBits(4294967295u), u_input.b, _wgslsmith_sub_u32(16052u, func_2(!arg_0, _wgslsmith_div_f32(arg_1, var_0))), 0u) % vec4<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1692f, _wgslsmith_f_op_f32(select(arg_1, 1000f, true)), _wgslsmith_f_op_f32(-994f + -736f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, arg_1, var_0), vec4<f32>(-1000f, arg_1, arg_1, 181f), vec4<bool>(true, arg_0.x, true, global0.x)))))) + vec4<f32>(855f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, 942f, false)), 805f), -1447f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 * 1447f), 1287f)))), Struct_1(~(~(var_1.x | 1u)), false, u_input.c), ~reverseBits(var_1.zx), vec4<i32>(_wgslsmith_mult_i32(-22705i, ~(0i ^ u_input.a)), abs(_wgslsmith_mod_i32(7014i, 51732i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a & 12085i, u_input.c.x), -45383i), u_input.c.x ^ (-48272i << (var_1.x % 32u))), _wgslsmith_f_op_f32(1725f * _wgslsmith_f_op_f32(select(var_0, var_0, u_input.b > ~var_1.x))));
    var var_3 = -var_2.d.x;
    return var_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~max(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d, 0u), 55504u), 7271u) | 1u;
    global0 = !vec3<bool>(false, _wgslsmith_dot_vec3_i32(func_1(vec4<bool>(true, true, global0.x, false), 605f), -u_input.c) == _wgslsmith_add_i32(u_input.c.x, u_input.c.x), true);
    var var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(~2147483647i, 1248i, 2147483647i, -55594i) >> (vec4<u32>(u_input.d, func_2(vec4<bool>(false, false, global0.x, global0.x), -807f), u_input.d, ~u_input.d) % vec4<u32>(32u)), vec4<i32>(-2147483647i, _wgslsmith_sub_i32(~u_input.a, u_input.a), -687i, 5693i));
    let var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 1151f)), _wgslsmith_f_op_f32(f32(-1f) * -2663f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-174f + 385f))) * 650f))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(1075f, _wgslsmith_f_op_f32(ceil(var_1))), -1000f, -372f);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, var_1, 405f, var_1) + vec4<f32>(var_2.x, var_1, var_1, 789f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, var_2.x, var_2.x) * vec4<f32>(-1000f, var_1, var_2.x, var_1)))))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.b)), 20u)], vec2<u32>(26735u, ~u_input.d), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, ~2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.a), 0i), ~vec4<i32>(1i, var_0.x, -1i, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-56078i, -36230i, 2147483647i, 6324i) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -46378i, u_input.a), vec4<i32>(-2147483647i, u_input.a, -2147483647i, -30627i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, 1i, -33461i, -1i), select(vec4<i32>(-55052i, u_input.c.x, 51595i, 13066i), vec4<i32>(2147483647i, var_0.x, -1i, u_input.a), global0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.a, var_0.x, u_input.c.x), vec4<i32>(-49578i, 1i, 2147483647i, -1i)))), reverseBits(vec4<i32>(var_0.x, abs(var_0.x), 0i, var_0.x))), var_1);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2961f + -1140f), var_3.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1339f) - _wgslsmith_f_op_f32(-var_1)))));
}

