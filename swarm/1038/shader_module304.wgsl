struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-20057i, u_input.a.x), -u_input.a.x), -u_input.a), u_input.a.x);
    var var_1 = 17699i;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, 59294u)), vec3<u32>(1u, 1u, 1u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 25667u, 20530u), vec3<u32>(45331u, 70128u, 54701u))), 62216u, ~(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 31717u), vec3<u32>(30731u, 1u, 8699u)) % 32u))), min(firstTrailingBit(~max(vec4<u32>(54995u, 63929u, 48984u, 4294967295u), vec4<u32>(45609u, 1u, 24691u, 55313u))), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var_2 = ~(~vec4<u32>(var_2.x, 4294967295u, ~(~7149u), 4294967295u));
    return var_0.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_add_i32(-65486i >> ((select(1u, ~0u, any(vec3<bool>(false, false, true))) & 1u) % 32u), func_3());
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1088f) >= _wgslsmith_f_op_f32(round(-1711f));
    let var_2 = abs(vec4<u32>(~1u, ~(~4294967295u) | (_wgslsmith_dot_vec3_u32(vec3<u32>(2767u, 52720u, 64647u), vec3<u32>(1u, 4294967295u, 0u)) << (1u % 32u)), firstTrailingBit(41047u), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, 25976u, 38581u), ~74373u)));
    let var_3 = vec3<bool>(false, false, all(!select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, false, false, true))) & !var_1);
    var var_4 = 4294967295u;
    return select(!vec3<bool>(var_3.x, false, var_1), vec3<bool>(true, all(vec4<bool>(all(vec3<bool>(false, true, var_1)), var_3.x || true, true, false)), var_3.x), vec3<bool>(all(var_3), var_1, var_1 && false));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> bool {
    var var_0 = false;
    let var_1 = Struct_1(vec4<bool>(arg_1.a.x, arg_1.a.x, any(!(!vec4<bool>(true, true, false, arg_1.a.x))), arg_1.e.x), vec3<bool>(!(!(!arg_1.e.x)), all(!arg_1.b.zy), !any(vec2<bool>(true, true))), 2326f, max(vec2<i32>(u_input.a.x, 11997i), (vec2<i32>(-1i) * -arg_1.d) & min(arg_1.d, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -2147483647i), arg_3.wy))), func_2());
    var_0 = true;
    let var_2 = var_1;
    return !(var_1.b.x & any(select(!vec3<bool>(true, true, arg_1.b.x), !var_1.b, vec3<bool>(true, true, var_1.b.x))));
}

fn func_1(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = func_4(~_wgslsmith_div_i32(-(~u_input.a.x), u_input.a.x), Struct_1(vec4<bool>(!(u_input.a.x > 1i), any(vec4<bool>(false, false, false, false)), true, true), func_2(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), vec2<i32>(~u_input.a.x, i32(-1i) * -u_input.a.x), vec3<bool>(true, true, true)), 30707u & _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_0, arg_0, vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, 3813u))), vec4<i32>(u_input.a.x, -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, -30628i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 24640i), vec2<i32>(244i, u_input.a.x)), -u_input.a.x), 14554i, _wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -2147483647i, 1i)));
    var_0 = true;
    var_0 = select(!any(vec3<bool>(false, true, true)), !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), func_2().x);
    let var_1 = true;
    let var_2 = -u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-145f, 553f)) + -1749f), -793f, _wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(ceil(1929f))), 958f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<u32>(1u, 0u >> (0u % 32u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(select(~countOneBits(vec4<u32>(5690u, 36689u, 0u, 64648u)), vec4<u32>(79473u, firstLeadingBit(4294967295u), 78417u, min(1u, 1u)), true), firstTrailingBit(min(select(vec4<u32>(24179u, 4324u, 0u, 4294967295u), vec4<u32>(1u, 57048u, 21471u, 41679u), vec4<bool>(false, true, false, true)), vec4<u32>(0u, 3772u, 33151u, 0u)))));
}

