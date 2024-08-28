struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<u32, 6> = array<u32, 6>(18412u, 1u, 15325u, 4294967295u, 1u, 45129u);

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -1606i), vec2<i32>(-46175i, -17492i), vec2<i32>(-46176i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-19228i, -1i), vec2<i32>(37896i, i32(-2147483648)), vec2<i32>(37110i, 0i), vec2<i32>(-13584i, 54806i), vec2<i32>(2147483647i, 1i));

var<private> global3: array<vec3<u32>, 8>;

var<private> global4: vec4<i32> = vec4<i32>(-35109i, -27342i, -1i, i32(-2147483648));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    global3 = array<vec3<u32>, 8>();
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_1 = 26615u;
    global0 = array<u32, 8>();
    let var_2 = Struct_2(vec3<bool>(all(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, false, false, true), var_0.x)), false, var_0.x), 52621u);
    return i32(-1i) * -1i;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_2 {
    global3 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 1093f)))));
    var var_1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, global0[_wgslsmith_index_u32(arg_1.x, 8u)], 17418u), u_input.a), vec3<u32>(firstTrailingBit(u_input.c), 3654u, global0[_wgslsmith_index_u32(0u, 8u)] & global0[_wgslsmith_index_u32(27758u, 8u)])) | (~1u | global1[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 6u)]);
    var_1 = ~(~5811u);
    var var_2 = Struct_1(76182u, select(vec2<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))), vec2<bool>(true != all(vec2<bool>(false, true)), true), true), all(select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(false, true), any(vec2<bool>(false, false)))));
    return Struct_2(vec3<bool>(true, true, true), ~(~_wgslsmith_mult_u32(49977u, ~u_input.b.x)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f - _wgslsmith_f_op_f32(max(-1272f, 1764f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f - 371f))), _wgslsmith_f_op_f32(sign(-729f)), -1000f)));
    let var_1 = vec3<bool>(!all(arg_0.a.xy), false, arg_0.a.x);
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(~arg_0.b & ~35931u) | 4294967295u, 8u)], !select(!(!vec2<bool>(arg_0.a.x, false)), vec2<bool>(global0[_wgslsmith_index_u32(98399u, 8u)] != arg_0.b, true), var_1.zz), !any(vec2<bool>(arg_0.a.x, all(vec3<bool>(var_1.x, false, var_1.x)))));
    global0 = array<u32, 8>();
    let var_3 = select(!select(select(select(vec4<bool>(false, true, true, var_2.b.x), vec4<bool>(arg_0.a.x, true, false, true), false), !vec4<bool>(var_1.x, var_2.b.x, true, var_1.x), !arg_0.a.x), !select(vec4<bool>(false, false, arg_0.a.x, var_2.b.x), vec4<bool>(true, false, false, var_1.x), vec4<bool>(false, var_2.c, true, true)), arg_0.a.x), select(!(!select(vec4<bool>(true, var_2.b.x, var_2.b.x, false), vec4<bool>(false, var_2.b.x, false, var_2.b.x), var_2.c)), vec4<bool>(!(u_input.c <= global0[_wgslsmith_index_u32(0u, 8u)]), true, _wgslsmith_f_op_f32(max(1000f, var_0.x)) != _wgslsmith_f_op_f32(var_0.x - var_0.x), true), vec4<bool>(all(func_3(0i, u_input.a.zy, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)).a.yx), (false || var_1.x) && (arg_0.a.x & true), false, !any(vec2<bool>(false, var_2.c)))), var_1.x);
    return func_3(global4.x, max(~countOneBits(max(u_input.b, u_input.a.yy)), vec2<u32>(var_2.a, _wgslsmith_div_u32(10371u >> (0u % 32u), global0[_wgslsmith_index_u32(0u, 8u)] | 94800u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1327f + -269f), _wgslsmith_f_op_f32(select(-192f, 924f, false))), -780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(596f, -1002f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 371f, var_0.x, var_0.x) - vec4<f32>(-1396f, 355f, var_0.x, 772f))) - vec4<f32>(-1627f, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), -675f, -447f))));
}

fn func_1() -> Struct_2 {
    global2 = array<vec2<i32>, 10>();
    let var_0 = global4.x >> (u_input.c % 32u);
    let var_1 = func_4(func_3(-1i | (func_2() | 75002i), firstTrailingBit(~u_input.a.yy), vec4<f32>(205f, _wgslsmith_f_op_f32(666f + 955f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f - -1000f)), _wgslsmith_f_op_f32(461f + 154f))));
    let var_2 = global4.www;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f))), -227f))));
    return func_3(-select(-16763i, max(1i, func_2()), false), vec2<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(23395u, 8u)], 4294967295u, var_1.b)), u_input.a), var_1.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3 + 1654f), _wgslsmith_f_op_f32(step(var_3, 669f)), -959f, _wgslsmith_f_op_f32(var_3 + var_3))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -286f, _wgslsmith_f_op_f32(max(-1881f, var_3)), _wgslsmith_f_op_f32(abs(326f)))), select(!select(vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(true, true, var_1.a.x, true), var_1.a.x), vec4<bool>(!var_1.a.x, any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), true, !var_1.a.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 8>();
    global4 = vec4<i32>(-global4.x, 3299i, ~(global4.x ^ 1i), -1i);
    var var_0 = Struct_1(countOneBits(global1[_wgslsmith_index_u32(~45882u, 6u)]), vec2<bool>(true, _wgslsmith_f_op_f32(sign(-781f)) != 1729f), firstTrailingBit(~u_input.a.x << ((global0[_wgslsmith_index_u32(u_input.a.x, 8u)] >> (global0[_wgslsmith_index_u32(0u, 8u)] % 32u)) % 32u)) > _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b.x, 70007u) & vec2<u32>(global1[_wgslsmith_index_u32(27629u, 6u)], global1[_wgslsmith_index_u32(47292u, 6u)])), countOneBits(~vec2<u32>(0u, 0u))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, -2772f, 1095f, 542f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, 157f, 1283f, -1091f) + vec4<f32>(-870f, 1064f, 309f, 466f)))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-446f)), _wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(-1231f - _wgslsmith_f_op_f32(760f * _wgslsmith_f_op_f32(ceil(-1000f)))), -586f));
    let var_3 = func_3(_wgslsmith_div_i32(-15410i, firstLeadingBit(1i << (abs(var_0.a) % 32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.b, 21722u)) ^ var_1.b, 48749u) ^ u_input.a.yx, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-723f, var_2.x, 305f, 230f))), var_2, select(vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + vec4<f32>(var_2.x, var_2.x, var_2.x, -968f)), var_1.a.x)))));
    global2 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.b, 20657u & (global0[_wgslsmith_index_u32(func_3(21586i, u_input.b, vec4<f32>(201f, var_2.x, -287f, -733f)).b, 8u)] | ~1u)));
}

