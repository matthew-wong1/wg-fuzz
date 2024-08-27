struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global3: array<f32, 12> = array<f32, 12>(1765f, 869f, -1000f, 772f, 991f, 1077f, -589f, -943f, -373f, -1400f, 227f, -1245f);

var<private> global4: array<u32, 1> = array<u32, 1>(1u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> f32 {
    global2 = Struct_1(!(!vec2<bool>(global2.a.x || true, arg_1.x)));
    var var_0 = arg_0.x;
    global0 = ~(~vec3<u32>(u_input.c, global0.x, ~106118u));
    var var_1 = -2147483647i << (global0.x % 32u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9754u, 12u)] + global3[_wgslsmith_index_u32(1u, 12u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-573f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(128365u, 1u)], 12u)]) * 878f);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global0.x, 1u)], 722u), vec2<u32>(global0.x, 0u))), vec2<bool>(!(!global2.a.x), (true & arg_1) | true))) * global3[_wgslsmith_index_u32(4294967295u, 12u)]);
    var var_3 = vec3<bool>(false, true, !global2.a.x);
    var_3 = select(select(!select(select(vec3<bool>(var_1.x, var_3.x, false), vec3<bool>(true, false, arg_0), vec3<bool>(var_0.a.x, false, true)), vec3<bool>(true, true, false), !vec3<bool>(arg_0, false, false)), vec3<bool>(false, (global2.a.x | true) | true, var_1.x), select(vec3<bool>(!arg_3.a.x, select(false, true, var_3.x), !var_1.x), !vec3<bool>(arg_1, false, var_1.x), !(false | var_0.a.x))), select(!select(!vec3<bool>(var_0.a.x, arg_1, false), !vec3<bool>(var_1.x, arg_3.a.x, arg_0), any(vec2<bool>(true, var_1.x))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_0.a.x), vec3<bool>(true, var_1.x, true)), vec3<bool>(true, false, var_3.x), any(vec2<bool>(true, false))), select(vec3<bool>(any(vec3<bool>(global2.a.x, var_1.x, var_3.x)), true, !arg_0), vec3<bool>(all(vec3<bool>(false, true, false)), all(var_0.a), any(vec2<bool>(false, var_3.x))), select(select(vec3<bool>(var_3.x, true, arg_3.a.x), vec3<bool>(arg_3.a.x, true, true), true), vec3<bool>(arg_1, false, var_1.x), select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_0.a.x, false, true), true)))), true);
    return Struct_1(!vec2<bool>(var_1.x, any(select(vec3<bool>(global2.a.x, false, arg_1), vec3<bool>(true, var_3.x, arg_3.a.x), vec3<bool>(var_1.x, var_3.x, var_0.a.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = select(~(~(~abs(vec3<u32>(5063u, global0.x, u_input.c)))), reverseBits(~abs(vec3<u32>(global0.x, 4294967295u, 68540u))) << (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global0.x, 0u, 4294967295u)), vec3<u32>(u_input.b.x, global0.x, u_input.b.x) << (~vec3<u32>(29461u, 0u, 35111u) % vec3<u32>(32u))) % vec3<u32>(32u)), !arg_2);
    global1 = -38456i;
    global1 = u_input.e;
    var var_1 = abs(-2147483647i);
    let var_2 = arg_1;
    return ~abs(~(~vec3<u32>(global0.x, var_0.x, 0u)));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_1(vec2<bool>(all(vec4<bool>(true, global2.a.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x, 1u)], 12u)] != -277f, !global2.a.x)), all(!(!vec3<bool>(true, global2.a.x, true)))));
    var var_1 = abs(u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1339f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-983f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12114u, 1u)], 12u)]), 1092f)))) * vec2<f32>(1362f, global3[_wgslsmith_index_u32(reverseBits(0u), 12u)]));
    var var_3 = var_0;
    global0 = ~(func_4(arg_0, func_2(false, select(false, var_0.a.x, false), u_input.a, var_0), select(select(vec3<bool>(false, true, true), vec3<bool>(true, global2.a.x, true), var_0.a.x), !vec3<bool>(var_0.a.x, global2.a.x, global2.a.x), vec3<bool>(var_3.a.x, false, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, global3[_wgslsmith_index_u32(global0.x, 12u)], 1503f))))) & (~(~vec3<u32>(global4[_wgslsmith_index_u32(97584u, 1u)], 58112u, global0.x)) & (_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 0u, 4294967295u), vec3<u32>(9737u, 31961u, global4[_wgslsmith_index_u32(global0.x, 1u)])) | abs(vec3<u32>(u_input.b.x, 35758u, global0.x)))));
    return ~(_wgslsmith_sub_vec3_u32(max(vec3<u32>(2945u, 26195u, 28794u) | vec3<u32>(1u, global0.x, u_input.b.x), abs(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(21194u, 1u)]))), vec3<u32>(34148u, select(4294967295u, global0.x, true), 1u)) ^ (~vec3<u32>(global4[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(99917u, 1u)], global0.x) ^ vec3<u32>(global4[_wgslsmith_index_u32(1u, 1u)], 6188u, 54892u << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~func_1(52008i << (0u % 32u))));
    global2 = func_2(any(select(select(select(vec3<bool>(false, false, global2.a.x), vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(true, false, false)), vec3<bool>(true, global2.a.x, false), vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), select(vec3<bool>(false, false, true), !vec3<bool>(false, global2.a.x, global2.a.x), !global2.a.x), global2.a.x)), false, vec2<i32>(firstTrailingBit(~(-2147483647i)) << (33675u % 32u), ~_wgslsmith_div_i32(u_input.e, u_input.e) ^ _wgslsmith_div_i32(-u_input.e, ~(-2147483647i))), func_2(any(vec2<bool>(false, true)), all(vec4<bool>(global2.a.x, true, func_2(global2.a.x, global2.a.x, u_input.a, Struct_1(global2.a)).a.x, false)), u_input.a, Struct_1(!select(vec2<bool>(false, true), vec2<bool>(false, global2.a.x), vec2<bool>(global2.a.x, global2.a.x)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19496u, 1u)], 1u)], 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], 210f, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1053f, -1000f, global3[_wgslsmith_index_u32(58303u, 12u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x, 1u)], 12u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(11324u, 12u)] - -465f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2449u, 12u)]), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(12552u, 12u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(32879u, 12u)] + global3[_wgslsmith_index_u32(27504u, 12u)])))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(17999u, 12u)], 1627f, global3[_wgslsmith_index_u32(20569u, 12u)], global3[_wgslsmith_index_u32(35032u, 12u)]) - _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 12u)], global3[_wgslsmith_index_u32(global0.x, 12u)], 822f, global3[_wgslsmith_index_u32(global0.x, 12u)]), vec4<f32>(105f, 1514f, 148f, -1113f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 12u)], global3[_wgslsmith_index_u32(0u, 12u)], 1179f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(59706u, 1u)], 12u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(2451u, 12u)], -339f, 1406f, -589f)), global2.a.x)), true))), select(!(reverseBits(u_input.a.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(33875i, u_input.e, 4818i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))), !any(func_2(global2.a.x, false, vec2<i32>(1i, -2147483647i), Struct_1(global2.a)).a), global2.a.x)));
    var var_1 = ~1u << ((global0.x >> (u_input.c % 32u)) % 32u);
    let var_2 = func_2(select(!global2.a.x, !global2.a.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 12u)] * 607f) <= var_0.x), any(select(!(!vec3<bool>(global2.a.x, false, false)), vec3<bool>(func_2(global2.a.x, global2.a.x, u_input.a, Struct_1(vec2<bool>(global2.a.x, global2.a.x))).a.x, !global2.a.x, global2.a.x), u_input.e <= firstTrailingBit(u_input.d))), firstTrailingBit(u_input.a), func_2(!(!global2.a.x), global2.a.x, u_input.a, func_2(true == any(global2.a), 55103u == global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 1u)], 1u)], -vec2<i32>(u_input.e, u_input.a.x), func_2(false, true, -vec2<i32>(-45947i, -24204i), func_2(global2.a.x, true, vec2<i32>(0i, -5235i), Struct_1(global2.a))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(152u, 12u)], -1001f, global3[_wgslsmith_index_u32(602u, 12u)], var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2054f, 514f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1704f, 326f, 374f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -2332f, -112f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-34856i), _wgslsmith_div_i32(~_wgslsmith_mod_i32(u_input.d, u_input.e), u_input.e), true && var_2.a.x), global0.x, select(-((i32(-1i) * -9807i) & _wgslsmith_sub_i32(-27965i, u_input.e)), countOneBits(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.e, 0i, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, -11922i)))), any(vec4<bool>(all(var_2.a), global2.a.x, false, any(vec3<bool>(false, var_2.a.x, false))))));
}

