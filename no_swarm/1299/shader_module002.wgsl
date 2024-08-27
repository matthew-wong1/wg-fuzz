struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(true, select(abs(abs(0i)), ~(2147483647i | global0[_wgslsmith_index_u32(4294967295u, 5u)]), false) < -2147483647i);
    var_0 = select(vec2<bool>(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, true, true))), var_0.x), vec2<bool>(!(!(!var_0.x)), (var_0.x & (false & var_0.x)) | !(!var_0.x)), var_0.x);
    var_0 = !vec2<bool>(var_0.x, var_0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(655f, -307f), vec2<f32>(-474f, 1046f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1625f, -185f))))))));
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1724f - -509f) + var_1.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = -(~(vec4<i32>(-1i) * -min(vec4<i32>(arg_1, arg_1, 3003i, arg_1), vec4<i32>(global0[_wgslsmith_index_u32(0u, 5u)], arg_1, arg_1, arg_1))));
    var_1 = arg_2;
    let var_3 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) + -1701f);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), false, false);
    global0 = array<i32, 5>();
    var var_1 = select(!(!(!var_0.zy)), select(vec2<bool>(!(var_0.x && var_0.x), var_0.x), select(!var_0.zz, !(!var_0.xz), vec2<bool>(false, any(vec3<bool>(var_0.x, var_0.x, false)))), !(!vec2<bool>(var_0.x, var_0.x))), vec2<bool>(true, !(arg_3 < arg_3)));
    let var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(firstTrailingBit(arg_3), global0[_wgslsmith_index_u32(1u, 5u)])) | (vec2<i32>(-1i) * -select(vec2<i32>(45080i, arg_3), vec2<i32>(-1i, -76131i), var_0.x)), vec2<i32>(~(-38950i), arg_1));
    let var_3 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~max(abs(u_input.a), 4294967295u), ~0u), 5u)], ~(-_wgslsmith_sub_i32(~2147483647i, -21109i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2461f, arg_0.a.x, 276f, -710f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1032f, -113f, arg_0.a.x, 509f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(-1613f - 481f))), arg_2.a)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = -634f;
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_2 = select(!vec4<bool>(true, true, _wgslsmith_div_u32(21439u, arg_1.x) == 1u, !(var_0.a.x <= -1449f)), vec4<bool>(u_input.a < 35134u, true, (i32(-1i) * -1i) != global0[_wgslsmith_index_u32(~arg_1.x, 5u)], !any(vec3<bool>(false, false, true)) | (true == any(vec4<bool>(true, false, false, true)))), true);
    return func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-978f)), -832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1518f * var_0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x * var_1), _wgslsmith_f_op_f32(func_2()), var_2.x)), arg_0.a.x)), ~global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.a, 1u)), 5u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, -72310i, Struct_1(var_0.a), vec3<bool>(var_2.x, true, false))) * -180f), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), var_1)), -max(21356i, reverseBits(-40202i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec4<f32>(-672f, _wgslsmith_f_op_f32(floor(-891f)), 924f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-918f, 188f), _wgslsmith_f_op_f32(round(292f)))))), abs(firstLeadingBit(vec2<u32>(u_input.a, 91366u)) | ~vec2<u32>(u_input.a, u_input.a)) | ~(~(~vec2<u32>(u_input.a, u_input.a))));
    let var_1 = (-2561i & _wgslsmith_clamp_i32(-(14998i & global0[_wgslsmith_index_u32(3558u, 5u)]), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 5u)], countOneBits(-9539i)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 5u)] ^ 5401i, global0[_wgslsmith_index_u32(u_input.a, 5u)] | 1i))) << ((_wgslsmith_mod_u32(~(~u_input.a), 22105u) & _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(1u, u_input.a << (u_input.a % 32u)))) % 32u);
    global0 = array<i32, 5>();
    let var_2 = select(vec2<bool>(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)), any(vec3<bool>(true, any(vec3<bool>(true, false, false)), true))), vec2<bool>(any(vec3<bool>(true, true, all(vec2<bool>(false, false)))), false), !(!vec2<bool>(true, all(vec4<bool>(true, true, false, false)))));
    var var_3 = false;
    global0 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 5u)], var_1, var_1), _wgslsmith_clamp_vec4_i32(vec4<i32>(9447i, var_1, var_1, 34478i), vec4<i32>(var_1, global0[_wgslsmith_index_u32(66516u, 5u)], var_1, 0i), vec4<i32>(var_1, -2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.a, 5u)])))), var_0.a.x);
}

