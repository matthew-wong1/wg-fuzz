struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, false, true, false, false, false, true, true, false, false, true, true, true, false, false, true, true, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = vec3<f32>(-956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) - _wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1165f + -855f) - _wgslsmith_f_op_f32(floor(-1626f))))), 257f);
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    return vec4<i32>(u_input.b, i32(-1i) * -(i32(-1i) * -10323i), firstLeadingBit(u_input.b), u_input.c.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> i32 {
    global0 = array<bool, 21>();
    let var_0 = vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_f_op_vec3_f32(-arg_0))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 1312f), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = all(!(!select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(32263u, 21u)], var_0.x, var_0.x), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, true, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1129u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], true))));
    let var_3 = _wgslsmith_sub_i32(~(5165i ^ abs(u_input.b & u_input.c.x)), u_input.c.x);
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3;
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.yxz, arg_2.xwx, !arg_3.a.x)))), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-143f - 429f);
    var var_3 = Struct_3(arg_1.a, !((firstTrailingBit(-47423i) | -1i) == -_wgslsmith_clamp_i32(arg_1.a.x, arg_1.a.x, arg_1.a.x)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(-990f + var_2))), all(vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], false, arg_1.b, false)), select(var_0.a.x, true, arg_3.a.x), true, !global0[_wgslsmith_index_u32(34251u, 21u)])))), vec4<u32>(19647u, var_0.b.x, 811u, abs(firstTrailingBit(_wgslsmith_mult_u32(50486u, 32183u)))), 654f, var_0.a.x, ~abs(countOneBits(vec3<u32>(arg_3.b.x, 80114u, arg_3.b.x)) >> (vec3<u32>(1364u, 0u, 0u) % vec3<u32>(32u))));
    return vec4<i32>(-(~u_input.c.x), arg_0.x, func_1(arg_3.a).x, reverseBits(-(36996i ^ var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    var var_0 = max(func_1(!select(!vec2<bool>(global0[_wgslsmith_index_u32(36836u, 21u)], true), !vec2<bool>(false, global0[_wgslsmith_index_u32(128590u, 21u)]), true)), _wgslsmith_mult_vec4_i32(func_2(vec2<i32>(-1i, ~u_input.c.x), Struct_3(firstTrailingBit(u_input.c), global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1420f, 1342f, -1006f, 1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(490f, -360f, 591f, -1000f) - vec4<f32>(695f, -1611f, 549f, 224f))), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(2122u, 4522u)))), (u_input.c ^ ~u_input.c) & _wgslsmith_mod_vec4_i32(~u_input.c, abs(u_input.c))));
    let var_1 = ~_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.a, 168058u, 0u) & vec3<u32>(u_input.a, u_input.a, 4294967295u))), vec3<u32>(u_input.a, ~(~0u), 1u));
    let var_2 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2131f, 766f), vec2<f32>(-749f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1589f, 428f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))))), Struct_2(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a & 4294967295u, 21u)], any(vec3<bool>(global0[_wgslsmith_index_u32(32548u, 21u)], true, global0[_wgslsmith_index_u32(0u, 21u)]))), !select(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 21u)], true), vec2<bool>(global0[_wgslsmith_index_u32(95418u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(29910u, 21u)], global0[_wgslsmith_index_u32(28102u, 21u)])), vec2<bool>(true, all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])))), _wgslsmith_div_vec2_u32(select(abs(vec2<u32>(u_input.a, var_1)), abs(vec2<u32>(71360u, 57394u)), select(global0[_wgslsmith_index_u32(4294967295u, 21u)], false, true)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(53345u, u_input.a)))), vec4<bool>(true, select(true, global0[_wgslsmith_index_u32(0u, 21u)], true), true, global0[_wgslsmith_index_u32(select(~(~41569u), 1u | _wgslsmith_sub_u32(var_1, u_input.a), select(true, true, global0[_wgslsmith_index_u32(firstLeadingBit(var_1), 21u)])), 21u)]), vec4<bool>(false || global0[_wgslsmith_index_u32(u_input.a, 21u)], true, global0[_wgslsmith_index_u32((~u_input.a >> (48704u % 32u)) | (u_input.a | _wgslsmith_add_u32(6551u, 14130u)), 21u)], global0[_wgslsmith_index_u32(~var_1, 21u)]));
    var var_3 = ~1i;
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.b, 1i, ~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 33113i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(11108i, 1i, var_0.x, -1i), u_input.c) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1, 27341u, 1u), vec4<u32>(4294967295u, var_1, var_2.b.b.x, var_2.b.b.x)) | ~vec4<u32>(var_1, var_1, var_1, u_input.a), ~vec4<u32>(0u, 68576u, var_2.b.b.x, u_input.a) & firstLeadingBit(vec4<u32>(var_2.b.b.x, u_input.a, var_2.b.b.x, 4294967295u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(45013i, var_0.x, -24882i), -515f, abs(max(_wgslsmith_mod_i32(0i, u_input.c.x), -2147483647i) << (reverseBits(select(59975u, u_input.a, true)) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(floor(var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))))), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) + _wgslsmith_f_op_f32(exp2(var_2.a.x)))), var_2.a.x));
}

