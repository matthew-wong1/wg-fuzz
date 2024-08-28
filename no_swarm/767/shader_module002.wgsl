struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    let var_0 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1000f)), -1080f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(524f, arg_1.a.x), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))))), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(abs(arg_2))));
    var var_1 = Struct_2(!(!(!(!arg_0.a))));
    var var_2 = ~arg_3.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_1.a, arg_1.a)))) - arg_1.a)));
    let var_4 = ~(~u_input.a.x << (max(~1u, min(u_input.c.x, select(u_input.c.x, 25306u, var_1.a.x))) % 32u));
    return 41108u;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, ~abs(49938u), func_3(Struct_2(vec2<bool>(false, false)), Struct_1(vec4<f32>(-674f, -231f, 1441f, -490f)), _wgslsmith_f_op_f32(min(1288f, 566f)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))), countOneBits(~vec3<u32>(arg_0, ~0u, ~arg_0)));
    var_0 = ~abs(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 12102u), vec3<u32>(4294967295u, arg_0, var_0.x)), ~(~vec3<u32>(u_input.a.x, 11264u, 1u))));
    var_0 = vec3<u32>(~1u, u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x) ^ u_input.c, vec2<u32>(var_0.x, 37950u)), 1u, abs(~u_input.a.x)), vec3<u32>(arg_0, ~(~u_input.a.x), ~_wgslsmith_mult_u32(1u, 1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-975f * 552f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -295f, 817f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1.x >> (1u % 32u))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-467f, 1048f)))), arg_0.x)), var_0.x, 453f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    var var_2 = abs(_wgslsmith_add_vec3_u32(reverseBits(arg_1), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, 109212u, u_input.c.x)), vec3<u32>(arg_1.x, 1u, u_input.c.x))) >> (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(42992u, u_input.c.x, u_input.c.x), arg_1 & vec3<u32>(arg_1.x, 4551u, 1u), countOneBits(vec3<u32>(u_input.c.x, 1u, 4294967295u))), _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(77521u, u_input.a.x, 4294967295u)), !(!vec3<bool>(true, arg_2, true))) % vec3<u32>(32u)));
    var_0 = var_1.yxy;
    var var_3 = ~abs(vec2<i32>(-54253i, 8659i));
    return Struct_1(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 615f), _wgslsmith_f_op_f32(-612f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(812f)), _wgslsmith_f_op_f32(floor(491f))))), vec3<u32>(firstLeadingBit(u_input.a.x ^ 8057u), 67477u, u_input.c.x), 1i >= (abs(-u_input.d) | 12291i));
    var var_1 = 4294967295u;
    let var_2 = min(countOneBits(abs(72317u)), 0u);
    let var_3 = select(!vec3<bool>(!select(true, true, false), true, true), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, any(vec3<bool>(false, true, false)))), select(vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(true, true, -1i >= u_input.e)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(any(vec3<bool>(true, false, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), ~u_input.a.x < 59707u)));
    var_1 = ~var_2;
    let var_4 = true;
    var_1 = ~(~(~_wgslsmith_div_u32(1u, abs(var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(abs(u_input.d), min(2147483647i, u_input.d), ~(-18793i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.e, 17004i, 5560i), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(21812i, u_input.d, -27865i), vec3<i32>(0i, -5444i, u_input.e))))), ~(~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 39091u)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(57626u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2, u_input.a.x), vec3<u32>(var_2, u_input.a.x, u_input.a.x)), u_input.a.x), ~abs(vec3<u32>(1u, 4294967295u, u_input.c.x))));
}

