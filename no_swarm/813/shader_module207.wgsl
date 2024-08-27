struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(353f), Struct_2(1000f), Struct_2(-1000f), Struct_2(1435f), Struct_2(244f), Struct_2(244f), Struct_2(-1565f), Struct_2(1018f), Struct_2(737f), Struct_2(465f), Struct_2(-666f), Struct_2(-1000f), Struct_2(1210f), Struct_2(-969f), Struct_2(-1059f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1688f + 147f))))));
    global0 = _wgslsmith_f_op_f32(round(-2781f));
    global1 = array<Struct_2, 15>();
    var var_0 = u_input.a.yww;
    let var_1 = ~u_input.a;
    return true || !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(589f)), -444f), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-649f, -272f) * vec2<f32>(-762f, 792f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(593f, 871f) * vec2<f32>(-333f, 1336f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -1000f), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-150f + var_0.x)))))));
    global0 = -1364f;
    let var_2 = all(arg_1);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1f)))));
    return -930f;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), -u_input.b.x, ~(~u_input.a.x))) - _wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(min(1105f, _wgslsmith_f_op_f32(f32(-1f) * -1059f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f), -1003f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1543f), 1f))))));
    let var_1 = vec4<bool>(true, select(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), true), any(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), -188f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(573f + -957f)))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    global1 = array<Struct_2, 15>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_2.a)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(943f, 1206f) - vec2<f32>(var_2.a, var_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * -200f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec4<bool>(any(vec3<bool>(true, true, true)), true, true, any(vec2<bool>(true, false))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), true), vec4<bool>(select(false, any(vec4<bool>(true, false, true, false)), true), any(vec2<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, true)))), false, all(vec3<bool>(true, true, false)) & true), vec4<bool>(false, !func_1(), select(true, !all(vec2<bool>(true, false)), func_1()), false));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -832f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_0, !(!vec3<bool>(var_0.x, true, true)), (u_input.b.x | u_input.b.x) | -18182i, u_input.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_3 = vec3<f32>(var_1.a, _wgslsmith_f_op_f32(func_2(var_0, select(select(var_0.xzy, vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), vec3<bool>(var_0.x & var_0.x, var_0.x, false), var_0.ywz), u_input.b.x, ~u_input.a.x)), var_1.a);
    var var_4 = Struct_1(!(!(_wgslsmith_f_op_f32(var_3.x * var_3.x) > var_1.a)));
    global1 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(((-714i << (u_input.a.x % 32u)) ^ u_input.b.x) | -1i, u_input.b.x), vec4<u32>(firstLeadingBit(~u_input.a.x), 1u, 14079u, firstTrailingBit(~1u)) | u_input.a, countOneBits(4294967295u >> (reverseBits(~u_input.a.x) % 32u)), _wgslsmith_f_op_vec3_f32(var_3 + vec3<f32>(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(var_3.x, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, var_1.a)) * var_3.x), _wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(var_3.x - 1000f)))));
}

