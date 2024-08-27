struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 114f;

var<private> global1: array<f32, 15> = array<f32, 15>(-490f, 386f, 998f, -624f, 637f, -1000f, -136f, 186f, 1374f, -719f, 1097f, -1674f, -2786f, -234f, -392f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = select(~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(max(~1u, ~(~0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 100235u, 0u)), ~1u, ~(~1u)), select(arg_0, vec4<bool>(arg_0.x, arg_0.x, !(!arg_0.x), true), select(!arg_0, arg_0, arg_0)));
    global1 = array<f32, 15>();
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) * _wgslsmith_f_op_f32(ceil(-1087f)))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.x, ~var_0.x), 15u)]), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)]))), 390f), vec2<f32>(_wgslsmith_f_op_f32(1679f * -185f), global1[_wgslsmith_index_u32(var_0.x, 15u)])));
    let var_2 = -24165i;
    let var_3 = !(!(!(!arg_0.x)));
    return select(vec2<i32>(arg_1, 7251i), min(-(~u_input.b & reverseBits(vec2<i32>(u_input.b.x, arg_1))), arg_2), vec2<bool>(false, all(arg_0.zwy)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(func_3(vec4<bool>(true, true, false, true), -1i, u_input.b, Struct_2(arg_0.x))), -(~vec2<i32>(arg_0.x, u_input.a))), ~firstTrailingBit(vec2<i32>(arg_0.x, -38567i))));
    let var_1 = func_3(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), select(true, true, true) != ((var_0.x << (65019u % 32u)) < -var_0.x)), abs(1i), vec2<i32>(abs(firstTrailingBit(-1i)), arg_0.x), Struct_2(u_input.c));
    let var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(31913u, 0u, 0u, 0u), arg_1.a ^ arg_1.a), vec4<u32>(_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x & 14842u), arg_1.a.x, 64945u, arg_1.a.x)), 15u)]);
    var var_3 = 0u;
    global0 = var_2;
    return Struct_3(arg_1.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = func_2(u_input.d.zy, Struct_3(abs(arg_0)));
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    var var_1 = ~(~var_0.a.yzy) << (var_0.a.ywx % vec3<u32>(32u));
    let var_2 = vec2<u32>(countOneBits(1u), _wgslsmith_add_u32(~(~0u), abs(arg_2)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(1266f, 148f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1811f + 578f), -349f) * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 15u)], 1873f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(1046f * -850f)), -1006f, 1020f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1366f * _wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 15u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 15u)] - global1[_wgslsmith_index_u32(8253u, 15u)]), _wgslsmith_f_op_f32(sign(1268f))) + global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(42110u, 1u), 15u)]), 1049f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(1u, 1u, 1u, 1u), ~5040u, ~1u, Struct_4(Struct_1(true, 2147483647i, true), -958f, u_input.d, 19558u))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -759f, global1[_wgslsmith_index_u32(18412u, 15u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 648f, 583f), vec3<bool>(false, true, true))))))));
    var var_1 = true;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~23056u, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-894f - _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(trunc(-132f)));
    global0 = -761f;
    var var_2 = ~(vec2<u32>(1u, 1u) | abs(_wgslsmith_div_vec2_u32(select(vec2<u32>(99044u, 35461u), vec2<u32>(0u, 69019u), false), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(21885u, 69737u)))));
    global1 = array<f32, 15>();
    var var_3 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(2526u, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), 5982u), var_2.x), _wgslsmith_add_vec2_u32(vec2<u32>((4294967295u & var_2.x) >> (var_2.x % 32u), _wgslsmith_clamp_u32(var_2.x << (18274u % 32u), ~var_2.x, var_2.x)), vec2<u32>(var_2.x, var_2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1077f * var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(754f)), _wgslsmith_f_op_f32(433f * 687f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, _wgslsmith_f_op_f32(round(-577f)), _wgslsmith_f_op_f32(1163f + var_0.x)))), -u_input.b.x, 0u);
}

