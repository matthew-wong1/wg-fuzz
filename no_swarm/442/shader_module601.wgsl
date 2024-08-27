struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(1u, _wgslsmith_mod_u32(~9427u, abs(30247u)), 1u, _wgslsmith_div_u32(u_input.d.x, 1u) | 4294967295u) & ~firstTrailingBit(u_input.c));
    var var_1 = 1i;
    let var_2 = Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(48297u, var_0))), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0, 0u) | firstTrailingBit(u_input.d.xz), _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.d.xy), _wgslsmith_mod_vec2_u32(vec2<u32>(51388u, 37951u), vec2<u32>(4294967295u, var_0))))), vec2<bool>(false, true));
    var_1 = countOneBits(~1i);
    var var_3 = Struct_1(!var_2.c.x, 66972u, vec2<bool>(false, false));
    return !(!var_2.a) | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(745f, -457f))), -1316f) < -125f);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = func_3();
    let var_1 = vec2<bool>(true, any(!(!vec3<bool>(var_0, true, var_0))) && true);
    var var_2 = 1u;
    var var_3 = u_input.b >= u_input.b;
    let var_4 = Struct_1(!((_wgslsmith_f_op_f32(arg_0 * 1710f) != _wgslsmith_f_op_f32(f32(-1f) * -603f)) | !all(vec4<bool>(var_1.x, var_0, var_1.x, false))), 4294967295u, var_1);
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = 18317u;
    var var_1 = _wgslsmith_sub_vec2_i32(select(~(reverseBits(vec2<i32>(1i, u_input.b)) ^ min(vec2<i32>(u_input.b, -1i), vec2<i32>(1271i, 200i))), vec2<i32>(30486i, select(u_input.a, -90281i, arg_1.x)) << (min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 45845u), vec2<u32>(1u, arg_0.b)), u_input.d.xz) % vec2<u32>(32u)), true), _wgslsmith_sub_vec2_i32(vec2<i32>(max(u_input.a, -u_input.a), 4987i), ~_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, u_input.a), min(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 3185i)))));
    var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, firstLeadingBit(23130i), i32(-1i) * -1i)), vec3<i32>(-2147483647i, -12310i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, var_1.x, -26910i)), -vec3<i32>(-10443i, var_1.x, 22960i)))), -firstLeadingBit(-u_input.a));
    var_1 = firstLeadingBit(-min(-vec2<i32>(u_input.a, var_1.x), -vec2<i32>(-1i, 2147483647i)) >> (vec2<u32>(1u, ~4294967295u) % vec2<u32>(32u)));
    let var_2 = func_2(_wgslsmith_div_f32(1504f, 1466f));
    return select(!vec2<bool>(arg_1.x, true), vec2<bool>(true, select(all(vec2<bool>(arg_0.a, false)), _wgslsmith_sub_u32(1u, var_0) >= arg_0.b, true)), !var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-select(min(abs(-25600i), -u_input.b), u_input.b, any(func_1(Struct_1(true, 4294967295u, vec2<bool>(true, true)), vec3<bool>(true, true, true)))), ~(-u_input.b ^ firstLeadingBit(~u_input.b)), -1i);
    var var_1 = _wgslsmith_div_f32(122f, _wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(f32(-1f) * -1335f))))));
    var var_2 = Struct_1(true, ~(~u_input.c.x & u_input.d.x), vec2<bool>(any(vec2<bool>(all(vec4<bool>(false, true, false, true)), false)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -327f)).c.x));
    var var_3 = func_2(-1554f);
    let var_4 = Struct_1(!((-u_input.a ^ abs(-5129i)) == _wgslsmith_sub_i32(var_0.x, abs(u_input.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x << (var_2.b % 32u), ~var_2.b, max(135855u, var_3.b)), ~u_input.d), abs(vec3<u32>(24314u, var_3.b, var_2.b))), var_2.c);
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, -2755f, 1000f, 729f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(149f, -1278f, 154f, -1113f), vec4<f32>(505f, 974f, -1851f, -183f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, _wgslsmith_f_op_f32(-334f * 796f), -1000f, _wgslsmith_f_op_f32(ceil(-1318f))) + vec4<f32>(_wgslsmith_div_f32(-679f, 205f), _wgslsmith_f_op_f32(f32(-1f) * -139f), 1014f, -1566f)), select(select(!vec4<bool>(var_4.c.x, false, false, var_2.c.x), !vec4<bool>(var_4.c.x, var_4.c.x, var_2.c.x, var_3.c.x), !vec4<bool>(var_3.c.x, var_4.a, false, true)), select(vec4<bool>(var_4.c.x, false, var_2.c.x, var_4.a), !vec4<bool>(true, var_2.a, var_2.a, var_2.c.x), !vec4<bool>(true, false, var_2.c.x, false)), false))), -196f, _wgslsmith_div_f32(-879f, _wgslsmith_f_op_f32(1000f + 930f)), vec3<u32>(reverseBits(~var_3.b), var_2.b, ~(~u_input.c.x)));
}

