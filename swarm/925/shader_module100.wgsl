struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 2046u, 1u), vec3<u32>(64781u, 0u, 0u)), max(u_input.c, 0u), u_input.a), select(vec3<u32>(29451u, u_input.c, u_input.c), min(vec3<u32>(32745u, 45918u, 73821u), vec3<u32>(u_input.a, 0u, u_input.c)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), abs(firstTrailingBit(vec3<u32>(u_input.a, 48717u, u_input.a) << (vec3<u32>(u_input.c, u_input.a, 4294967295u) % vec3<u32>(32u))))), firstLeadingBit(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.c, u_input.c, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4824u, 0u, u_input.c), vec3<u32>(31727u, u_input.a, 82729u)))), vec3<u32>(u_input.c, 0u, ~(u_input.a ^ ~1u)));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.c, 0u), ~_wgslsmith_add_vec3_u32(~select(vec3<u32>(17391u, 34952u, u_input.c), vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, false)), ~(vec3<u32>(u_input.a, 3259u, 32351u) ^ vec3<u32>(var_0.x, var_0.x, u_input.c))));
    var_0 = var_1;
    let var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.b.x, 4023i)), ~(vec2<i32>(u_input.b.x, u_input.d.x) ^ vec2<i32>(1i, 2147483647i))), ~_wgslsmith_div_i32(1i, ~u_input.b.x), -_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d.x, u_input.d.x), vec3<i32>(31043i, -1i, u_input.b.x))));
    let var_3 = Struct_1(u_input.b.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(828f)))))) - _wgslsmith_f_op_f32(abs(996f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = select(-u_input.b.xx, ~abs(u_input.b.zx), !arg_1);
    var_0 = _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-28951i, arg_3.a << (1u % 32u)), u_input.d), vec2<i32>(40713i, ~(~u_input.b.x)));
    var_0 = u_input.b.xy;
    var_0 = vec2<i32>(arg_3.a, ~arg_3.a);
    var var_1 = !select(arg_1, select(vec2<bool>(true, true), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, all(vec3<bool>(true, arg_1.x, false)))), arg_1);
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1658f + _wgslsmith_f_op_f32(-1060f - -903f)), -320f), _wgslsmith_f_op_f32(-arg_0.x), -1098f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1748f), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -237f)) - vec3<f32>(_wgslsmith_f_op_f32(1677f - arg_2), arg_0.x, -266f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-786f, 612f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2055f))), arg_1)).x)) - _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw) + arg_0.wx), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(f32(-1f) * -603f), arg_1)).x)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 178f), vec2<f32>(-1530f, -2518f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, 1003f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2290f, -1192f) * vec2<f32>(1039f, -291f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1416f, -715f)))), vec2<f32>(_wgslsmith_div_f32(-439f, -513f), _wgslsmith_f_op_f32(f32(-1f) * -482f))), vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -107f, 1774f, -224f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, -845f, -2072f, -1174f))), Struct_1(u_input.b.x), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1953f, 2087f))), arg_0, _wgslsmith_f_op_f32(func_3()), Struct_1(u_input.d.x))))), _wgslsmith_f_op_f32(f32(-1f) * -895f))));
    var var_1 = Struct_1(u_input.d.x);
    var var_2 = countOneBits(vec4<i32>(var_1.a | _wgslsmith_div_i32(i32(-1i) * -22688i, ~var_1.a), u_input.b.x << (_wgslsmith_div_u32(92849u, u_input.a) % 32u), select(-67804i, 2147483647i, arg_0.x), u_input.d.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(func_3());
    return all(vec4<bool>(true, (0i < var_1.a) && true, ~(22432i << (u_input.a % 32u)) < -45653i, arg_0.x));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_1 = min(u_input.c, reverseBits(u_input.a));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), -1571f, var_0.x, 1523f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(516f, 1000f, -285f, var_0.x), vec4<f32>(var_0.x, var_0.x, -1355f, -343f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2530f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(565f, 1987f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), !func_2(vec2<bool>(true, false)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1350f, -962f, -722f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, -929f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(240f, 477f, -903f, 483f)))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), 800f, _wgslsmith_f_op_f32(-var_0.x)), true));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-128f, 155f, 2448f, var_0.x) - vec4<f32>(1326f, var_0.x, var_0.x, -732f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -198f, 1000f, var_0.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -524f, 1088f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1691f)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(2296f + var_0.x)))), vec4<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, true)) || true, false, !func_2(vec2<bool>(true, true))))));
    return Struct_1(_wgslsmith_dot_vec3_i32(u_input.b ^ vec3<i32>(-2147483647i, ~u_input.b.x, _wgslsmith_mod_i32(1i, u_input.d.x)), firstTrailingBit(vec3<i32>(max(-1i, u_input.d.x), 12279i, _wgslsmith_sub_i32(u_input.d.x, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a < (u_input.a ^ u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, u_input.a < u_input.c)), 7338u <= ~_wgslsmith_add_u32(u_input.a, u_input.a)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-788f - _wgslsmith_f_op_f32(f32(-1f) * -1311f)) * _wgslsmith_f_op_f32(round(-449f)))), _wgslsmith_div_vec3_i32(-((u_input.b & u_input.b) ^ select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, vec3<bool>(false, true, true))), u_input.b));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(4565i, u_input.b.x, -32789i, -2147483647i)), vec4<i32>(19106i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, var_0.c.a, -28588i), vec4<i32>(var_0.e.x, var_0.c.a, u_input.d.x, 2147483647i)), u_input.b.x | 1i, u_input.b.x >> (u_input.a % 32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 2147483647i, -3386i, 18124i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.e.x, 1i, u_input.b.x, -16204i), vec4<i32>(41575i, u_input.d.x, -32128i, -12547i)))), ~_wgslsmith_div_i32(var_0.e.x, min(_wgslsmith_div_i32(var_0.e.x, var_0.e.x), var_0.c.a)), abs(var_0.c.a));
    var var_2 = Struct_2(true, select(!var_0.b, var_0.b, var_0.b), Struct_1(1391i), _wgslsmith_f_op_f32(var_0.d - 749f), var_1);
    var var_3 = vec2<i32>((8425i >> (1u % 32u)) << (1u % 32u), min(-(~abs(u_input.d.x)), u_input.d.x));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (~u_input.a % 32u), firstTrailingBit(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.c) >> (vec3<u32>(8469u, u_input.c, 24041u) % vec3<u32>(32u)), vec3<u32>(64500u, u_input.c, 1u)))));
}

