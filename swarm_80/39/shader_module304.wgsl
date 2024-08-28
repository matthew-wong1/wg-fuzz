struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 14341i);

var<private> global1: array<f32, 20> = array<f32, 20>(-1672f, 1622f, -971f, 1100f, -1547f, 1425f, -914f, 950f, -733f, -524f, -1615f, 842f, -871f, 728f, 1000f, 1257f, -657f, -293f, -339f, -1016f);

var<private> global2: Struct_3 = Struct_3(vec3<bool>(true, false, false));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(220i, -7522i, 0i, -24498i), vec4<i32>(-12272i, 62075i, i32(-2147483648), 1i), vec4<i32>(-1i, 0i, 2079i, 2147483647i), vec4<i32>(-1i, 34590i, 28897i, 25207i), vec4<i32>(-13861i, -32914i, 39198i, -27078i), vec4<i32>(i32(-2147483648), -1i, -48172i, 1i), vec4<i32>(0i, -1i, 0i, -1i), vec4<i32>(1i, -28746i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-31537i, -1i, 0i, 0i), vec4<i32>(1i, -10285i, -1i, 7343i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    global2 = Struct_3(!(!global2.a));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1001f * global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) - 1000f)) * arg_0.x) > global1[_wgslsmith_index_u32(55621u, 20u)];
    var_0 = any(select(vec4<bool>(global2.a.x, global2.a.x, false, any(vec4<bool>(false, true, global2.a.x, false))), !vec4<bool>(select(global2.a.x, false, global2.a.x), any(vec3<bool>(true, false, true)), !global2.a.x, global2.a.x), true));
    var var_1 = -197f;
    var var_2 = Struct_5(~vec4<i32>(global0.x, select(24514i, global0.x, true), _wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(47578u, 11u)]) >> (u_input.a.x % 32u), global0.x), 28846u, (vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(global0.x, global0.x, global0.x))) & (vec3<i32>(max(-118061i, global0.x), firstTrailingBit(global0.x), global0.x) ^ -(vec3<i32>(0i, global0.x, global0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), (_wgslsmith_sub_u32(u_input.a.x & 4294967295u, u_input.a.x << (u_input.a.x % 32u)) ^ (~u_input.a.x | countOneBits(u_input.a.x))) | firstLeadingBit(u_input.a.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.xy)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    global2 = Struct_3(global2.a);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -821f) * vec3<f32>(1033f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], -444f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1040f, global1[_wgslsmith_index_u32(35218u, 20u)], 1494f)), vec3<f32>(1113f, global1[_wgslsmith_index_u32(62784u, 20u)], -1311f))))), global1[_wgslsmith_index_u32(u_input.a.x, 20u)], ~33914u != (~45740u << (~(u_input.a.x ^ 0u) % 32u)));
    var var_1 = 2147483647i;
    global4 = array<vec4<i32>, 11>();
    global2 = Struct_3(!select(!select(vec3<bool>(var_0.c, false, false), global2.a, var_0.c), !(!global2.a), !(arg_0.x < global0.x)));
    return countOneBits(arg_1.a);
}

fn func_1() -> u32 {
    global1 = array<f32, 20>();
    let var_0 = ~firstLeadingBit(-29499i);
    global0 = firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(~func_2(vec2<i32>(global0.x, global0.x), Struct_2(41390i), global4[_wgslsmith_index_u32(u_input.a.x, 11u)], -54566i), global0.x), ~(i32(-1i) * -30730i)));
    var var_1 = Struct_4(~(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 6201u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, 0u), vec3<u32>(4294967295u, 34285u, u_input.a.x))) | reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(1u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1108f - 2070f), -423f, true)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]) + global1[_wgslsmith_index_u32(1u, 20u)]))));
    var_1 = Struct_4(firstTrailingBit(var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1461f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!select(!select(global2.a, vec3<bool>(global2.a.x, global2.a.x, global2.a.x), global2.a.x), global2.a, true));
    var var_1 = func_1();
    var var_2 = countOneBits(~(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-14474i, 2147483647i)))));
    var var_3 = true;
    var var_4 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_4.x, 20u)]), global1[_wgslsmith_index_u32(28305u, 20u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, global1[_wgslsmith_index_u32(0u, 20u)]) - vec2<f32>(global1[_wgslsmith_index_u32(var_4.x, 20u)], global1[_wgslsmith_index_u32(var_4.x, 20u)]))) + vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(-200f + -159f)))), countOneBits(~min(62862u, firstTrailingBit(u_input.a.x))), _wgslsmith_sub_vec4_u32(~firstLeadingBit(firstLeadingBit(vec4<u32>(var_4.x, var_4.x, 0u, u_input.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(72151u, var_4.x, 1u, 82664u), vec4<u32>(var_4.x, u_input.a.x, 0u, 1u)), 47001u, ~var_4.x), vec4<u32>(var_4.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 72185u ^ u_input.a.x, 64474u))), -25144i);
}

