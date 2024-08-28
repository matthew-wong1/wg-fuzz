struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> vec4<u32> {
    global0 = array<vec3<i32>, 18>();
    var var_0 = 5678u;
    var var_1 = ~(u_input.a & ~(~(~u_input.a)));
    var var_2 = -1048f;
    var var_3 = vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(trunc(arg_3.x)));
    return select(firstTrailingBit(vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(var_1.x, u_input.b), ~firstTrailingBit(40677u), ~1u)), ~(~(~vec4<u32>(10600u, u_input.b, u_input.b, 1u))), (arg_1.e >= _wgslsmith_f_op_f32(-arg_3.x)) | !arg_2.a);
}

fn func_3() -> vec3<f32> {
    let var_0 = 1u;
    let var_1 = Struct_3(false, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), true, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)));
    let var_2 = select(global0[_wgslsmith_index_u32(var_0, 18u)], ~(global0[_wgslsmith_index_u32(u_input.b, 18u)] & (vec3<i32>(-2147483647i, 0i, 19233i) >> (max(vec3<u32>(u_input.a.x, u_input.b, var_0), vec3<u32>(54662u, u_input.b, 29819u)) % vec3<u32>(32u)))), false);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-727f * 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1032f - 1087f), _wgslsmith_div_f32(674f, 710f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(-1313f + _wgslsmith_f_op_f32(abs(-218f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) - 1f)));
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(1000f * 1059f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1472f - _wgslsmith_div_f32(1819f, -2171f)))), _wgslsmith_f_op_f32(abs(1000f)), any(select(select(var_1.b.zx, vec2<bool>(true, true), !var_1.b.x), var_1.b.yx, var_1.b.xz))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(254f)) * _wgslsmith_f_op_f32(f32(-1f) * -231f)))), -846f, -314f);
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(1i, vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2049f) * -950f)), -286f, -188f), -vec2<i32>(1i, 1i), -939f);
    global0 = array<vec3<i32>, 18>();
    var var_1 = var_0.b;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-852f)))), -585f)), countOneBits(-2147483647i), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -463f), -943f);
    let var_3 = vec2<bool>(true, true);
    return _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(567f, var_0.d, var_2.e, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, var_1.x, -349f, 1914f)), var_0.b, !vec4<bool>(false, true, false, var_3.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, var_0.b.x, 305f, var_1.x), vec4<f32>(var_2.d, -960f, var_0.d, 598f)) - vec4<f32>(var_2.e, var_1.x, -268f, var_2.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~firstLeadingBit(func_1(Struct_3(true, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(797f, 1384f, 310f), 5251i, -192f, 2163f, 164f), Struct_3(false, vec3<bool>(false, true, false)), vec4<f32>(168f, -342f, 1132f, 409f)))));
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    let var_1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~1i, 1i), -(~(-2122i))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 19019i), firstTrailingBit(vec2<i32>(45632i, -50521i)))), _wgslsmith_f_op_vec4_f32(func_2()), abs((-vec2<i32>(2147483647i, -2147483647i) << (~u_input.a % vec2<u32>(32u))) | abs(vec2<i32>(-1i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1525f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1232f + -2113f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f * -107f)), _wgslsmith_f_op_f32(round(-374f)))));
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_1.d) - _wgslsmith_f_op_vec4_f32(func_2()).x)), var_1.d, _wgslsmith_f_op_vec3_f32(func_3()).x), var_0.zxz, vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.d));
}

