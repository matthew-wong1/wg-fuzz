struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

var<private> global2: array<u32, 9> = array<u32, 9>(31659u, 4294967295u, 1u, 4294967295u, 0u, 58031u, 1u, 4294967295u, 40261u);

var<private> global3: array<f32, 15>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> bool {
    global2 = array<u32, 9>();
    global1 = _wgslsmith_add_vec2_i32(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(~u_input.c.yy, u_input.c.yz, vec2<i32>(37854i, u_input.a))), select(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -12447i), u_input.b)), max((vec2<i32>(-7909i, u_input.b.x) << (vec2<u32>(arg_2, 0u) % vec2<u32>(32u))) >> (~vec2<u32>(52355u, 0u) % vec2<u32>(32u)), ~vec2<i32>(global1.x, -681i) & ~vec2<i32>(u_input.b.x, global1.x)), !(!vec2<bool>(arg_1.a.x, true))));
    let var_0 = arg_0;
    var var_1 = Struct_2(arg_1.a);
    var_1 = Struct_2(vec2<bool>(arg_1.a.x, true));
    return all(!vec3<bool>(false, arg_0, arg_0));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(vec2<bool>(true, func_3(false, Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), 1u >> ((global2[_wgslsmith_index_u32(arg_1.c, 9u)] & u_input.d) % 32u))));
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(ceil(-579f));
    let var_3 = !(!vec3<bool>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_1.c, 15u)], -109f) < _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 15u)]), var_0.a.x, all(!var_0.a)));
    let var_4 = var_0;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(4294967295u << (arg_0 % 32u)), 15u)]) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(136f, global3[_wgslsmith_index_u32(u_input.d, 15u)], var_4.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -767f)))), _wgslsmith_f_op_f32(select(-1113f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(countOneBits(1u), 15u)]), true)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> vec2<f32> {
    global3 = array<f32, 15>();
    global1 = -u_input.c.yz;
    global2 = array<u32, 9>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(17249u, Struct_1(countOneBits(vec4<i32>(u_input.a, 672i, 0i, global1.x)), _wgslsmith_mult_i32(global1.x, u_input.a), ~24083u))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -690f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-530f, -770f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 15u)], arg_0)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(u_input.d, Struct_1(vec4<i32>(10118i, 5489i, -1269i, u_input.b.x), 8466i, 40862u))).x, 1370f), _wgslsmith_f_op_vec2_f32(func_2(u_input.d, Struct_1(vec4<i32>(global1.x, 25415i, 12633i, u_input.c.x), u_input.b.x, u_input.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-370f)) * _wgslsmith_f_op_f32(f32(-1f) * -599f)), all(vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, true)), true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(25767u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)])) - _wgslsmith_f_op_vec2_f32(func_1(-1042f, func_3(false, Struct_2(vec2<bool>(false, true)), 95632u), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))))));
    global2 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -966f));
}

