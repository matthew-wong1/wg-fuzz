struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1i, -36292i, 23830i, -7196i, 5160i, 2147483647i, 3933i, 1i, 0i, 0i, 0i, 31382i, 2147483647i);

var<private> global1: vec2<i32> = vec2<i32>(-1i, 12556i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(209f, -1000f)), _wgslsmith_f_op_f32(step(1f, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-104f, -220f)), _wgslsmith_f_op_f32(-1023f + 526f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(321f, -747f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-276f))))) + -1911f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f + -569f) - 511f)));
    let var_1 = Struct_1(var_0.b, _wgslsmith_f_op_f32(1365f + 670f), _wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(416f + _wgslsmith_f_op_f32(991f * 1280f))), var_0.b);
    var var_2 = var_1;
    var var_3 = _wgslsmith_sub_vec3_u32(select(select(vec3<u32>(u_input.a.x, u_input.a.x, ~1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), !vec3<bool>(arg_0, false, true)), countOneBits(~vec3<u32>(4294967295u, 285u, 4294967295u)) ^ _wgslsmith_clamp_vec3_u32(u_input.a.zxz, vec3<u32>(4294967295u, u_input.a.x, 73227u), vec3<u32>(1u, 0u, u_input.a.x)), all(select(select(vec2<bool>(true, arg_0), vec2<bool>(true, false), true), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, false)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), false)))), u_input.a.zzx);
    var var_4 = Struct_1(var_0.c, _wgslsmith_f_op_f32(sign(980f)), -309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_0.c) - var_2.a)))));
    return var_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(-571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2096f)), -721f)) * -376f), 1521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1229f, 394f)), -1322f))) - 114f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(2069f + _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(866f)) + _wgslsmith_f_op_f32(f32(-1f) * -299f)))), _wgslsmith_f_op_f32(func_3(all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316f - var_0.b) + _wgslsmith_div_f32(-542f, 448f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0.a), _wgslsmith_f_op_f32(sign(1080f)))))));
    let var_2 = 13067i & -global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(7691u, u_input.a.x, u_input.a.x), abs(u_input.a.wyw)), 13u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(894f, -567f), _wgslsmith_f_op_f32(-var_1.a), var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(-439f * var_0.b), _wgslsmith_f_op_f32(floor(-1742f)), _wgslsmith_f_op_f32(f32(-1f) * -1087f)))));
    let var_4 = ~vec4<u32>(~max(u_input.a.x, 24424u) & _wgslsmith_add_u32(~u_input.a.x, 18738u), ~1u, u_input.a.x, 8904u);
    return Struct_1(var_1.c, 1569f, -664f, -1057f);
}

fn func_1() -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.b))));
    let var_1 = func_1();
    global0 = array<i32, 13>();
    global1 = -(-vec2<i32>(_wgslsmith_mod_i32(-1i, global1.x), _wgslsmith_add_i32(global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])) & select(-select(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<i32>(global1.x, -1i), true), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(8409u, 13u)], -21737i) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 32968i)), vec2<bool>(select(true, true, false), false)));
    let var_2 = arg_0.a >= var_1.c;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    var var_0 = func_4(func_1());
    var var_1 = (vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-50079i, -4336i, -1i) & vec3<i32>(-47308i, global0[_wgslsmith_index_u32(93094u, 13u)], 25075i), ~vec3<i32>(global1.x, global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_add_i32(global1.x ^ global0[_wgslsmith_index_u32(1u, 13u)], global1.x)) | ~_wgslsmith_div_vec2_i32(vec2<i32>(38291i, global0[_wgslsmith_index_u32(0u, 13u)]), -vec2<i32>(-12104i, global0[_wgslsmith_index_u32(4294967295u, 13u)]))) | vec2<i32>(firstLeadingBit(-global1.x), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-2147483647i, -1i)), max(-vec2<i32>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -12707i), vec2<i32>(55696i, 0i)))));
    var var_2 = vec4<i32>(var_1.x, -(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(-19245i, -24294i)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(22658u, 13u)], -23721i)) << (~(~u_input.a.x) % 32u)), ~_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global1.x) | ~(global1.x | ~var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-82085i, global1.x, 7821i, var_1.x)), ~vec4<i32>(62095i, global1.x, var_1.x, var_1.x) & ~vec4<i32>(1i, -12071i, 16525i, 52840i)), -vec4<i32>(1i, max(var_1.x, global1.x), countOneBits(-6653i), i32(-1i) * -49833i)));
    var var_3 = ~_wgslsmith_clamp_i32(~(min(0i, var_2.x) & 7451i), 35861i, -global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(29249u >> (u_input.a.x % 32u), u_input.a.x), 13u)]);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(floor(var_0.d)), false))), _wgslsmith_f_op_f32(abs(1257f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f - _wgslsmith_f_op_f32(step(var_0.b, var_0.c)))), -230f)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-125f + -453f), _wgslsmith_f_op_f32(var_4.a + var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - -787f)), _wgslsmith_f_op_f32(-var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -var_2.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - func_2().a)), var_2.yz, -2147483647i);
}

