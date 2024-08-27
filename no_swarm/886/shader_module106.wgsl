struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = select(vec2<bool>(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), false), select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1471f) == _wgslsmith_f_op_f32(sign(668f)), true), any(vec2<bool>(false, true))), vec2<bool>(!(all(vec4<bool>(false, false, true, true)) || false), all(vec3<bool>(true, true, true)) | true));
    let var_1 = select(select(!vec3<bool>(any(vec2<bool>(false, true)), false, true), select(vec3<bool>(true, false, var_0.x), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.x, false), true)), select(vec3<bool>(true, false, !var_0.x), vec3<bool>(var_0.x, true, true), false)), vec3<bool>(false, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(4294967295u, arg_0.x)) >= 86254u, true), !vec3<bool>((0i & u_input.b) < -51729i, true, !any(vec2<bool>(var_0.x, var_0.x))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(552f + -216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -740f), _wgslsmith_f_op_f32(1000f + 893f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 968f)))));
    var var_3 = _wgslsmith_f_op_f32(min(365f, var_2.x)) != var_2.x;
    var var_4 = select(abs(~(~(vec3<i32>(u_input.b, 34055i, u_input.b) ^ vec3<i32>(u_input.b, 50995i, u_input.b)))), vec3<i32>(~u_input.b, -10224i, ~(u_input.b << (arg_0.x % 32u))), var_1.x && var_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -1408f)), _wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(-var_2.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_1(u_input.a.x, arg_0.d, arg_0.c, -_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.b), (i32(-1i) * -32812i) | _wgslsmith_mult_i32(arg_0.d, u_input.b)), arg_1.xwz);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.e.xx));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.a.zy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - -943f)))))));
    let var_3 = var_0;
    var_2 = arg_0.e.x;
    return ~_wgslsmith_div_u32(~536u, ~u_input.a.x);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_div_u32(min(u_input.a.x, ~select(func_2(Struct_1(u_input.c.x, 0i, vec2<bool>(true, false), u_input.b, arg_0), vec4<f32>(arg_0.x, 743f, -788f, arg_0.x)), u_input.c.x >> (1u % 32u), false)), 0u);
    let var_1 = Struct_1(u_input.a.x, u_input.b, vec2<bool>(true, true), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(-vec4<i32>(6513i, -9946i, u_input.b, u_input.b), -vec4<i32>(-12910i, u_input.b, 2147483647i, 29859i), vec4<bool>(false, false, true, false)), vec4<i32>(select(8857i, u_input.b, false), -1i, abs(0i), abs(u_input.b))), max(select(vec4<i32>(u_input.b, u_input.b, u_input.b, -17171i), vec4<i32>(2147483647i, -2147483647i, u_input.b, -2147483647i) >> (vec4<u32>(20632u, 1u, 0u, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(true, false, true, true)), min(~vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), vec4<i32>(-1i, u_input.b, 11969i, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-208f, arg_0.x, 596f))))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -125f, -1426f, var_1.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, arg_0.x, var_1.e.x, var_1.e.x) * vec4<f32>(var_1.e.x, var_1.e.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2596f, var_1.e.x, -260f, -1212f), vec4<f32>(var_1.e.x, arg_0.x, var_1.e.x, -117f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.e.x)), 600f, _wgslsmith_f_op_f32(ceil(arg_0.x)), 759f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, var_1.e.x, -393f, arg_0.x)))));
    var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, var_1.e.x, var_3.x, -1514f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, var_3.x, var_3.x, -799f)))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.e.x, 660f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, 1180f)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(4255u, u_input.b, arg_1.xx, _wgslsmith_div_i32(u_input.b, (-2147483647i | (u_input.b << (97105u % 32u))) | ((u_input.b | u_input.b) ^ _wgslsmith_div_i32(u_input.b, 63228i))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))));
    var var_1 = var_0.e;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1115f + var_0.e.x), -613f, _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = abs(u_input.a.xx);
    var var_3 = abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-11472i, var_0.d, 0i, -603i), vec4<i32>(2147483647i, 58661i, 1i, 794i), vec4<i32>(-2147483647i, u_input.b, u_input.b, var_0.d)) << (firstLeadingBit(vec4<u32>(1u, ~0u, arg_2, 1u)) % vec4<u32>(32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = false;
    var_0 = vec3<bool>(var_0.x, true, false);
    var_0 = vec3<bool>(any(select(select(vec2<bool>(false, var_1), !vec2<bool>(var_1, var_0.x), true), !var_0.yx, true)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-323f, -196f), _wgslsmith_f_op_f32(1136f - -1147f), _wgslsmith_f_op_f32(func_1(vec3<f32>(1954f, -1285f, -481f))), 1f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(653f, 743f, -231f, 445f) - vec4<f32>(-1536f, 1353f, -531f, 1293f)), vec4<f32>(-1031f, 222f, -1000f, 180f)))), vec3<bool>(select(var_0.x, true, 30248u <= u_input.c.x), var_0.x, !(var_1 | var_0.x)), u_input.a.x, vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x)), firstLeadingBit(abs(u_input.a.x)))), abs(u_input.a.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(max(20328u, 4294967295u), 0u << (u_input.a.x % 32u)), ~vec2<u32>(86061u, u_input.c.x)));
    var_0 = !(!vec3<bool>(all(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, false, var_1, false), true)), !var_1, select(true, any(vec4<bool>(var_1, false, true, true)), all(vec4<bool>(false, var_0.x, var_1, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<i32>(1i, -2147483647i, u_input.b), vec3<i32>(u_input.b ^ u_input.b, 1i, u_input.b), var_0.x), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-7738i, u_input.b)), vec2<i32>(_wgslsmith_add_i32(u_input.b ^ 0i, -44059i), abs(-41233i) << (max(u_input.c.x, u_input.a.x) % 32u))), u_input.b, ~(-2147483647i));
}

