struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -764f, -990f, -1165f)))))), 77236u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) + 912f))), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = ~(~abs(~_wgslsmith_add_u32(arg_2.b, arg_1)));
    let var_1 = !vec4<bool>(arg_2.d.x, true, false, !all(select(arg_2.d, arg_2.d, vec2<bool>(true, arg_2.d.x))));
    let var_2 = ~(~countOneBits(arg_0.b & abs(49320u)));
    var var_3 = arg_2;
    let var_4 = arg_0.c;
    return arg_2.c;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(-601f))), arg_0) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1675f, 369f, arg_1.x, 949f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-718f + -1000f), arg_0, arg_0) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -155f), 1000f, _wgslsmith_f_op_f32(select(-1269f, 1772f, true)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-838f, arg_1.x, -1246f, arg_0))))))));
    var var_2 = arg_1.x;
    let var_3 = vec4<bool>(true, true, false, any(vec4<bool>(select(true, u_input.a.x <= 6742u, any(vec3<bool>(true, false, false))), true, true, !(-27433i >= u_input.b))));
    var_0 = arg_1.x;
    return _wgslsmith_mult_vec3_i32(-(abs(-vec3<i32>(18742i, u_input.b, -2147483647i)) & vec3<i32>(countOneBits(1i), select(u_input.b, -2147483647i, false), u_input.b)), vec3<i32>(u_input.b, u_input.b, firstTrailingBit(~u_input.b)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = func_2();
    var var_1 = reverseBits(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(var_0.c, arg_0.a.x, 139f, -140f), var_0.b, -1296f, arg_0.d), u_input.a.x, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, var_0.a.x, 1597f)))))));
    let var_2 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_2.a)), var_2.b, 775f, func_2().d);
    return _wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1457f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f * -420f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2193f * 485f))) * _wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-1000f, -263f, 1062f, 827f), u_input.a.x, 817f, vec2<bool>(false, false)), _wgslsmith_div_f32(231f, -152f), _wgslsmith_sub_i32(u_input.b, 31262i)))), 571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-785f * -241f), 975f)))), u_input.a.x >> (u_input.a.x % 32u), -308f, vec2<bool>(true, true));
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = ~firstTrailingBit(1u);
    var_1 = Struct_1(var_2.a, ~var_2.b, -610f, !var_1.d);
    var_1 = var_2;
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, ~1u), var_0.b, 23546u, 4294967295u);
    let var_5 = select(select(!select(select(vec4<bool>(var_2.d.x, false, true, false), vec4<bool>(false, true, false, var_2.d.x), var_0.d.x), !vec4<bool>(var_0.d.x, var_1.d.x, true, false), vec4<bool>(true, var_1.d.x, var_2.d.x, var_2.d.x)), select(!vec4<bool>(var_1.d.x, true, false, var_1.d.x), !(!vec4<bool>(var_2.d.x, false, var_0.d.x, true)), select(select(vec4<bool>(var_0.d.x, var_0.d.x, true, false), vec4<bool>(true, var_0.d.x, var_0.d.x, var_2.d.x), vec4<bool>(var_0.d.x, var_1.d.x, var_0.d.x, false)), vec4<bool>(var_0.d.x, var_1.d.x, false, var_0.d.x), all(vec3<bool>(false, var_1.d.x, false)))), var_0.d.x), !select(!select(vec4<bool>(var_2.d.x, var_1.d.x, var_2.d.x, var_2.d.x), vec4<bool>(var_0.d.x, var_2.d.x, var_2.d.x, var_1.d.x), false), select(!vec4<bool>(false, var_0.d.x, var_1.d.x, var_0.d.x), vec4<bool>(true, false, false, var_2.d.x), var_2.d.x), var_1.d.x), !vec4<bool>(!var_1.d.x, var_2.c <= _wgslsmith_f_op_f32(abs(133f)), true, func_2().d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b << (_wgslsmith_add_u32(var_2.b << (92007u % 32u), 0u) % 32u), ~u_input.b, ~(-(~_wgslsmith_clamp_i32(u_input.b, u_input.b, -28064i))), -181f, abs(30531u));
}

