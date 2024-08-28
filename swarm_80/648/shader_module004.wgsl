struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(vec2<bool>(any(vec2<bool>(true, false)) && any(vec4<bool>(true, true, true, true)), false), ~vec2<u32>(1u, 1u));
    var var_1 = vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x && select(true, any(vec4<bool>(true, var_0.a.x, true, false)), false), true);
    var_1 = select(select(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x != false), select(select(!vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(var_0.a.x, var_0.a.x, true, var_1.x), select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(var_0.a.x, var_1.x, true, false), false)), vec4<bool>(!var_0.a.x, var_0.a.x, any(vec3<bool>(var_1.x, true, var_1.x)), !var_1.x), any(var_0.a)), !var_1.x), vec4<bool>(var_0.a.x, !(var_0.b.x < 22059u), var_0.a.x, all(!select(var_1.zww, vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, var_0.a.x, var_1.x)))), !select(all(vec3<bool>(false, var_0.a.x, var_1.x)), true, var_0.a.x));
    var var_2 = Struct_1(select(vec2<bool>(var_1.x, true | (var_0.a.x && true)), vec2<bool>(select(false, any(vec4<bool>(true, var_1.x, var_1.x, false)), true), any(var_1.zzw)), select(all(vec3<bool>(var_1.x, var_0.a.x, true)), all(vec3<bool>(var_0.a.x, var_1.x, var_1.x)), true)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_0.b.x, var_0.b.x)), vec2<u32>(_wgslsmith_mod_u32(var_0.b.x ^ 1u, ~0u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x), 13139u))));
    let var_3 = Struct_1(vec2<bool>(any(var_0.a), (true | (var_2.a.x | true)) && (true | var_0.a.x)), ~var_0.b);
    return !(!select(vec4<bool>(!var_1.x, true, true, true), vec4<bool>(var_0.a.x, select(true, false, false), true, var_2.a.x || true), !select(vec4<bool>(var_2.a.x, var_0.a.x, var_2.a.x, var_0.a.x), vec4<bool>(true, false, var_3.a.x, false), true)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(all(func_3()), false && any(vec3<bool>(true, true, true))), vec2<u32>(~0u, 3071u));
    var_0 = Struct_1(!var_0.a, var_0.b);
    let var_1 = Struct_1(!vec2<bool>(var_0.a.x, !var_0.a.x), vec2<u32>(0u, ~var_0.b.x));
    let var_2 = var_1;
    var_0 = Struct_1(vec2<bool>(true, true), vec2<u32>(1u, ~_wgslsmith_div_u32(abs(4294967295u), ~22062u)));
    return var_2;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = u_input.a;
    let var_2 = Struct_1(var_0.a, vec2<u32>(~var_0.b.x, 46068u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-689f, 824f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1567f)) - _wgslsmith_f_op_f32(min(-1009f, 514f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-984f, -1000f) * vec2<f32>(973f, -157f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-300f, -1320f))), !var_0.a))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1499f, -359f))), vec2<f32>(-1503f, 1479f)))));
    var var_2 = func_2();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-740f, 367f)), _wgslsmith_div_f32(-929f, _wgslsmith_f_op_f32(712f * var_3.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-227f)) * var_3.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-1i), -1i, reverseBits(u_input.a.x), ~(-36220i)), countOneBits(vec4<i32>(-15989i, u_input.a.x, 0i, u_input.a.x) | u_input.a), u_input.a) | ~_wgslsmith_sub_vec4_i32(-u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, -15172i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.zwy, abs(u_input.a.zxz)), -vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)) & ~u_input.a.x, -581f);
}

