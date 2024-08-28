struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(2147483647i, -1i, 56632i, -6636i, i32(-2147483648), 23325i, 2147483647i, 52457i, -10817i, 1i, 0i, 7914i, 1i, 16647i, 1i, i32(-2147483648));

var<private> global1: vec2<f32>;

var<private> global2: i32;

var<private> global3: array<f32, 10>;

var<private> global4: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(u_input.a.x, abs(vec4<i32>(-u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(31406i, 2147483647i, -2147483647i, u_input.c), vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 14861i, -2147483647i), vec4<i32>(u_input.d.x, -1i, 28015i, 2147483647i))), firstLeadingBit(-2147483647i), countOneBits(u_input.d.x))), vec3<bool>(!(_wgslsmith_sub_u32(55825u, u_input.b.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1539u, u_input.b.x), u_input.b)), arg_1, arg_1 || false));
    let var_1 = var_0.b;
    global2 = ~36867i;
    let var_2 = select(vec2<bool>(arg_1, var_0.a <= var_0.a), var_0.c.zx, global4[_wgslsmith_index_u32(~firstLeadingBit(~var_0.a) << (var_0.a % 32u), 21u)]);
    global4 = array<vec2<bool>, 21>();
    return 0i;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    global4 = array<vec2<bool>, 21>();
    var var_0 = vec3<u32>(56290u, ~1u, u_input.a.x);
    let var_1 = firstTrailingBit(~_wgslsmith_mod_vec4_u32(abs(u_input.a | u_input.a), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.xx), 1u, u_input.a.x, 9331u)));
    var var_2 = true;
    let var_3 = Struct_1(var_1.x, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, abs(abs(global0[_wgslsmith_index_u32(41265u, 16u)])), _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(13949u, 16u)], -u_input.c), u_input.d.x ^ func_3(vec2<f32>(global1.x, -895f), true)), ~vec4<i32>(3804i, global0[_wgslsmith_index_u32(0u, 16u)], 1i, global0[_wgslsmith_index_u32(var_0.x, 16u)]) & -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, global0[_wgslsmith_index_u32(var_0.x, 16u)]), vec4<i32>(global0[_wgslsmith_index_u32(20517u, 16u)], 5041i, 2147483647i, u_input.c))), vec3<bool>(all(global4[_wgslsmith_index_u32(var_1.x | ~306u, 21u)]), !(abs(60301u) > var_0.x), !(0i >= reverseBits(u_input.d.x))));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global3[_wgslsmith_index_u32(16087u, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<f32>(global1.x, global3[_wgslsmith_index_u32(0u, 10u)], 1039f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1544f, global1.x) + vec3<f32>(1000f, -819f, global3[_wgslsmith_index_u32(var_0.x, 10u)]))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, 22105u, 1u)), u_input.a.x >> (abs(u_input.a.x) % 32u)), arg_2), _wgslsmith_sub_vec4_i32(max(vec4<i32>(max(2147483647i, u_input.d.x), ~0i, select(42337i, 1i, false), -27983i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 13022i, -21756i, 36353i), vec4<i32>(u_input.c, -6139i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.c, global0[_wgslsmith_index_u32(arg_2.x, 16u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 16u)], 0i, -1i, 0i)))), -(~(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 22570i, u_input.d.x, -22581i)))), !select(select(!vec3<bool>(arg_1, arg_1, false), !vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), !(!vec3<bool>(true, false, arg_1)), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), true)));
    global3 = array<f32, 10>();
    global0 = array<i32, 16>();
    var var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, -u_input.d.x), var_0.b.yyw);
    var_0 = Struct_1(~4294967295u, reverseBits(abs(firstLeadingBit(var_0.b >> (u_input.a % vec4<u32>(32u))))), !vec3<bool>(any(vec4<bool>(false, var_0.c.x, false, var_0.c.x)), true, arg_1));
    return _wgslsmith_f_op_f32(f32(-1f) * -474f);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool) -> bool {
    var var_0 = arg_2;
    global3 = array<f32, 10>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(min(7698u, _wgslsmith_div_u32(62683u, u_input.b.x)), 10u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)))), -227f, _wgslsmith_f_op_f32(-1241f * 1182f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1136f, global1.x, global1.x) * vec3<f32>(-607f, 1136f, global1.x))) + _wgslsmith_f_op_vec3_f32(func_2(-894f))), !(!arg_2 & true), select(_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 53341u), u_input.b)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(384f)) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 10u)])), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) * global3[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 10u)])))));
    let var_2 = Struct_1(abs(_wgslsmith_clamp_u32(u_input.a.x, 48733u, u_input.a.x)), vec4<i32>(-_wgslsmith_div_i32(-2147483647i, func_3(vec2<f32>(var_1.x, var_1.x), false)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.x, u_input.d.x, arg_0.x, -2147483647i), vec4<i32>(38493i, arg_0.x, 2147483647i, 1i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, arg_1.x, 5783i, -22784i), vec4<i32>(u_input.c, arg_1.x, 2147483647i, 2147483647i))), _wgslsmith_mult_i32(arg_1.x, _wgslsmith_div_i32(-32626i, arg_0.x)) ^ min(~(-10432i), arg_1.x), reverseBits(2147483647i)), !select(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, true), arg_2), select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, false), arg_2), vec3<bool>(arg_2, true, arg_2), false), !select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, false, true), vec3<bool>(false, arg_2, arg_2))));
    let var_3 = all(!(!(!select(vec4<bool>(true, var_2.c.x, arg_2, var_2.c.x), vec4<bool>(true, arg_2, true, var_2.c.x), false))));
    return -34137i == ~(~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.b.x, 0u, u_input.a.x, u_input.a.x);
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, var_0.x & 0u), 4294967295u)), -select(-(vec4<i32>(u_input.c, -1i, 39153i, -2147483647i) | vec4<i32>(u_input.c, u_input.d.x, -2147483647i, global0[_wgslsmith_index_u32(19297u, 16u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, 4963i, 0i), vec4<i32>(38333i, u_input.d.x, 1i, 2147483647i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(var_0.x, 16u)], 0i, -23282i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 16u)], 0i, u_input.c, -24595i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), true)), vec3<bool>(func_1(~vec3<i32>(18077i, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec2<i32>(~global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 294i), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))), !(!any(vec3<bool>(false, true, false))), true));
    let var_2 = Struct_2(-931f, _wgslsmith_div_u32(~(~11413u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, 0u), var_0.wz | var_0.xw)), Struct_1(~_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), ~vec3<u32>(var_1.a, var_0.x, 1u)), var_1.b >> (u_input.a % vec4<u32>(32u)), vec3<bool>(false, select(false, true, var_1.c.x), true)));
    global2 = -2147483647i;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1307f) + _wgslsmith_f_op_vec3_f32(func_2(241f)).x)))), 1f);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(var_1.b.x) | var_2.c.b.x, var_1.b.x, _wgslsmith_clamp_i32(48075i, u_input.c, 28966i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -u_input.d.x, i32(-1i) * -u_input.c, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-1i, var_1.b.x))), ~reverseBits(vec4<i32>(3179i, var_2.c.b.x, 0i, 1i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_f32(select(1550f, -1139f, var_1.c.x)), -839f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, -1585f, 1368f), vec3<f32>(global3[_wgslsmith_index_u32(var_3.c.a, 10u)], 1232f, 1759f), var_3.c.c)), vec3<f32>(-387f, var_3.a, var_2.a))))));
}

