struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_1(abs(-1i) >= (_wgslsmith_mod_i32(arg_0, u_input.d.x ^ arg_2.x) ^ abs(_wgslsmith_add_i32(arg_2.x, -45179i))), 1i, arg_3.x);
    global0 = false;
    var var_1 = vec3<bool>(!((35738i < u_input.d.x) | all(select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, var_0.a, true, true), true))), false, var_0.a);
    let var_2 = _wgslsmith_div_u32(u_input.b.x ^ ~(~u_input.b.x), _wgslsmith_dot_vec3_u32(select(~(~u_input.b), u_input.c, select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_1.x, var_0.a, var_0.a), var_1.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(5683u, var_0.c, u_input.c.x), abs(vec3<u32>(arg_3.x, arg_3.x, var_0.c))), vec3<u32>(reverseBits(var_0.c), _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(1u, 35627u)), 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, var_0.c, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(arg_3.x, 0u, 11059u))))));
    var var_3 = Struct_1(true, -_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d.x, 0i), -arg_2), countOneBits(arg_2 >> (u_input.b.yy % vec2<u32>(32u)))), var_0.c);
    return !var_0.a;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(func_3(_wgslsmith_mod_i32(u_input.a, ~_wgslsmith_mod_i32(2147483647i, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, -774f)) - vec2<f32>(657f, 1341f))), ~u_input.d.yz, u_input.b.yx), _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, -24740i), -vec2<i32>(arg_0, 2147483647i)), _wgslsmith_sub_u32(u_input.c.x, 1u));
    let var_1 = Struct_1(var_0.a, -9335i, u_input.c.x);
    var_0 = var_1;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(604f - -1000f))), 715f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1912f, 1359f) + -524f), _wgslsmith_f_op_f32(trunc(-832f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -721f))) * -803f));
    let var_2 = vec2<bool>(false, arg_1.x);
    return arg_1.zwy;
}

fn func_1() -> vec3<i32> {
    var var_0 = all(vec2<bool>(false, all(func_2(-34420i, vec4<bool>(false, false, false, false))))) || !(-2147483647i > u_input.a);
    var var_1 = ~(-18063i);
    var_0 = func_2(-1i, select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true))).x & !all(vec4<bool>(false, true, true, true));
    var_1 = u_input.a;
    var_0 = all(vec3<bool>(func_2(1i, select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))).x, true, any(vec4<bool>(true, true, false, true))));
    return u_input.d.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(!any(vec2<bool>(false, true)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(5852i, u_input.d.x), -1i), u_input.a, _wgslsmith_add_i32(min(-61732i, 30069i), u_input.d.x & u_input.d.x)), func_1()), countOneBits(0u));
    var var_1 = 1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(615f, -1000f) + _wgslsmith_f_op_f32(step(848f, 724f))))) * _wgslsmith_f_op_f32(round(1636f)));
    var var_2 = Struct_1(true, (-1i >> (firstLeadingBit(1u) % 32u)) & ~u_input.a, _wgslsmith_add_u32(~var_0.c, 1u | u_input.c.x) | u_input.b.x);
    let var_3 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(1i, -u_input.a), countOneBits(reverseBits(min(var_0.b, -21594i))) ^ ~(-36853i));
    var var_4 = Struct_1(var_0.a, _wgslsmith_mod_i32(~select(~u_input.d.x, firstTrailingBit(u_input.a), true), var_0.b), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(14542u, var_0.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -771f, -936f)))))), i32(-1i) * -42713i, 1f);
}

