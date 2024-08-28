struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(2147483647i, -26188i, -1i), vec3<i32>(25350i, 1i, -1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 1i, 3333i), vec3<i32>(1i, i32(-2147483648), 37408i), vec3<i32>(0i, -41650i, 16775i), vec3<i32>(-57399i, 1i, i32(-2147483648)), vec3<i32>(-2264i, 50936i, -11673i), vec3<i32>(i32(-2147483648), 22245i, i32(-2147483648)), vec3<i32>(-26119i, -85444i, 0i), vec3<i32>(-1i, -18652i, 743i), vec3<i32>(2147483647i, i32(-2147483648), 4352i), vec3<i32>(-1i, 40784i, -21543i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -3010i, 2147483647i), vec3<i32>(-46352i, -4297i, 22260i));

var<private> global1: i32 = 0i;

var<private> global2: vec3<u32> = vec3<u32>(1u, 59389u, 5426u);

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(-856f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    global3 = _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(abs(arg_0.x), u_input.d.x, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_0.x, -1i), u_input.d.wyz), (arg_0.x & u_input.a.x) | -22043i)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_1(952f);
    var var_2 = u_input.a.x ^ _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(u_input.b, ~(~u_input.a.x)));
    return -1668f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    global4 = arg_0;
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(~4294967295u, ~u_input.e.x, global2.x, 59068u)), ~select(~vec4<u32>(u_input.c, global2.x, u_input.c, 1u), ~vec4<u32>(global2.x, 22332u, global2.x, 4294967295u), true)), vec4<u32>(global2.x, global2.x, ~u_input.e.x, 38481u));
    global4 = Struct_1(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(40977u, 18u)], vec2<bool>(all(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))), u_input.a.x > u_input.a.x))));
    let var_1 = u_input.b;
    var var_2 = Struct_1(arg_0.a);
    return Struct_1(arg_0.a);
}

fn func_1() -> Struct_1 {
    global2 = abs(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(6891u, u_input.e.x, 0u)) & u_input.e.x, u_input.c, global2.x));
    global2 = u_input.e;
    let var_0 = func_2(Struct_1(568f), true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-525f, global4.a, global4.a) * vec3<f32>(global4.a, 1123f, global4.a)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(122f, 764f, global4.a), vec3<f32>(-164f, 1000f, -819f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, 1000f, global4.a)))))));
    var var_1 = any(vec2<bool>(!select(true, false, true), !(!any(vec2<bool>(true, false)))));
    var var_2 = vec4<u32>(~(min(44691u, abs(u_input.c)) << (0u % 32u)), ~u_input.e.x, ~global2.x, u_input.e.x);
    return func_2(func_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.a))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.a, global4.a, 1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a, global4.a, -1000f), vec3<f32>(-273f, global4.a, global4.a), vec3<bool>(true, false, true)))))), 4294967295u < _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~global2.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(1173u, global2.x), 29706u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-28166i, u_input.b, u_input.d.x), vec2<bool>(true, false))) * _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1740f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = max(u_input.e, u_input.e) & vec3<u32>(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(4294967295u, 19269u, 9360u, 9837u), vec4<u32>(global2.x, 1u, 93651u, 1u)), abs(~vec4<u32>(global2.x, global2.x, u_input.c, 4294967295u))), ~0u, abs(~_wgslsmith_mod_u32(global2.x, global2.x)));
    var var_1 = _wgslsmith_f_op_f32(global4.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1957f) - global4.a));
    var var_2 = u_input.e;
    var var_3 = var_0.a;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(func_3(abs(min(u_input.d.wwz, vec3<i32>(u_input.d.x, -2147483647i, -25675i)) | global0[_wgslsmith_index_u32(global2.x, 18u)]), vec2<bool>(true, true))));
    let var_5 = select(!vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false), vec4<bool>(true | !all(vec3<bool>(false, true, true)), true, true, true), select(vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false)), 1653f == var_4.a, false), vec4<bool>(true, !(global2.x != var_2.x), true, global4.a != global4.a), !vec4<bool>(var_2.x > var_2.x, true, all(vec2<bool>(false, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(var_2.x, ~global2.x), var_2.x), ~firstTrailingBit(max(u_input.c, ~global2.x)), ~(-(~u_input.d)) ^ -(reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 2147483647i)) << (~vec4<u32>(var_2.x, 1u, 3376u, global2.x) % vec4<u32>(32u))), ~1u);
}

