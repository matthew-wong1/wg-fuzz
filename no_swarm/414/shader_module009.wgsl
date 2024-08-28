struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-544f, -496f), vec2<f32>(-1142f, -378f), vec2<f32>(695f, -685f), vec2<f32>(686f, -1000f), vec2<f32>(1621f, 1000f), vec2<f32>(416f, -421f), vec2<f32>(-1295f, 128f), vec2<f32>(-184f, -523f), vec2<f32>(-1409f, -621f), vec2<f32>(-1098f, 1283f), vec2<f32>(-1720f, 823f), vec2<f32>(182f, 434f), vec2<f32>(-260f, -1595f), vec2<f32>(1000f, 353f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global1 = Struct_1(false, _wgslsmith_dot_vec4_i32(-(min(vec4<i32>(30054i, global1.b, global1.b, u_input.d), vec4<i32>(0i, u_input.b.x, 41070i, -758i)) | _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 22556i, 46520i, -1i), vec4<i32>(52131i, 0i, -25979i, u_input.a.x))), _wgslsmith_sub_vec4_i32((vec4<i32>(-81189i, -24265i, global1.b, -35114i) | vec4<i32>(-72384i, -28219i, -26391i, global1.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(31721u, 31u)], 34302u, 17020u, 0u), vec4<u32>(21476u, global0[_wgslsmith_index_u32(25027u, 31u)], 33122u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82145u, 31u)], 31u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 0u, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)])) % vec4<u32>(32u)), vec4<i32>(global1.b, u_input.a.x, 0i, global1.b))), arg_0.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(102982u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)]) | vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42118u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2309u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), 4294967295u) > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(60130u, global0[_wgslsmith_index_u32(58716u, 31u)]), select(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19331u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], true)), 31u)], 31u)], 31u)], !global1.e);
    var var_0 = Struct_2(-vec2<i32>(firstTrailingBit(-4860i), firstTrailingBit(32197i)), -firstLeadingBit(min(firstLeadingBit(vec4<i32>(0i, global1.b, 1i, -2147483647i)), vec4<i32>(-29525i, global1.b, -1i, 39598i))), abs(~max(select(vec4<u32>(0u, 78416u, global0[_wgslsmith_index_u32(18838u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43296u, 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47785u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27147u, 31u)], 31u)], 31u)]), arg_0.x), ~vec4<u32>(5343u, 4320u, global0[_wgslsmith_index_u32(50779u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10471u, 31u)], 31u)]))), vec4<f32>(_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-353f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(905f, _wgslsmith_f_op_f32(step(1142f, -151f))), -700f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-623f)))) + 1f)), vec3<i32>(1i, -30294i, reverseBits(global1.b)));
    let var_1 = global2[_wgslsmith_index_u32(var_0.c.x << ((~(global0[_wgslsmith_index_u32(var_0.c.x, 31u)] ^ var_0.c.x) ^ ~0u) % 32u), 6u)];
    let var_2 = Struct_1(false, _wgslsmith_sub_i32(-30092i, var_1.b.x), select(global1.d, all(vec3<bool>(false, true, select(global1.c, arg_0.x, false))), true), arg_0.x || arg_0.x, select(vec4<bool>(true, all(!vec3<bool>(arg_0.x, false, global1.e.x)), true, !any(vec3<bool>(false, false, false))), !select(vec4<bool>(arg_0.x, true, arg_0.x, true), !global1.e, global1.e), !any(select(global1.e.wwx, arg_0, global1.e.x))));
    let var_3 = _wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.e.x, -31412i, _wgslsmith_dot_vec4_i32(var_1.b, var_1.b), -1i ^ u_input.b.x), var_0.b) ^ var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = select(70845u, _wgslsmith_sub_u32(~(firstTrailingBit(1u) >> (_wgslsmith_mult_u32(56835u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40395u, 31u)], 31u)]) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(0u), ~global0[_wgslsmith_index_u32(4294967295u, 31u)], abs(87183u)), vec3<u32>(74348u, abs(27574u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]), 31u)]))), false & all(global1.e));
    let var_1 = !select(any(!(!global1.e.yxz)), true, global1.e.x);
    var var_2 = Struct_1(true, ~22002i, all(vec3<bool>(global1.c, global1.e.x, -2406i > u_input.b.x)) | !var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(global1.d, false, global1.d))) + 1f))) <= -1171f, vec4<bool>(all(vec2<bool>(global1.c, !var_1)), select(false, any(global1.e.xwy), -1i < u_input.d) | any(select(vec4<bool>(true, var_1, false, true), global1.e, false)), global1.d, false));
    var var_3 = Struct_2(~(~vec2<i32>(-53275i << (0u % 32u), -71896i)), vec4<i32>(-abs(~31703i), 1i, var_2.b, _wgslsmith_add_i32(-75411i, u_input.a.x) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.b, -2147483647i, u_input.b.x), select(u_input.c, u_input.c, true))), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 31u)], 103999u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4040u, 31u)], 31u)]), vec3<u32>(0u, var_0, global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~(~1u), 31u)], 1u), _wgslsmith_div_u32(43345u, global0[_wgslsmith_index_u32(countOneBits(96149u), 31u)]), max(var_0 & firstTrailingBit(var_0), global0[_wgslsmith_index_u32(~(var_0 | var_0), 31u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-580f, -709f, -1424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(771f)) - -704f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-855f, 1868f), _wgslsmith_f_op_f32(-190f * -664f), _wgslsmith_f_op_f32(1000f * -711f), -287f))), _wgslsmith_div_vec3_i32(~(-select(u_input.c, vec3<i32>(-46992i, 2769i, var_2.b), vec3<bool>(var_1, global1.e.x, true))), -(~(~vec3<i32>(var_2.b, var_2.b, -1i)))));
    let var_4 = firstTrailingBit(var_0);
    return ~var_3.c.yy;
}

fn func_1() -> u32 {
    global3 = array<vec2<f32>, 14>();
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(63491u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5122u, 31u)], 31u)]), ~(~1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29750u, 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(15578u, 31u)]), vec2<bool>(false, false)), func_2())) ^ max(~vec3<u32>(34088u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31726u) >> (countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16649u, 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)])) % vec3<u32>(32u)), vec3<u32>(37157u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 4294967295u, 109819u)), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(83240u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 86270u))), select(select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4624u, 31u)], global1.e.x), 6339u, true), countOneBits(_wgslsmith_div_u32(4294967295u, 1u))), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22487u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], 31u)] ^ global0[_wgslsmith_index_u32(4294967295u, 31u)], 0u, _wgslsmith_sub_u32(12625u, global0[_wgslsmith_index_u32(7260u, 31u)]))));
    return min(_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.x, 31u)], 13524u), 4294967295u), 1u), 38066u | (~var_0.x >> (_wgslsmith_div_u32(select(var_0.x, 4294967295u, global1.d), _wgslsmith_mult_u32(var_0.x, var_0.x)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 6>();
    let var_0 = u_input.c.zz << (vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_clamp_u32(75599u, 46336u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79068u, 31u)], 31u)], 31u)], firstTrailingBit(global0[_wgslsmith_index_u32(68867u, 31u)])), ~(~7750u)), 31u)], 0u) % vec2<u32>(32u));
    let var_1 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~global0[_wgslsmith_index_u32(57533u, 31u)]), 31u)], 31u)];
    global0 = array<u32, 31>();
    let var_2 = vec3<u32>(~(~(_wgslsmith_mod_u32(var_1, 36620u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<u32>(23425u, 1u)) % 32u))), 2169u, global0[_wgslsmith_index_u32(21616u, 31u)] & 31663u);
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(5078u, 31u)], var_2.x, func_1(), ~1u), vec4<u32>(~4294967295u, var_1, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_2.x, 31u)], 91736u, 1u, 74219u), vec4<u32>(9654u, 1u, 9628u, var_2.x)) << (5195u % 32u)), ~(~74266u)));
    var var_4 = abs(var_2.yx);
    global0 = array<u32, 31>();
    let var_5 = Struct_2(-countOneBits(select(vec2<i32>(0i, global1.b), vec2<i32>(global1.b, global1.b), global1.e.zy)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, -1i, global1.b), ~vec4<i32>(global1.b, global1.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)] % 32u), -var_0.x, ~2147483647i)), vec4<u32>(~(global0[_wgslsmith_index_u32(var_4.x, 31u)] << (var_2.x % 32u)), ~func_2().x, var_2.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 46337u, 55u, 9439u), vec4<u32>(19587u, var_4.x, 0u, 234u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1660f, -474f, -110f, -1643f) - vec4<f32>(-508f, 1503f, 231f, 481f)))) - vec4<f32>(-1159f, 165f, -781f, -1257f))), -firstLeadingBit(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.d.x), -3303f, true))))), max(~(~var_5.c.x), _wgslsmith_div_u32(~select(var_2.x, 0u, global1.e.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(32285u, 24966u), var_1))));
}

