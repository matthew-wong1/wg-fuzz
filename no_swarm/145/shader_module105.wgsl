struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = Struct_2(global0.b, global0.b, global0.c);
    let var_0 = global0.c.yw;
    global0 = Struct_2(Struct_1(_wgslsmith_sub_i32(1i, -_wgslsmith_clamp_i32(-8602i, global0.b.a, global0.a.a)), 0u, !(!global0.b.c) | global0.a.c), global0.a, firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(global0.c.x, u_input.a), reverseBits(global0.c.x), 0u, ~countOneBits(1u))));
    var var_1 = ~0u;
    global0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global0.a.a, 27600i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-3307i, -1i))), ~vec2<i32>(-19158i, global0.b.a) & _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.a, 2147483647i), vec2<i32>(global0.b.a, global0.b.a), vec2<i32>(global0.b.a, global0.b.a))), ~u_input.a, true), Struct_1(64476i, var_0.x, global0.b.c), vec4<u32>(~max(~1443u, global0.c.x), 1u >> (_wgslsmith_sub_u32(abs(var_0.x), min(10195u, 9913u)) % 32u), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(0u, 1u, 15642u, var_0.x)), _wgslsmith_div_vec4_u32(global0.c, vec4<u32>(4294967295u, 36762u, 42057u, 4294967295u))), 1u));
    return _wgslsmith_sub_u32(4294967295u, ~select(countOneBits(global0.c.x), ~global0.c.x, true)) | 10158u;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5) -> Struct_4 {
    global0 = arg_1.a;
    let var_0 = abs(arg_1.a.b.b);
    var var_1 = Struct_3(!((18828u ^ _wgslsmith_mod_u32(u_input.a, 4294967295u)) >= func_3()));
    var var_2 = ~(~arg_2.c.c.wwx);
    var_2 = select(abs(arg_1.a.c.yyx) << (~vec3<u32>(var_2.x, 142704u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 4117u, 307u), vec3<u32>(4294967295u, var_2.x, u_input.a))) % vec3<u32>(32u)), abs(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, var_0, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(703u, 0u, var_0), arg_1.a.c.yyx))), true);
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    global0 = arg_2.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-143f, _wgslsmith_f_op_f32(-arg_1.x), -1318f, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1130f, -2106f, arg_1.x, -653f), vec4<f32>(arg_1.x, -858f, 1278f, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -947f, -1021f, arg_1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2222f), 1000f, arg_1.x, 190f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-255f, _wgslsmith_f_op_f32(-arg_1.x))), -281f, -1497f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.x)), -416f))), select(select(select(!vec4<bool>(arg_2.a.a.c, true, global0.b.c, false), vec4<bool>(arg_2.a.a.c, true, global0.a.c, true), !vec4<bool>(true, global0.b.c, global0.b.c, false)), !vec4<bool>(global0.b.c, arg_2.a.b.c, true, true), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.a.b.c, false, global0.a.c, arg_2.a.b.c), vec4<bool>(arg_2.a.b.c, false, true, arg_2.a.a.c), true), any(vec3<bool>(true, arg_2.a.a.c, arg_2.a.a.c))), vec4<bool>(all(vec2<bool>(global0.b.c, true)) && true, func_2(arg_0.x, arg_2, Struct_5(global0.b.c, vec2<i32>(global0.a.a, global0.b.a), arg_2.a)).a.a.c && select(global0.a.c, arg_2.a.a.c, false), true & func_2(arg_0.x, arg_2, Struct_5(true, vec2<i32>(-1i, 3628i), Struct_2(Struct_1(arg_2.a.b.a, 4294967295u, false), arg_2.a.a, vec4<u32>(arg_0.x, global0.b.b, u_input.b, u_input.a)))).a.b.c, any(vec2<bool>(global0.b.c, global0.a.c))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - -844f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1305f))))) - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1879f, 1048f, false)) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + 175f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_1 = select(arg_2.a.b.a ^ _wgslsmith_add_i32(-42232i, 2147483647i), _wgslsmith_add_i32(36964i, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_3, -42288i) >> (global0.a.b % 32u), _wgslsmith_add_i32(arg_2.a.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(40285i, -41041i, arg_2.a.b.a), vec3<i32>(arg_3, 61580i, 35652i))))), !select(false, (global0.c.x > 4294967295u) | true, true));
    var var_2 = select(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.a.b.a, 16635i), vec3<i32>(-2144i, -1i, arg_2.a.a.a))) <= -22385i, arg_2.a.b.c, arg_2.a.a.b <= arg_2.a.b.b);
    return arg_2.a.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = Struct_2(Struct_1(-(i32(-1i) * -1i), arg_1.a.b.b, select(arg_1.a.b.c, false, true)), func_2(min(~u_input.a, u_input.b), func_2(global0.c.x, Struct_4(arg_1.a), Struct_5(true, ~vec2<i32>(arg_1.a.a.a, -1i), func_2(1u, arg_1, Struct_5(false, vec2<i32>(-469i, arg_0.b.a), arg_1.a)).a)), Struct_5(_wgslsmith_f_op_f32(arg_2 * arg_3) < _wgslsmith_f_op_f32(arg_3 + arg_3), min(vec2<i32>(arg_0.a.a, 12310i) | vec2<i32>(2147483647i, arg_1.a.b.a), firstLeadingBit(vec2<i32>(arg_0.b.a, -2147483647i))), func_2(select(4294967295u, 1u, false), arg_1, Struct_5(false, vec2<i32>(24047i, -8181i), arg_1.a)).a)).a.b, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.x, 51012u >> (arg_0.c.x % 32u), global0.a.b, 4294967295u), ~(firstLeadingBit(vec4<u32>(arg_1.a.a.b, 13732u, arg_0.b.b, arg_1.a.b.b)) << (vec4<u32>(1u, arg_0.c.x, 4294967295u, 76170u) % vec4<u32>(32u)))));
    let var_0 = vec3<i32>(0i, ~arg_1.a.b.a, -7674i);
    var var_1 = arg_0.c.yy;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2444f + -757f), arg_2)), _wgslsmith_f_op_f32(exp2(arg_2))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_3, 1640f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, -375f, -1157f), vec3<f32>(arg_2, arg_2, -364f), vec3<bool>(false, true, true))))), false)))));
    var var_3 = reverseBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-40365i, -16960i, -34450i, arg_0.b.a), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.a, arg_1.a.b.a, -1i, 1346i), vec4<i32>(global0.b.a, var_0.x, arg_1.a.a.a, var_0.x)), !vec4<bool>(false, true, global0.b.c, arg_0.b.c)) << (select(~vec4<u32>(61271u, u_input.b, arg_1.a.b.b, arg_0.a.b), arg_0.c >> (global0.c % vec4<u32>(32u)), vec4<bool>(false, false, global0.b.c, false)) % vec4<u32>(32u)), vec4<i32>(var_0.x, -(i32(-1i) * -2147483647i), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, arg_1.a.a.a), -70499i), firstLeadingBit(-1i))));
    return Struct_2(func_4(func_2(65136u, Struct_4(Struct_2(Struct_1(1i, arg_1.a.c.x, arg_0.a.c), arg_0.b, arg_1.a.c)), Struct_5(any(vec3<bool>(arg_0.b.c, arg_0.b.c, true)), vec2<i32>(arg_1.a.a.a, -1i), func_2(u_input.a, Struct_4(Struct_2(global0.a, global0.b, arg_1.a.c)), Struct_5(arg_0.a.c, var_0.xz, Struct_2(arg_1.a.a, arg_0.a, vec4<u32>(u_input.b, 1u, var_1.x, arg_0.a.b)))).a)).a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.xz)))), arg_1, arg_0.b.a), Struct_1(-12963i, _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(var_1.x), var_1.x), _wgslsmith_mod_u32(arg_0.a.b, u_input.b)), global0.a.c), select(vec4<u32>(func_2(~arg_0.a.b, Struct_4(arg_1.a), Struct_5(false, vec2<i32>(global0.a.a, 0i), arg_1.a)).a.b.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b, 0u, arg_1.a.b.b), global0.c.yxx), reverseBits(_wgslsmith_add_u32(1u, 28287u)), ~countOneBits(var_1.x)), arg_1.a.c, !vec4<bool>(!arg_0.b.c, !arg_1.a.b.c, true, global0.b.c)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_4(func_5(Struct_2(func_4(vec4<u32>(global0.b.b, 40723u, 3288u, 76790u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2243f, -260f)), func_2(15346u, Struct_4(Struct_2(Struct_1(arg_3, 30660u, true), Struct_1(62328i, global0.a.b, arg_2), global0.c)), Struct_5(false, vec2<i32>(global0.a.a, -2147483647i), Struct_2(global0.a, global0.a, global0.c))), arg_3), global0.b, vec4<u32>(select(0u, 0u, false), 4294967295u, arg_0.x, _wgslsmith_div_u32(u_input.b, global0.c.x))), Struct_4(func_2(_wgslsmith_mult_u32(arg_0.x, u_input.b), Struct_4(Struct_2(global0.b, Struct_1(53i, 27537u, arg_1.a), vec4<u32>(27600u, 1u, 11801u, 1u))), Struct_5(true, vec2<i32>(1i, 1i), Struct_2(Struct_1(-22663i, global0.a.b, global0.b.c), Struct_1(global0.b.a, 43666u, false), vec4<u32>(15851u, 53180u, arg_0.x, global0.a.b)))).a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1858f, 415f)) + _wgslsmith_div_f32(509f, 4240f)), _wgslsmith_f_op_f32(select(-1115f, -1000f, true)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(619f, 981f))))));
    global0 = var_0.a;
    global0 = Struct_2(var_0.a.b, func_2(_wgslsmith_add_u32(~(~91798u), _wgslsmith_mod_u32(func_3(), 1u)), var_0, Struct_5(arg_1.a, vec2<i32>(1i, func_2(1u, Struct_4(Struct_2(global0.a, var_0.a.a, global0.c)), Struct_5(global0.a.c, vec2<i32>(var_0.a.b.a, global0.a.a), Struct_2(Struct_1(45745i, global0.a.b, arg_1.a), Struct_1(arg_3, arg_0.x, arg_1.a), global0.c))).a.a.a), var_0.a)).a.b, _wgslsmith_mult_vec4_u32(select(~firstTrailingBit(arg_0), arg_0, select(all(vec4<bool>(arg_2, true, arg_2, false)), true, var_0.a.b.c)), abs(abs(vec4<u32>(1u, 20911u, 4294967295u, 23019u)))));
    var var_1 = global0.c.x;
    return Struct_1(global0.a.a, ~(~min(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26365u, 14874u, global0.a.b), vec4<u32>(global0.c.x, var_0.a.b.b, global0.b.b, 1u)))), global0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(~global0.c, Struct_3(global0.b.c), global0.a.c, -(firstLeadingBit(global0.a.a) ^ _wgslsmith_sub_i32(-11i, global0.a.a))), global0.a, vec4<u32>(_wgslsmith_clamp_u32(u_input.a, func_3(), 4294967295u), 20658u, ~((u_input.a << (u_input.a % 32u)) ^ func_4(global0.c, vec2<f32>(1114f, -165f), Struct_4(Struct_2(global0.b, global0.a, vec4<u32>(1u, 52541u, u_input.b, 1u))), global0.a.a).b), _wgslsmith_mult_u32(global0.b.b, ~(~1u))));
    let var_0 = countOneBits(_wgslsmith_sub_u32(~func_3(), u_input.b));
    let var_1 = ~30877u;
    let var_2 = firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(1i, 1126i, ~global0.b.a), reverseBits(global0.b.a)));
    var var_3 = Struct_4(func_2(u_input.b, func_2(1u, Struct_4(Struct_2(global0.b, global0.b, global0.c)), Struct_5(global0.a.c, ~vec2<i32>(-56044i, global0.b.a), Struct_2(Struct_1(0i, var_1, true), Struct_1(var_2.x, var_1, false), vec4<u32>(98746u, u_input.a, var_1, 61534u)))), Struct_5(!(!global0.a.c), _wgslsmith_mod_vec2_i32(-vec2<i32>(4914i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(-11610i, global0.a.a), var_2)), Struct_2(global0.a, Struct_1(global0.a.a, 4294967295u, global0.a.c), vec4<u32>(var_0, 4294967295u, var_0, var_0)))).a);
    var_3 = func_2(firstLeadingBit(~var_1), func_2(~min(0u << (global0.b.b % 32u), ~4294967295u), func_2(~_wgslsmith_mult_u32(4294967295u, var_0), func_2(4294967295u, Struct_4(var_3.a), Struct_5(false, var_2, Struct_2(var_3.a.b, global0.b, global0.c))), Struct_5(all(vec2<bool>(false, global0.b.c)), vec2<i32>(1i, global0.a.a), var_3.a)), Struct_5(!(true && global0.a.c), ~max(vec2<i32>(global0.a.a, var_2.x), var_2), var_3.a)), Struct_5(any(!vec3<bool>(var_3.a.a.c, false, false)), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, -1i) << (vec2<u32>(16224u, var_0) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(var_2, vec2<i32>(23520i, -27871i))), var_3.a));
    let var_4 = var_3.a.c;
    var_3 = func_2(global0.c.x, func_2(var_1, Struct_4(var_3.a), Struct_5(global0.b.c, var_2, var_3.a)), Struct_5(max(~1u, var_4.x) <= var_1, max(var_2, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_2.x), var_2), var_3.a.a.a)), Struct_2(var_3.a.b, Struct_1(var_3.a.b.a, min(var_0, var_0), global0.a.c), ~(var_3.a.c ^ vec4<u32>(4294967295u, var_3.a.c.x, var_1, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~_wgslsmith_sub_vec4_u32(global0.c, vec4<u32>(1u, var_0, 1u, var_3.a.b.b)), Struct_3((-17453i ^ global0.a.a) != -39556i), reverseBits(~28921u) != _wgslsmith_mult_u32(func_1(vec4<u32>(8317u, u_input.b, 1u, var_0), Struct_3(false), var_3.a.b.c, var_3.a.b.a).b, select(20467u, 1u, false)), -9657i).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 390f)) * _wgslsmith_f_op_f32(f32(-1f) * -857f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-128f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-609f, -666f)))))));
}

