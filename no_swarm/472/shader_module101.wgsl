struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(432f - _wgslsmith_f_op_f32(-134f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b)))))));
    let var_1 = arg_0;
    var var_2 = Struct_2(true, false);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.b))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))));
    return arg_0.c;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> i32 {
    return abs(func_3(Struct_1(!vec2<bool>(arg_2.b, false), 471f, ~arg_0), false)) | _wgslsmith_mult_i32(arg_0, -20160i);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = select(vec2<bool>(all(!vec2<bool>(arg_0.b, false)) & (_wgslsmith_sub_i32(1i, 2147483647i) != u_input.c), !(arg_2.x < _wgslsmith_f_op_f32(exp2(arg_2.x)))), select(!(!(!vec2<bool>(arg_0.b, false))), !vec2<bool>(any(vec4<bool>(true, false, arg_0.a, false)), !arg_0.a), all(select(!vec2<bool>(arg_0.a, arg_0.b), vec2<bool>(true, true), !vec2<bool>(false, arg_0.b)))), !(!arg_0.b));
    var var_1 = Struct_1(!select(vec2<bool>(false, all(var_0)), !var_0, _wgslsmith_f_op_f32(round(arg_2.x)) > -167f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(arg_1.x + -1335f)) * arg_1.x), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, -5562i) << (~u_input.b.yy % vec2<u32>(32u)), ~vec2<i32>(u_input.c, u_input.c)));
    let var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~(u_input.a | u_input.d.x), u_input.a), u_input.d);
    let var_3 = select(select(!select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, var_0.x, arg_0.a, true), all(vec3<bool>(var_0.x, var_1.a.x, true))), select(!(!vec4<bool>(true, false, var_0.x, false)), !(!vec4<bool>(false, var_1.a.x, var_0.x, var_0.x)), u_input.c >= func_2(24956i, u_input.b.xzx, Struct_2(var_1.a.x, true))), vec4<bool>(arg_0.b, true, all(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, arg_0.b), false)), false)), !select(!vec4<bool>(var_1.a.x, false, true, var_1.a.x), !(!vec4<bool>(true, true, var_0.x, var_1.a.x)), vec4<bool>(false, true, true, false)), select(vec4<bool>(var_1.a.x, all(vec2<bool>(var_1.a.x, var_1.a.x)), all(vec2<bool>(false, var_0.x)), select(var_2.x >= var_2.x, var_0.x, var_0.x & true)), vec4<bool>(var_0.x, arg_0.b, !var_1.a.x, var_1.a.x), var_1.a.x));
    let var_4 = Struct_2(any(!var_0), !(!select(true, true, var_3.x)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-152f, 718f, -854f, -1072f);
    let var_1 = firstTrailingBit(-select(-vec3<i32>(u_input.c, u_input.c, 2147483647i), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 1i, -32292i), vec3<i32>(-2147483647i, 1i, -32482i))), vec3<bool>(any(vec2<bool>(false, true)), true, u_input.b.x <= u_input.d.x)));
    let var_2 = 247f;
    var var_3 = var_0.wwy;
    var var_4 = var_0.wyy;
    let var_5 = -_wgslsmith_mult_i32(-func_1(Struct_2(false, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2213f, var_4.x))), var_0.xw), max(-(~(-1i)), -2147483647i));
    var var_6 = firstTrailingBit(firstTrailingBit(firstTrailingBit(u_input.d.x | ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, -var_1.zx, u_input.d.x);
}

