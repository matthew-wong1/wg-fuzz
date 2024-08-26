struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1976f;

var<private> global1: array<i32, 9> = array<i32, 9>(1i, 20749i, 19077i, 32347i, 2147483647i, -1i, -1i, 2147483647i, -1i);

var<private> global2: array<i32, 13>;

var<private> global3: array<vec3<bool>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = u_input.c.x;
    global1 = array<i32, 9>();
    global2 = array<i32, 13>();
    let var_1 = vec2<u32>(abs(max(min(4294967295u, arg_3.c), firstTrailingBit(6105u))), 4294967295u);
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-673f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f - arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 341f))), _wgslsmith_f_op_f32(f32(-1f) * -254f));
    return select(select(vec3<bool>(all(select(global3[_wgslsmith_index_u32(u_input.d, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.a)), !(!arg_1.a), !(0i < u_input.a)), global3[_wgslsmith_index_u32(1u, 20u)], !(!arg_1.a)), global3[_wgslsmith_index_u32(u_input.d, 20u)], select(select(select(vec3<bool>(arg_1.a, true, true), select(global3[_wgslsmith_index_u32(u_input.b, 20u)], vec3<bool>(true, arg_1.a, false), arg_3.a.x), vec3<bool>(true, arg_1.a, arg_3.a.x)), vec3<bool>(any(vec4<bool>(arg_1.a, arg_1.a, true, arg_3.a.x)), true, 4294967295u > u_input.d), !global3[_wgslsmith_index_u32(0u, 20u)]), vec3<bool>(true, _wgslsmith_mult_u32(var_1.x, arg_3.c) < firstLeadingBit(27822u), _wgslsmith_f_op_f32(round(-1000f)) > _wgslsmith_f_op_f32(-1033f + arg_2.x)), arg_1.a));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(400f, -136f, 483f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1627f, -448f))))))));
    var var_1 = 258f;
    var var_2 = ~(~select(~u_input.c.wxz, vec3<i32>(1i, u_input.c.x, -5004i), select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.d), 20u)], func_3(1000f, Struct_3(false), vec4<f32>(1785f, arg_1.x, 169f, -1000f), Struct_1(vec2<bool>(true, false), true, u_input.d)), global3[_wgslsmith_index_u32(u_input.d, 20u)])));
    var var_3 = _wgslsmith_clamp_u32(u_input.b, ~select(1u, u_input.b, true), ~u_input.b);
    let var_4 = Struct_3(true);
    return Struct_2(~u_input.c.xzw, _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.c.zy, u_input.c.yw), u_input.c.zz), max(vec2<i32>(_wgslsmith_div_i32(-15716i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_2.x, u_input.c.x), u_input.c)), global1[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 15464u, u_input.d, u_input.b), vec4<u32>(0u, u_input.d, 0u, 94022u)) % 32u), 9u)]), vec2<i32>(-global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(26590u, 4294967295u, 4294967295u), 13u)], ~10763i)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = -1439f;
    let var_1 = func_2(-1833f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_0) * vec2<f32>(var_0, var_0)))))), var_0);
    let var_2 = ~arg_2.c;
    var var_3 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-38357i, global1[_wgslsmith_index_u32(arg_3.x, 9u)], 66466i), vec3<i32>(arg_1, 40571i, 57112i) & var_1.a), 0i, max(min(-31703i, -22525i), reverseBits(-1i)), ~(-u_input.c.x)), -vec4<i32>(-2147483647i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(31679u, 9u)], global1[_wgslsmith_index_u32(var_2, 9u)]), -9591i, ~global1[_wgslsmith_index_u32(arg_3.x, 9u)]), ~(u_input.c | (u_input.c & u_input.c))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -157f) + arg_0);
    return any(!select(vec4<bool>(arg_2.b, true, !arg_2.b, true), vec4<bool>(true, false, arg_2.b | arg_2.a.x, u_input.d == u_input.b), !all(arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(false, func_1(_wgslsmith_f_op_f32(trunc(-399f)), ~global1[_wgslsmith_index_u32(1u, 9u)], Struct_1(vec2<bool>(false, false), true, u_input.b), vec4<u32>(u_input.d, u_input.b, u_input.b, 18915u)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -265f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f) + _wgslsmith_div_f32(1000f, -389f)))));
    let var_1 = Struct_1(!vec2<bool>(!(-2147483647i >= global2[_wgslsmith_index_u32(28075u, 13u)]), var_0), var_0, u_input.b);
    var var_2 = ~countOneBits(0u >> (1u % 32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(280f * 251f), 1241f, _wgslsmith_f_op_f32(floor(1293f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-20773i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1288f, var_3.x)))) * 716f), abs(vec2<u32>(abs(~u_input.b), _wgslsmith_div_u32(9884u, _wgslsmith_mod_u32(0u, var_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(min(var_3.x, 892f)), _wgslsmith_f_op_f32(f32(-1f) * -941f), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))), !(!vec4<bool>(false, var_0, false, false))))), 2147483647i);
}

