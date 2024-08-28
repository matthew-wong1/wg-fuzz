struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: i32) -> u32 {
    return u_input.b ^ 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a);
    var_0 = Struct_1(!(!(true || all(vec2<bool>(arg_0.a, arg_0.a)))));
    let var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.a, u_input.a), ~(~vec2<i32>(u_input.a, 0i))) | vec2<i32>(select(16472i, -(u_input.a >> (1u % 32u)), var_0.a), 55445i);
    var_0 = Struct_1(false);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1313f)));
    return vec2<bool>(true, var_0.a);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(u_input.b, func_2(15663i));
    let var_1 = !vec4<bool>(arg_0, all(!vec3<bool>(true, arg_0, false)), all(func_3(Struct_1(true), Struct_1(false))), arg_0);
    var var_2 = _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 14021i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -58339i, 1i))), select(_wgslsmith_div_vec4_i32(vec4<i32>(58971i, -48064i, -2147483647i, u_input.a), vec4<i32>(-1434i, u_input.a, -25915i, -2147483647i)), firstLeadingBit(vec4<i32>(1i, u_input.a, 64842i, u_input.a)), any(var_1.ywz)))), ~min(vec4<i32>(_wgslsmith_div_i32(u_input.a, -2147483647i), -u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-32967i, -1i, u_input.a), vec3<i32>(15526i, u_input.a, 0i))), vec4<i32>(select(-1i, -26869i, arg_0), u_input.a, 0i, -1i)));
    let var_3 = vec2<u32>(u_input.b, abs(~var_0));
    var_2 = -8377i;
    return Struct_1(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(!vec4<bool>(u_input.b <= 0u, u_input.b < 4294967295u, true, true)));
    var_0 = Struct_1(any(func_3(Struct_1(var_0.a), func_1(var_0.a))));
    var_0 = Struct_1(true);
    var_0 = Struct_1(true);
    let var_1 = func_1(var_0.a);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(569f, _wgslsmith_f_op_f32(-964f - -188f))), -563f, 1000f, 748f), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1886f, _wgslsmith_f_op_f32(min(-1424f, -1821f))))), 923f, -478f, 694f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x), ~vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, 2147483647i)) | (-vec2<i32>(u_input.a, u_input.a) & _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, 2147483647i), vec2<i32>(30476i, u_input.a))), 2147483647i, ~vec3<u32>(21814u, ~(~u_input.b), u_input.b), (~(~19365u) << (_wgslsmith_div_u32(u_input.b, ~u_input.b) % 32u)) << (18308u % 32u));
}

