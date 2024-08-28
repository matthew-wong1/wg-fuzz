struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: vec2<i32>;

var<private> global3: array<f32, 22> = array<f32, 22>(225f, -147f, -2372f, -1255f, -438f, -1000f, -1976f, 1256f, 260f, -106f, -447f, -1098f, 1415f, -882f, -1218f, -2526f, 619f, 646f, -402f, 757f, 235f, -1000f);

var<private> global4: array<f32, 2> = array<f32, 2>(300f, -760f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1801f, 1314f, global3[_wgslsmith_index_u32(5394u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<f32>(1000f, 916f, global4[_wgslsmith_index_u32(57836u, 2u)], -1981f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(357f, -1196f, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 22u)], -137f, global4[_wgslsmith_index_u32(0u, 2u)], global4[_wgslsmith_index_u32(u_input.d.x, 2u)]))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(14380u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], -913f, 2694f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(347f, global4[_wgslsmith_index_u32(u_input.b.x, 2u)], -1523f, global4[_wgslsmith_index_u32(21177u, 2u)])))))));
    global1 = array<vec3<i32>, 19>();
    var var_1 = u_input.e;
    var_1 = u_input.e;
    var var_2 = abs(1u);
    return _wgslsmith_f_op_f32(f32(-1f) * -1524f);
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global3 = array<f32, 22>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~_wgslsmith_clamp_vec2_i32(u_input.e, u_input.e, vec2<i32>(-2147483647i, 2147483647i))))), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b.x, 22u)])));
    var var_1 = ~(1u >> (1u % 32u));
    var var_2 = vec4<f32>(global3[_wgslsmith_index_u32(abs(u_input.b.x), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.d.x, 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-929f)) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 22u)])))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(select(625u, 0u, all(vec2<bool>(true, true))), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.x)), var_2.x))) * _wgslsmith_f_op_vec2_f32(select(var_2.zx, vec2<f32>(337f, -942f), true)));
    return -795f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = Struct_1(521f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1263f + _wgslsmith_f_op_f32(func_2(u_input.b.ww))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b - arg_3.x)))))), arg_0.c, vec2<bool>(!(any(vec3<bool>(arg_1.d.x, arg_1.c.x, arg_1.c.x)) || arg_2.c.x), any(arg_2.c.yz)), min(vec2<u32>(abs(_wgslsmith_sub_u32(1u, arg_2.e.x)), 35237u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.e.x, 0u), _wgslsmith_clamp_vec2_u32(arg_1.e, arg_0.e, vec2<u32>(u_input.b.x, arg_0.e.x)))));
    var var_1 = all(!(!(!select(vec4<bool>(arg_2.d.x, true, false, arg_2.d.x), vec4<bool>(false, false, arg_0.d.x, arg_0.d.x), arg_1.c.x))));
    var var_2 = Struct_1(arg_1.b, arg_1.b, !vec3<bool>(_wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 22u)], 490f)), true, true), select(!arg_0.c.zy, vec2<bool>(any(var_0.c), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), true), (min(countOneBits(vec2<u32>(arg_1.e.x, arg_1.e.x)), countOneBits(u_input.d.zy)) >> ((arg_0.e >> ((vec2<u32>(4294967295u, u_input.b.x) << (vec2<u32>(arg_2.e.x, 46984u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))) & vec2<u32>(21822u, 0u));
    return _wgslsmith_dot_vec2_i32(u_input.e, select(~u_input.e, abs(vec2<i32>(countOneBits(u_input.c), global2.x)), (select(-2147483647i, -7630i, arg_2.d.x) < (u_input.c << (u_input.b.x % 32u))) || any(!var_2.c.xz)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(9748u & max(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.e.x, arg_1.e.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(u_input.b, u_input.b)), u_input.d.x), 22u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(abs(1u)), 2u)] + global3[_wgslsmith_index_u32(1u, 22u)]), true)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(max(47606u, u_input.b.x), u_input.d.x), ~arg_1.e.x), 22u)], arg_3, vec2<bool>(arg_3.x, any(select(arg_1.c.xy, arg_1.d, arg_2)) | true), ~vec2<u32>(34029u, u_input.b.x));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -(select(-1474i, -108359i, true) << (var_1.e.x % 32u)), u_input.e.x | _wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, -26046i, u_input.a, 0i), -vec4<i32>(-2147483647i, 6097i, 15210i, global2.x))), global1[_wgslsmith_index_u32(max(u_input.d.x, 4294967295u), 19u)]);
    return Struct_1(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a | 1i, ~(u_input.e.x & -2147483647i)))), 207f, !vec3<bool>(!(!arg_2), true, all(select(vec4<bool>(false, true, arg_2, false), vec4<bool>(var_1.d.x, arg_0, false, arg_1.c.x), arg_3.x))), vec2<bool>(_wgslsmith_div_i32(global2.x, global2.x >> (31707u % 32u)) != (func_1(Struct_1(-316f, global3[_wgslsmith_index_u32(arg_1.e.x, 22u)], arg_1.c, arg_1.c.xx, vec2<u32>(4294967295u, 23441u)), arg_1, arg_1, vec2<f32>(global4[_wgslsmith_index_u32(0u, 2u)], var_1.a)) ^ (global2.x >> (18729u % 32u))), arg_0), _wgslsmith_mod_vec2_u32(arg_1.e, u_input.b.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.e;
    let var_0 = vec4<f32>(global3[_wgslsmith_index_u32(~(~4294967295u), 22u)], global3[_wgslsmith_index_u32(67371u, 22u)], global4[_wgslsmith_index_u32(max(u_input.b.x, u_input.d.x), 2u)], global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.zy, select(max(vec2<u32>(u_input.d.x, 50431u), vec2<u32>(2051u, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 12525u), vec2<u32>(55159u, u_input.b.x)), false)), 2u)]);
    let var_1 = func_4(any(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), false))), Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), vec3<bool>(u_input.b.x >= (1227u & u_input.d.x), -2147483647i < func_1(Struct_1(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 186f, vec3<bool>(false, true, false), vec2<bool>(false, true), vec2<u32>(u_input.d.x, u_input.b.x)), Struct_1(-1000f, global3[_wgslsmith_index_u32(u_input.b.x, 22u)], vec3<bool>(false, false, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.d.x, 7u)]), Struct_1(348f, global4[_wgslsmith_index_u32(0u, 2u)], vec3<bool>(false, true, true), vec2<bool>(false, true), vec2<u32>(0u, u_input.d.x)), var_0.yz), select(true, true, any(vec2<bool>(true, false)))), vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), all(vec4<bool>(false, true, true, false))), vec2<u32>(u_input.d.x, firstTrailingBit(reverseBits(u_input.d.x)))), true, select(vec3<bool>(any(vec3<bool>(false, true, true)) && (global2.x >= -2147483647i), true, true), vec3<bool>(true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))));
    let var_2 = var_1;
    var var_3 = var_1;
    let var_4 = var_0;
    let var_5 = u_input.d.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-56810i, -26527i, global2.x), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(firstLeadingBit(~max(1u, var_2.e.x)), 2u)]));
}

