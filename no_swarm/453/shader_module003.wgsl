struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<i32> = vec4<i32>(-14628i, 2147483647i, 0i, 1i);

var<private> global2: f32 = -1000f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global1 = abs(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x << (arg_0.a % 32u), select(-11647i, 0i, true) ^ -arg_0.b.x, 0i), -2147483647i, global0.x ^ (i32(-1i) * -17897i), ~(-2147483647i >> (_wgslsmith_add_u32(65265u, arg_0.a) % 32u))));
    var var_0 = select(!select(select(!vec4<bool>(arg_1.c, true, arg_1.c, arg_1.c), vec4<bool>(true, true, true, true), vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c)), select(!vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true), !vec4<bool>(arg_1.c, true, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, true, false, arg_1.c)), vec4<bool>(true, true, arg_1.a.x != -654f, -2230f >= arg_1.a.x)), !(!vec4<bool>(true, global1.x == u_input.a.x, all(vec4<bool>(arg_1.c, arg_1.c, false, true)), false)), any(vec4<bool>(all(vec4<bool>(false, arg_1.c, arg_1.c, true)), any(vec3<bool>(true, false, false)), false, false | arg_1.c)));
    global2 = arg_0.c;
    let var_1 = Struct_2(~firstLeadingBit(arg_1.b), firstTrailingBit(arg_0.b), arg_0.c);
    let var_2 = Struct_3(-(-max(6711i, -2147483647i) << (arg_0.a % 32u)), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a + arg_1.a), 1u, true), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, var_1.a, arg_0.a) >> (~vec3<u32>(0u, arg_0.a, var_1.a) % vec3<u32>(32u))), vec3<u32>(abs(4294967295u) & _wgslsmith_mult_u32(1u, var_1.a), u_input.c, ~firstTrailingBit(0u))), select(!vec4<bool>(arg_1.c == false, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !var_0.x, var_0.x), !select(vec4<bool>(true, var_0.x, false, arg_1.c), vec4<bool>(arg_1.c, true, arg_1.c, var_0.x), false), select(!vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x, true, all(var_0.xwz)))));
    return _wgslsmith_mod_u32(u_input.c, ~var_1.a);
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(!(min(_wgslsmith_dot_vec3_u32(vec3<u32>(49880u, u_input.c, u_input.c), vec3<u32>(0u, 0u, 14226u)), firstLeadingBit(1144u)) >= u_input.c), false);
    let var_1 = Struct_2(func_3(Struct_2(max(~0u, 1u), (vec4<i32>(global1.x, u_input.a.x, u_input.b, 0i) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 0u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c, u_input.c, 96561u, u_input.c) % vec4<u32>(32u)), -126f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(2761f)), _wgslsmith_div_f32(1597f, -938f)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(50062u, 42056u, 0u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), u_input.c, var_0.x), true)), min(~select(vec4<i32>(2147483647i, -1i, global1.x, u_input.b), vec4<i32>(-1i, -17204i, -52735i, global0.x), vec4<bool>(true, false, var_0.x, var_0.x)), -(~vec4<i32>(-1i, -57876i, 1i, global0.x))) >> (vec4<u32>(~(~u_input.c), reverseBits(_wgslsmith_mult_u32(u_input.c, u_input.c)), ~_wgslsmith_clamp_u32(97764u, 74429u, u_input.c), ~(~0u)) % vec4<u32>(32u)), 479f);
    let var_2 = (firstTrailingBit(vec2<u32>(u_input.c, 0u) >> (countOneBits(vec2<u32>(0u, u_input.c)) % vec2<u32>(32u))) & vec2<u32>(1u, ~var_1.a)) & _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.a, var_1.a) >> (~vec2<u32>(2554u, var_1.a) % vec2<u32>(32u)), ~(~vec2<u32>(var_1.a, u_input.c))), ~_wgslsmith_add_vec2_u32(vec2<u32>(4806u, u_input.c), vec2<u32>(10445u, 0u)) >> (vec2<u32>(~18806u, ~26739u) % vec2<u32>(32u)));
    var var_3 = vec4<i32>(-30567i, select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, -2147483647i, 25829i, -17957i)), var_1.b), ~(-794i), !var_0.x), global0.x, u_input.a.x);
    global2 = _wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1365f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(358f)) - var_1.c)))));
    return select(var_0.x, any(!select(!vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, false)), var_0.x)), any(vec3<bool>(var_0.x, _wgslsmith_sub_u32(u_input.c, 4294967295u) == u_input.c, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = all(select(!vec4<bool>(true, false, 29028u > u_input.c, true), select(vec4<bool>(false, all(vec3<bool>(true, true, false)), func_2(), select(false, false, true)), vec4<bool>(true, true, true, true), func_2()), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true)))));
    let var_1 = vec2<bool>(true, var_0);
    var var_2 = vec4<bool>(true, var_0, true, (min(41224i, ~u_input.b) < global1.x) != true);
    var var_3 = Struct_2(_wgslsmith_mod_u32(78803u, abs(u_input.c)), vec4<i32>(select(23867i & global1.x, min(global1.x, -1i), true) & firstLeadingBit(global1.x & -28298i), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(12215i, 10808i, global1.x), u_input.a), -50359i), -((u_input.a.x << (u_input.c % 32u)) & firstTrailingBit(global1.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~global1.wyy, u_input.a), abs(_wgslsmith_clamp_vec3_i32(global1.wxy, u_input.a, global1.xww)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-365f)), -169f));
    global0 = global1.zx | ~vec2<i32>(-8551i, u_input.a.x);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(var_3.c + var_3.c)), 553f, var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.c)), var_3.c)), _wgslsmith_add_u32(u_input.c, 4294967295u), var_0);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = vec2<i32>(~countOneBits(2147483647i), ~(-26319i));
    var var_0 = vec2<bool>(func_2(), true);
    global1 = abs(vec4<i32>(global0.x, _wgslsmith_add_i32(arg_1, max(-1i, 1i)), arg_1, ~_wgslsmith_div_i32(u_input.a.x | -5610i, arg_1)));
    global0 = vec2<i32>(1i, global1.x);
    var var_1 = !select(select(select(!vec2<bool>(true, arg_0.c), !vec2<bool>(false, arg_0.c), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(false, arg_0.c))), vec2<bool>(any(vec2<bool>(var_0.x, true)), arg_0.c), false), vec2<bool>(var_0.x, all(vec2<bool>(true, true))), var_0.x);
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_clamp_i32(global1.x, -2147483647i, global1.x)))));
    let var_0 = firstLeadingBit(vec3<i32>(global0.x, -31800i, firstLeadingBit(u_input.b)));
    var var_1 = u_input.a;
    global1 = -abs(max(vec4<i32>(1i, abs(-2147483647i), 15854i, u_input.a.x), vec4<i32>(global1.x, var_1.x, 0i, 68017i) | -vec4<i32>(1i, global1.x, 0i, global1.x)));
    let var_2 = !any(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true));
    let var_3 = Struct_3(var_1.x << ((~u_input.c >> (u_input.c % 32u)) % 32u), Struct_2(~(~u_input.c), vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(25866i, var_1.x), var_0.zz), ~var_1.x, u_input.a.x) << (~(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) << (vec4<u32>(1u, u_input.c, 23404u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<f32>(500f, -771f), u_input.c, true), -1i)), func_1().a.x) - _wgslsmith_f_op_f32(floor(-485f)))), Struct_1(vec2<f32>(-971f, _wgslsmith_f_op_f32(f32(-1f) * -1707f)), u_input.c, true), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)), abs(vec3<u32>(u_input.c, 38280u, u_input.c))), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.c, 12538u, 100452u) % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_add_u32(10286u, 1u), firstTrailingBit(_wgslsmith_div_u32(u_input.c, 12471u)), u_input.c)), !(!vec4<bool>(var_2, false, all(vec3<bool>(true, var_2, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, var_1.x, var_3.b.b.x, -global1.x));
}

