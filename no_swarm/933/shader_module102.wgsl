struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(arg_0.a, Struct_1(vec3<f32>(arg_2.a.a.x, _wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(arg_0.a.a.x * -1376f)), ~global0.b, _wgslsmith_clamp_vec4_u32(global0.c, vec4<u32>(global0.c.x, 660u, global0.c.x, global0.c.x), ~vec4<u32>(28542u, 1u, global0.c.x, 34439u)) & ~(vec4<u32>(arg_0.b.c.x, global0.c.x, arg_2.a.c.x, arg_0.b.c.x) << (vec4<u32>(4294967295u, u_input.b, u_input.b, 32979u) % vec4<u32>(32u)))));
    let var_2 = Struct_3(!(!vec3<bool>(arg_1, arg_1, arg_1)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, 681f, global0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.a.x)), _wgslsmith_div_f32(arg_0.b.a.x, -282f), arg_2.a.a.x))), select(firstLeadingBit(-arg_3.yx), _wgslsmith_clamp_vec2_i32(firstLeadingBit(max(vec2<i32>(37632i, 4358i), vec2<i32>(-2147483647i, -1i))), ~vec2<i32>(-48660i, arg_2.a.b.x), vec2<i32>(~u_input.c, var_1.b.b.x)), var_2.a.x), var_1.b.c);
    var var_3 = select(!vec4<bool>(any(vec2<bool>(false, arg_1)), all(var_2.a.xz), _wgslsmith_f_op_f32(abs(arg_0.a.a.x)) >= _wgslsmith_f_op_f32(floor(813f)), true), select(select(vec4<bool>(false, arg_1, var_2.a.x, true), select(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(var_2.a.x, true, true, false), true), !vec4<bool>(true, true, false, arg_1), var_2.a.x), arg_1), !vec4<bool>(true, any(var_2.a.zy), !var_2.a.x, arg_1 || arg_1), any(var_2.a)), !(!arg_1 & true));
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(49921u, ~_wgslsmith_mod_u32(global0.c.x, global0.c.x)), (u_input.b ^ var_1.b.c.x) >> (arg_2.a.c.x % 32u)), firstTrailingBit(firstTrailingBit(~_wgslsmith_clamp_u32(1u, arg_2.a.c.x, 7662u))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, true))), ~global0.b, firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, global0.c.x, 6475u, global0.c.x)), firstTrailingBit(global0.c))) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0.c.x, u_input.b, global0.c.x, global0.c.x)), global0.c));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1369f), global0.a.x), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~global0.b.x, 2147483647i), 407i), u_input.c), ~global0.c);
    var var_0 = 2147483647i;
    global0 = Struct_1(global0.a, -global0.b, ~(~firstLeadingBit(vec4<u32>(global0.c.x, 76264u, 1u, 2826u))));
    var_0 = -1i;
    return _wgslsmith_clamp_u32(abs(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x & global0.c.x, ~u_input.b, global0.c.x), global0.c.yyy) | func_3(Struct_2(Struct_1(vec3<f32>(global0.a.x, global0.a.x, 145f), global0.b, vec4<u32>(5904u, global0.c.x, u_input.b, global0.c.x)), Struct_1(vec3<f32>(-645f, global0.a.x, global0.a.x), global0.b, global0.c)), true, Struct_2(Struct_1(global0.a, global0.b, vec4<u32>(4830u, 1u, 27155u, 1u)), Struct_1(global0.a, vec2<i32>(23724i, global0.b.x), global0.c)), reverseBits(vec3<i32>(0i, global0.b.x, arg_0))), _wgslsmith_div_u32(u_input.b | _wgslsmith_mod_u32(global0.c.x, 47993u), 4294967295u) & 0u);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global0 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), _wgslsmith_f_op_f32(-809f + -1381f)), -311f), global0.b, ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.c.x, u_input.b), max(arg_1.x, u_input.b)), ~(~arg_1.x), ~(arg_1.x << (arg_1.x % 32u)), ~(~4294967295u)));
    var var_0 = !all(vec3<bool>(false, arg_2.a.x | true, select(arg_2.a.x, arg_2.a.x, true)));
    var var_1 = 2147483647i;
    var var_2 = any(select(!select(arg_2.a.zx, vec2<bool>(arg_2.a.x, false), true), arg_2.a.zx, any(arg_2.a.zy))) | (_wgslsmith_sub_u32(u_input.b ^ ~global0.c.x, u_input.a) != 5432u);
    var_1 = countOneBits(firstTrailingBit(u_input.c));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), global0.a.x, _wgslsmith_f_op_f32(ceil(-271f))))), global0.b, vec4<u32>(4294967295u, global0.c.x, _wgslsmith_mod_u32(0u, global0.c.x), func_3(Struct_2(Struct_1(vec3<f32>(global0.a.x, -167f, 1000f), global0.b, global0.c), Struct_1(vec3<f32>(1000f, global0.a.x, -1103f), global0.b, global0.c)), !arg_2.a.x, Struct_2(Struct_1(vec3<f32>(170f, arg_0, 1627f), global0.b, vec4<u32>(4294967295u, u_input.b, 4294967295u, arg_1.x)), Struct_1(global0.a, vec2<i32>(u_input.c, 2147483647i), global0.c)), vec3<i32>(-1591i, -1642i, u_input.c)))), Struct_1(global0.a, ~global0.b, arg_1 ^ vec4<u32>(4294967295u, global0.c.x, 4294967295u, u_input.a)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~(~global0.c)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1.b.c.x, 12586u, 31854u, arg_1.b.c.x)), arg_1.b.c)) << (1u % 32u);
    let var_1 = arg_2.x;
    global0 = func_4(_wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(306f - _wgslsmith_f_op_f32(ceil(489f)))), global0.c, Struct_3(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), -405f).a;
    global0 = arg_1.a;
    let var_2 = select((min(~vec4<i32>(-1i, arg_1.b.b.x, 70281i, global0.b.x), ~vec4<i32>(0i, 1i, u_input.c, u_input.c)) & (vec4<i32>(-1i, -1i, 54704i, u_input.c) | vec4<i32>(u_input.c, 2147483647i, arg_1.a.b.x, 15278i))) ^ vec4<i32>(arg_2.x, (arg_2.x << (31497u % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), arg_2), _wgslsmith_mod_i32(arg_2.x, -1i), -1i), countOneBits(select(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.x, 0i, 2147483647i, global0.b.x)), select(vec4<i32>(3261i, 17764i, -19736i, arg_1.a.b.x), vec4<i32>(-44037i, 1i, global0.b.x, arg_2.x), vec4<bool>(true, false, false, false))), firstTrailingBit(vec4<i32>(1i, var_1, arg_1.a.b.x, global0.b.x)), true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), select(false, true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 13688i <= u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.b.a.x)), _wgslsmith_f_op_f32(1907f * -2538f))))), vec4<u32>(reverseBits(_wgslsmith_clamp_u32(arg_1.b.c.x, _wgslsmith_add_u32(143875u, 1u), ~u_input.b)), _wgslsmith_add_u32(~19651u, ~_wgslsmith_mult_u32(u_input.b, var_0)), _wgslsmith_add_u32(min(min(u_input.a, 21231u), global0.c.x), ~(global0.c.x ^ 35821u)), u_input.b), Struct_3(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false))), true)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 166f)), -1033f))));
}

fn func_1() -> f32 {
    let var_0 = func_5(global0.a, func_4(1000f, ~vec4<u32>(func_2(2147483647i, u_input.c, true), 5016u, select(u_input.a, 1u, true), _wgslsmith_div_u32(107622u, u_input.a)), Struct_3(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.a.x)), 247f))), vec2<i32>(abs(u_input.c), ~(-(~global0.b.x))));
    var var_1 = Struct_3(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), true), vec3<bool>(true, all(vec2<bool>(true, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, _wgslsmith_div_i32(0i, u_input.c) >= (-13080i ^ global0.b.x), true), vec3<bool>(true, true, true)));
    var var_2 = Struct_3(vec3<bool>(true, true, any(vec4<bool>(0u < var_0.b.c.x, any(vec2<bool>(true, var_1.a.x)), var_1.a.x & false, var_1.a.x))));
    var var_3 = select(vec4<i32>(_wgslsmith_sub_i32(min(-2147483647i, var_0.a.b.x), -2147483647i), -2147483647i, reverseBits(37593i), _wgslsmith_clamp_i32(u_input.c, var_0.a.b.x, ~20351i)) << (firstTrailingBit(~vec4<u32>(var_0.a.c.x, 18580u, u_input.a, var_0.a.c.x)) % vec4<u32>(32u)), (vec4<i32>(_wgslsmith_add_i32(17331i, u_input.c), global0.b.x, max(-1i, 54808i), ~u_input.c) ^ _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 4243i, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, 20325i, var_0.b.b.x, global0.b.x))) << (~(~vec4<u32>(global0.c.x, 1u, 0u, 52811u) | abs(vec4<u32>(global0.c.x, u_input.b, global0.c.x, var_0.b.c.x))) % vec4<u32>(32u)), vec4<bool>(!all(select(var_1.a.zz, var_2.a.zx, var_1.a.x)), false && var_2.a.x, var_1.a.x, !all(!vec4<bool>(var_1.a.x, var_1.a.x, false, true))));
    let var_4 = func_4(var_0.b.a.x, global0.c, Struct_3(var_2.a), _wgslsmith_f_op_f32(1567f + _wgslsmith_f_op_f32(var_0.b.a.x * 308f)));
    return 1310f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(838f, global0.a.x, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, -335f, -114f, global0.a.x), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1523f, global0.a.x, global0.a.x, global0.a.x)))), vec4<f32>(-168f, _wgslsmith_f_op_f32(-1944f - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(716f - global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1511f, -890f, global0.a.x, 1383f), vec4<f32>(-1832f, 1234f, 343f, 1136f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, global0.a.x, -242f, -1572f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x + -2281f), _wgslsmith_f_op_f32(trunc(-247f)), -807f, _wgslsmith_f_op_f32(floor(882f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1490f, -1656f, global0.a.x) - vec4<f32>(1184f, global0.a.x, global0.a.x, -1000f))))), false))));
    var var_1 = any(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), vec2<bool>(true, select(false, true, false)), all(vec3<bool>(false, false, true))));
    let var_2 = func_4(var_0.x, vec4<u32>(~1u, global0.c.x ^ ~_wgslsmith_mod_u32(4294967295u, 27113u), 4294967295u, u_input.a), Struct_3(select(vec3<bool>(true, global0.b.x < u_input.c, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), !(global0.b.x < 2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), !(global0.c.x < 1u))))));
    let var_3 = _wgslsmith_add_u32(u_input.b, 19446u & ~reverseBits(var_2.a.c.x));
    var var_4 = func_5(var_0.xyx, Struct_2(Struct_1(var_2.a.a, vec2<i32>(abs(global0.b.x), -42935i << (global0.c.x % 32u)), global0.c), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.wyz), vec2<i32>(u_input.c, _wgslsmith_mult_i32(-6527i, global0.b.x)), reverseBits(firstTrailingBit(global0.c)))), vec2<i32>(-51855i, 2147483647i)).a;
    var_4 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), var_4.a.x)), countOneBits(~(~func_5(vec3<f32>(var_0.x, global0.a.x, var_2.b.a.x), Struct_2(Struct_1(vec3<f32>(var_2.a.a.x, 212f, 154f), var_2.b.b, vec4<u32>(var_2.a.c.x, 0u, 20277u, var_3)), Struct_1(var_4.a, vec2<i32>(var_4.b.x, global0.b.x), global0.c)), var_4.b).a.c)), Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, true)), all(vec4<bool>(false, true, true, true))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)))), var_2.b.a.x).a;
    let var_5 = ~u_input.c < firstTrailingBit(~reverseBits(_wgslsmith_sub_i32(var_4.b.x, -15481i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.x, -905f, var_2.b.a.x, -468f) - vec4<f32>(310f, 531f, global0.a.x, var_0.x)))))), _wgslsmith_f_op_f32(max(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)) * -1073f))), _wgslsmith_mod_u32(0u, 1u), 36611u);
}

