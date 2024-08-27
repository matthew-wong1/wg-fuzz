struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<i32>, 20>();
    var var_0 = ~vec4<i32>(u_input.a, min(_wgslsmith_div_i32(2804i, ~u_input.a), u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-2147483647i, u_input.a, u_input.a)), _wgslsmith_add_i32(max(1i, ~u_input.a), 0i));
    global0 = array<vec2<i32>, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-542f, -2650f, -1137f, 415f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2136f, -1759f, 590f, 1631f)), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, 158f, 839f, 721f)), vec4<bool>(true, true, false, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(510f, 267f, -412f, -1146f) - vec4<f32>(1415f, -229f, -234f, -622f)))))));
    global0 = array<vec2<i32>, 20>();
    return vec3<bool>(true, _wgslsmith_mod_i32(i32(-1i) * -u_input.a, var_0.x & (-2147483647i << (u_input.b % 32u))) > (~firstTrailingBit(1i) | 2147483647i), true);
}

fn func_2() -> vec4<bool> {
    global0 = array<vec2<i32>, 20>();
    var var_0 = ~(~u_input.b);
    global0 = array<vec2<i32>, 20>();
    let var_1 = select(select(func_3(), select(func_3(), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), true), false | all(func_3().xx)), select(vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), true), vec3<bool>(all(func_3()), true, func_3().x), !func_3()), true);
    global0 = array<vec2<i32>, 20>();
    return select(vec4<bool>(var_1.x, any(vec2<bool>(false, var_1.x)), func_3().x, true), vec4<bool>(var_1.x, true, false, _wgslsmith_div_i32(u_input.a, -1i) < u_input.a), false);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = !select(select(vec4<bool>(true, true, 0u != arg_0, all(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), !func_2()), vec4<bool>(true, true, true, true), true);
    var_0 = vec4<bool>(true && (false && (false | !var_0.x)), true, false, !(!var_0.x));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(1u, arg_0), u_input.b, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(13350u, u_input.b, 0u) & vec3<u32>(u_input.b, arg_0, 7198u)), _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, u_input.b, u_input.b), vec3<u32>(28380u, arg_0, 1u))), ~(vec3<u32>(arg_0, 18419u, 4294967295u) ^ vec3<u32>(0u, 1u, 7830u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(134526u), _wgslsmith_sub_u32(countOneBits(0u), ~arg_0), u_input.b, ~(3595u | u_input.b)), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(3569u, arg_0, 43850u, u_input.b), vec4<u32>(4294967295u, 42522u, 121963u, u_input.b))), (vec4<u32>(u_input.b, 14917u, 7926u, arg_0) | vec4<u32>(118427u, arg_0, 18220u, arg_0)) & vec4<u32>(arg_0, 1u, arg_0, arg_0))));
    var var_2 = vec3<i32>(16916i, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -14144i), vec3<i32>(50600i, -76558i, -26890i))), 1i), 24800i);
    var var_3 = Struct_1(~_wgslsmith_sub_i32(-min(var_2.x, 1726i), ~(-6131i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, 117f) + vec2<f32>(1988f, 2109f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(866f, -1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-953f, -614f) - vec2<f32>(-195f, 1257f))))), vec3<f32>(-703f, _wgslsmith_f_op_f32(step(-407f, 176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1542f * -403f), -461f, all(var_0.xz))))), _wgslsmith_clamp_i32(1i, -6899i, ~u_input.a), -9984i);
    return Struct_1(abs(-40108i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-613f, var_3.b.x), _wgslsmith_f_op_vec2_f32(floor(var_3.c.zy)))) * _wgslsmith_f_op_vec2_f32(var_3.b + var_3.c.zx)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_3.c.xz)))))), var_3.c, ~(~27715i), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~(12619u | u_input.b), _wgslsmith_sub_u32(u_input.b, ~u_input.b), u_input.b), vec3<u32>(u_input.b, 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(41134u, 81192u), vec2<u32>(0u, 4294967295u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    let var_2 = func_1(~76391u);
    global0 = array<vec2<i32>, 20>();
    var_0 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c + var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1219f), var_2.b.x))))));
}

