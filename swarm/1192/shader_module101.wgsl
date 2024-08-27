struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = false;
    var var_2 = arg_2;
    var_1 = var_0.x;
    var_1 = all(!(!select(!vec4<bool>(var_0.x, arg_2.b, false, arg_2.b), vec4<bool>(var_2.b, var_0.x, var_0.x, false), var_2.b)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(~vec3<i32>(arg_1, 2147483647i, 14188i), vec3<i32>(-3832i, arg_1, arg_1)), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, 4406i, arg_1), vec3<i32>(1i, arg_1, 7647i))), _wgslsmith_mod_i32(~_wgslsmith_add_i32(arg_1, ~(-71054i)), 1i));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-197f * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f - -1550f) * _wgslsmith_f_op_f32(step(759f, -341f))), -775f))));
    return 2147483647i ^ firstLeadingBit(_wgslsmith_mod_i32(func_3(4294967295u, 9515i, Struct_1(-289f, false, -1250f, var_0)) ^ abs(-2147483647i), -2147483647i));
}

fn func_1() -> u32 {
    let var_0 = min(vec4<i32>(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(-2147483647i, -4240i), vec2<i32>(1i, -1i), vec2<bool>(true, false)), firstTrailingBit(~vec2<i32>(16631i, 1i))), reverseBits(func_2()) | 11712i, -27533i >> (1u % 32u), _wgslsmith_sub_i32(~22647i, -8404i)), vec4<i32>(1i, 1i, 1i, 1i) | -vec4<i32>(_wgslsmith_mod_i32(2147483647i, 11133i), ~21952i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(51398i, 13444i, 8403i, -43171i), vec4<i32>(-21i, 67158i, -39058i, 2147483647i))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.d, ~max(3080u, 1u)), ~(~(~u_input.b.x))), vec2<u32>(min(4294967295u, u_input.c.x), _wgslsmith_sub_u32(56330u, u_input.c.x)));
    var_1 = ~_wgslsmith_mult_u32(u_input.d, _wgslsmith_mult_u32(0u & u_input.c.x, ~1u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-275f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(703f)), _wgslsmith_div_f32(1122f, -1000f)))))), !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(-761f - 1384f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1318f))) - -1265f), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))))), -698f);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-284f, -1078f))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d ^ (u_input.a ^ u_input.c.x), 1u), ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, ~469u), ~(u_input.c.yyy << ((vec3<u32>(u_input.b.x, 0u, 4294967295u) << (vec3<u32>(u_input.a, u_input.b.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var_0 = u_input.c.zyx;
    var_0 = firstLeadingBit(u_input.c.xyz);
    var_0 = u_input.c.xzw;
    var var_1 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(100003u, 1u, func_1(), ~1596u) % vec4<u32>(32u))), _wgslsmith_sub_u32(var_0.x, var_0.x));
}

