struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec2<i32>;

var<private> global2: array<bool, 12>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    global2 = array<bool, 12>();
    var var_0 = ~global0[_wgslsmith_index_u32(arg_3.a.x, 6u)];
    var_0 = _wgslsmith_dot_vec4_i32(reverseBits(select(~vec4<i32>(global1.x, 33838i, 19250i, -2147483647i), -(~vec4<i32>(global1.x, global1.x, global1.x, 0i)), !(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], true, true, arg_1.x)))), vec4<i32>(-1i) * -vec4<i32>(arg_3.d, reverseBits(arg_3.c.x), i32(-1i) * -9285i, _wgslsmith_sub_i32(7949i, u_input.b.x)));
    let var_1 = Struct_2(-countOneBits(u_input.b.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1381f * 1000f)), arg_3.b.x, 211f))), select(true, global2[_wgslsmith_index_u32(1u, 12u)], !(arg_2.a.x != arg_3.b.x)) & global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, u_input.e), 12u)]);
    var var_2 = Struct_1(vec2<u32>(u_input.c, ~(~4294967295u)), arg_3.b, -vec3<i32>(31673i, u_input.b.x, _wgslsmith_div_i32(~arg_3.d, 0i)), firstTrailingBit(firstTrailingBit(u_input.b.x & -global1.x)));
    return 3447i;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    var var_0 = ~select(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(abs(~4294967295u), 6u)], global1.x, firstLeadingBit(func_3(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], false), Struct_3(vec2<f32>(-1294f, -1627f)), Struct_1(vec2<u32>(u_input.d, u_input.e), vec2<f32>(-1152f, -1000f), vec3<i32>(-2147483647i, -2147483647i, 21146i), 0i)))), vec4<i32>(global1.x, -50588i, 0i, -10539i), all(vec3<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(38668u, 12u)], false)), global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(u_input.a.x & arg_0, 12u)])));
    let var_1 = select(vec3<bool>(!(u_input.b.x > u_input.b.x), !global2[_wgslsmith_index_u32(countOneBits(4294967295u), 12u)], true), !vec3<bool>(false, any(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], false, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), true), vec3<bool>(0u > _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1u, u_input.a.x, 0u), ~vec4<u32>(u_input.c, u_input.e, arg_0, u_input.c)), any(!select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], true, true), global2[_wgslsmith_index_u32(arg_0, 12u)])), all(!vec3<bool>(true, global2[_wgslsmith_index_u32(10481u, 12u)], true))));
    let var_2 = !var_1;
    global1 = u_input.b;
    var var_3 = Struct_2(var_0.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(654f))), -1173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2119f * -685f)) - -264f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(670f, -211f) - _wgslsmith_f_op_f32(ceil(2124f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-202f, 1329f, true)))))), true);
    return vec2<bool>(!var_1.x || (any(vec4<bool>(var_2.x, true, true, global2[_wgslsmith_index_u32(4294967295u, 12u)])) | var_1.x), false);
}

fn func_1() -> vec4<bool> {
    var var_0 = !(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(9955u, 12u)]), !vec2<bool>(global2[_wgslsmith_index_u32(54156u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), global2[_wgslsmith_index_u32(~u_input.e, 12u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(19588u, 12u)], true), func_2(u_input.d), !vec2<bool>(global2[_wgslsmith_index_u32(30461u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.e, 12u)], true)));
    global2 = array<bool, 12>();
    var var_1 = _wgslsmith_clamp_u32(29309u, abs(_wgslsmith_dot_vec2_u32(reverseBits(~u_input.a.xw), vec2<u32>(~u_input.e, ~65384u))), ~countOneBits(abs(_wgslsmith_add_u32(u_input.c, u_input.a.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, 2404f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1204f, -1506f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 121f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(203f, 309f)), _wgslsmith_f_op_f32(-1182f + 864f)))));
    global0 = array<i32, 6>();
    return !(!select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global2[_wgslsmith_index_u32(4294967295u, 12u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], false, global2[_wgslsmith_index_u32(62964u, 12u)], false), vec4<bool>(global2[_wgslsmith_index_u32(5386u, 12u)], false, global2[_wgslsmith_index_u32(u_input.e, 12u)], var_0.x), false), all(vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(u_input.d, 12u)]))), vec4<bool>(u_input.d >= 4294967295u, var_0.x, false || var_0.x, true), !(!vec4<bool>(var_0.x, false, var_0.x, true))));
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-222f)))))));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a.x), ~1u), countOneBits(u_input.a.xw)), 12u)];
    var var_2 = Struct_2(global1.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 703f, var_0.x, -537f) - vec4<f32>(-2230f, -444f, 271f, var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 1038f), _wgslsmith_f_op_f32(var_0.x + 1225f), _wgslsmith_f_op_f32(max(-117f, var_0.x)), -406f), arg_0.x)))), !arg_0.x);
    return StorageBuffer(select(_wgslsmith_sub_u32(~0u, firstLeadingBit(u_input.e)), firstLeadingBit(~0u), global2[_wgslsmith_index_u32(firstTrailingBit(43184u), 12u)] & true) >> (reverseBits(115177u) % 32u), 697f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.b.yzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1931f, -1702f, var_0.x)), select(vec3<bool>(var_2.c, false, arg_0.x), vec3<bool>(arg_0.x, var_2.c, global2[_wgslsmith_index_u32(u_input.c, 12u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 12u)], true)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -212f, var_2.b.x)))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(select(-vec2<i32>(-1i, u_input.b.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 2147483647i, global1.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], 0i)), 25377i), global2[_wgslsmith_index_u32(u_input.c, 12u)]), abs(vec2<i32>(-global1.x, u_input.b.x))));
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f)) + 719f)));
    let var_1 = 2147483647i ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b, -u_input.b), ~(-9391i));
    let x = u_input.a;
    s_output = func_4(select(func_1(), vec4<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(31076u, 12u)], false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 12u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, true))), any(select(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.d, 12u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(18550u, 12u)], global2[_wgslsmith_index_u32(u_input.e, 12u)]), global2[_wgslsmith_index_u32(u_input.c, 12u)])), true && (var_0 == var_0), any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(6349u, 12u)], true))), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(u_input.e, 12u)], true, true))));
}

