struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-561f, 1000f, -1479f, 434f), vec4<f32>(1089f, -231f, 1457f, 704f), vec4<f32>(1150f, 153f, -1063f, -534f), vec4<f32>(1010f, 183f, 846f, -160f), vec4<f32>(1916f, -548f, 981f, -179f), vec4<f32>(1066f, 404f, 302f, -285f), vec4<f32>(406f, -528f, 556f, 1119f), vec4<f32>(-900f, 173f, 1791f, 1030f), vec4<f32>(-1000f, -748f, 424f, 661f), vec4<f32>(-1311f, 1000f, -524f, -1470f), vec4<f32>(564f, 1095f, -1567f, -1000f), vec4<f32>(1507f, 2470f, -1258f, -1423f), vec4<f32>(1318f, -1218f, -1716f, 137f), vec4<f32>(-199f, -1204f, -1000f, 973f), vec4<f32>(1734f, -256f, -651f, 995f), vec4<f32>(-1000f, 1572f, -767f, -354f), vec4<f32>(-485f, -130f, -550f, 1058f), vec4<f32>(219f, -2385f, -603f, -1080f), vec4<f32>(1913f, -266f, -1000f, -682f), vec4<f32>(-714f, 320f, 918f, 2024f), vec4<f32>(564f, 1395f, -1644f, -683f), vec4<f32>(697f, 109f, -970f, 103f), vec4<f32>(979f, 112f, -1000f, 1314f), vec4<f32>(1047f, -1736f, -805f, 1282f), vec4<f32>(-1053f, 305f, -729f, -1003f), vec4<f32>(-756f, 715f, -613f, 997f), vec4<f32>(-1000f, 364f, -1101f, -1718f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~arg_1;
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_1 = true;
    var var_2 = countOneBits((countOneBits(select(vec4<i32>(1i, 0i, arg_3.c, arg_2.c), vec4<i32>(arg_3.c, -56549i, 1i, -2147483647i), true)) ^ firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a, u_input.a, 44335i))) | vec4<i32>(firstTrailingBit(~arg_0), firstLeadingBit(arg_3.c), abs(0i), _wgslsmith_mult_i32(-11027i << (arg_3.b % 32u), ~arg_0)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2083f + 1f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, _wgslsmith_f_op_f32(-533f + _wgslsmith_f_op_f32(834f - -248f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_0.x, vec4<u32>(u_input.c.x, 7327u, 1779u, u_input.d), arg_1, Struct_1(true, 29789u, -2147483647i))), _wgslsmith_f_op_f32(319f + 1051f)))))));
    let var_1 = vec3<f32>(-2143f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = !(!vec3<bool>(true, _wgslsmith_sub_u32(arg_0.b, 57266u) > (u_input.d & 0u), arg_0.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f - -686f) * -524f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-177f)), _wgslsmith_div_f32(1009f, -397f))) >= arg_1, ~arg_0.b ^ 4294967295u, -2147483647i);
    global0 = array<vec4<f32>, 27>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(2147483647i, vec4<u32>(var_1.b, u_input.c.x, var_1.b, 15764u), arg_0, Struct_1(false, var_1.b, -17347i))), -874f, _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(sign(-500f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], vec4<f32>(-267f, arg_1, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(32625u, 27u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 212f, arg_1, 481f))))));
    let var_3 = ~(~(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.d, 4294967295u), vec3<u32>(0u, 1u, 0u) & vec3<u32>(u_input.c.x, arg_0.b, 4294967295u)) >> (reverseBits(vec3<u32>(2171u, 0u, u_input.c.x)) % vec3<u32>(32u))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~var_1.c, ~(var_1.c | ~var_1.c), -10200i, 1i), vec4<i32>(var_1.c, -8772i, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e), -2147483647i));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = (vec2<i32>(func_4(func_2(vec4<i32>(-27946i, arg_0, 1i, -2147483647i), Struct_1(false, u_input.d, 29957i)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-44411i, arg_0), u_input.e), select(u_input.e, u_input.e, true))) ^ u_input.e) | u_input.e;
    global0 = array<vec4<f32>, 27>();
    var var_1 = vec3<i32>(-1i) * -countOneBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, 32405i, u_input.e.x), vec3<i32>(1i, -2147483647i, u_input.a)));
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-6414i, -47051i, ~(~54467i)), vec3<i32>(func_4(Struct_1(true, 4294967295u, 5415i), arg_1), ~func_4(Struct_1(false, 33396u, arg_0), 474f), ~2147483647i << (u_input.d % 32u))), 1i, arg_0);
    var var_2 = Struct_1(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(u_input.d, 11789u, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 0u) >> (vec4<u32>(u_input.d, 19801u, 24709u, 72405u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(46006u, 20333u, u_input.d, u_input.d), vec4<u32>(u_input.c.x, u_input.d, 1u, 143378u)), _wgslsmith_div_vec4_u32(vec4<u32>(18661u, 5430u, 1u, 4294967295u), vec4<u32>(u_input.d, 1u, u_input.d, u_input.c.x)))), vec4<u32>(~u_input.d ^ u_input.d, reverseBits(~u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.c.x) & vec3<u32>(u_input.c.x, 73295u, 0u), abs(vec3<u32>(1u, 77512u, u_input.d))), _wgslsmith_mult_u32(31309u, u_input.c.x & 117208u))), 7421i >> (_wgslsmith_sub_u32(0u, u_input.c.x) % 32u));
    return Struct_1(var_2.a, ~(~countOneBits(func_2(vec4<i32>(var_1.x, var_1.x, 2147483647i, u_input.a), Struct_1(var_2.a, u_input.c.x, var_1.x)).b)), 1i);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 27>();
    let var_0 = all(select(vec3<bool>(_wgslsmith_f_op_f32(floor(933f)) != _wgslsmith_f_op_f32(f32(-1f) * -1238f), arg_0, arg_0), vec3<bool>(arg_1.c == -59713i, any(vec3<bool>(arg_1.a, true, false)), true), select(!select(vec3<bool>(true, false, arg_1.a), vec3<bool>(arg_1.a, false, arg_0), arg_1.a), select(vec3<bool>(true, false, true), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_0, false, false), arg_0), true), true)));
    global0 = array<vec4<f32>, 27>();
    let var_1 = vec3<i32>(arg_1.c, u_input.e.x | u_input.b, 2147483647i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(399f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1089f - -606f))))));
    return Struct_1(!(!any(!vec3<bool>(var_0, var_0, arg_1.a))), ~(~0u), _wgslsmith_add_i32(-46089i, 13526i) ^ var_1.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = firstTrailingBit(abs(vec3<i32>(-2147483647i, arg_1.c, 30412i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~firstLeadingBit(var_1.x)), ~vec4<u32>(~4294967295u, _wgslsmith_add_u32(arg_1.b, u_input.d), ~4294967295u, ~49225u), func_2(-(vec4<i32>(arg_1.c, arg_1.c, -24236i, u_input.b) >> (vec4<u32>(var_0.b, 1u, 67600u, 75617u) % vec4<u32>(32u))), Struct_1(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, var_0.b, var_0.b, 4294967295u), vec4<u32>(0u, u_input.d, arg_1.b, arg_0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, 9653i), vec3<i32>(var_0.c, arg_1.c, -1i)))), arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    var var_3 = false;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) - _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f + arg_2)))) + arg_2);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    let var_0 = func_6(func_5(true, func_1(~min(24929i, 0i), 223f)), Struct_1(true & any(vec4<bool>(true, true, true, true)), 4294967295u | u_input.d, _wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.a, u_input.a), i32(-1i) * -u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) - _wgslsmith_f_op_f32(select(339f, 1000f, false)))))));
    let var_1 = 577f;
    var var_2 = Struct_1(var_0.a, u_input.c.x, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(377f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))), u_input.b, reverseBits(var_2.b));
}

