struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-784f, -413f), i32(-2147483648), vec4<bool>(true, false, true, false), false), Struct_1(vec2<f32>(-478f, 734f), i32(-2147483648), vec4<bool>(true, true, false, true), true), Struct_1(vec2<f32>(817f, 864f), 1i, vec4<bool>(true, true, true, true), false));

var<private> global2: array<i32, 16> = array<i32, 16>(2147483647i, -1i, -7234i, 6631i, 10490i, i32(-2147483648), 1i, 0i, i32(-2147483648), 1i, -90i, 1i, 1i, i32(-2147483648), 6353i, 2147483647i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = arg_1;
    return arg_1;
}

fn func_3(arg_0: bool) -> f32 {
    global1 = array<Struct_1, 3>();
    global2 = array<i32, 16>();
    var var_0 = max(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), u_input.d.x >> (0u % 32u))), 23u)], ~global0[_wgslsmith_index_u32(firstTrailingBit(10533u), 23u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f * -1029f)) + _wgslsmith_f_op_f32(-1556f - -1713f)) - _wgslsmith_f_op_f32(496f + -1427f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-318f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = arg_2.c;
    global0 = array<vec4<i32>, 23>();
    global1 = array<Struct_1, 3>();
    var var_1 = func_2(arg_0, arg_0);
    global1 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a.x)), arg_2.a.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(!var_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1734f - 625f), -602f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), -1339f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1470f + -1365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(449f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -519f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-698f)))) - -1604f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.a, 3u)], vec4<u32>(1u, u_input.b, u_input.b, 41383u), global1[_wgslsmith_index_u32(u_input.d.x, 3u)], true)))), _wgslsmith_f_op_f32(sign(-624f)))));
    var var_1 = _wgslsmith_div_i32(-1i, 1i);
    let var_2 = any(!select(vec4<bool>(any(vec3<bool>(false, false, true)), false, true, select(false, false, false)), func_2(global1[_wgslsmith_index_u32(firstLeadingBit(20786u), 3u)], Struct_1(vec2<f32>(var_0.x, 980f), -14070i, vec4<bool>(false, false, true, true), false)).c, any(vec3<bool>(true, true, true))));
    var var_3 = ~2147483647i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(349f - _wgslsmith_div_f32(var_0.x, 1267f)))), select(_wgslsmith_dot_vec3_i32(abs(~u_input.c), countOneBits(_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], -15909i, 13i)))), countOneBits(38087i), var_2), func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, ~_wgslsmith_sub_u32(u_input.d.x, 0u)), 3u)], Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), global2[_wgslsmith_index_u32(u_input.a, 16u)], !select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, true, false, true)), -36068i < u_input.e)).c, !var_2);
    let var_5 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~4294967295u), u_input.b) | 4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~69877u, 4799u, max(~vec4<u32>(u_input.b, ~32993u, 16107u, u_input.a), vec4<u32>(u_input.a, ~1u, u_input.b, (4736u >> (u_input.d.x % 32u)) | ~4294967295u)), _wgslsmith_add_vec2_u32(u_input.d.xz, ~(~vec2<u32>(4294967295u, u_input.d.x)) ^ u_input.d.yy), 19246u);
}

