struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<u32, 25>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_f32(abs(-1737f));
    global0 = array<Struct_1, 32>();
    let var_1 = arg_1;
    let var_2 = var_1;
    return vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-512f * _wgslsmith_f_op_f32(-arg_1.x)), (arg_0 ^ global2.a.x) == 0i))));
    let var_2 = !(!(!vec4<bool>(arg_2.x | false, arg_2.x | arg_2.x, arg_2.x, true)));
    return -1874f;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_1 {
    global2 = Struct_1(u_input.b.yxw);
    global1 = array<u32, 25>();
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.zz);
    let var_1 = Struct_1(select(_wgslsmith_mod_vec3_i32(global2.a, _wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, u_input.e.x, 33228i), vec3<i32>(31669i, u_input.b.x, global2.a.x), false), vec3<i32>(u_input.b.x, global2.a.x, 40078i))), abs(~_wgslsmith_mult_vec3_i32(global2.a, vec3<i32>(global2.a.x, u_input.e.x, u_input.e.x))), vec3<bool>(!all(arg_1.zz), select(true, !arg_1.x, true), true)));
    return global0[_wgslsmith_index_u32(1u, 32u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_0, vec4<bool>(!any(func_2(vec4<bool>(true, true, true, false), Struct_1(arg_1.a))), true, true, select(any(vec2<bool>(false, true)) || true, func_2(vec4<bool>(false, true, true, true), Struct_1(arg_1.a)).x, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_1.a.x, vec3<f32>(-1275f, 301f, arg_0), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(433f + -703f), _wgslsmith_f_op_f32(arg_0 + arg_0)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, arg_0))))))));
    global0 = array<Struct_1, 32>();
    let var_1 = func_4(134f, func_2(!vec4<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, false)), arg_0 > arg_0, all(vec4<bool>(true, true, false, false))), func_4(arg_0, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 290f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, 363f, arg_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(835f, 320f, arg_0), vec3<f32>(-543f, 2871f, arg_0), false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-920f, arg_0, arg_0))) * vec3<f32>(arg_0, -1302f, 1026f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, arg_0, -2043f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 829f, arg_0) - vec3<f32>(arg_0, arg_0, -254f)))))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~((~u_input.d | ~vec4<u32>(u_input.a.x, u_input.d.x, global1[_wgslsmith_index_u32(0u, 25u)], 11846u)) & vec4<u32>(u_input.a.x, abs(4294967295u), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 25u)], firstLeadingBit(14902u))), u_input.d), 32u)];
    let var_1 = func_1(-149f, global0[_wgslsmith_index_u32(firstTrailingBit(~40268u), 32u)]);
    var var_2 = true;
    var var_3 = !(false || select(true, false, false));
    var var_4 = any(func_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, global2.a.x, 1i), vec3<i32>(1879i, -1i, var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.d.x, 40812u ^ ~_wgslsmith_dot_vec3_u32(u_input.d.wxx, u_input.d.zxw)), -130f, firstTrailingBit(~(-16707i)));
}

