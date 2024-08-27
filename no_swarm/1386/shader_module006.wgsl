struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(33758u, 0u), i32(-2147483648)), Struct_1(vec2<u32>(36217u, 31260u), 22874i), Struct_1(vec2<u32>(1u, 48713u), 2147483647i), Struct_1(vec2<u32>(68158u, 4294967295u), 1i), Struct_1(vec2<u32>(24787u, 0u), 2147483647i), Struct_1(vec2<u32>(1u, 4294967295u), 30854i), Struct_1(vec2<u32>(1u, 4294967295u), 1i), Struct_1(vec2<u32>(45898u, 51325u), 0i), Struct_1(vec2<u32>(1u, 56556u), 1i), Struct_1(vec2<u32>(8816u, 4294967295u), 0i), Struct_1(vec2<u32>(4294967295u, 42602u), 8700i), Struct_1(vec2<u32>(81266u, 1u), -1i), Struct_1(vec2<u32>(1u, 1u), 7704i), Struct_1(vec2<u32>(1u, 4294967295u), -17294i), Struct_1(vec2<u32>(14506u, 0u), -35688i), Struct_1(vec2<u32>(28889u, 4294967295u), 10058i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 16>();
    var var_0 = ~u_input.b;
    let var_1 = abs(max(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(arg_0.a.x, 0u, 1u), true), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, arg_0.a.x, 4294967295u), ~vec3<u32>(46004u, arg_0.a.x, arg_0.a.x))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23240u, u_input.c, arg_0.a.x), vec4<u32>(1u, u_input.c, arg_0.a.x, arg_0.a.x)) << (_wgslsmith_mult_u32(0u, 216u) % 32u), _wgslsmith_add_u32(~58259u, u_input.c))));
    var_0 = _wgslsmith_sub_u32(0u, var_1);
    var_0 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11140u, arg_0.a.x, arg_0.a.x), vec4<u32>(1u, 4294967295u, 4294967295u, var_1)) >> (abs(1u) % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1, ~4294967295u), ~u_input.c), 11338u) << (_wgslsmith_add_u32(1u, firstTrailingBit(u_input.c)) % 32u);
    return ~vec4<i32>(u_input.a, min(-49959i, -(arg_0.b ^ -1i)), ~_wgslsmith_mod_i32(min(-2147483647i, u_input.a), ~u_input.a), 0i);
}

fn func_2() -> Struct_1 {
    let var_0 = ~abs(~(~vec3<u32>(2657u, 4294967295u, u_input.b) << (vec3<u32>(u_input.b, 8453u, 4294967295u) % vec3<u32>(32u))));
    var var_1 = false;
    var var_2 = !(!all(vec3<bool>(true, true, true))) && false;
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 16u)], reverseBits(vec2<i32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 27407i))))));
    var var_4 = true;
    return Struct_1(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(0u, var_3.a.a.x))), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_3.a.a.x, var_3.a.a.x), ~var_0.yx)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(Struct_1(vec2<u32>(10361u, 9984u), 39227i)), ~firstLeadingBit(vec4<i32>(var_3.b.x, u_input.a, u_input.a, 0i)), vec4<i32>(-1i, 2147483647i, var_3.b.x, -3243i) ^ ~vec4<i32>(var_3.a.b, -15877i, 0i, u_input.a)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 85409i, u_input.a, var_3.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b.x, -1i, -49963i, 30006i), vec4<i32>(var_3.b.x, 8933i, 15394i, 27020i))) ^ -vec4<i32>(u_input.a, -2147483647i, -2147483647i, u_input.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    global0 = array<Struct_1, 16>();
    var var_1 = arg_2;
    var_1 = global0[_wgslsmith_index_u32(arg_2.a.x, 16u)];
    var_0 = true;
    return Struct_1(~countOneBits(vec2<u32>(~arg_2.a.x, _wgslsmith_mult_u32(1u, 3395u))), _wgslsmith_div_i32(var_1.b, 30515i));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), true && all(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)));
    let var_1 = select(!(!vec4<bool>(true & var_0.x, all(vec3<bool>(var_0.x, true, true)), false, all(vec4<bool>(var_0.x, true, false, false)))), vec4<bool>(false, var_0.x, !var_0.x, all(vec4<bool>(any(vec3<bool>(false, true, false)), var_0.x, false, -2577i >= u_input.a))), true);
    global0 = array<Struct_1, 16>();
    let var_2 = -_wgslsmith_sub_i32(func_4(!var_1.x, global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 16u)], arg_1.a).b, arg_2.x);
    global0 = array<Struct_1, 16>();
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_1, 16>();
    let var_0 = false | select(!any(vec2<bool>(false, false)) && (true | (arg_1.a.a.x < u_input.b)), 0i >= _wgslsmith_mod_i32(-2147483647i, -arg_1.a.b), !(func_4(true, arg_1.a, Struct_1(arg_1.a.a, arg_1.b.x)).b > ~(-51279i)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -633f))) + -460f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-288f, _wgslsmith_f_op_f32(1034f + -584f)))), -1000f))));
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1250f), var_1)));
    return Struct_2(Struct_1(abs(arg_1.a.a), ~_wgslsmith_sub_i32(arg_0.b.x, arg_1.b.x & var_2.b)), vec2<i32>(var_2.b, arg_0.b.x));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(arg_1.x)), 689f), arg_1, true)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), 467f, arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -368f), 552f)))), arg_1);
    var var_1 = func_6(func_5(firstLeadingBit(2147483647i), Struct_2(func_4(select(false, true, false), func_2(), Struct_1(arg_2.zy, u_input.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 27529i, u_input.a, -2147483647i), vec4<i32>(-26079i, 2147483647i, 0i, -2147483647i)), u_input.a << (arg_2.x % 32u))), -(~vec4<i32>(44302i, u_input.a, u_input.a, -17203i) ^ -vec4<i32>(u_input.a, -34659i, u_input.a, -12410i))), func_5(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-19684i, u_input.a)), -2147483647i) << (_wgslsmith_add_u32(reverseBits(55675u), ~arg_2.x) % 32u), Struct_2(Struct_1(arg_2.xy, ~72650i), -vec2<i32>(u_input.a, 0i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, -1i, u_input.a), ~vec4<i32>(u_input.a, 75665i, u_input.a, u_input.a))));
    global0 = array<Struct_1, 16>();
    let var_2 = func_4(-select(0i, func_5(u_input.a, Struct_2(global0[_wgslsmith_index_u32(var_1.a.a.x, 16u)], vec2<i32>(u_input.a, var_1.b.x)), vec4<i32>(u_input.a, 1i, -38808i, u_input.a)).b.x, false) > -6060i, func_4(any(vec2<bool>(true, true)), Struct_1(vec2<u32>(arg_0, firstLeadingBit(arg_2.x)), 2147483647i), Struct_1(countOneBits(~vec2<u32>(4872u, arg_2.x)), var_1.a.b)), Struct_1(select(~vec2<u32>(4294967295u, 8498u), ~vec2<u32>(4294967295u, u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), -53598i));
    return _wgslsmith_div_f32(277f, -762f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    var var_1 = ~(abs(~60121u) & (0u << (~(~u_input.b) % 32u)));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(u_input.b, vec4<f32>(725f, -318f, -662f, -267f), vec3<u32>(u_input.b, 12774u, u_input.b)))))) != _wgslsmith_f_op_f32(func_1(func_6(Struct_2(Struct_1(vec2<u32>(u_input.c, u_input.c), 3849i), vec2<i32>(var_0, -58558i)), Struct_2(Struct_1(vec2<u32>(25197u, u_input.b), u_input.a), vec2<i32>(-21279i, u_input.a))).a.a.x ^ u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, -238f, -352f, -562f))), ~vec3<u32>(0u, 4294967295u, 14760u))), false, (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 52288u, u_input.b, 24466u), vec4<u32>(4294967295u, 54388u, 1u, u_input.c)), ~vec4<u32>(4294967295u, u_input.c, u_input.c, 0u)) <= u_input.c) | (false & (_wgslsmith_div_u32(1u, u_input.b) >= _wgslsmith_mod_u32(u_input.b, u_input.c))));
    var_1 = func_2().a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, _wgslsmith_f_op_f32(579f - 171f), _wgslsmith_f_op_f32(min(-644f, -853f)), _wgslsmith_f_op_f32(156f - 403f))))), _wgslsmith_div_vec4_f32(vec4<f32>(1103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-266f + 703f) - _wgslsmith_f_op_f32(f32(-1f) * -2077f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1219f * 351f), _wgslsmith_div_f32(-1451f, 1863f))), _wgslsmith_f_op_f32(f32(-1f) * -1603f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1891f, 1768f, 1022f, 634f)), vec4<f32>(-2350f, -1477f, -573f, -633f)))))));
    var var_4 = firstLeadingBit(vec2<u32>(4294967295u, ~u_input.b));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -485f), 1377f)));
    let var_6 = min(-1i, min(-_wgslsmith_sub_i32(var_0, u_input.a), ((563i >> (1u % 32u)) ^ select(-26672i, 5778i, false)) ^ 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, u_input.c)), firstLeadingBit(reverseBits(vec2<u32>(48609u, 652u))), vec2<u32>(u_input.c, var_4.x | 4294967295u)), abs(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0, var_6), 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -221f, 921f, 392f)), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_5.x)), -402f, _wgslsmith_f_op_f32(f32(-1f) * -1635f), -1712f))), -vec2<i32>(-var_0, -firstLeadingBit(0i)));
}

