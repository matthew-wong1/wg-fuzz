struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 21>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> bool {
    global1 = array<vec4<u32>, 21>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1674f)), _wgslsmith_f_op_f32(step(-808f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(384f)), _wgslsmith_f_op_f32(sign(-272f)))))))) + arg_2);
    global1 = array<vec4<u32>, 21>();
    let var_2 = u_input.a;
    return all(vec4<bool>(false, all(!select(vec3<bool>(true, arg_1.d.x, var_0.d.x), vec3<bool>(false, arg_1.d.x, arg_1.d.x), true)), any(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, var_0.d.x), select(vec3<bool>(false, var_0.d.x, true), vec3<bool>(arg_1.d.x, true, false), false), vec3<bool>(arg_1.d.x, false, var_0.d.x)))));
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(all(vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true)), true, !(_wgslsmith_sub_i32(-3088i, ~(-31207i)) <= ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, 8709i), vec4<i32>(-2147483647i, -5400i, -683i, 18150i))));
    var var_1 = vec4<bool>(func_3(~4294967295u, Struct_1(~u_input.a, 1i ^ (-36308i >> (u_input.a % 32u)), ~u_input.a, select(!vec2<bool>(false, var_0.x), var_0.xz, vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1730f))), u_input.a), false, true, false);
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    global0 = var_1.x || true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(839f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1421f * -825f))), -1071f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(func_2())) <= 511f;
    let var_1 = _wgslsmith_mult_vec2_i32(~(~(~vec2<i32>(-1i, 2147483647i))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(15520i, -66498i)), vec2<i32>(select(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -2147483647i), arg_1.x), -(~19513i))));
    let var_2 = true;
    var var_3 = 1u;
    let var_4 = abs(vec2<u32>(14541u, u_input.a));
    return Struct_1(~1u, var_1.x, ~0u, vec2<bool>(arg_1.x, ~(~var_4.x) <= _wgslsmith_clamp_u32(var_4.x, var_4.x & 0u, u_input.a ^ 44105u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, 1064f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, 239f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1409f, -2559f)), vec2<f32>(-1038f, -1023f), vec2<bool>(true, true)))))), select(vec3<bool>(any(vec3<bool>(true, false, false)), _wgslsmith_mod_u32(12628u, u_input.a) >= ~u_input.a, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), -1016f);
    let var_1 = ((false && all(vec3<bool>(false, var_0.d.x, var_0.d.x))) & var_0.d.x) & all(!vec4<bool>(any(vec2<bool>(false, false)), var_0.d.x, false, any(vec4<bool>(true, false, var_0.d.x, var_0.d.x))));
    var var_2 = select(vec4<bool>(false, u_input.a != 70609u, any(select(select(vec4<bool>(false, true, var_1, true), vec4<bool>(false, var_1, true, true), vec4<bool>(false, var_1, var_0.d.x, var_1)), select(vec4<bool>(false, var_0.d.x, false, var_0.d.x), vec4<bool>(false, var_0.d.x, var_0.d.x, var_1), vec4<bool>(var_0.d.x, var_0.d.x, var_1, var_1)), vec4<bool>(var_1, var_0.d.x, var_0.d.x, var_1))), !((var_0.b >= -2147483647i) && all(vec3<bool>(false, true, true)))), !(!vec4<bool>(var_1, !var_0.d.x, func_3(63791u, Struct_1(53514u, -1i, 5116u, vec2<bool>(true, var_0.d.x)), -795f, var_0.a), var_1)), var_1);
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1968f, 2169f))))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), vec3<bool>(var_1, var_2.x, var_0.d.x), _wgslsmith_f_op_f32(trunc(-1235f)));
    let var_4 = vec2<bool>(all(var_2.yx), any(!(!(!vec4<bool>(var_2.x, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a, 1u, var_3.c), reverseBits(vec3<u32>(var_0.a, 11793u, 95861u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, 0u, var_3.a)) & ~vec3<u32>(4294967295u, u_input.a, var_3.a))), min(select(-vec4<i32>(var_0.b, var_0.b, 0i, 28369i) >> ((vec4<u32>(1u, var_3.a, 4294967295u, 1u) | global1[_wgslsmith_index_u32(30848u, 21u)]) % vec4<u32>(32u)), vec4<i32>(-3891i, var_3.b, _wgslsmith_mult_i32(var_3.b, var_0.b), -20100i), any(select(var_3.d, vec2<bool>(false, var_4.x), var_0.d))), max(vec4<i32>(var_0.b, 22696i, var_0.b, -20042i), ~vec4<i32>(var_0.b, 71981i, var_3.b, 25488i)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, -11483i, 4551i), vec3<i32>(-27028i, var_0.b, -2147483647i)), i32(-1i) * -11643i, var_3.b, var_0.b)));
}

