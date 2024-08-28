struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_u32(arg_3.a.x, arg_3.a.x, u_input.b);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(arg_1, ~(-u_input.a >> (~61975u % 32u))), i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 0i, -16320i, arg_3.c.b.x), vec4<i32>(1i, -2147483647i, u_input.a, -2147483647i)), vec4<i32>(0i, arg_3.c.b.x, -3672i, 81827i)));
    var var_2 = -(vec4<i32>(-28181i, _wgslsmith_div_i32(var_1.x >> (u_input.b % 32u), _wgslsmith_div_i32(-25249i, arg_1)), -(arg_1 | -1878i), 1i) ^ select(-(vec4<i32>(1i, u_input.a, u_input.a, arg_3.c.b.x) & vec4<i32>(27606i, -2147483647i, -51381i, var_1.x)), -vec4<i32>(-31548i, 1i, arg_1, -1i) | (vec4<i32>(arg_2.b.x, arg_3.c.b.x, var_1.x, arg_1) & vec4<i32>(-10151i, 2147483647i, 12716i, arg_1)), arg_3.d));
    var var_3 = u_input.b;
    var var_4 = vec3<i32>(arg_2.b.x & -1i, min(~(_wgslsmith_clamp_i32(0i, 1i, 1i) >> (1854u % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_2.b, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.b.x, var_2.x), var_1)))), arg_3.c.b.x >> (_wgslsmith_dot_vec2_u32(arg_3.a.yy, firstLeadingBit(vec2<u32>(var_0, 51883u))) % 32u));
    return arg_3.b;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec3<bool>(true, true, false), vec2<i32>(u_input.a, 59628i));
    var var_1 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_mod_u32(1u, u_input.b) >> (_wgslsmith_clamp_u32(47853u << (0u % 32u), reverseBits(u_input.b), ~u_input.b) % 32u), _wgslsmith_mult_u32(~u_input.b, 4294967295u & u_input.b)), vec2<bool>(var_0.a.x, all(func_3(-306f, _wgslsmith_add_i32(-21266i, u_input.a), Struct_1(vec3<bool>(false, true, var_0.a.x), vec2<i32>(-17976i, var_0.b.x)), Struct_2(vec3<u32>(0u, 77263u, 1u), var_0.a.yz, Struct_1(var_0.a, vec2<i32>(-6032i, var_0.b.x)), var_0.a.x)))), Struct_1(select(!(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), vec3<bool>(any(vec2<bool>(true, var_0.a.x)), var_0.a.x & var_0.a.x, true), select(!vec3<bool>(false, var_0.a.x, var_0.a.x), select(var_0.a, var_0.a, true), var_0.a.x)), vec2<i32>(-2147483647i, 36368i)), var_0.a.x);
    var var_2 = var_1.c;
    var_1 = Struct_2(abs(var_1.a), select(!var_2.a.xz, !vec2<bool>(!var_0.a.x, var_1.d), !vec2<bool>(func_3(-1908f, 1i, Struct_1(vec3<bool>(true, false, var_1.c.a.x), var_0.b), Struct_2(var_1.a, vec2<bool>(var_1.d, false), Struct_1(vec3<bool>(false, var_1.c.a.x, var_1.b.x), vec2<i32>(-32468i, 39175i)), true)).x, any(vec2<bool>(var_0.a.x, var_0.a.x)))), Struct_1(var_1.c.a, var_2.b), !var_0.a.x);
    var var_3 = all(select(vec4<bool>(any(!vec3<bool>(false, var_0.a.x, true)), var_2.a.x, false, var_0.a.x), !select(vec4<bool>(var_2.a.x, false, true, var_0.a.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, var_2.a.x, false, var_2.a.x), var_1.d), vec4<bool>(var_0.a.x, true, true, true)), !select(vec4<bool>(false, true, var_1.b.x, var_2.a.x), select(vec4<bool>(var_0.a.x, false, false, true), vec4<bool>(var_1.b.x, true, var_0.a.x, var_1.b.x), var_0.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, var_2.a.x, false), false))));
    return true;
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(~min(vec3<u32>(61854u, u_input.b, 4294967295u) << (vec3<u32>(1u, 144059u, u_input.b) % vec3<u32>(32u)), vec3<u32>(1600u, u_input.b, 65323u) & vec3<u32>(42332u, u_input.b, 0u)), vec3<u32>(u_input.b, _wgslsmith_mult_u32(abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 16270u), vec3<u32>(u_input.b, u_input.b, u_input.b))), ~(~4142u))), vec2<bool>(select(any(vec2<bool>(arg_0.x, true)) || false, arg_0.x, true), func_2()), Struct_1(vec3<bool>(true, true, true), ~(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a), vec2<bool>(arg_0.x, arg_0.x)))), true);
    let var_1 = _wgslsmith_clamp_vec2_u32(var_0.a.yz, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 58125u) & var_0.a.yx, var_0.a.yx)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(select(var_0.a.yx, var_0.a.zy, arg_0.x), vec2<u32>(0u, u_input.b)), abs(vec2<u32>(4294967295u, var_0.a.x))), var_0.a.zx));
    let var_2 = Struct_2(abs(min(var_0.a, var_0.a) ^ (_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, 1u, 32240u)) & countOneBits(var_0.a))), var_0.b, Struct_1(var_0.c.a, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.b.x, var_0.c.b.x), vec2<i32>(u_input.a, u_input.a)))), true);
    let var_3 = Struct_1(vec3<bool>(arg_0.x, true, arg_0.x), var_2.c.b);
    var_0 = var_2;
    return var_2.a << (vec3<u32>(_wgslsmith_mult_u32(1u, var_2.a.x << (1u % 32u)), firstLeadingBit(_wgslsmith_mod_u32(reverseBits(var_0.a.x), u_input.b)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.x, var_2.a.x), vec3<u32>(var_1.x, 0u, 35778u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = ~_wgslsmith_dot_vec3_i32(~(vec3<i32>(arg_0.c.b.x, 2147483647i, arg_1.c.b.x) | vec3<i32>(24230i, arg_0.c.b.x, -2147483647i)) ^ vec3<i32>(u_input.a, _wgslsmith_mod_i32(-43271i, -1i), abs(arg_0.c.b.x)), select(vec3<i32>(35180i, 1i, arg_1.c.b.x) >> (arg_1.a % vec3<u32>(32u)), -vec3<i32>(arg_0.c.b.x, u_input.a, 0i), false) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.a, vec3<u32>(arg_1.a.x, 90897u, arg_0.a.x)), arg_0.a) % vec3<u32>(32u)));
    var_0 = select(u_input.a, 2147483647i, any(!(!arg_1.c.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, -204f, 804f, -325f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1197f, -937f, -477f, 1774f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_div_f32(-662f, 126f), _wgslsmith_f_op_f32(-1932f - -988f)), !(!vec4<bool>(arg_0.b.x, arg_1.c.a.x, false, arg_0.d)))))), vec4<f32>(_wgslsmith_f_op_f32(-1796f - _wgslsmith_div_f32(-1818f, -1482f)), _wgslsmith_f_op_f32(1919f - _wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(step(-1324f, 544f)))), 1845f, 1021f), true));
    var var_2 = abs(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-arg_1.c.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b.x, 1i, arg_0.c.b.x, arg_0.c.b.x), vec4<i32>(1i, -1i, 16863i, arg_1.c.b.x)), -2147483647i, reverseBits(18395i)), vec4<i32>(_wgslsmith_mod_i32(arg_0.c.b.x, -8826i), _wgslsmith_sub_i32(arg_0.c.b.x, 14496i), ~u_input.a, i32(-1i) * -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -arg_1.c.b.x, arg_0.c.b.x & u_input.a, -2147483647i), ~vec4<i32>(18504i, -127i, arg_1.c.b.x, -223i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.b.x, arg_0.c.b.x, 10592i, 1i), vec4<i32>(2147483647i, 1i, -17118i, -1i), vec4<i32>(0i, 0i, arg_0.c.b.x, -1i)))));
    var_0 = firstTrailingBit(u_input.a);
    return vec2<i32>(abs(-arg_1.c.b.x), arg_1.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = func_4(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1426u, var_0), countOneBits(94906u), var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(31330u, 1u, var_0) | vec3<u32>(var_0, u_input.b, 0u), func_1(vec4<bool>(true, true, true, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), false), Struct_1(vec3<bool>(true, true, true), vec2<i32>(-1i) * -vec2<i32>(32024i, u_input.a)), false), Struct_2(~max(max(vec3<u32>(var_0, 0u, u_input.b), vec3<u32>(4294967295u, 16484u, 65094u)), reverseBits(vec3<u32>(var_0, var_0, var_0))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), Struct_1(vec3<bool>(all(vec4<bool>(true, false, false, false)), -1i != u_input.a, var_0 > u_input.b), -vec2<i32>(u_input.a, u_input.a)), true));
    var_1 = vec2<i32>(abs(~(~var_1.x)), ~(~u_input.a));
    var var_2 = Struct_2(vec3<u32>(19466u, 33118u, var_0), select(vec2<bool>(true, true), vec2<bool>(func_2(), func_2()), vec2<bool>(true, true)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -vec2<i32>(u_input.a, func_4(Struct_2(vec3<u32>(var_0, 0u, 4294967295u), vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, false), vec2<i32>(-19728i, u_input.a)), false), Struct_2(vec3<u32>(var_0, var_0, var_0), vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(9975i, 17429i)), false)).x)), any(!(!func_3(-1000f, 0i, Struct_1(vec3<bool>(false, true, false), vec2<i32>(u_input.a, -29409i)), Struct_2(vec3<u32>(var_0, 1u, 30052u), vec2<bool>(false, false), Struct_1(vec3<bool>(true, false, false), vec2<i32>(u_input.a, var_1.x)), false)))));
    var var_3 = Struct_1(!select(vec3<bool>(var_2.a.x < 1u, var_0 == 0u, var_2.d), vec3<bool>(1u >= var_2.a.x, all(vec2<bool>(var_2.c.a.x, var_2.b.x)), -3172i >= var_1.x), var_2.c.a), var_2.c.b);
    var var_4 = select(vec4<u32>(1u, ~_wgslsmith_mult_u32(var_0, 4294967295u), 4294967295u, 4294967295u) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.a.x, 4294967295u, var_0, 37951u), vec4<u32>(0u, 1894u, u_input.b, 83898u)), vec4<u32>(4294967295u, u_input.b, 5149u, var_2.a.x)), vec4<u32>(~20433u, 63509u, _wgslsmith_add_u32(20110u, 42112u), min(var_2.a.x, u_input.b))), ~(vec4<u32>(var_2.a.x, ~0u, 1u, var_0 & 1u) << (vec4<u32>(var_0, var_0, _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(4294967295u, 0u, 20907u)), ~44350u) % vec4<u32>(32u))), select(vec4<bool>(any(select(vec4<bool>(false, var_2.b.x, true, false), vec4<bool>(false, var_2.c.a.x, true, var_2.d), var_3.a.x)), (var_3.b.x >= var_2.c.b.x) || true, var_2.b.x, firstLeadingBit(2147483647i) > ~u_input.a), !select(vec4<bool>(false, var_2.b.x, var_3.a.x, var_3.a.x), select(vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), vec4<bool>(var_2.d, var_2.d, var_3.a.x, false), vec4<bool>(var_2.c.a.x, false, var_2.b.x, false)), true), var_2.c.a.x));
    var_2 = Struct_2(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 0u, u_input.b)), _wgslsmith_sub_vec3_u32(var_2.a, vec3<u32>(0u, 0u, var_0))), _wgslsmith_div_vec3_u32(~select(var_2.a, vec3<u32>(0u, 0u, u_input.b), var_2.c.a), vec3<u32>(select(3829u, 14114u, var_2.c.a.x), _wgslsmith_clamp_u32(var_2.a.x, 31577u, 1u), abs(0u)))), var_3.a.xz, Struct_1(!vec3<bool>(!var_3.a.x, true, false), func_4(Struct_2(~vec3<u32>(var_0, 4294967295u, 40397u), func_3(-111f, var_1.x, var_2.c, Struct_2(vec3<u32>(0u, 4294967295u, var_2.a.x), vec2<bool>(false, var_3.a.x), Struct_1(vec3<bool>(var_3.a.x, var_3.a.x, false), var_3.b), true)), var_2.c, var_3.a.x), Struct_2(countOneBits(vec3<u32>(u_input.b, 0u, u_input.b)), select(var_3.a.yy, vec2<bool>(false, var_2.b.x), false), var_2.c, true))), var_3.a.x);
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(Struct_2(var_2.a, !var_2.b, Struct_1(vec3<bool>(false, var_3.a.x, false), var_3.b), true), Struct_2(var_4.yzy, !var_2.c.a.yy, Struct_1(var_3.a, vec2<i32>(var_3.b.x, var_2.c.b.x)), var_3.a.x)).x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_2.a, ~vec3<u32>(63716u, var_4.x, var_4.x)), 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1264f, -1183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-720f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1068f, 547f)) + _wgslsmith_f_op_f32(338f * 132f)))), _wgslsmith_dot_vec2_i32(max(_wgslsmith_clamp_vec2_i32(var_2.c.b, vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, 2147483647i)) << (max(var_4.zz, vec2<u32>(var_0, 1u)) % vec2<u32>(32u)), ~min(var_3.b, var_3.b)), ~vec2<i32>(1i, 42120i)), ~var_2.c.b);
}

