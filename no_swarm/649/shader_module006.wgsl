struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(519f - 507f), _wgslsmith_f_op_f32(round(611f))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(-1124f)), _wgslsmith_f_op_f32(floor(-409f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1531f, 432f) * 1f))));
    var var_1 = Struct_3(true, -999f, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1290f, 820f, -1789f) * _wgslsmith_f_op_vec3_f32(-var_0.a)))));
    let var_2 = Struct_3(false, _wgslsmith_f_op_f32(step(1924f, _wgslsmith_f_op_f32(sign(2278f)))), Struct_2(var_0.a));
    var_0 = var_2.c;
    var_1 = var_2;
    return !(!(!vec3<bool>(!var_1.a, u_input.a.x != u_input.a.x, false)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = func_3(!vec3<bool>(any(vec3<bool>(true, true, true)), false, true));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec2_u32(select(~max(vec2<u32>(1u, 14736u), vec2<u32>(0u, 0u)), vec2<u32>(~73071u, 1u), vec2<bool>(true, true)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(36683u, 4294967295u, 5590u), vec3<u32>(4294967295u, 0u, 4294967295u)) << (firstTrailingBit(32956u) % 32u), 20064u)));
    var var_3 = Struct_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(789f, 1226f)) - _wgslsmith_div_f32(1545f, 171f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(922f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f - -513f)), _wgslsmith_f_op_f32(f32(-1f) * -708f), var_1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(325f, 541f, -480f), vec3<f32>(-1141f, 1054f, 107f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1101f, -152f, -1366f) * vec3<f32>(-856f, 2954f, -564f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2690f, 839f, 514f)))), _wgslsmith_add_i32(0i, 16719i) >= var_0.x))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.c.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_3.c.a.x, 1000f)))));
    return var_3.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(u_input.a.xz);
    var_0 = func_2(min(~firstLeadingBit(countOneBits(u_input.a.zx)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zx, vec2<i32>(1i, u_input.b)) ^ (vec2<i32>(u_input.a.x, 0i) >> (vec2<u32>(3933u, arg_0) % vec2<u32>(32u))), firstLeadingBit(u_input.a.zy))));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) - _wgslsmith_f_op_f32(ceil(var_0.a.x))), 456f), var_0.a.x));
    let var_1 = func_2(firstLeadingBit(vec2<i32>(0i, 1i)));
    var_0 = var_1;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1472f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f)));
    var var_2 = func_1(~4294967295u);
    let var_3 = !(!vec4<bool>(!all(vec2<bool>(true, false)), false, !all(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    var var_4 = !var_3.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), max(1u, 1u));
}

