struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 0u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    global1 = ~_wgslsmith_add_u32(11228u, ~u_input.c);
    let var_0 = arg_1;
    global1 = abs(firstTrailingBit(4294967295u << (0u % 32u)));
    let var_1 = any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)) & true;
    var var_2 = 840f;
    return _wgslsmith_f_op_f32(f32(-1f) * -1674f);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(u_input.c);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + _wgslsmith_f_op_f32(trunc(-295f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c, var_0, vec4<i32>(u_input.a, u_input.a, u_input.d, u_input.a))) - -650f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-680f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-218f, _wgslsmith_f_op_f32(func_3(var_0.a, var_0, vec4<i32>(u_input.b, -11792i, -15169i, -28367i)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1120f + 573f))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1919f, var_1.x), 1156f, true)), var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-172f)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(var_1.x, 612f)))), ~_wgslsmith_div_vec4_i32(max(vec4<i32>(-17827i, u_input.d, u_input.b, -2147483647i), vec4<i32>(u_input.d, u_input.d, 0i, u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(-6451i, -2147483647i, u_input.e, u_input.e), vec4<i32>(1i, u_input.d, u_input.d, u_input.e))) << (vec4<u32>(0u, max(1u, 4294967295u) | ~u_input.c, 1u, u_input.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(-25251i, u_input.d, u_input.e, -32199i), vec4<i32>(u_input.e, u_input.b, u_input.b, -1i), vec4<bool>(false, true, true, false)), -select(vec4<i32>(u_input.b, u_input.d, u_input.e, -20811i), vec4<i32>(u_input.a, u_input.a, u_input.b, 11773i), vec4<bool>(true, true, false, false)), vec4<i32>(u_input.b, u_input.d, u_input.a, 0i) >> (vec4<u32>(var_0.a, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), countOneBits(~vec4<i32>(-30372i, u_input.b, u_input.e, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_f_op_f32(min(1026f, _wgslsmith_f_op_f32(step(var_1.x, -1000f))))))));
}

fn func_1() -> f32 {
    global0 = 1899f;
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(11183u, _wgslsmith_mod_u32(~u_input.c, _wgslsmith_sub_u32(1u, 0u) ^ (u_input.c << (u_input.c % 32u)))), ~6624u);
    var var_1 = func_2();
    let var_2 = ~var_1.c.xx;
    global1 = 0u << (0u % 32u);
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_0 = !vec3<bool>(!any(vec2<bool>(false, false)), !(all(vec3<bool>(false, true, false)) & true), false);
    var var_1 = -2147483647i;
    global0 = func_2().b.x;
    global0 = 546f;
    let var_2 = ~u_input.c;
    let var_3 = abs(_wgslsmith_clamp_i32(~(_wgslsmith_mod_i32(u_input.b, u_input.b) | 1i), -1i, _wgslsmith_clamp_i32(u_input.d, i32(-1i) * -29312i, firstTrailingBit(u_input.b)) | _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, 1i, u_input.a, u_input.d), -vec4<i32>(0i, u_input.e, -51696i, -1i))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1i, var_3);
}

