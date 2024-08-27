struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 8>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global2 = array<vec2<i32>, 8>();
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = 4266i;
    var var_1 = true == all(!select(!vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, true), false));
    let var_2 = -firstTrailingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b, -2147483647i, arg_2.b, u_input.a.x) << (vec4<u32>(u_input.c.x, 9736u, u_input.b.x, 31939u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a.x, 42528i, 34924i, -9997i))), vec4<i32>(arg_2.b, arg_2.b, ~u_input.a.x, -1i), select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(true, arg_1, true, true)), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, true, true, true), arg_1), !arg_1)));
    var var_3 = arg_1;
    let var_4 = Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1298f, arg_2.a.b.x))) + 849f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a)))));
    return arg_1;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> bool {
    return func_4(Struct_1(-122f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-250f, -1804f) + -613f), 517f)), true, Struct_2(Struct_1(587f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-473f, 488f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-761f, 391f))))), abs(firstTrailingBit(17633i) | -2147483647i), ~vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 30949u, ~26389u, func_3(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.c.x;
    global2 = array<vec2<i32>, 8>();
    global0 = array<Struct_2, 14>();
    let var_1 = vec4<bool>(true, false, func_2(any(vec3<bool>(u_input.c.x <= u_input.c.x, true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), false))), true);
    var var_2 = _wgslsmith_f_op_f32(1327f * 2214f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-626f, _wgslsmith_f_op_f32(472f + _wgslsmith_f_op_f32(f32(-1f) * -1075f))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1937f, 949f))), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-874f, 1945f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_1();
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.a))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.b.x));
    var var_2 = vec3<u32>(u_input.b.x, u_input.b.x, ~4294967295u);
    global2 = array<vec2<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.a.x, select(_wgslsmith_mod_i32(-countOneBits(0i), var_0.x), 155i, false), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 18500i, 1i, 1i), ~min(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -3470i, -2147483647i), vec4<i32>(var_0.x, u_input.a.x, -19127i, 0i)), firstTrailingBit(vec4<i32>(-1i, 1i, 2147483647i, -2147483647i)))), ~54073u);
}

