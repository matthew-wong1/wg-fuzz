struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = select(select(select(!(!vec4<bool>(global1.a, true, false, false)), !(!vec4<bool>(arg_1.a, true, true, arg_1.a)), (u_input.a.x >= u_input.a.x) && true), vec4<bool>(global1.a, true, any(vec4<bool>(arg_1.a, global1.a, false, global1.a)), global1.a), global1.a), !(!vec4<bool>(arg_1.a, arg_1.a & true, false, global1.a)), arg_1.a);
    global1 = Struct_1(!(false || arg_1.a), _wgslsmith_f_op_vec4_f32(-arg_0));
    let var_1 = countOneBits(abs(abs(-abs(vec4<i32>(-2147483647i, 34614i, -14447i, 1i)))));
    let var_2 = u_input.a.zy;
    global1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-678f, -2024f, global1.b.x, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(2089f, arg_1.b.x, arg_1.b.x, -732f), vec4<f32>(arg_1.b.x, arg_1.b.x, global1.b.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1406f, global1.b.x, 216f, global1.b.x)), !vec4<bool>(var_0.x, arg_1.a, true, false))))))));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + -494f)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 208f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, arg_0.x)))))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(!global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, vec4<bool>(true, false, global1.a, true))))))));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.b));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * -195f), _wgslsmith_f_op_f32(round(1000f)), var_1.b.x, -1774f), Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(var_1.b - global1.b)))) - vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-702f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) + _wgslsmith_div_f32(var_0.b.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -239f))));
    let var_2 = true;
    global1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, arg_0.x, 1965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, 946f, var_1.b.x, var_0.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1355f, 1000f, arg_0.x, global1.b.x), global1.b, vec4<bool>(var_1.a, var_0.a, global1.a, var_1.a))))))));
    return Struct_1(!(u_input.a.x > 3216u), global1.b);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    global1 = Struct_1(false, global1.b);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 1445f))), _wgslsmith_f_op_f32(-622f - -376f), _wgslsmith_f_op_f32(-global1.b.x), global1.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2409f, -1242f, 846f, global1.b.x), _wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(global1.b.x, -584f, global1.b.x, -1243f))) * global1.b)));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), var_1.b.x, global1.b.x, -614f))));
    var var_3 = Struct_1(global1.a, vec4<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1387f)), global1.b.x), 911f, -1111f));
    return Struct_1(false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), 1000f), var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(min(1396f, var_1.b.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = arg_0.b.zzy;
    let var_1 = 1731f;
    let var_2 = ~_wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1729u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 31548u, u_input.a.x))), 62878u);
    let var_3 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_1.a), global1.a)), select(select(select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_2.a, true), vec2<bool>(true, true)), !vec2<bool>(arg_2.a, false), !vec2<bool>(arg_0.a, arg_2.a)), vec2<bool>(arg_2.b.x > -1505f, all(vec2<bool>(global1.a, false))), all(select(vec4<bool>(true, true, false, arg_1.a), vec4<bool>(arg_0.a, global1.a, false, global1.a), vec4<bool>(global1.a, false, arg_0.a, false)))), vec2<bool>(true, true)), !select(vec2<bool>(true, arg_0.a), vec2<bool>(true || arg_1.a, true), vec2<bool>(false | arg_2.a, true)), global1.a);
    var var_4 = vec2<i32>(-27166i, 0i) >> (firstTrailingBit(~vec2<u32>(~u_input.a.x, u_input.a.x)) % vec2<u32>(32u));
    return ~vec2<i32>(max(_wgslsmith_add_i32(~0i, var_4.x), _wgslsmith_add_i32(~var_4.x, select(var_4.x, var_4.x, arg_1.a))), firstLeadingBit(var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, func_4(func_1(vec3<u32>(0u, firstTrailingBit(u_input.a.x), ~46139u)), func_1(u_input.a), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -237f) * vec4<f32>(global1.b.x, -1320f, -1895f, global1.b.x)) + _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(global1.b.x, -129f, global1.b.x, 1406f))))), vec4<f32>(_wgslsmith_f_op_f32(-929f + global1.b.x), global1.b.x, global1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(1f))))));
}

