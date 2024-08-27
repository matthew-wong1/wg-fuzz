struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(103f, -784f, 166f);

var<private> global1: array<u32, 21>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    return global0.xx;
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_1, 524f), vec3<f32>(-214f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -330f))))), _wgslsmith_f_op_f32(arg_1 * -1000f)));
    var var_0 = _wgslsmith_dot_vec3_i32(reverseBits(u_input.b), u_input.b);
    let var_1 = Struct_1(reverseBits(countOneBits(abs(firstTrailingBit(vec2<u32>(29739u, 1u))))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1422f, global0.x), global0.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * vec3<f32>(arg_1, arg_1, 1019f)), vec3<f32>(arg_1, 364f, 1389f), false))))));
    global1 = array<u32, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1080f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), -1538f));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 21>();
    let var_0 = _wgslsmith_f_op_f32(func_3(!(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.b.yx) <= max(u_input.d, 0i))), global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(555f, -1068f, 476f), vec3<f32>(-692f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(192f, -1163f, global0.x) - vec3<f32>(var_0, var_0, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1377f, global0.x, global0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -436f, var_0), vec3<f32>(global0.x, var_0, var_0))) - vec3<f32>(global0.x, var_0, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(770f, 1147f, false)))), -370f, _wgslsmith_f_op_f32(f32(-1f) * -750f))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 0u), 0u);
    var_1 = u_input.a;
    return Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71894u, 21u)], 21u)], u_input.a)) ^ ~vec2<u32>(2326u, 50722u), ~vec2<u32>(0u >> (0u % 32u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<u32>(1u, 1u)))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.a, global1[_wgslsmith_index_u32(12902u, 21u)])), 21u)], 21u)]), ~vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], u_input.a)));
    let var_2 = 2147483647i;
    let var_3 = var_1;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~u_input.b.x, -var_2), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_4.a.x, var_3.a.x), var_4.a), var_4.a), 63499i);
}

