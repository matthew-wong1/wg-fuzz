struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<bool, 6>;

var<private> global3: array<Struct_2, 7>;

var<private> global4: array<f32, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = 1569f;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 11u)], -566f, global4[_wgslsmith_index_u32(3335u, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(41625u, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)], -764f) - vec4<f32>(512f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 11u)], global4[_wgslsmith_index_u32(73775u, 11u)], 268f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 11u)]), global4[_wgslsmith_index_u32(94717u, 11u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(607f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 11u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(411u, 9u)], 11u)]))))));
    global0 = array<u32, 9>();
    let var_2 = vec2<bool>(true, true);
    global4 = array<f32, 11>();
    return _wgslsmith_div_i32(select(~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, -38208i), vec4<i32>(3662i, -1i, 2147483647i, u_input.a)) | u_input.c.x), u_input.c.x, !(!all(var_2))), -(23143i >> (0u % 32u)) & select(-37109i, 1i, any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 6u)], var_2.x, global2[_wgslsmith_index_u32(u_input.b, 6u)], false), vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], var_2.x), false))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = -(~(-min(vec4<i32>(1i, u_input.c.x, u_input.a, 10040i), vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, -8232i) | vec4<i32>(u_input.a, u_input.a, 1i, -2147483647i))));
    var var_1 = Struct_1(var_0.x);
    let var_2 = Struct_1(func_3());
    let var_3 = Struct_2(!(!global2[_wgslsmith_index_u32(u_input.b, 6u)]), select(select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 6u)], false, false, global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 6u)], true, true, true), global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53873u, 9u)], 6u)], global2[_wgslsmith_index_u32(0u, 6u)], true), all(vec4<bool>(global2[_wgslsmith_index_u32(45655u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49412u, 9u)], 6u)], false))), select(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(3411u, 6u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(8107u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], false), true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 6u)], false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], true, true, global2[_wgslsmith_index_u32(u_input.b, 6u)]), true), -25893i > var_1.a), false), select(vec4<bool>(any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 6u)], false)), true, true, !global2[_wgslsmith_index_u32(25694u, 6u)]), select(select(vec4<bool>(global2[_wgslsmith_index_u32(13826u, 6u)], false, global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 6u)], global2[_wgslsmith_index_u32(837u, 6u)], false, global2[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(989u, 9u)], 9u)], 6u)], false, true)), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45518u, 9u)], 6u)], global2[_wgslsmith_index_u32(0u, 6u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 6u)], false, global2[_wgslsmith_index_u32(10518u, 6u)]))), false), global2[_wgslsmith_index_u32(~u_input.b, 6u)]), 4294967295u, select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(97299u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], true), vec4<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 6u)])), any(vec3<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 6u)], true)), false), !global2[_wgslsmith_index_u32(92924u, 6u)]), vec4<bool>(true, false, (false || global2[_wgslsmith_index_u32(4294967295u, 6u)]) != (true && global2[_wgslsmith_index_u32(10484u, 6u)]), true & any(vec2<bool>(false, global2[_wgslsmith_index_u32(55498u, 6u)]))), !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.b), ~4294967295u, 4294967295u), 6u)]), _wgslsmith_add_vec4_i32(vec4<i32>(7101i, ~(u_input.c.x ^ u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.a), var_0.wz), -(~(-1i))), abs(~vec4<i32>(var_1.a, u_input.c.x, u_input.c.x, var_2.a))));
    var var_4 = var_3.d.zxz;
    return Struct_2(false, vec4<bool>(!var_4.x, 252f >= arg_0.x, true, true), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 9u)]), !(!select(!vec4<bool>(false, global2[_wgslsmith_index_u32(106182u, 6u)], var_3.b.x, global2[_wgslsmith_index_u32(0u, 6u)]), !var_3.d, true)), _wgslsmith_sub_vec4_i32(var_3.e & var_3.e, ~var_3.e));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4933u, 11u)], global4[_wgslsmith_index_u32(3726u, 11u)], global4[_wgslsmith_index_u32(u_input.b, 11u)], global4[_wgslsmith_index_u32(u_input.b, 11u)]) * vec4<f32>(global4[_wgslsmith_index_u32(49217u, 11u)], 791f, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 11u)], -1906f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1457f, 787f, global4[_wgslsmith_index_u32(32522u, 11u)], 196f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(33872u, 11u)], global4[_wgslsmith_index_u32(u_input.b, 11u)], -892f, -588f)), vec4<f32>(-537f, -329f, global4[_wgslsmith_index_u32(36126u, 11u)], -1178f)))), vec4<bool>(!all(vec2<bool>(global2[_wgslsmith_index_u32(182358u, 6u)], true)), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)]) < ~0u, true, true))));
    global1 = array<Struct_2, 29>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1945f), -1000f);
    let var_2 = ~countOneBits(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(31564u, global0[_wgslsmith_index_u32(arg_0, 9u)], 0u, 0u), vec4<u32>(106298u, arg_0, var_0.c, 48125u), vec4<u32>(36541u, 0u, global0[_wgslsmith_index_u32(var_0.c, 9u)], 2519u)) ^ vec4<u32>(global0[_wgslsmith_index_u32(57646u, 9u)], 54952u, 1u, u_input.b)));
    var var_3 = Struct_1(-_wgslsmith_div_i32(1i, -(~var_0.e.x)));
    return var_1;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    let var_0 = true;
    let var_1 = Struct_1(-1i);
    global4 = array<f32, 11>();
    global4 = array<f32, 11>();
    let var_2 = var_1;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 7>();
    global1 = array<Struct_2, 29>();
    let var_0 = abs(vec2<i32>(u_input.a, func_4(u_input.c.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 14472u))), vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 6u)] | false, any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(44107u, 6u)]))), !any(vec2<bool>(global2[_wgslsmith_index_u32(34837u, 6u)], global2[_wgslsmith_index_u32(28256u, 6u)])))));
    let var_1 = var_0;
    var var_2 = Struct_1(select(var_0.x, i32(-1i) * -u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 11u)])) < -665f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(firstTrailingBit(min(vec3<u32>(44768u, 4294967295u, global0[_wgslsmith_index_u32(85396u, 9u)]), vec3<u32>(15673u, u_input.b, u_input.b))), vec3<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(104435u, 9u)], 38417u), abs(25503u), abs(4294967295u))), -var_1.x);
}

