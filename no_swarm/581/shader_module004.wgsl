struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global0 = array<vec2<i32>, 19>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1128f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1513f)));
    global0 = array<vec2<i32>, 19>();
    return all(!vec3<bool>(all(vec3<bool>(true, false, true)), true, true)) & false;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(func_3(), any(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a), arg_0.a)), func_3() && ((4294967295u & u_input.e) >= firstLeadingBit(u_input.c))));
    global0 = array<vec2<i32>, 19>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(456f + 928f), -148f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))));
    let var_2 = ~vec3<u32>(countOneBits(max(20881u, u_input.a.x) & u_input.e), 20875u, u_input.c);
    var var_3 = !(!(!all(!vec2<bool>(arg_0.a, arg_0.a))));
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> bool {
    var var_0 = true;
    global0 = array<vec2<i32>, 19>();
    var_0 = !all(vec3<bool>(!func_2(Struct_1(true)).a, !(arg_0.a | arg_0.a), true));
    var var_1 = arg_1.x;
    var var_2 = func_2(func_2(func_2(func_2(func_2(Struct_1(arg_0.a))))));
    return arg_0.a;
}

fn func_1() -> bool {
    var var_0 = 0i;
    global0 = array<vec2<i32>, 19>();
    var var_1 = abs(u_input.c) == _wgslsmith_mod_u32(~47853u, 19114u);
    let var_2 = func_4(func_2(Struct_1(true)), reverseBits(firstLeadingBit(countOneBits(vec4<i32>(u_input.b.x, -33188i, u_input.d, 2147483647i) | vec4<i32>(27454i, -56898i, 28214i, u_input.b.x)))), ~u_input.a.x);
    var var_3 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    var var_0 = Struct_1(any(vec4<bool>(true, false, true, true)) || func_1());
    var_0 = Struct_1(func_4(Struct_1(1i < (u_input.d << (u_input.e % 32u))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-10407i, u_input.b.x, -39105i, u_input.d)), ~vec4<i32>(-2147483647i, 1i, -1i, -2147483647i)), _wgslsmith_clamp_u32(u_input.e, abs(~8810u), 0u)));
    var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) & _wgslsmith_dot_vec4_i32(vec4<i32>(-24952i, 1i, 72844i, 2147483647i), vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, u_input.d)), ~30671i ^ (u_input.b.x ^ 30591i)) >= _wgslsmith_mult_i32(~u_input.b.x, _wgslsmith_div_i32(~u_input.b.x, -47480i >> (u_input.a.x % 32u))));
    global0 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d, 1i, u_input.d, -u_input.d), -u_input.b.x);
}

