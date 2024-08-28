struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_1.x;
    let var_1 = vec4<bool>(true, arg_0.a || any(vec4<bool>(any(vec4<bool>(false, true, true, false)), !arg_0.a, true, !arg_0.a)), false, any(!(!select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), true))));
    var var_2 = select(!var_1, var_1, any(var_1));
    var_2 = var_1;
    var var_3 = ~vec3<u32>(_wgslsmith_add_u32(countOneBits(max(1u, 1453u)), _wgslsmith_mult_u32(~59546u, 0u)), ~_wgslsmith_add_u32(u_input.d.x, 1u), firstTrailingBit(57296u));
    return var_1;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(select(true, !(u_input.c < (1u ^ u_input.d.x)), false));
    var_0 = Struct_1(!(u_input.a == 2147483647i));
    var_0 = Struct_1(any(!func_3(Struct_1(var_0.a), vec2<f32>(-125f, 822f))));
    var var_1 = min(_wgslsmith_div_i32(2147483647i, 15091i), 3558i);
    var var_2 = firstLeadingBit(abs(abs(u_input.d.x)));
    return Struct_1(!(false | ((arg_0 <= arg_0) | var_0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-1242f, 720f);
    var var_1 = arg_0;
    let var_2 = 2380u;
    return arg_0.c.a;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 169f, _wgslsmith_f_op_f32(-1f), arg_0));
    var var_1 = Struct_2(Struct_1(true), func_4(Struct_3(-(i32(-1i) * -35855i), func_2(0u), Struct_2(Struct_1(true), func_2(u_input.d.x)), countOneBits(vec4<i32>(-1043i, -29680i, -1i, u_input.b.x)) | vec4<i32>(u_input.b.x, 1i, 38131i, 1i)), _wgslsmith_f_op_f32(trunc(278f)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, u_input.a), u_input.a, -117704i), _wgslsmith_mult_i32(0i, 1i)), var_0.xx));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)), -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), 1346f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(arg_0)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 874f, 1192f, arg_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, -316f, -466f, -1311f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = func_2(countOneBits(select(u_input.c, 4294967295u, !all(vec3<bool>(false, false, var_1.a.a)))));
    return -(~(-22877i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-506f, 1825f), -679f, false))), -1625f))));
    let var_1 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, false)))) | (_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * -674f)))) >= 211f);
    let var_2 = ~(-21249i);
    var var_3 = ~func_1(_wgslsmith_div_f32(var_0, 1840f));
    let var_4 = Struct_2(Struct_1(!any(!vec2<bool>(false, var_1))), Struct_1(true));
    let var_5 = vec4<bool>(!any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(var_0 - var_0) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0))), false);
    let var_6 = u_input.b.x > -1i;
    var_3 = reverseBits(-(i32(-1i) * -2147483647i));
    var var_7 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(28045u, u_input.d.x), firstTrailingBit(u_input.c), u_input.d.x, u_input.c & max(44201u, u_input.d.x)), max(vec4<u32>(u_input.d.x, 20389u, _wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.c), u_input.c), firstTrailingBit(vec4<u32>(u_input.c, 8737u, 42176u, 14999u) << (vec4<u32>(1u, 1u, 36097u, u_input.c) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(550f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))))));
}

