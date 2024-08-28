struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, false, false, true, true, true, true, false, true, true, true, true, true, false, false, false, true, false, false, false, true, false);

var<private> global1: array<i32, 10> = array<i32, 10>(15113i, 74043i, -13407i, 61288i, i32(-2147483648), -1i, 1283i, -33393i, 16999i, 1i);

var<private> global2: f32 = -148f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<i32> {
    global2 = arg_1.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(arg_1.x - 1000f), _wgslsmith_f_op_f32(max(2304f, arg_1.x)), _wgslsmith_f_op_f32(-1147f - arg_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 560f, 248f, arg_1.x) + vec4<f32>(-791f, arg_1.x, 845f, arg_1.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, -229f, arg_1.x, arg_1.x))))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(668f, -1285f, true)), 373f, any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true)))), var_0.x);
    global0 = array<bool, 23>();
    global2 = _wgslsmith_f_op_f32(sign(arg_1.x));
    return abs(select(firstTrailingBit(vec4<i32>(19058i, max(global1[_wgslsmith_index_u32(85284u, 10u)], 2147483647i), ~(-32381i), ~arg_0.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, -2147483647i, -8267i) ^ vec4<i32>(u_input.d.x, -1i, global1[_wgslsmith_index_u32(0u, 10u)], u_input.b), ~vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(20694u, 10u)], -2147483647i, u_input.b)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<bool, 23>();
    var var_0 = select(~func_3(vec4<i32>(global1[_wgslsmith_index_u32(1u, 10u)], u_input.d.x, 5064i, global1[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, arg_1.x)))), vec4<i32>(1i, -2147483647i, -33825i, reverseBits(u_input.d.x)), select(vec4<bool>(!arg_0.x, select(true, true, arg_0.x), select(arg_0.x, false, true), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false))), !vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 23u)], true, global0[_wgslsmith_index_u32(90850u, 23u)], true), vec4<bool>(u_input.b != u_input.d.x, global0[_wgslsmith_index_u32(861u, 23u)] || true, !global0[_wgslsmith_index_u32(108609u, 23u)], all(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.c, 23u)]))))) >> (_wgslsmith_clamp_vec4_u32(max(~arg_3 | vec4<u32>(1u, 0u, u_input.c, 1355u), arg_3), ~(abs(vec4<u32>(10606u, arg_2, arg_2, arg_2)) >> (arg_3 % vec4<u32>(32u))), vec4<u32>(arg_2, ~47957u, abs(max(arg_2, arg_3.x)), arg_3.x)) % vec4<u32>(32u));
    global2 = -122f;
    var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d.x, var_0.x, u_input.b, 0i) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 24349u, 1u), arg_3.wzw), ~4294967295u, ~arg_2) % vec4<u32>(32u)), -select(vec4<i32>(var_0.x, 2147483647i, u_input.d.x, var_0.x) | vec4<i32>(-28185i, var_0.x, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<i32>(-1i, var_0.x, var_0.x, 0i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.x, 4294967295u), 23u)])));
    global1 = array<i32, 10>();
    return Struct_1(true, ~(~_wgslsmith_add_i32(43393i, -2147483647i) << (u_input.c % 32u)), arg_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(257f, arg_1.x, arg_1.x, arg_1.x))) + vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_div_f32(-1980f, 250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-276f, arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x))), all(vec4<bool>(_wgslsmith_sub_i32(u_input.b, 1i) == 14448i, false, any(select(vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(1u, 23u)], arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, arg_0.x), false)), true)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_2.x));
    let var_1 = func_2(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(arg_3.x >> (1u % 32u), 23u)]), vec3<f32>(-598f, _wgslsmith_div_f32(arg_2.x, arg_2.x), 965f), ~(~0u), vec4<u32>(reverseBits(arg_3.x), ~0u >> (~arg_3.x % 32u), u_input.c, ~arg_1));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, (i32(-1i) * -61437i) << (min(arg_0, u_input.a.x) % 32u), -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, ~2147483647i, -1i), ~countOneBits(vec4<i32>(var_1.b, global1[_wgslsmith_index_u32(37378u, 10u)], u_input.b, var_1.b)))), 31642i | var_1.b, -var_1.b);
    let var_3 = var_1;
    global0 = array<bool, 23>();
    return Struct_1(any(select(!(!vec4<bool>(false, var_1.a, true, false)), select(select(vec4<bool>(false, false, true, var_1.e), vec4<bool>(var_1.e, var_1.e, global0[_wgslsmith_index_u32(arg_0, 23u)], true), var_3.e), vec4<bool>(true, var_1.a, true, var_1.e), select(vec4<bool>(true, true, var_3.a, var_3.e), vec4<bool>(true, var_3.a, false, var_1.e), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 23u)], true, true, false))), vec4<bool>(all(vec2<bool>(var_1.e, global0[_wgslsmith_index_u32(arg_3.x, 23u)])), true, true, func_2(vec2<bool>(var_1.e, global0[_wgslsmith_index_u32(arg_1, 23u)]), var_1.d.wwx, arg_3.x, vec4<u32>(u_input.c, 4294967295u, 12938u, 0u)).e))), var_2, -1205f, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-826f - 1418f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.d.x, -256f))), var_3.c, 1000f), false);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = vec3<i32>(0i | arg_0.b, _wgslsmith_div_i32((global1[_wgslsmith_index_u32(u_input.a.x, 10u)] << ((29188u >> (u_input.a.x % 32u)) % 32u)) & u_input.d.x, func_1(4294967295u, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.wy + vec2<f32>(484f, 117f))), vec2<u32>(u_input.c, ~4294967295u)).b), arg_0.b << (u_input.a.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f + 361f)));
    global0 = array<bool, 23>();
    let var_2 = 1i;
    let var_3 = arg_0;
    return firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(35959u, 42713u), u_input.a.zy), vec2<u32>(34065u, u_input.a.x)), 4294967295u, u_input.c, ~(~14349u)) | ~countOneBits(~vec4<u32>(4294967295u, u_input.c, 113996u, u_input.c)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    var var_0 = 29516i;
    var_0 = abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.c, 38763u, 41125u, arg_2) >> (vec4<u32>(u_input.c, 4294967295u, arg_2, u_input.c) % vec4<u32>(32u)))), vec4<u32>(abs(u_input.a.x) << (~arg_2 % 32u), u_input.a.x, 30963u, func_4(Struct_1(true, u_input.d.x, arg_1.c, vec4<f32>(arg_1.d.x, 345f, 1048f, arg_1.d.x), global0[_wgslsmith_index_u32(arg_2, 23u)])).x)), 10u)]);
    let var_1 = 1000f;
    global0 = array<bool, 23>();
    global1 = array<i32, 10>();
    return StorageBuffer(arg_1.b, -271f, select(u_input.a.zy, select(func_4(func_1(u_input.c, u_input.a.x, arg_1.d.yz, u_input.a.yx)).yz, ~vec2<u32>(arg_2, u_input.a.x) ^ ~u_input.a.xy, vec2<bool>(-15202i < u_input.b, global0[_wgslsmith_index_u32(arg_2, 23u)])), global0[_wgslsmith_index_u32(arg_2, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(~(vec4<u32>(36971u, u_input.a.x, u_input.a.x, 93593u) << (vec4<u32>(u_input.a.x, u_input.c, 0u, u_input.c) % vec4<u32>(32u))), func_4(func_1(0u, 1u, vec2<f32>(-330f, -228f), vec2<u32>(u_input.a.x, 2432u)))), u_input.a.x), 23u)], func_1(_wgslsmith_clamp_u32(firstLeadingBit(1u), func_4(func_2(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec3<f32>(-1100f, 1000f, -809f), 57026u, vec4<u32>(u_input.c, u_input.c, 52368u, 4294967295u))).x, ~(u_input.c | u_input.c)), 15286u, vec2<f32>(_wgslsmith_f_op_f32(floor(518f)), -270f), func_4(Struct_1(true, u_input.d.x ^ u_input.b, _wgslsmith_f_op_f32(279f + -761f), vec4<f32>(-1077f, -1432f, 1052f, -1416f), global0[_wgslsmith_index_u32(u_input.c, 23u)] && false)).xy), abs(~u_input.c));
}

