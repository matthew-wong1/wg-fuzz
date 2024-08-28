struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(78155u, 1u, 0u, 4294967295u, 4294967295u, 4294967295u, 28175u, 0u, 1u, 0u, 4294967295u, 31901u, 4294967295u, 17266u, 4294967295u, 4294967295u, 0u, 1u, 8461u, 1u, 0u, 4294967295u, 119787u, 1u, 85850u, 1u, 0u, 0u, 1u, 0u);

var<private> global1: array<bool, 6>;

var<private> global2: vec3<f32> = vec3<f32>(648f, 861f, 853f);

var<private> global3: array<i32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = u_input.a.x;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), arg_0.a.x, _wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)))));
    global0 = array<u32, 30>();
    global3 = array<i32, 30>();
    let var_1 = Struct_2(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 13533u, 1u), vec4<u32>(0u, 1u, var_0, global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), var_0, ~4294967295u, 68478u), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-359f, -341f, global2.x))), vec3<f32>(-499f, arg_0.a.x, -1001f))), vec3<f32>(873f, _wgslsmith_f_op_f32(trunc(-572f)), _wgslsmith_f_op_f32(-1384f + arg_0.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1434f, arg_0.a.x))))), vec4<u32>(51875u >> (1u % 32u), 1700u, ~(~0u), u_input.a.x) ^ select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(53935u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0, 30u)], 30u)], 30u)], var_0, 4294967295u)), abs(select(vec4<u32>(var_0, var_0, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), vec4<u32>(var_0, 0u, u_input.a.x, 28257u), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 6u)], false))), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x * arg_0.a.x))))));
    return select(select(vec4<bool>(true, _wgslsmith_f_op_f32(-global2.x) == -885f, global1[_wgslsmith_index_u32(15573u, 6u)], countOneBits(var_1.a.x) < ~29323u), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)] & true, false, global1[_wgslsmith_index_u32(0u, 6u)], any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, global1[_wgslsmith_index_u32(18295u, 6u)], global1[_wgslsmith_index_u32(var_0, 6u)]))), vec4<bool>(all(select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, true, global1[_wgslsmith_index_u32(38087u, 6u)]), false)), global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(59291u, 0u)), 6u)], global1[_wgslsmith_index_u32(~(u_input.a.x | global0[_wgslsmith_index_u32(64199u, 30u)]), 6u)])), !(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], true)))), global1[_wgslsmith_index_u32(4617u, 6u)]);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_0.a);
    var var_1 = func_3(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, global2.x, global2.x) + _wgslsmith_f_op_vec3_f32(select(arg_1.b.a, var_0.a, vec3<bool>(global1[_wgslsmith_index_u32(21867u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_f_op_vec3_f32(-arg_1.b.a))));
    global0 = array<u32, 30>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(475f, _wgslsmith_f_op_f32(step(arg_0.a.x, 1956f)), 902f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1187f)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)))))) * var_0.a);
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(10101u, 4294967295u), vec2<u32>(arg_1.a.x, u_input.a.x) << (vec2<u32>(global0[_wgslsmith_index_u32(0u, 30u)], arg_1.d.x) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(select(0u, 11929u, var_1.x) & (0u | u_input.a.x), 30u)]), select(_wgslsmith_mod_vec3_u32(arg_1.d.wyw, u_input.a << (arg_1.d.yzw % vec3<u32>(32u))), max(vec3<u32>(18518u, 21791u, global0[_wgslsmith_index_u32(arg_1.a.x, 30u)]), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), abs(global3[_wgslsmith_index_u32(arg_1.a.x, 30u)]) == global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(15770u, u_input.a.x, 22633u, 1u)), 30u)]));
    return _wgslsmith_f_op_f32(max(363f, var_0.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    let var_0 = arg_0;
    let var_1 = abs(countOneBits(countOneBits(~_wgslsmith_mod_i32(arg_2.x, 31923i))));
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(select(true, global1[_wgslsmith_index_u32(~33255u, 6u)], all(vec3<bool>(true, true, true))), !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 16178u, 346u), u_input.a)), 6u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(var_0, Struct_2(vec4<u32>(29025u, 4294967295u, u_input.a.x, 1u), Struct_1(vec3<f32>(arg_0.a.x, -1000f, var_0.a.x)), var_0.a.x, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(38009u, 30u)], u_input.a.x, u_input.a.x), global2.x))))) * arg_0.a.x) >= var_0.a.x);
    var var_3 = ~_wgslsmith_add_i32(-(~(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)] ^ var_1)), firstTrailingBit(arg_2.x));
    let var_4 = -147f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = global2.xx;
    let var_1 = !vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 6u)])), !(!func_1(Struct_1(vec3<f32>(var_0.x, global2.x, 173f)), Struct_3(vec3<f32>(409f, global2.x, global2.x)), vec3<i32>(46344i, global3[_wgslsmith_index_u32(1u, 30u)], -10815i))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~u_input.a.x), 6u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~31444u, 30u)], 30u)] > countOneBits(-global3[_wgslsmith_index_u32(4294967295u, 30u)]));
    global0 = array<u32, 30>();
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global2.zy))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, global2.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, -1688f, var_2.x) + vec3<f32>(var_0.x, -1083f, global2.x))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1764f, var_0.x) - _wgslsmith_f_op_f32(var_2.x - -225f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(423f, global2.x))))))));
    let var_3 = vec3<i32>(-1i, -1i, global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(58446u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) << (u_input.a.yy % vec2<u32>(32u)), select(vec2<u32>(2159u, 31868u), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(39838u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23602u, 30u)], 6u)])))), 30u)], 30u)]);
    var_0 = vec2<f32>(788f, 1279f);
    let var_4 = countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~max(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)]), u_input.a.x), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec2_u32(~u_input.a.zy, _wgslsmith_add_vec2_u32(var_4.yx, vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(10411u, u_input.a.x) % vec2<u32>(32u)))), var_4.xz));
}

