struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(480f, -252f, -672f, -1953f, -817f, 471f, 286f, 1666f, -1398f, 1000f, -100f, -425f, -220f, 1000f, 548f, 1769f, 876f, -1000f, 1208f, -1000f, -627f, 753f, -823f);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(368f))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(exp2(arg_1))), 580f, -533f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], arg_1, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2157f, -417f, global0[_wgslsmith_index_u32(107520u, 23u)], global0[_wgslsmith_index_u32(44616u, 23u)])), false)) - vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(79871u, 3934u, 1u, 4294967295u), -746f)), _wgslsmith_f_op_f32(sign(396f)), 635f, _wgslsmith_f_op_f32(f32(-1f) * -359f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(-1415f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(13026u, 23u)] - arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1)))), -1394f, global0[_wgslsmith_index_u32(7565u, 23u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1375f, global0[_wgslsmith_index_u32(1u, 23u)], -320f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(442f, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(11101u, 23u)])))))), vec4<bool>(any(vec3<bool>(true, global1.a.x, true)), select(true, all(arg_0.a), false), global1.a.x, true))));
    let var_2 = Struct_2(u_input.a.x, Struct_1(select(!global1.a, !global1.a, !select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.a.x, global1.a.x), vec2<bool>(false, arg_0.a.x)))));
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), max(vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, var_0.x, u_input.b.x)), -22250i), abs(u_input.b))), max(abs(select(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), var_0), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.b.x), vec3<i32>(u_input.a.x, -1i, 1833i)), vec3<bool>(true, var_2.b.a.x, var_2.b.a.x))), vec3<i32>(~(var_2.a >> (4294967295u % 32u)), 22357i, 0i)), var_0);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(55246u, 23u)]), _wgslsmith_div_f32(-771f, _wgslsmith_f_op_f32(-653f - -489f)), -625f);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    return _wgslsmith_sub_u32(35253u, firstTrailingBit(abs(~63567u) ^ arg_1));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 7059u, 4294967295u), vec4<u32>(arg_0, arg_0, arg_0, arg_0)), firstTrailingBit(vec4<u32>(arg_0, 0u, arg_0, 0u)) ^ vec4<u32>(arg_0, 4294967295u, 0u, 1u)), ~(~vec4<u32>(1u, 0u, 0u, arg_0))), vec4<u32>(min(arg_0, 4294967295u), _wgslsmith_add_u32(~arg_0, ~_wgslsmith_div_u32(arg_0, arg_0)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 23053u, arg_0) & vec3<u32>(39758u, arg_0, 25165u), firstTrailingBit(vec3<u32>(arg_0, 39203u, 1u)) >> (select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, 44865u, arg_0), vec3<bool>(global1.a.x, true, global1.a.x)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(arg_0, arg_0, arg_0) << (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))), ~(~vec3<u32>(arg_0, arg_0, 0u)))));
    let var_1 = _wgslsmith_clamp_u32(~func_4(arg_2.b, ~(~71203u), func_2(arg_2.b, _wgslsmith_div_f32(430f, global0[_wgslsmith_index_u32(20562u, 23u)]))), ~arg_0, max(firstTrailingBit(53306u), var_0.x));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_2 = select(!select(vec3<bool>(global1.a.x, arg_2.b.a.x, true), vec3<bool>(17988u > arg_0, true, all(vec2<bool>(true, false))), _wgslsmith_dot_vec3_u32(var_0.zwz, vec3<u32>(arg_0, arg_0, arg_0)) == _wgslsmith_mod_u32(4294967295u, 46580u)), arg_1, any(!vec3<bool>(all(arg_1.yz), arg_2.a < u_input.b.x, arg_0 < arg_0)));
    return all(select(!(!arg_1), select(!vec3<bool>(false, global1.a.x, false), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, true, arg_2.b.a.x), global1.a.x), vec3<bool>(!var_2.x, any(global1.a), arg_1.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.a.x);
    global0 = array<f32, 23>();
    var var_1 = abs(~select(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(23780u, 37084u, 49685u), select(vec3<u32>(456u, 20455u, 87148u), vec3<u32>(66805u, 0u, 9330u), vec3<bool>(global1.a.x, global1.a.x, global1.a.x))), func_1(~0u, select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), false), Struct_2(var_0, Struct_1(global2[_wgslsmith_index_u32(0u, 31u)])))));
    let var_2 = var_0;
    let var_3 = func_2(Struct_1(vec2<bool>(false, true)), -226f);
    var_1 = _wgslsmith_div_u32(~34070u, select(1u, 13555u, true) | (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(29154u, 4294967295u)) >> (countOneBits(0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(57937u, 4294967295u)), vec2<u32>(1u, 1u)), max(countOneBits(vec2<u32>(26348u, 4294967295u)), ~vec2<u32>(26803u, 3466u))), select(abs(~(~vec4<u32>(56236u, 36088u, 15341u, 39356u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~1u, ~0u, firstTrailingBit(67670u)), vec4<u32>(1u, min(1u, 0u), reverseBits(4294967295u), 1u)), ~u_input.a.x == 5063i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(240f, global0[_wgslsmith_index_u32(0u, 23u)], 208f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(670f, global0[_wgslsmith_index_u32(13747u, 23u)], global0[_wgslsmith_index_u32(6508u, 23u)]))), var_3.b.a.x | false)))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 21680u, 2942u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(25069u, 10657u, 11155u, 5766u), vec4<u32>(1487u, 57638u, 81408u, 1u)), reverseBits(vec4<u32>(286u, 1u, 1u, 0u))), min(vec4<u32>(1u, 1u, 1u, 1u), min(~vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(12898u, 0u, 1u, 0u))), vec4<u32>(_wgslsmith_mult_u32(24675u, firstLeadingBit(6411u)), ~(43536u >> (0u % 32u)), firstTrailingBit(43026u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10741u, 1u, 34898u), vec3<u32>(72832u, 4294967295u, 46515u)))), _wgslsmith_f_op_f32(f32(-1f) * -259f));
}

