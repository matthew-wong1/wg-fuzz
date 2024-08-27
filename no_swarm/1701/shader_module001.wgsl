struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: array<u32, 6> = array<u32, 6>(36065u, 0u, 38501u, 1u, 1u, 46302u);

var<private> global2: u32 = 1u;

var<private> global3: vec4<f32> = vec4<f32>(1070f, 1137f, 963f, 721f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~11128u < ~(~(select(global1[_wgslsmith_index_u32(12762u, 6u)], 24472u, true) & 0u));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x * -1120f), 1326f, global3.x, 873f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1443f), -863f, vec3<bool>(true, var_0, false));
    var var_2 = var_1.c.x;
    var_1 = Struct_1(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-1259f - _wgslsmith_div_f32(-264f, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - var_1.a))) - var_1.b), var_1.c);
    return _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 2147483647i, 2147483647i), -vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29396u, 6u)], 6u)], 21u)], global0[_wgslsmith_index_u32(47264u, 21u)], 54966i)), ~(-13552i)) >> (99047u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<f32> {
    global2 = 1u;
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x))))));
    let var_0 = select(select(vec4<bool>(true, false, all(vec2<bool>(true, true)), any(vec2<bool>(false, true))), vec4<bool>(true, true, !all(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), true)), select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), true, true, true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), true), select(vec4<bool>(true, 1u < u_input.a.x, false, false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, false), true), true)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1244f - -1000f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), all(vec2<bool>(true, true)), !all(vec3<bool>(true, false, true)), !(!(428f < global3.x))));
    let var_1 = var_0.yy;
    var var_2 = Struct_1(global3.x, global3.x, !(!select(var_0.zwx, var_0.xwz, all(var_0))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(582f, global3.x, -1000f, var_2.a) - vec4<f32>(global3.x, -139f, global3.x, 420f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -1038f, var_2.a, 700f) - vec4<f32>(-480f, global3.x, var_2.a, global3.x))))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1514f, global3.x, var_2.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, var_2.b, var_2.a, 366f))))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48494u, 6u)], 21u)]), countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), abs(global0[_wgslsmith_index_u32(47870u, 21u)])), vec3<i32>(-88557i, i32(-1i) * -4009i, ~0i), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 42707i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -2769i, 0i)))), ~_wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -27i)), vec3<i32>(1i, -global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)] & -40427i)));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_clamp_i32(min(-14959i, global0[_wgslsmith_index_u32(var_0, 21u)]), var_1, func_3(vec2<i32>(-2147483647i, 2147483647i))), 1912i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2661i, global0[_wgslsmith_index_u32(37220u, 21u)], var_1), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 21u)], var_1)) >> (vec3<u32>(25493u, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x) % vec3<u32>(32u)), vec3<i32>(~global0[_wgslsmith_index_u32(var_0, 21u)], var_1 & var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 47886i), vec2<i32>(global0[_wgslsmith_index_u32(25899u, 21u)], var_1)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, -1281f, global3.x, global3.x), vec4<f32>(-970f, global3.x, global3.x, global3.x), false)), vec4<f32>(2580f, global3.x, 1565f, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global3.x, global3.x, global3.x)))))));
    let var_2 = Struct_2(-25940i, var_1 ^ -max(var_1, 0i));
    global1 = array<u32, 6>();
    return !select(select(vec4<bool>(56004u == u_input.a.x, true, true, true), vec4<bool>(false, true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, false), all(vec3<bool>(true, true, false))));
}

fn func_1() -> f32 {
    let var_0 = 34943i;
    let var_1 = !vec4<bool>(!all(func_2()), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1769i, global0[_wgslsmith_index_u32(4294967295u, 21u)], var_0, 0i), vec4<i32>(-2989i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32764u, 6u)], 6u)], 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75739u, 6u)], 21u)], var_0)), -vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 21u)], 1i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13793u, 6u)], 21u)], var_0)) < select(func_3(vec2<i32>(-1i, -20862i)), abs(var_0), true), true, false);
    return _wgslsmith_f_op_f32(ceil(global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<i32>(0i, 0i, 1i));
    global3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(-418f)), _wgslsmith_f_op_f32(abs(2361f))))))));
    var var_1 = global0[_wgslsmith_index_u32(min(abs(global1[_wgslsmith_index_u32(~(u_input.a.x << (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 6u)] % 32u)), 6u)]), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 4294967295u), 6u)]), 21u)];
    let var_2 = Struct_2(var_0.x, global0[_wgslsmith_index_u32(~(~firstLeadingBit(max(20983u, 4294967295u))), 21u)]);
    global0 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(3873u), global3.x, vec4<f32>(-631f, global3.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec4_f32(func_4(var_2, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(97628u, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x, global1[_wgslsmith_index_u32(24253u, 6u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 1u, 1u))), 21u)])).x));
}

