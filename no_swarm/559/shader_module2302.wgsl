struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), 1u, vec3<u32>(0u, 83743u, 0u));

var<private> global1: array<f32, 10> = array<f32, 10>(-747f, 837f, 1585f, 234f, -425f, -625f, 1000f, -1000f, -368f, -221f);

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1386f, -103f, 162f), vec3<f32>(570f, -281f, 173f), vec3<f32>(-414f, 716f, 448f), vec3<f32>(994f, 186f, -974f), vec3<f32>(-196f, 168f, -177f), vec3<f32>(-2020f, 158f, -1000f), vec3<f32>(551f, 1894f, -674f), vec3<f32>(-371f, 1304f, 1000f), vec3<f32>(1223f, -343f, 1000f));

var<private> global4: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    global4 = false;
    global3 = array<vec3<f32>, 9>();
    global4 = !(((global1[_wgslsmith_index_u32(u_input.d, 10u)] < _wgslsmith_f_op_f32(f32(-1f) * -154f)) & global0.a.x) & any(!vec4<bool>(false, true, true, arg_1.a.x)));
    let var_1 = Struct_1(select(vec3<bool>(true, false, !var_0.a.x), select(var_0.a, !select(vec3<bool>(false, true, false), var_0.a, arg_1.a.x), vec3<bool>(u_input.e < 3721i, all(arg_1.a), any(vec4<bool>(true, arg_1.a.x, false, false)))), false), var_0.b, ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(4294967295u, 10950u)), ~u_input.b, 67765u));
    return ~var_1.b << (((abs(~25818u) & (61280u | var_0.c.x)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, global0.b, 1u) | _wgslsmith_add_vec4_u32(arg_0, vec4<u32>(arg_0.x, 4294967295u, var_0.b, global0.c.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7941u, 1u, arg_1.b), vec3<u32>(global0.b, global0.c.x, arg_0.x)), arg_0.x, firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(arg_0, arg_0))) % 32u)) % 32u);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = Struct_1(select(global0.a, global0.a, global0.a.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32((78863u ^ u_input.d) & _wgslsmith_mod_u32(global0.c.x, 30u), 41742u), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(abs(0u), global0.c.x))), max(vec3<u32>(45606u, func_3(vec4<u32>(14604u, 8636u, 17823u, 22215u), Struct_1(vec3<bool>(true, false, true), 4294967295u, global0.c)), 4294967295u) ^ vec3<u32>(1u, u_input.a ^ 4294967295u, arg_0), select(_wgslsmith_sub_vec3_u32(vec3<u32>(65242u, 0u, 24016u), vec3<u32>(arg_0, 0u, 20251u)) ^ (global0.c | vec3<u32>(4294967295u, 4294967295u, global0.b)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, global0.c.x)), reverseBits(22642u), u_input.b), global0.a)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(var_0.b, 10u)])))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1674f, global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(arg_0, 10u)], global1[_wgslsmith_index_u32(var_0.c.x, 10u)]))))))));
}

fn func_1() -> vec4<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~u_input.a, 15u)];
    let var_1 = vec4<bool>(global0.a.x, global0.a.x, any(select(vec4<bool>(true, true, all(vec2<bool>(var_0.a.x, global0.a.x)), true), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x || var_0.a.x), !vec4<bool>(false, true, true, var_0.a.x))), var_0.a.x);
    global2 = array<Struct_1, 15>();
    global3 = array<vec3<f32>, 9>();
    global4 = var_0.a.x;
    return _wgslsmith_f_op_vec4_f32(func_2(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    global3 = array<vec3<f32>, 9>();
    let var_1 = Struct_1(vec3<bool>(~_wgslsmith_sub_u32(1u, u_input.a) != _wgslsmith_sub_u32(max(u_input.a, 4294967295u), 4294967295u), !(!global0.a.x), true), global0.c.x | max(~firstTrailingBit(7344u), ~func_3(vec4<u32>(48937u, 90594u, 27858u, global0.c.x), global2[_wgslsmith_index_u32(global0.c.x, 15u)])), countOneBits(~vec3<u32>(1u, abs(32899u), 36110u)));
    global2 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec4_f32(func_1()).xw, vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(global0.c.x)).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global1[_wgslsmith_index_u32(var_1.b, 10u)]) - global1[_wgslsmith_index_u32(1u, 10u)]), -2219f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.wz))), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, abs(56224u) | min(u_input.a, 0u), 41798u), ~vec3<u32>(max(global0.b, var_1.c.x), _wgslsmith_mod_u32(global0.c.x, u_input.d), u_input.d)), global1[_wgslsmith_index_u32(global0.b, 10u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 54184u, var_1.b, global0.c.x), vec4<u32>(19533u, global0.c.x, global0.b, 4294967295u)), ~vec4<u32>(global0.c.x, u_input.a, global0.b, global0.b), global0.a.x) >> (max(vec4<u32>(var_1.b, 1u, 4294967295u, 42200u), vec4<u32>(var_1.c.x, u_input.a, u_input.a, var_1.c.x)) % vec4<u32>(32u)), ~vec4<u32>(abs(1u), _wgslsmith_mult_u32(var_1.c.x, var_1.c.x), 4294967295u, ~0u)), 9u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(190f, var_2.x, var_0.x))))));
}

