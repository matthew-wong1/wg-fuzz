struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, false, true, false, true, false, false, true, false, true, false, true, false, true, true, true, true, true, true, true, true, true, false, false, true, true, false, true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> vec4<u32> {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    return ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_1, 4294967295u, 10050u, 4294967295u)), ~vec4<u32>(27408u, 49496u, 51138u, 2303u)) | ~select(vec4<u32>(1u, 4294967295u, arg_1 | 0u, arg_1 | 93191u), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39360u, 0u, 18651u, 4294967295u), vec4<u32>(22348u, 30639u, u_input.b, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 46079u, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.b, u_input.a, arg_1)), ~vec4<u32>(u_input.b, u_input.a, u_input.b, arg_1)), vec4<bool>(false, true, true, false));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_add_vec4_u32(~func_2(arg_2, _wgslsmith_div_u32(~u_input.a, _wgslsmith_mod_u32(55916u, u_input.b)), -max(arg_1, arg_1), abs(-1i)), ~vec4<u32>(1u, ~55924u, 43023u, u_input.a));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_1 = arg_0;
    return arg_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<i32>) -> i32 {
    var var_0 = select(arg_1.d.yx, vec2<i32>(min(abs(arg_2.x), 1i), 22610i), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.a, 32u)], global0[_wgslsmith_index_u32(reverseBits(u_input.b), 32u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(275f, _wgslsmith_f_op_f32(208f + 730f), _wgslsmith_f_op_f32(max(315f, -1000f)), _wgslsmith_div_f32(-1221f, -2186f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, 1555f, -192f, 1190f)))), vec4<f32>(1418f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(547f, -751f) * 586f), -1000f, _wgslsmith_f_op_f32(327f - _wgslsmith_f_op_f32(f32(-1f) * -267f))), vec4<bool>(any(arg_1.b), arg_1.b.x, _wgslsmith_f_op_f32(-1184f * 499f) < _wgslsmith_f_op_f32(ceil(1316f)), all(vec2<bool>(true, arg_1.b.x))))), select(global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_clamp_u32(u_input.a, u_input.b, 59756u)), 32u)], !arg_1.b.x, _wgslsmith_mod_u32(0u ^ u_input.b, abs(4294967295u)) > 98715u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_f_op_f32(1820f - 849f)))), -_wgslsmith_dot_vec2_i32(arg_0.xw, ~(~vec2<i32>(-1i, var_0.x))), 15915u << (u_input.a % 32u));
    var_0 = max(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -13956i, -1i), vec2<i32>(-1i) * -arg_1.d.xy);
    global0 = array<bool, 32>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))))), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2290f, _wgslsmith_f_op_f32(step(var_1.a.x, 1637f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c.x, 478f))))), -989f);
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-abs(vec3<i32>(func_1(2147483647i, vec4<i32>(-624i, 1i, 0i, -9551i), -2147483647i), select(-2147483647i, 1i, true), -18469i >> (u_input.a % 32u))));
    var var_1 = var_0;
    var var_2 = Struct_2(countOneBits(~u_input.b), vec4<u32>(43684u, _wgslsmith_dot_vec2_u32(vec2<u32>(14534u, ~46380u), ~vec2<u32>(u_input.b, u_input.b) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), max(u_input.b | 4777u, u_input.a), u_input.a));
    let var_3 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8412i, 1i, -16114i), var_0), var_0.x) | -func_3(vec4<i32>(53264i, -2147483647i, var_0.x, var_1.x) ^ vec4<i32>(2147483647i, var_0.x, 0i, var_0.x), Struct_3(Struct_2(u_input.b, vec4<u32>(118376u, 1u, 56189u, 4294967295u)), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)], false, global0[_wgslsmith_index_u32(var_2.a, 32u)]), Struct_2(23334u, var_2.b), vec4<i32>(-16857i, 71397i, -1i, -55369i)), ~vec4<i32>(10256i, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_0.x, 38812i, var_0.x, var_0.x) | vec4<i32>(var_1.x, 1i, var_0.x, var_0.x)), vec4<i32>(var_1.x, _wgslsmith_mod_i32(i32(-1i) * -43788i, var_1.x & 2147483647i), 1i, -4932i)));
    global0 = array<bool, 32>();
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-442f, 393f, 1034f, 1434f), vec4<f32>(-530f, 1111f, -989f, -319f), global0[_wgslsmith_index_u32(u_input.a, 32u)])))))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(1i, var_1.x), vec2<i32>(var_3, var_3)), _wgslsmith_div_vec2_i32(var_1.xx, var_0.zy)), _wgslsmith_mod_vec2_i32(-var_0.xx, countOneBits(var_1.zy)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(33976u, var_2.b.x, u_input.a) << ((var_2.b.yzy << (var_2.b.wzz % vec3<u32>(32u))) % vec3<u32>(32u)), ~(vec3<u32>(4651u, var_2.b.x, 11474u) | vec3<u32>(46079u, 4294967295u, u_input.a))));
    let var_5 = Struct_3(Struct_2(22630u, var_2.b), !select(vec4<bool>(true, true, var_4.b, any(vec3<bool>(var_4.b, global0[_wgslsmith_index_u32(17731u, 32u)], true))), !(!vec4<bool>(var_4.b, var_4.b, global0[_wgslsmith_index_u32(var_2.a, 32u)], false)), select(select(vec4<bool>(false, true, var_4.b, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_4.e, 32u)], false, false, var_4.b), vec4<bool>(var_4.b, var_4.b, global0[_wgslsmith_index_u32(var_4.e, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), vec4<bool>(global0[_wgslsmith_index_u32(var_4.e, 32u)], var_4.b, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(var_4.e, 32u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], var_4.b, global0[_wgslsmith_index_u32(102916u, 32u)]))), Struct_2(~21345u, vec4<u32>(max(74807u, 1u), u_input.b, var_4.e, u_input.b)), -select(abs(vec4<i32>(var_0.x, var_0.x, 2147483647i, -1i)), vec4<i32>(-8747i, var_3, var_1.x, _wgslsmith_clamp_i32(var_3, var_1.x, 2147483647i)), !vec4<bool>(true, var_4.b, false, var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(3010f, var_4.c.x), var_4.c.x, var_4.c.x, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1289f - var_4.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(569f - -1506f) * 3354f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(-1392f * var_4.a.x))))), _wgslsmith_f_op_vec3_f32(-var_4.a.ywy), abs(select(vec4<i32>(select(0i, var_0.x, global0[_wgslsmith_index_u32(var_4.e, 32u)]), -2147483647i, -var_0.x, _wgslsmith_sub_i32(-1i, 2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 20235i, -43020i, 1i), var_5.d), max(var_5.d, var_5.d)), true)), _wgslsmith_clamp_i32(i32(-1i) * -17888i, -11458i, var_3));
}

