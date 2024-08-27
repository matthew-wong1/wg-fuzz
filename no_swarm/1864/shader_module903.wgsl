struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<bool>(true, false, false, false), 617f, 106f, vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), -659f, -1103f, vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, false, false), 1620f, -1136f, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, false), -970f, -896f, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, false), 1214f, 487f, vec2<bool>(true, false)), Struct_1(vec4<bool>(true, false, false, false), -1000f, 956f, vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, false, true), -1073f, 586f, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, true, true), -1000f, 930f, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, false, true, false), -870f, 1000f, vec2<bool>(false, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b - arg_0.b), _wgslsmith_f_op_f32(-arg_0.b)) + arg_0.b)) <= 151f;
    let var_2 = u_input.c.x;
    var_0 = u_input.c.x;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(~(-2147483647i), firstLeadingBit(u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(17752i, -37197i, u_input.b), vec3<i32>(1i, u_input.b, u_input.a))), u_input.b), firstTrailingBit(firstTrailingBit(-3826i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -393f, arg_0.b, arg_0.c) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, arg_0.b, 429f, arg_0.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, 1413f, -1000f, 433f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, -1907f) - vec4<f32>(arg_0.b, arg_0.b, arg_0.b, 1004f)))))));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return global0[_wgslsmith_index_u32(56105u, 9u)];
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1475f + -1679f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f + -527f) + _wgslsmith_f_op_f32(518f - 1829f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(890f, 932f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1141f, -839f)))))));
    let var_1 = func_2(_wgslsmith_mult_i32(firstLeadingBit(0i), -1i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(2011f - 123f), _wgslsmith_f_op_f32(min(var_0.x, -326f)), -2606f)))));
    global0 = array<Struct_1, 9>();
    let var_2 = var_1.d.x;
    global0 = array<Struct_1, 9>();
    return func_2(firstLeadingBit(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, -287f, -538f, var_1.c) * vec4<f32>(-1000f, 1686f, var_1.c, 149f)))), vec4<f32>(-495f, _wgslsmith_div_f32(273f, 144f), _wgslsmith_f_op_f32(-184f * 397f), 1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1000f, var_1.b, var_1.c)) + vec4<f32>(var_0.x, 1049f, 407f, -259f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<bool>(false, true, true, true), -1597f, 1014f, vec2<bool>(false, true))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(func_3(vec4<u32>(u_input.c.x, u_input.c.x, 36382u, u_input.c.x)))).xxz;
    let var_2 = _wgslsmith_clamp_i32(~abs(u_input.b), 8236i, 38236i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(-521f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 9u)];
    var_0 = Struct_1(select(vec4<bool>(all(var_0.a), true, false, true), !(!(!var_0.a)), var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)), var_0.c, var_0.a.ww);
    var_0 = func_2(-abs(2147483647i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1120f, -460f, -1055f, _wgslsmith_div_f32(var_3, var_3))))));
    var_0 = Struct_1(func_2(abs(~u_input.b | firstTrailingBit(2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_3, var_3, 1056f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -348f, var_1.x, -988f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-768f, var_3, -888f, -324f)))))).a, var_3, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) - _wgslsmith_f_op_f32(step(768f, -746f)))), 527f), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-1198f * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -1120f)), _wgslsmith_f_op_f32(select(1f, var_0.c, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_1.x))))), ~(firstLeadingBit(vec4<i32>(-2147483647i, 32351i, var_2, 0i)) & (vec4<i32>(-1i) * -vec4<i32>(1i, 17014i, 2147483647i, var_2))), _wgslsmith_f_op_f32(abs(-733f)), 177f, var_1.x);
}

