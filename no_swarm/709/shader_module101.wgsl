struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    return !select(vec3<bool>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(387f * arg_0.a.x) <= _wgslsmith_div_f32(-771f, arg_0.a.x)), !vec3<bool>(false, any(vec3<bool>(false, arg_0.b, true)), 50998u > u_input.a.x), 1u > abs(u_input.a.x));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = -select(vec3<i32>(arg_1.c, countOneBits(arg_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, -2147483647i, -2147483647i) << (vec3<u32>(arg_0, u_input.a.x, 27969u) % vec3<u32>(32u)), vec3<i32>(0i, 42886i, -870i))), max(vec3<i32>(-1i, -31910i << (u_input.a.x % 32u), -arg_1.c), -vec3<i32>(34769i, 20712i, arg_1.c)), select(!vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(0u > u_input.a.x, arg_1.c >= arg_1.c, arg_1.c < -1i), select(!vec3<bool>(true, arg_1.b, true), !vec3<bool>(false, false, arg_1.b), func_3(Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.b, arg_1.c)))));
    let var_1 = arg_1;
    let var_2 = var_1.a.x;
    var var_3 = Struct_2(Struct_1(vec3<f32>(-171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(var_1.a.x * arg_1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(819f - var_2), var_2))), true, _wgslsmith_mod_i32(-var_1.c, select(-var_1.c, var_0.x, var_0.x != -25414i))), arg_1, arg_1, vec4<bool>(false, arg_1.b, func_3(arg_1).x & true, false), arg_1);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, arg_1.a.x, var_1.a.x)) - var_1.a))));
    return !arg_1.b;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-933f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)) - vec3<f32>(1500f, arg_0, -1744f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), arg_0, _wgslsmith_f_op_f32(-arg_0))))), arg_0 > 453f, ~(-_wgslsmith_mult_i32(44295i, max(6954i, 1i))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))) * arg_0)));
    var var_2 = vec3<bool>(var_0.b, var_0.b, !(!arg_1.x));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + var_0.a), var_0.b, firstLeadingBit(-2147483647i) ^ select(-2147483647i, ~_wgslsmith_add_i32(var_0.c, var_0.c), true));
    return all(select(vec3<bool>(!any(arg_1), var_0.b, any(vec2<bool>(false, false))), vec3<bool>(true, true, arg_1.x), vec3<bool>(select(all(var_2.zy), var_2.x, any(vec3<bool>(var_2.x, true, true))), true, func_2(23814u >> (u_input.a.x % 32u), Struct_1(var_0.a, var_0.b, 1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = -_wgslsmith_add_vec2_i32(-vec2<i32>(-10643i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 4775i, 0i), vec4<i32>(34675i, -24503i, 1i, 33311i))), firstTrailingBit(select(~vec2<i32>(-2147483647i, -19410i), vec2<i32>(84899i, 0i), vec2<bool>(true, true))));
    var_0 = false;
    let var_2 = !vec4<bool>(all(vec2<bool>(true, true)), false, !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1332f), vec2<bool>(true, true), ~vec4<u32>(65984u, u_input.a.x, 64889u, 42799u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a.x)), u_input.a.xw) == 10998u);
    var_0 = var_2.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 756f) - -1164f))))) + -570f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x & 47565u)) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(78221u, u_input.a.x), 4294967295u | u_input.a.x), ~countOneBits(u_input.a.x)) % vec2<u32>(32u)), var_3, _wgslsmith_add_vec4_i32(-vec4<i32>(firstLeadingBit(-2147483647i), ~var_1.x, 0i, ~var_1.x), -abs(vec4<i32>(var_1.x, 0i, 0i, 0i)) | ~vec4<i32>(var_1.x, -18520i, 0i, var_1.x)));
}

