struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1i), Struct_1(-1885i), Struct_1(-16922i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-78892i), Struct_1(-44949i), Struct_1(-1i), Struct_1(0i), Struct_1(3678i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(9101i), Struct_1(21464i), Struct_1(0i), Struct_1(-29606i), Struct_1(-112182i), Struct_1(i32(-2147483648)), Struct_1(-3502i), Struct_1(-3294i), Struct_1(2147483647i), Struct_1(-9633i), Struct_1(6840i), Struct_1(42092i), Struct_1(-1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1312f, 2009f, -243f, -138f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-352f, 2230f, -1000f, -536f), vec4<f32>(1711f, 785f, -1000f, 211f), vec4<bool>(false, false, false, true))) * vec4<f32>(-148f, -828f, 669f, -652f))), _wgslsmith_div_vec4_f32(vec4<f32>(2326f, -1683f, _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(325f + -214f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1053f, -508f, -548f, 447f)))))));
    global1 = array<Struct_1, 25>();
    return global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 25u)];
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = func_2(arg_1);
    let var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), arg_2));
    global1 = array<Struct_1, 25>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1487f, arg_2.x, 1000f), vec3<f32>(var_1, -846f, 1373f), select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, arg_0)))))) - arg_2.xxz));
    return Struct_1(-31243i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1132f)), -993f)))));
    var var_1 = global1[_wgslsmith_index_u32(~0u, 25u)];
    global1 = array<Struct_1, 25>();
    var var_2 = any(select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, false)), vec4<bool>(_wgslsmith_f_op_f32(var_0 * -1129f) != var_0, !any(vec4<bool>(true, false, true, true)), !select(false, false, false), !(1i > var_1.a)), vec4<bool>(true, _wgslsmith_div_f32(var_0, -690f) <= 412f, true, true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1306f, var_0)) * 1249f), -1882f, any(vec2<bool>(false, false)))), 433f)) * _wgslsmith_f_op_f32(step(-202f, _wgslsmith_f_op_f32(-var_0))));
    return StorageBuffer(vec4<f32>(var_0, _wgslsmith_f_op_f32(1029f * -1313f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2212f, var_0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(trunc(-763f)))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41840u;
    global1 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), 1f)))));
    let var_2 = global1[_wgslsmith_index_u32(var_0, 25u)];
    global1 = array<Struct_1, 25>();
    global0 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(57460u, 1u), ~max(u_input.a, 65856u))), 25u)];
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = func_3(func_1(false, Struct_1(~countOneBits(u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(ceil(-1374f)), -501f, -481f), u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a), 25u)]);
}

