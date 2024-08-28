struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-677f, 1213f), 1550f);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-794f, 364f), -1281f);

var<private> global3: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global1 = arg_1;
    global2 = arg_1;
    let var_0 = arg_1;
    let var_1 = arg_0 & vec3<u32>(1u >> (arg_0.x % 32u), u_input.a, ~(~_wgslsmith_div_u32(0u, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1355f, global1.b), _wgslsmith_f_op_vec2_f32(-var_0.a), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    return 1842f;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 39367u), ~vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0)), Struct_1(global2.a, _wgslsmith_f_op_f32(-637f + global1.a.x)))), global1.b);
    var var_1 = ~select(-2147483647i, countOneBits(9612i), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1)) + _wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(130f, -1000f)))));
    let var_3 = var_2;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.b)) * _wgslsmith_f_op_f32(-var_3.a.x));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), global1.b);
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.a - global1.a), _wgslsmith_f_op_vec2_f32(global1.a - global2.a), arg_0 && arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(~vec3<u32>(u_input.a, 29682u, u_input.a), global2.a.x))))));
    let var_3 = select(min(~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(9278u, 22789u)), vec2<u32>(1u, 1u))), vec2<u32>(~(firstTrailingBit(u_input.a) | ~u_input.a), 1u), any(vec2<bool>(all(select(global3[_wgslsmith_index_u32(u_input.a, 26u)], vec3<bool>(false, arg_0, var_1), global3[_wgslsmith_index_u32(u_input.c, 26u)])), arg_0)));
    var var_4 = -_wgslsmith_div_i32(-(~u_input.d.x & u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.b, min(~vec2<i32>(12611i, 21346i), reverseBits(u_input.d))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(2856f, _wgslsmith_f_op_f32(f32(-1f) * -1130f)) + _wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_f_op_f32(floor(var_0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 26>();
    global3 = array<vec3<bool>, 26>();
    global2 = Struct_1(vec2<f32>(global2.b, -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global2.b)))), -329f))));
    global3 = array<vec3<bool>, 26>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(_wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(round(global1.a.x)))))), 701f);
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec2<bool>(true, select(false, true, all(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, countOneBits(select(abs(select(vec2<u32>(u_input.c, 0u), vec2<u32>(44874u, 1u), vec2<bool>(var_0.x, false))), ~vec2<u32>(1u, u_input.a), !select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), var_0.x))), (vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.b.x, global0[_wgslsmith_index_u32(94315u, 4u)])) & (-vec3<i32>(-12559i, u_input.d.x, u_input.d.x) ^ -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 4u)], -1523i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d.x, u_input.d.x))), u_input.c << (~0u % 32u), vec3<i32>(1i, reverseBits(max(u_input.b.x, abs(u_input.d.x))), u_input.d.x));
}

