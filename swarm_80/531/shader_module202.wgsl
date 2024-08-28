struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 4294967295u, 0u, 4294967295u, 15835u);

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: bool) -> vec2<f32> {
    let var_0 = 393f;
    var var_1 = vec4<f32>(702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(min(-723f, 229f))))) - _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), 1973f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))), true, ~(((vec3<u32>(arg_0, 65763u, 13935u) ^ vec3<u32>(1297u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])) & vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], 5u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)])) & ~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24720u, 5u)], 5u)], 1u, arg_0))), min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u), vec3<u32>(4294967295u, 14481u, global0[_wgslsmith_index_u32(17270u, 5u)])), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 4294967295u, arg_0, arg_0), ~vec4<u32>(arg_0, global0[_wgslsmith_index_u32(1u, 5u)], 13195u, global0[_wgslsmith_index_u32(arg_0, 5u)]), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 67970u, 4294967295u, 4294967295u))), ~vec4<u32>(arg_0, arg_0, 0u, 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 16892u, global0[_wgslsmith_index_u32(arg_0, 5u)], 23415u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0, 5u)], 43186u, 1u)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1868f - 1709f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-559f))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.xx);
    return var_1.xw;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mod_vec4_u32(~(~firstLeadingBit(vec4<u32>(arg_1.x, arg_2.c.x, global0[_wgslsmith_index_u32(arg_1.x, 5u)], 1u))), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(arg_2.d, arg_1.x, 12359u, 4294967295u)), ~vec4<u32>(53947u, arg_2.c.x, global0[_wgslsmith_index_u32(arg_2.d, 5u)], arg_1.x))) >> (vec4<u32>(37570u, ~1u, 0u, ~arg_1.x) % vec4<u32>(32u));
    global0 = array<u32, 5>();
    var var_2 = -_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-31337i, 1i, 1i), vec3<i32>(u_input.a, 2147483647i, 0i)), -2147483647i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_3, -2147483647i, arg_3), ~vec3<i32>(1i, 64642i, u_input.b.x), ~vec3<i32>(52711i, -1746i, 12185i))) << (vec3<u32>(arg_1.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(9737u, global0[_wgslsmith_index_u32(var_1.x, 5u)]), ~(arg_2.d << (var_1.x % 32u))), _wgslsmith_clamp_u32(var_1.x, 10456u, select(arg_1.x ^ 45570u, abs(0u), !arg_2.b))) % vec3<u32>(32u));
    let var_3 = !vec4<bool>(true & any(vec4<bool>(true, false, arg_2.b, true)), arg_2.b, !(all(vec4<bool>(arg_2.b, false, true, false)) && true), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2() -> bool {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(29566u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(-1000f, global1.x, global1.x))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), (global1.x < 204f) && all(vec4<bool>(false, false, true, false)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56865u, 5u)], 5u)], 5u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62692u, 5u)], 5u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27451u, 5u)], 5u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, 328f, -1114f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1428f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), select(true, select(false, true, false), true), vec3<u32>(~global0[_wgslsmith_index_u32(1673u, 5u)], 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 119231u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21547u, 5u)], 5u)], 5u)], 5u)]), vec3<u32>(27352u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 64578u))), global0[_wgslsmith_index_u32(~0u, 5u)] >> ((global0[_wgslsmith_index_u32(34142u, 5u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)]) % 32u)), ~firstTrailingBit(-12377i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f - global1.x)))));
    var var_0 = Struct_2(vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(161u, 5u)], 5u)] <= global0[_wgslsmith_index_u32(4294967295u, 5u)])), all(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(false, false)))), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)), false));
    var var_1 = select(select(var_0.a.wxy, var_0.a.zyy, false), vec3<bool>(!any(!var_0.a.wy), !var_0.a.x, any(select(!vec3<bool>(var_0.a.x, var_0.a.x, true), !var_0.a.yxz, vec3<bool>(var_0.a.x, true, var_0.a.x)))), any(vec3<bool>(all(select(var_0.a.yyz, var_0.a.yxx, var_0.a.x)), !(0u < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72840u, 5u)], 5u)]), true)));
    var_0 = Struct_2(var_0.a);
    var_1 = !select(!select(select(var_0.a.yxw, vec3<bool>(true, var_1.x, false), vec3<bool>(false, true, true)), !var_0.a.xxz, var_0.a.zxw), !vec3<bool>(var_0.a.x, true, var_1.x), !var_0.a.zyy);
    return !var_0.a.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)] ^ (firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56993u, 5u)], 5u)], 5u)], 5u)]) & _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34740u, 5u)], 5u)], 5u)], 48683u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22293u, 5u)], 5u)], 5u)], 5u)], 5u)], 0u))), 5u)], 5u)], 5u)], 5u)], _wgslsmith_sub_u32(firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75584u, 5u)], 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)])))), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~0u), 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(52787u, 5u)]), ~vec3<u32>(8633u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(92986u, 5u)], 5u)], global0[_wgslsmith_index_u32(62575u, 5u)])), 5u)], 5u)])));
    let var_1 = global1.x;
    var var_2 = -_wgslsmith_div_vec2_i32(u_input.b, abs(firstLeadingBit(u_input.b)));
    var_2 = _wgslsmith_sub_vec2_i32(~select(~max(arg_0.yz, vec2<i32>(arg_0.x, 68252i)), arg_0.zy, select(vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), true)), ~vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.b.x, 1i, -26013i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(8165u, 5u)], 4294967295u), vec2<u32>(81726u, global0[_wgslsmith_index_u32(4294967295u, 5u)])) % 32u)));
    var var_3 = Struct_2(select(!(!vec4<bool>(false, arg_2, false, arg_2)), vec4<bool>(any(vec3<bool>(arg_2, arg_2, arg_2)), arg_2, arg_2, !(!arg_2)), !select(!vec4<bool>(true, arg_2, arg_2, false), !vec4<bool>(false, arg_2, true, arg_2), true)));
    return Struct_1(arg_1, (countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-15434i, u_input.a, u_input.a, -1i), vec4<i32>(var_2.x, -2147483647i, u_input.a, var_2.x))) <= u_input.a) | arg_2, _wgslsmith_mod_vec3_u32(~(vec3<u32>(var_0, 6514u, 68420u) & vec3<u32>(global0[_wgslsmith_index_u32(21097u, 5u)], 0u, 86246u)) | (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(110u, 5u)], 5u)], 5u)], 5u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 5u)], 5u)]) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 5u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 0u, 1u)) % vec3<u32>(32u))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(57173u, 0u, global0[_wgslsmith_index_u32(9701u, 5u)]), vec3<u32>(0u, 0u, var_0)))), ~68228u);
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.a.x, 2278f, all(select(select(vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_1, arg_0.b, arg_1), arg_0.b), vec3<bool>(arg_1, arg_1, arg_0.b), vec3<bool>(arg_1, true, arg_0.b))))), _wgslsmith_f_op_vec2_f32(func_3(23669u, arg_0.a, vec3<bool>(true, !arg_1, all(vec4<bool>(arg_1, true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)) * _wgslsmith_f_op_f32(func_4(vec2<f32>(564f, 1173f), arg_0.c, arg_0, 36846i))) == 246f)).x));
    return Struct_2(vec4<bool>(firstLeadingBit(~12348u) == _wgslsmith_mod_u32(firstTrailingBit(global0[_wgslsmith_index_u32(11595u, 5u)]), 45908u), !arg_0.b, ((arg_0.a.x != arg_0.a.x) | true) || false, all(vec2<bool>(all(vec2<bool>(arg_1, false)), true))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = true;
    let var_1 = func_6(func_5(select(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -8308i, -34241i) | vec3<i32>(u_input.b.x, -1i, 1i), max(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(4568i, -2147483647i, -1i))), vec3<i32>(2944i, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), u_input.b.x), any(vec4<bool>(true, var_0, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(498f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(-arg_0)), func_2()), any(vec4<bool>(false, var_0, var_0 & var_0, false)));
    global1 = arg_0.xx;
    var var_2 = func_5(firstLeadingBit(~vec3<i32>(u_input.a, ~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -74348i, -32016i, u_input.b.x), vec4<i32>(u_input.b.x, -16392i, 59972i, 40806i)))), arg_0, true);
    var var_3 = true;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2021f, -490f), -490f, -1252f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -746f, global1.x))))), 1u != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(1u), 5u)], 5u)], 5u)] | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51812u, 111821u, 1830u, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51000u, 5u)], 5u)], 32687u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27758u, 5u)], 5u)])), 4294967295u), 5u)], vec3<u32>(abs(50129u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(vec3<f32>(493f, 1000f, global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19576u, 5u)], 5u)], ~0u), 5u)]), 5u)], ~abs(global0[_wgslsmith_index_u32(63624u, 5u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 5u)]), ~global0[_wgslsmith_index_u32(1u, 5u)], 45608u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48390u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], 36141u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80041u, 5u)], 5u)], 5u)], 5u)], 5u)], 4294967295u, 12779u, 20547u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2529u, 5u)], 5u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42842u, 5u)], 5u)], 5u)]))), firstLeadingBit(~(~vec4<u32>(4294967295u, 41889u, global0[_wgslsmith_index_u32(66833u, 5u)], 0u)))), 5u)]);
    global0 = array<u32, 5>();
    let var_1 = i32(-1i) * -1i;
    let var_2 = true;
    var var_3 = func_6(func_5(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(59732i, 85863i, u_input.b.x), vec3<i32>(2147483647i, u_input.a, u_input.b.x)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -1i, -2147483647i), vec3<i32>(-176i, u_input.a, var_1)), _wgslsmith_mod_vec3_i32(vec3<i32>(4674i, -37605i, u_input.b.x), vec3<i32>(var_1, 2147483647i, -1i)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1504f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(abs(1000f))))), var_0.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-5362i, var_1, u_input.a), 0u, -var_1);
}

