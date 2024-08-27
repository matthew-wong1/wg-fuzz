struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<i32, 27> = array<i32, 27>(1i, -39215i, 39579i, 8278i, -47278i, -8963i, 2147483647i, 22215i, -1i, -55786i, 47499i, -30283i, 2147483647i, 1i, 30481i, -1i, 891i, -11745i, 1i, i32(-2147483648), -33860i, i32(-2147483648), 1i, 1i, 0i, 1i, i32(-2147483648));

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(1i, 2147483647i, -60003i, 1i), vec4<i32>(2741i, 32987i, -34921i, -11510i), vec4<i32>(0i, 20710i, 0i, 0i), vec4<i32>(2147483647i, -1i, -1i, -34440i), vec4<i32>(i32(-2147483648), 1i, 1i, -24565i), vec4<i32>(-21745i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-41691i, -1i, 0i, 2147483647i), vec4<i32>(-71762i, 18635i, 11303i, 1844i), vec4<i32>(i32(-2147483648), 27826i, 2147483647i, -36047i), vec4<i32>(-1i, 0i, 0i, 1i), vec4<i32>(38312i, 2147483647i, 7391i, 67224i), vec4<i32>(19773i, i32(-2147483648), 26952i, -4831i), vec4<i32>(-1i, 2147483647i, 2147483647i, -25966i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.b.zwz);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = array<i32, 27>();
    let var_0 = -1932f;
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(arg_0.a, reverseBits(arg_0.a)));
    let var_2 = 54839u;
    var var_3 = (((-u_input.b.x >> (var_2 % 32u)) & -2147483647i) << (~(~arg_1) % 32u)) < 1i;
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = i32(-1i) * -arg_1.a.x;
    global2 = _wgslsmith_clamp_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c), _wgslsmith_div_u32(4294967295u, firstLeadingBit(_wgslsmith_mult_u32(u_input.c, 0u))) << ((u_input.c & 38663u) % 32u));
    var_0 = 27441i;
    let var_1 = u_input.a;
    let var_2 = u_input.c;
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.b.www);
    global0 = array<vec3<i32>, 10>();
    global3 = array<vec4<i32>, 13>();
    let var_1 = var_0;
    var var_2 = true;
    return func_4(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(func_2(), 1u, var_0)), arg_0.x), func_2(), -637f, Struct_1(~vec3<i32>(var_1.a.x | 1i, -30341i, firstLeadingBit(var_1.a.x))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<vec3<i32>, 10>();
    global0 = array<vec3<i32>, 10>();
    global0 = array<vec3<i32>, 10>();
    let var_0 = -151f;
    global0 = array<vec3<i32>, 10>();
    return vec3<u32>(abs(4294967295u), 20009u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 10>();
    var var_0 = 0u;
    let var_1 = Struct_1(vec3<i32>(firstTrailingBit(firstLeadingBit(~2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46096u, u_input.c, 0u, 36018u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, 1u, u_input.c), vec4<u32>(u_input.c, 3630u, u_input.c, 19610u)), ~(vec4<u32>(u_input.c, 1u, 0u, u_input.c) | vec4<u32>(u_input.c, u_input.c, 39305u, 26985u))), 27u)], firstLeadingBit(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(32491u, 27u)]))));
    var var_2 = var_1;
    var var_3 = ~select(~((vec3<u32>(3988u, u_input.c, 7684u) ^ vec3<u32>(1u, 1u, 19007u)) >> (vec3<u32>(u_input.c, u_input.c, 38881u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(18833u, u_input.c, 0u), ~vec3<u32>(4294967295u, u_input.c, u_input.c)) & func_5(0i, func_1(vec4<f32>(-458f, 1000f, 877f, -189f), false, var_1.a.xx), true, var_1), false);
    global2 = u_input.c;
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1223f, 499f, -838f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-242f, -269f, 833f), vec3<f32>(-219f, -1807f, 1145f))), vec3<f32>(449f, 205f, 1563f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, 378f, -943f))))), Struct_1(vec3<i32>(var_1.a.x, u_input.d, firstLeadingBit(2147483647i)) ^ u_input.b.zyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-556f, 100f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2809f - 399f))))), Struct_1(vec3<i32>(13950i, abs(i32(-1i) * -1i), 13042i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(600f, 1000f, 1691f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2250f, 1004f, -1005f) - vec3<f32>(796f, -1872f, -130f)))), vec3<f32>(-227f, _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(min(175f, 876f))), !(u_input.b.x != 9017i))))), ~abs(var_3.zy) << (vec2<u32>(~0u, (5305u | var_3.x) & u_input.c) % vec2<u32>(32u)), 17096u >> (~(u_input.c | _wgslsmith_clamp_u32(u_input.c, u_input.c, 50860u)) % 32u), var_3.zz);
}

