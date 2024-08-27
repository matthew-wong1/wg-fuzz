struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-892f, 1196f);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: array<f32, 1> = array<f32, 1>(-571f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(0u, 10u)] & -(global2[_wgslsmith_index_u32(u_input.b, 10u)] >> (~abs(vec3<u32>(u_input.b, 4294967295u, u_input.b)) % vec3<u32>(32u)));
    let var_1 = Struct_1(abs(4294967295u) ^ _wgslsmith_sub_u32(u_input.b ^ u_input.b, ~1u), u_input.b, global3[_wgslsmith_index_u32(1u, 1u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.b, 1u)], 992f)));
    let var_3 = Struct_4(vec2<u32>(0u, var_1.a), var_1.c, Struct_2(max(1u, u_input.b), ~(~(~76332u))), u_input.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.a, 1u)] + 2463f), -256f, _wgslsmith_div_f32(-1130f, -1054f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(var_1.b, 1u)], var_1.c, -963f, var_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, 829f, -2037f, 847f) * vec4<f32>(-1595f, 576f, -123f, global3[_wgslsmith_index_u32(0u, 1u)])))), global1.x))));
    var var_4 = !global1.x != false;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3.e.yz, var_3.e.zw)))), _wgslsmith_f_op_vec2_f32(var_3.e.yx - vec2<f32>(_wgslsmith_f_op_f32(var_3.b - -1672f), 995f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    var var_0 = firstTrailingBit(u_input.c.xx);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(74054u, arg_3), 1u)] + _wgslsmith_f_op_f32(f32(-1f) * -1141f))))), global3[_wgslsmith_index_u32(12088u, 1u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(372f, 262f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), 2207f)))));
    let var_2 = var_1.x;
    let var_3 = Struct_3(vec2<i32>(var_0.x, ~(i32(-1i) * -6775i) | -var_0.x), vec2<bool>(any(!select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, global1.x), global1.x)), select(~18550i < arg_0.x, false, true)), Struct_2(~abs(firstLeadingBit(arg_3)), firstTrailingBit(u_input.b | 28273u)), _wgslsmith_div_f32(var_1.x, -1537f), _wgslsmith_dot_vec2_u32((max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, 4294967295u)) & ~vec2<u32>(u_input.b, arg_3)) & vec2<u32>(u_input.b, ~u_input.b), vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(78093u, u_input.b), vec2<u32>(u_input.b, 4471u))), countOneBits(_wgslsmith_add_u32(u_input.b, u_input.b)))));
    let var_4 = Struct_2(~abs(0u), 23301u);
    return min(var_3.a.x, -select(1i, var_3.a.x, var_3.b.x));
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-u_input.c.xx, u_input.c.yz), -24609i), func_4(-u_input.c.xxx, vec4<f32>(1336f, 297f, 996f, -1000f), _wgslsmith_f_op_vec2_f32(func_3(false)), _wgslsmith_mult_u32(max(4294967295u, u_input.b), ~_wgslsmith_mod_u32(u_input.b, u_input.b))), 0i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0, _wgslsmith_f_op_vec2_f32(ceil(arg_0))))));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global2 = array<vec3<i32>, 10>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(-761f * 115f), global0.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global3[_wgslsmith_index_u32(u_input.b, 1u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 1u)], 1648f) - vec2<f32>(1027f, global3[_wgslsmith_index_u32(u_input.b, 1u)]))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(201f - 1477f)))));
    var var_0 = Struct_2(u_input.b, 1u);
    let var_1 = _wgslsmith_f_op_f32(2567f - _wgslsmith_f_op_f32(select(-817f, global0.x, true)));
    var var_2 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - global0.x)), 1194f, -1000f);
    return select(!(!select(select(vec3<bool>(false, false, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(global1.x, global1.x, true), false)), !(!(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, false)))), true);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.b, 8081u), 1u)], global0.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<bool>(true, any(func_1(u_input.a)), (~u_input.b >> (~22851u % 32u)) == u_input.b), Struct_1(1u, countOneBits(u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_div_f32(global0.x, -1051f), true))))), u_input.b);
    global2 = array<vec3<i32>, 10>();
    let var_1 = -217f;
    let var_2 = vec4<bool>(false, any(select(vec2<bool>(false, any(vec3<bool>(global1.x, global1.x, false))), vec2<bool>(!global1.x, any(vec2<bool>(global1.x, true))), !global1.x & any(vec3<bool>(global1.x, true, global1.x)))), !(_wgslsmith_f_op_f32(trunc(364f)) <= var_1), -182f >= _wgslsmith_f_op_f32(ceil(-937f)));
    let var_3 = Struct_4(vec2<u32>(var_0.a, u_input.b), 1072f, Struct_2((~10983u >> (countOneBits(var_0.a) % 32u)) & reverseBits(1658u), max(func_5(var_2.xyy, func_5(vec3<bool>(true, var_2.x, var_2.x), Struct_1(u_input.b, var_0.a, -295f), 57506u), 88712u).a, ~u_input.b)), ~(-485i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, 119f)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-2188f - 432f), _wgslsmith_f_op_vec2_f32(func_3(global1.x)).x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_0.c), 770f, _wgslsmith_f_op_f32(-483f - global3[_wgslsmith_index_u32(u_input.b, 1u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1189f, 292f, var_0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global0.x) - 481f)) * -474f), _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.c.b, 64616u, abs(_wgslsmith_sub_u32(35934u, var_3.a.x))), ~(~min(vec3<u32>(var_3.a.x, 4294967295u, u_input.b), vec3<u32>(25429u, var_0.a, var_0.b)))), u_input.c.x, abs(_wgslsmith_div_vec4_u32(vec4<u32>(71311u & var_0.b, ~var_0.a, u_input.b, var_3.a.x ^ 751u), reverseBits(firstTrailingBit(vec4<u32>(4192u, u_input.b, var_0.a, 0u))))));
}

