struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1598f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1021f, _wgslsmith_f_op_f32(429f + -225f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f + 445f)), -458f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a));
    var_0 = -1520f;
    var var_3 = Struct_2(arg_0, var_2, var_1);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_3.c.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1746f))), -818f))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec3<f32> {
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(false)));
    var var_1 = u_input.a.x;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 418f)), 358f))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f - _wgslsmith_f_op_f32(var_0.a.x + 624f))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-359f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0.a, vec3<bool>(true, true, true), vec4<u32>(u_input.c, u_input.c, 1u, 10112u))) - vec3<f32>(_wgslsmith_f_op_f32(1340f - var_0.a.x), -1000f, -689f))), Struct_1(var_0.a));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 604f) + 683f), 957f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1423f))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(789f * -559f), -121f, func_1(u_input.a))), _wgslsmith_f_op_f32(select(-232f, _wgslsmith_f_op_f32(361f + 1152f), false)), -896f) + vec3<f32>(_wgslsmith_f_op_f32(-1506f + _wgslsmith_f_op_f32(1000f + 353f)), _wgslsmith_f_op_f32(round(-1154f)), _wgslsmith_f_op_f32(906f - 1000f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), 250f))), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f + _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(var_0.x, var_0.x, -885f), vec3<bool>(false, true, true), vec4<u32>(1u, 4294967295u, 1172u, 6611u))).x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, true), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c))).x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_div_f32(126f, 343f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, -110f)), 768f, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-511f, 210f, true)), 1000f, 1000f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, var_0.x)) + _wgslsmith_f_op_vec3_f32(func_2(true)).x), -1352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), true)));
    let var_2 = u_input.c;
    let var_3 = u_input.b;
    let var_4 = Struct_2(any(vec2<bool>(false, true != any(vec2<bool>(false, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2713f, -1322f) + vec3<f32>(1098f, var_0.x, 796f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 346f, var_0.x), vec3<f32>(1412f, -293f, -1122f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, 874f, 162f) - vec3<f32>(2555f, 1820f, -308f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1506f, var_1) + vec3<f32>(-301f, -679f, -979f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(((vec4<u32>(u_input.c, u_input.c, 0u, 0u) | _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, u_input.c), vec4<u32>(0u, var_2, 56472u, 3457u))) >> (vec4<u32>(0u, _wgslsmith_sub_u32(var_2, 0u), u_input.c, 34374u) % vec4<u32>(32u))) >> (~vec4<u32>(firstTrailingBit(var_2), 0u | var_2, var_2, 53523u) % vec4<u32>(32u)), 39701i, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.b.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1885f, -1271f, -1000f))), select(select(vec3<bool>(var_4.a, var_4.a, true), vec3<bool>(var_4.a, false, var_4.a), var_4.a), !vec3<bool>(true, var_4.a, true), vec3<bool>(true, true, select(false, true, var_4.a))), vec4<u32>(u_input.c, 4294967295u, 27334u, _wgslsmith_mult_u32(u_input.c, reverseBits(var_2))))).x, 1i);
}

