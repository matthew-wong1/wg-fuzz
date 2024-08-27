struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    global0 = ~u_input.a.x;
    var var_0 = Struct_1(arg_2, any(select(!(!vec4<bool>(true, arg_0.a, arg_1.b, false)), vec4<bool>(all(vec2<bool>(arg_1.b, true)), true, true, arg_2), !vec4<bool>(arg_1.b, true, arg_2, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, _wgslsmith_f_op_f32(883f - 2204f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(900f, 2823f), vec2<f32>(2364f, -947f), all(vec4<bool>(false, arg_1.a, false, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, 1000f))))));
    global0 = _wgslsmith_add_i32(u_input.a.x, u_input.c.x | abs(-10053i));
    var_0 = Struct_1(var_0.a, false);
    return ~u_input.a.x;
}

fn func_2() -> Struct_1 {
    global0 = ~(~(-1i));
    global0 = -countOneBits(~(-2147483647i));
    global0 = -reverseBits(~13550i | u_input.c.x);
    global0 = firstTrailingBit(u_input.a.x);
    let var_0 = -vec2<i32>(~firstTrailingBit(-u_input.a.x), _wgslsmith_mod_i32(1i, abs(func_3(Struct_1(false, false), Struct_1(false, false), false, Struct_1(true, true)))));
    return Struct_1(true, !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = 0i;
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1279f)))))));
    var var_2 = func_2();
    global0 = -u_input.a.x;
    return arg_0.zz << ((~vec2<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, 1u, 1u)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.xy, vec2<u32>(13586u, u_input.d.x)), abs(~arg_0.zy), _wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_add_vec2_u32(arg_0.zy, arg_0.yz)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    global0 = ~u_input.a.x;
    global0 = _wgslsmith_mult_i32(0i, -(~(-u_input.a.x))) | -(~(~(-u_input.a.x)));
    global0 = -1i;
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_f_op_f32(f32(-1f) * -2218f)))), 1883f));
    global0 = ~(-(~_wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(u_input.a.x, u_input.c.x)) & 6922i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_1(vec3<u32>(2644u, u_input.b ^ u_input.b, ~28790u), Struct_1(u_input.d.x < 13840u, true))));
}

