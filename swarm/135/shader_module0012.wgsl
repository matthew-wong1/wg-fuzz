struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(197f)) + -138f))));
    global0 = array<bool, 7>();
    let var_1 = vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 + -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 286f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(360f)), _wgslsmith_f_op_f32(1769f * _wgslsmith_f_op_f32(f32(-1f) * -1612f)))), -2001f);
    global0 = array<bool, 7>();
    return select(!vec4<bool>(true, !all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 7u)], true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u & u_input.a, 7u)], false, !global0[_wgslsmith_index_u32(u_input.a, 7u)], true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, global0[_wgslsmith_index_u32(u_input.a, 7u)], false), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(32977u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], false, global0[_wgslsmith_index_u32(39738u, 7u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(67454u, 7u)]), u_input.b <= u_input.b), all(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(82548u, 7u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(31576u, 7u)], false, true)))), vec4<bool>(false, true, global0[_wgslsmith_index_u32(~84608u, 7u)], global0[_wgslsmith_index_u32(30717u, 7u)]), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 7u)], true), any(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)])))), false & global0[_wgslsmith_index_u32(~(~u_input.a), 7u)]);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-55328i, 39428i, -22906i), vec3<i32>(1i, -(~(u_input.b ^ 22320i)), 0i));
    let var_1 = u_input.a;
    var var_2 = Struct_2(abs((u_input.b >> (u_input.a % 32u)) ^ _wgslsmith_mult_i32(-22568i, var_0.x)) == -31541i, ~(~(~0u)));
    var var_3 = vec4<f32>(1f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f * 434f)) - _wgslsmith_div_f32(-167f, 237f))), _wgslsmith_f_op_f32(-1791f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2002f, 134f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(365f, -2422f))))));
    let var_4 = var_3.xz;
    return func_1().yzy;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(select(_wgslsmith_dot_vec4_u32(arg_0, ~arg_0) == firstTrailingBit(43550u & arg_0.x), false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, abs(0u)), 7u)]), ~max(arg_0.x, min(~arg_0.x, firstTrailingBit(arg_0.x))));
    global0 = array<bool, 7>();
    var var_1 = Struct_2(false, arg_0.x);
    var var_2 = true;
    var var_3 = select(!func_3(), vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_1)) <= _wgslsmith_f_op_f32(round(arg_1)), true, var_1.a), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, var_0.b, 4294967295u)), vec4<u32>(var_1.b, var_0.b, _wgslsmith_add_u32(u_input.a, u_input.a), var_1.b >> (53547u % 32u))), 7u)], -_wgslsmith_mult_i32(-2147483647i, u_input.b) < abs(-15406i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    var var_0 = Struct_2(!(u_input.b == -(~70446i)), ~abs(u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 667f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-440f, -734f) * vec2<f32>(-1000f, 1507f)), vec2<f32>(1f, 1f), all(func_1())))), false));
    let var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.b, var_0.b) & _wgslsmith_add_u32(u_input.a, 4294967295u), ~(~var_0.b)), vec2<u32>(u_input.a, u_input.a));
    var_0 = func_2(~(~vec4<u32>(abs(4827u), 20415u, 0u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(floor(var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, 1469f, 1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - -809f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * -673f), _wgslsmith_f_op_f32(var_1.x - -631f))))), u_input.b);
}

