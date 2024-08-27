struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: f32 = 618f;

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 9> = array<f32, 9>(1095f, 635f, -195f, 770f, 235f, 228f, 442f, -268f, 1815f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global3 = array<f32, 9>();
    let var_0 = arg_0;
    global0 = array<vec3<f32>, 27>();
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    return Struct_1(-856f, !(!select(arg_0.b, var_0.b, select(var_0.b, vec3<bool>(var_0.b.x, var_0.b.x, arg_0.b.x), false))));
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = -2147483647i;
    let var_1 = !func_2(func_2(Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 9u)] - 1750f), vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(28281u, 9u)]), -450f).b;
    let var_2 = Struct_1(-145f, var_1);
    let var_3 = u_input.d;
    global3 = array<f32, 9>();
    return func_2(func_2(var_2, -1125f), _wgslsmith_f_op_f32(-621f * arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = func_3(global0[_wgslsmith_index_u32(17098u, 27u)]);
    global0 = array<vec3<f32>, 27>();
    var var_1 = !arg_3.b.yx;
    let var_2 = abs(~u_input.c | ~firstTrailingBit(~u_input.b));
    global1 = _wgslsmith_f_op_f32(max(arg_0.a, func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(0u, 9u)]))), !(!vec3<bool>(var_1.x, arg_3.b.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a - var_0.a), _wgslsmith_f_op_f32(round(-1000f)))).a));
    return vec3<i32>(global2.x, u_input.a, 0i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, arg_0.b.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -137f)));
    global2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(25897i, u_input.a, 14073i)) << (reverseBits(vec3<u32>(u_input.c, u_input.d, u_input.c)) % vec3<u32>(32u)), func_4(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -324f) - vec2<f32>(arg_0.a, -1000f)), func_3(global0[_wgslsmith_index_u32(u_input.d, 27u)]), func_3(vec3<f32>(arg_0.a, arg_0.a, -2354f)))), 0i);
    let var_1 = arg_0;
    global2 = vec2<i32>(-u_input.a, _wgslsmith_mult_i32(countOneBits(firstTrailingBit(-2147483647i)) & u_input.a, -1i));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(1141f - 1335f), false))), global3[_wgslsmith_index_u32(~48033u, 9u)], var_1.b.x)), !arg_1.b);
    return Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~61678u, 9u)]), func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1903f, -863f, arg_0.a))))).b);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = ~((~vec2<i32>(1i, 1i) << ((vec2<u32>(3542u, u_input.c) | vec2<u32>(u_input.c, 12819u)) % vec2<u32>(32u))) | -vec2<i32>(arg_0 >> (u_input.d % 32u), firstLeadingBit(43107i)));
    var var_1 = _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(_wgslsmith_div_u32(u_input.c, 0u), _wgslsmith_clamp_u32(u_input.d, 0u, 17464u)), 9u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f + _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(25671u, 9u)]))))));
    var var_2 = arg_2.zy;
    var var_3 = u_input.b;
    var_1 = -1521f;
    return !(!vec4<bool>(true, false, !(!arg_1.b.x), all(select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), arg_1.b.x))));
}

fn func_6(arg_0: vec4<bool>) -> f32 {
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    let var_0 = func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(u_input.d, u_input.c, arg_0.x), 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1351f + 789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(global3[_wgslsmith_index_u32(110139u, 9u)], arg_0.zxy), global3[_wgslsmith_index_u32(0u, 9u)]).a))));
    let var_1 = func_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c, 40048u), vec4<u32>(u_input.b, u_input.d, 1u, u_input.c))) % 32u), 9u)], var_0.b), -778f);
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-598f * var_1.a) - _wgslsmith_f_op_f32(-1795f * _wgslsmith_div_f32(func_1(Struct_1(-123f, vec3<bool>(false, false, true)), var_1).a, _wgslsmith_f_op_f32(765f * global3[_wgslsmith_index_u32(4294967295u, 9u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    global1 = _wgslsmith_f_op_f32(func_6(!select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), func_5(-1240i, func_1(Struct_1(global3[_wgslsmith_index_u32(50694u, 9u)], vec3<bool>(false, false, true)), Struct_1(global3[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 27u)]))))));
    let var_0 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2655i, global2.x), ~vec2<i32>(-18190i, -1i)), ~func_4(Struct_1(-356f, vec3<bool>(false, true, false)), vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 9u)], -554f), Struct_1(-679f, vec3<bool>(false, true, true)), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 9u)], vec3<bool>(false, false, false))).x), -1i);
    let var_1 = vec4<i32>(var_0.x, -_wgslsmith_dot_vec4_i32(-vec4<i32>(11512i, -37746i, global2.x, u_input.a), firstTrailingBit(vec4<i32>(-11577i, var_0.x, 1i, global2.x)) ^ vec4<i32>(u_input.a, u_input.a, global2.x, var_0.x)), 12381i, _wgslsmith_add_i32(var_0.x << ((reverseBits(u_input.d) & 391u) % 32u), -firstLeadingBit(global2.x)));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(max(-1000f, global3[_wgslsmith_index_u32(u_input.c, 9u)]))) - 813f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1898f)) + global3[_wgslsmith_index_u32(1u, 9u)]) - _wgslsmith_f_op_f32(-func_3(global0[_wgslsmith_index_u32(u_input.c, 27u)]).a))), vec3<bool>(true, var_0.x == global2.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(9008u, u_input.c, 4294967295u, u_input.b)) ^ firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, u_input.d, u_input.c, u_input.d), ~vec4<u32>(u_input.b, u_input.b, u_input.d, 0u))));
}

