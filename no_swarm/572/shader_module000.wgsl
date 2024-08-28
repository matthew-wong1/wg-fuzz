struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 17> = array<bool, 17>(true, false, true, false, true, false, true, true, false, false, false, false, false, true, false, true, false);

var<private> global3: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-1588f, 1334f, -1932f, 1230f), vec4<f32>(-1299f, 912f, -396f, 1366f));

var<private> global4: array<vec2<i32>, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<f32> {
    global1 = vec3<f32>(1105f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f - -1739f))) - _wgslsmith_f_op_f32(-757f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(130f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c)))));
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-207f, _wgslsmith_f_op_f32(-895f - 1778f))))) + _wgslsmith_f_op_vec2_f32(global1.yy + _wgslsmith_f_op_vec2_f32(floor(global1.xz))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, -629f), _wgslsmith_f_op_f32(trunc(-837f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(646f, 772f, var_1.x) * vec3<f32>(1735f, arg_1.c, var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2180f, -1286f, 663f))), vec3<bool>(true, true, true)))));
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(115f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -1000f, -345f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-424f, var_1.x, arg_1.c)))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1450f, -430f, _wgslsmith_f_op_f32(1156f * -111f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(489f + global1.x), _wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_f_op_f32(min(var_0.c, -1000f)))))), vec3<bool>(false, true, any(select(!vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 17u)], false, true, global2[_wgslsmith_index_u32(49994u, 17u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 17u)], global2[_wgslsmith_index_u32(6387u, 17u)], true, global2[_wgslsmith_index_u32(49588u, 17u)]), true)))));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 14>();
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1616f, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-global1.x))), 288f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1156f), -1645f) + _wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(u_input.d, 4294967295u, 1u), Struct_1(0u, vec3<u32>(1u, 14361u, u_input.d), -1019f))))))));
    return Struct_1(1u, vec3<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34001u, global0[_wgslsmith_index_u32(54083u, 14u)]), 14u)]), 14u)], _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(55866u, 14u)]), ~(~4294967295u)), ~(firstTrailingBit(25623u) | u_input.d)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * -515f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = !(!vec3<bool>(global2[_wgslsmith_index_u32(31825u, 17u)], false, any(select(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_0.b.x, 17u)]), vec4<bool>(global2[_wgslsmith_index_u32(29243u, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], true, global2[_wgslsmith_index_u32(u_input.d, 17u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 17u)], false, true)))));
    var var_2 = Struct_2(-2924i, true || (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(var_0.b.x, 14u)], 0u, 62870u), var_0.b) < ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_0.b.x, 14u)], var_0.b.x)), func_2(), 1u, func_2());
    let var_3 = ~(~(u_input.c.yx & u_input.c.zx));
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1928f, _wgslsmith_f_op_vec3_f32(func_3(~var_0.b, func_2())).x), -250f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(683f)), var_2.c.c), 834f);
    return StorageBuffer(select(var_2.a, 2147483647i, false), firstTrailingBit(21709i), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, u_input.b.x, 39570i), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b), true), select(abs(u_input.c), vec3<i32>(var_2.a, var_2.a, -91112i), global2[_wgslsmith_index_u32(48768u << (1u % 32u), 17u)])), _wgslsmith_f_op_f32(var_2.e.c - _wgslsmith_div_f32(-1468f, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~1u, 2u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 14u)], 2u)]), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.d, 2u)] - global3[_wgslsmith_index_u32(18601u, 2u)]))) - _wgslsmith_f_op_vec4_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31180u, global0[_wgslsmith_index_u32(81777u, 14u)], var_0.a), var_0.b), 2u)], global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 2u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1127f;
    global4 = array<vec2<i32>, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2220f, -1238f, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -185f, global1.x) - vec3<f32>(global1.x, global1.x, -206f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1117f, global1.x) + _wgslsmith_div_vec3_f32(vec3<f32>(-816f, global1.x, global1.x), vec3<f32>(global1.x, 532f, 1000f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(933f, 948f, _wgslsmith_f_op_f32(-global1.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -327f)))));
    let var_2 = 0u >> (abs(1u) % 32u);
    global4 = array<vec2<i32>, 14>();
    var_0 = _wgslsmith_f_op_f32(abs(-256f));
    let var_3 = -1630f;
    global3 = array<vec4<f32>, 2>();
    let x = u_input.a;
    s_output = func_1();
}

