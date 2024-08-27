struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(0i, -1i), vec2<i32>(0i, -1i));

var<private> global2: array<Struct_4, 21>;

var<private> global3: array<f32, 8> = array<f32, 8>(-331f, -918f, -1883f, 363f, 1814f, -240f, -933f, 1456f);

var<private> global4: array<bool, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<bool> {
    global3 = array<f32, 8>();
    var var_0 = !any(!arg_1.b);
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    global3 = array<f32, 8>();
    return select(!select(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a, 21u)], true), vec4<bool>(!global4[_wgslsmith_index_u32(arg_1.d.b.x, 21u)], false, !arg_1.b.x, true), vec4<bool>(all(vec2<bool>(false, arg_1.c)), true, arg_1.c, true)), !(!vec4<bool>(arg_1.b.x && global4[_wgslsmith_index_u32(u_input.a, 21u)], select(true, global4[_wgslsmith_index_u32(arg_1.d.b.x, 21u)], true), global4[_wgslsmith_index_u32(1u, 21u)], arg_1.c | arg_1.c)), vec4<bool>(arg_1.c, true, true, all(vec4<bool>(true, any(vec4<bool>(false, true, arg_1.c, global4[_wgslsmith_index_u32(1u, 21u)])), true, any(vec2<bool>(arg_1.c, arg_1.c))))));
}

fn func_2() -> vec4<bool> {
    global1 = array<vec2<i32>, 2>();
    return !(!select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(u_input.a, 21u)], true, false), func_3(vec3<f32>(-1346f, global3[_wgslsmith_index_u32(41673u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_3(-10849i, vec3<bool>(false, false, true), false, Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(77419u, 8u)], global3[_wgslsmith_index_u32(123391u, 8u)]), vec2<u32>(u_input.a, 49304u)), global3[_wgslsmith_index_u32(u_input.a, 8u)])), func_3(vec3<f32>(704f, global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_3(30272i, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(33150u, 21u)], global4[_wgslsmith_index_u32(20009u, 21u)]), global4[_wgslsmith_index_u32(93083u, 21u)], Struct_2(vec2<f32>(-1732f, -751f), vec2<u32>(4294967295u, u_input.a)), global3[_wgslsmith_index_u32(u_input.a, 8u)]))), !vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 21u)], true, false), all(!vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 21u)], global4[_wgslsmith_index_u32(0u, 21u)], true))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    global2 = array<Struct_4, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1259f, 372f, arg_2.d.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, global3[_wgslsmith_index_u32(arg_0.d.b.x, 8u)], -156f) * vec3<f32>(arg_1.x, -1497f, arg_2.e)))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(1269f - arg_0.e))), _wgslsmith_f_op_f32(select(-1268f, global3[_wgslsmith_index_u32(1u, 8u)], true)), _wgslsmith_f_op_f32(-arg_0.d.a.x))));
    let var_1 = func_2();
    var var_2 = arg_2.d.a.x;
    var var_3 = arg_2.d.b;
    return firstTrailingBit(18139u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.a, _wgslsmith_add_u32(~firstLeadingBit(91779u), _wgslsmith_mult_u32(31355u, func_1(Struct_3(21476i, vec3<bool>(false, false, true), global4[_wgslsmith_index_u32(u_input.a, 21u)], Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 8u)], 1563f), vec2<u32>(41865u, 52070u)), global3[_wgslsmith_index_u32(1u, 8u)]), vec2<f32>(-429f, global3[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_3(0i, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 21u)], true, true), global4[_wgslsmith_index_u32(1u, 21u)], Struct_2(vec2<f32>(-1000f, -832f), vec2<u32>(0u, u_input.a)), 949f)))));
    var var_1 = 43358u;
    var_1 = 4294967295u;
    global0 = array<vec2<i32>, 13>();
    let var_2 = !vec3<bool>(true, global4[_wgslsmith_index_u32(53090u, 21u)], global4[_wgslsmith_index_u32(63767u, 21u)] && global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, var_0.x)), vec2<u32>(0u, 58672u)), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(min(firstTrailingBit(-17310i), firstLeadingBit(0i))), -(~(~(-1i))), -1i), 0u | var_0.x);
}

