struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 554f;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 11468i));

var<private> global2: vec2<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(countOneBits(~(-vec2<i32>(global1.a.x, arg_0.x))), vec2<i32>(-arg_0.x, -global1.a.x)));
    var var_1 = Struct_1(-(~vec2<i32>(arg_0.x, _wgslsmith_mult_i32(var_0.a.x, global1.a.x))));
    let var_2 = Struct_1(firstTrailingBit(var_1.a));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_f32(floor(arg_2)))));
    global0 = -413f;
    return vec2<i32>(var_0.a.x, global1.a.x);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_1(firstTrailingBit(-func_3(vec2<i32>(global1.a.x, global1.a.x), vec3<bool>(global2.x, arg_1, global2.x), _wgslsmith_div_f32(-2363f, -1586f))));
    var var_1 = Struct_1(-(vec2<i32>(3847i, select(arg_0, 1i, arg_1)) & global1.a));
    var var_2 = Struct_1(countOneBits(global1.a));
    var_0 = Struct_1(var_0.a);
    var var_3 = ~_wgslsmith_add_vec2_u32(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 44213u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(18979u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 13383u))), select(vec2<bool>(arg_1, true), select(vec2<bool>(true, true), vec2<bool>(global2.x, true), false), !vec2<bool>(true, global2.x))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 6684u), ~vec2<u32>(u_input.a, 1u)));
    return firstTrailingBit(var_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(f32(-1f) * -113f));
    var var_0 = func_4(Struct_1(vec2<i32>(func_2(global1.a.x, global2.x, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -973f))), global1.a.x)), true, Struct_1(vec2<i32>(global1.a.x, -50101i)));
    let var_1 = ~(~1u);
    global1 = arg_1;
    global1 = Struct_1(countOneBits(var_0.a));
    return func_4(Struct_1(vec2<i32>(~abs(global1.a.x), max(arg_1.a.x, -var_0.a.x))), select(any(!vec3<bool>(global2.x, global2.x, global2.x)) || global2.x, !all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_add_u32(~u_input.a, abs(u_input.a)) >= abs(~4294967295u)), Struct_1(arg_1.a));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = arg_2;
    var var_0 = ~((~firstLeadingBit(vec4<u32>(u_input.a, arg_1, 1u, u_input.a)) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 20926u, u_input.a, 1u), vec4<u32>(u_input.a, 1139u, 61721u, 0u))) >> (firstTrailingBit(vec4<u32>(1u, 24655u, ~arg_1, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = vec4<i32>(global1.a.x, i32(-1i) * -40772i, global1.a.x, i32(-1i) * -2147483647i);
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(831f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(452f)), 2459f))))), Struct_1(~((vec2<i32>(global1.a.x, global1.a.x) ^ vec2<i32>(arg_2.a.x, 41457i)) << (vec2<u32>(arg_1, var_0.x) % vec2<u32>(32u)))));
    global1 = func_4(Struct_1(vec2<i32>(-23420i, arg_2.a.x)), select(true, true, true), Struct_1(~var_1.xw));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1025f + 864f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-208f, -1273f))), _wgslsmith_div_f32(-642f, _wgslsmith_f_op_f32(step(523f, 1009f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(global2.x | global2.x, 1u, func_1(1582f, Struct_1(vec2<i32>(1i, 3236i))))), _wgslsmith_f_op_f32(round(-469f)))));
    let var_0 = !all(!select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, false), global2.x), vec3<bool>(true, global2.x, true), !vec3<bool>(false, global2.x, global2.x)));
    let var_1 = Struct_1(global1.a ^ global1.a);
    global2 = vec2<bool>(var_0, true);
    let var_2 = ~(~min(~(~vec3<u32>(1u, u_input.a, u_input.a)), abs(select(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(6167u, 55172u, 1u), vec3<bool>(global2.x, false, true)))));
    let var_3 = 1229f;
    let var_4 = (!var_0 && (!all(vec3<bool>(global2.x, var_0, global2.x)) & true)) | (~(i32(-1i) * -26732i) == (i32(-1i) * -func_4(var_1, false, var_1).a.x));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

