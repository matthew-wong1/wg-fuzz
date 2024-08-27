struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1)))), _wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(-arg_1)), true)), reverseBits(vec4<i32>(reverseBits(~u_input.d.x), ~(-u_input.d.x), 5980i, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 12193i), _wgslsmith_clamp_i32(20462i, 4370i, u_input.d.x)))), 1u);
    return !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), false);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), !func_3(2021f, arg_0, vec4<i32>(99425i, u_input.d.x, 2147483647i, 1i)))) && func_3(1395f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-arg_0)))), max(~(vec4<i32>(u_input.b, u_input.d.x, -1i, u_input.e) ^ vec4<i32>(-2147483647i, u_input.b, u_input.c.x, 0i)), ~(-vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, u_input.c.x)))).x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-925f, arg_0.x, _wgslsmith_f_op_f32(478f - 357f))), _wgslsmith_clamp_vec4_i32(select(~select(vec4<i32>(-6133i, u_input.c.x, 55199i, -1i), vec4<i32>(2147483647i, 0i, -60974i, u_input.b), vec4<bool>(false, false, false, false)), vec4<i32>(u_input.b, reverseBits(-50674i), u_input.d.x, -2147483647i), !any(vec2<bool>(true, false))), max(vec4<i32>(~1i, 1i, -1i, select(u_input.c.x, 5649i, false)), -vec4<i32>(u_input.d.x, u_input.e, u_input.e, u_input.d.x)), _wgslsmith_div_vec4_i32(-min(vec4<i32>(-1551i, u_input.d.x, u_input.b, u_input.e), vec4<i32>(u_input.b, u_input.d.x, 9790i, -35592i)), vec4<i32>(~u_input.d.x, u_input.e, u_input.d.x, u_input.c.x))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), abs(vec2<u32>(u_input.a, 7197u)))));
    var var_2 = arg_0.x;
    var var_3 = min(abs(vec3<u32>(u_input.a, abs(var_1.c), ~countOneBits(u_input.a))), vec3<u32>(~(~var_1.c), 67639u, u_input.a));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + var_1.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_i32(min(countOneBits(var_1.b), -var_1.b), max(var_1.b, vec4<i32>(u_input.c.x, 0i, -6122i, var_1.b.x)))), _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(var_1.c, 4294967295u) | (0u << (u_input.a % 32u)))));
    return Struct_1(var_1.a, var_1.b, ~_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = -391f;
    var var_1 = (countOneBits(vec3<u32>(_wgslsmith_mod_u32(arg_0.c, arg_0.c), 45218u, 1751u)) ^ select(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(arg_0.c, 8118u, arg_0.c)), vec3<u32>(4294967295u, 0u, u_input.a) ^ vec3<u32>(67409u, arg_0.c, 4294967295u)), abs(min(vec3<u32>(arg_0.c, 5252u, u_input.a), vec3<u32>(arg_0.c, 6807u, arg_0.c))), select(!vec3<bool>(arg_1, false, false), select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1), false))) & ~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0.c, 4294967295u), vec3<u32>(79084u, 4294967295u, 0u)), ~(~vec3<u32>(35053u, 1u, 22036u)));
    let var_2 = arg_0.b.yzx;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2137f, var_0, arg_0.a.x) + vec3<f32>(var_0, var_0, 366f)))).a.yy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-111f, -871f, arg_1))), _wgslsmith_f_op_f32(var_0 - var_0))));
    let var_4 = vec2<u32>(max(_wgslsmith_mod_u32(25257u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 45331u), countOneBits(vec3<u32>(1u, 0u, var_1.x)))), 1u), ~arg_0.c);
    return func_2(vec3<f32>(-815f, 732f, 1350f));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 176f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-281f)))), 863f)), 379f));
    let var_1 = true;
    return func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, 617f)))))), !all(vec2<bool>(all(vec4<bool>(false, arg_0, true, var_1)), u_input.e == u_input.e)), _wgslsmith_mod_i32(0i | -u_input.d.x, u_input.d.x), abs(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(~(u_input.e >> (4294967295u % 32u)) & var_0.b.x, -1i));
    var_1 = u_input.c.x;
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(reverseBits(-52635i), u_input.d.x), -(67321i | (_wgslsmith_sub_i32(var_0.b.x, u_input.c.x) ^ (1i | var_0.b.x))), _wgslsmith_clamp_i32((19394i << (u_input.a % 32u)) & u_input.c.x, firstLeadingBit(-22788i), max(var_0.b.x, -1i)));
    var_1 = u_input.b;
    let var_3 = Struct_1(var_0.a, -(vec4<i32>(var_0.b.x, 2147483647i, func_2(vec3<f32>(var_0.a.x, -1195f, 494f)).b.x, -1i) | select(min(var_0.b, vec4<i32>(0i, var_0.b.x, u_input.e, u_input.d.x)), var_0.b | var_0.b, vec4<bool>(false, true, true, false))), 0u);
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_3.a.x))) + var_0.a.x) * -932f), vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(-22047i, 2147483647i)), -_wgslsmith_div_i32(var_0.b.x, var_3.b.x)) & vec2<i32>(~(-46508i), 0i));
}

