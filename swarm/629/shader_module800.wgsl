struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<i32>(-1i, 0i, -16902i, -28584i)), Struct_1(vec4<i32>(0i, -47257i, 22190i, 121i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 43553i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, 8441i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1031i)), Struct_1(vec4<i32>(-1i, 0i, 49160i, -1i)), Struct_1(vec4<i32>(1i, 36797i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 0i, 1i, 8561i)), Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 12717i)), Struct_1(vec4<i32>(1i, 5514i, 0i, 1i)));

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    global1 = arg_3.x;
    var var_0 = -(_wgslsmith_mult_vec3_i32(~abs(vec3<i32>(u_input.a, u_input.a, 1i)), vec3<i32>(1799i, u_input.a << (arg_2 % 32u), 1i)) ^ ~(-vec3<i32>(u_input.a, -3621i, u_input.a)));
    global0 = array<Struct_1, 11>();
    var var_1 = ~0u;
    var_1 = ~arg_2;
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-522f, _wgslsmith_div_f32(1280f, -1114f)), 1392f)));
    global0 = array<Struct_1, 11>();
    let var_1 = Struct_5(Struct_2(Struct_1(-vec4<i32>(32473i, -6807i, u_input.a, 38884i)), global0[_wgslsmith_index_u32(1u, 11u)]), Struct_3(vec4<u32>(_wgslsmith_clamp_u32(0u, 0u, arg_3), 1u, u_input.b, 3630u), Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23606i, 1i), arg_1), arg_1.x >> (1u % 32u), 1i, func_1(Struct_4(vec2<f32>(var_0, var_0)), vec3<f32>(1404f, var_0, var_0), 1147u, vec3<bool>(false, arg_0, arg_0)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(arg_3 & u_input.b), arg_3 & 0u), 11u)], Struct_1(-firstLeadingBit(vec4<i32>(1013i, -2147483647i, arg_1.x, u_input.a)))), abs(vec3<u32>(~47085u, u_input.b, firstLeadingBit(4294967295u))), firstTrailingBit(arg_2.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * 1766f)), _wgslsmith_f_op_f32(-227f * _wgslsmith_f_op_f32(f32(-1f) * -1134f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(604f, 993f))) * _wgslsmith_f_op_f32(-var_0)));
    global1 = !(arg_0 || !all(vec2<bool>(false, false)));
    return Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1924f), _wgslsmith_f_op_f32(f32(-1f) * -314f)), vec2<f32>(_wgslsmith_f_op_f32(select(1401f, _wgslsmith_f_op_f32(-1330f - 852f), arg_0 && false)), -255f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), vec3<bool>(u_input.a >= u_input.a, false, true), true)), _wgslsmith_sub_vec2_i32(vec2<i32>(-5840i, _wgslsmith_sub_i32(2147483647i, 32670i)), firstTrailingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(38390i, u_input.a), vec2<i32>(-21369i, u_input.a)))), min(~(~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, -38017i), vec4<i32>(u_input.a, u_input.a, u_input.a, -51178i)), u_input.a, 0i | u_input.a), -func_1(Struct_4(vec2<f32>(1256f, 928f)), vec3<f32>(-749f, -1150f, -589f), u_input.b, vec3<bool>(true, true, true)))), firstTrailingBit(u_input.b));
    global0 = array<Struct_1, 11>();
    global1 = all(vec4<bool>(true, true, true, true));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(sign(627f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstLeadingBit(vec2<u32>(u_input.b, u_input.b)) | ~vec2<u32>(u_input.b, u_input.b)), var_2, _wgslsmith_f_op_f32(f32(-1f) * -408f));
}

