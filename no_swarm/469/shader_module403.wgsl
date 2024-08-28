struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -547f), vec2<f32>(-144f, _wgslsmith_f_op_f32(round(1000f))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1366f) - _wgslsmith_f_op_f32(-1000f * arg_1)), var_0.x))), 2031f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1431f + var_0.x)));
    return select(!select(vec2<bool>(arg_2, arg_2 || true), select(select(vec2<bool>(false, true), vec2<bool>(global0.x, arg_2), vec2<bool>(arg_2, arg_2)), vec2<bool>(false, false), select(vec2<bool>(global0.x, arg_2), vec2<bool>(false, arg_2), vec2<bool>(true, global0.x))), false), vec2<bool>(true, true), arg_2);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = arg_1.a;
    global0 = !select(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), !global0.x), !(!global0.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), vec2<bool>(true, true)), !global0.x), select(func_3(u_input.a.xww, 1548f, true), !vec2<bool>(false, global0.x), all(vec4<bool>(false, global0.x, global0.x, false))), !vec2<bool>(global0.x, global0.x)), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, 272f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1453f, -123f, true)))))), _wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3753f)) + _wgslsmith_f_op_f32(f32(-1f) * -1488f))), -309f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1376f, -207f, 275f, var_1.x))))))) * vec4<f32>(1167f, 1f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1422f))))));
    let var_2 = arg_1;
    return StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 349f, 175f, var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(633f, 907f, var_1.x, var_1.x))) - vec4<f32>(var_1.x, 502f, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 738f, var_1.x, -784f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 492f, -143f, -272f), vec4<f32>(-1123f, var_1.x, var_1.x, var_1.x)))))), firstLeadingBit(u_input.a), _wgslsmith_mult_vec4_i32(-u_input.e, vec4<i32>(-1i) * -u_input.e), max(u_input.e.xw, ~_wgslsmith_add_vec2_i32(arg_2, ~arg_2)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = u_input.b;
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(-2147483647i);
    return func_2(_wgslsmith_clamp_u32(~(~(~1u)), _wgslsmith_div_u32(u_input.a.x, u_input.c & (u_input.a.x << (4294967295u % 32u))), 1u), var_2, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(min(u_input.e.zz, vec2<i32>(var_2.a, var_2.a)) | vec2<i32>(61535i, 2147483647i), -u_input.d), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!(!(!vec2<bool>(global0.x, global0.x))), select(vec2<bool>(true, true), !(!vec2<bool>(global0.x, global0.x)), vec2<bool>(true, global0.x)), true);
    var var_0 = Struct_1(-_wgslsmith_add_i32(1i, 1i));
    let var_1 = u_input.d.x;
    var var_2 = Struct_1(var_0.a);
    let var_3 = Struct_1(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d, u_input.e.wz), max(u_input.b, var_0.a)) | var_2.a);
    let x = u_input.a;
    s_output = func_1(global0.x);
}

