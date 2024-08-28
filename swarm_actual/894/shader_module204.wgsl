struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(vec2<i32>(-1i, 12273i), vec4<f32>(-1261f, -1000f, -625f, -1877f))), Struct_3(Struct_1(vec2<i32>(18810i, 0i), vec4<f32>(1550f, 1318f, 1975f, 1000f))), Struct_3(Struct_1(vec2<i32>(14470i, -58689i), vec4<f32>(670f, -1147f, -1000f, -1360f))), Struct_3(Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(843f, 967f, 499f, -153f))), Struct_3(Struct_1(vec2<i32>(-1i, -17116i), vec4<f32>(-754f, -199f, -970f, -772f))), Struct_3(Struct_1(vec2<i32>(-6905i, 2147483647i), vec4<f32>(2248f, -182f, -1000f, 1682f))), Struct_3(Struct_1(vec2<i32>(23386i, 19382i), vec4<f32>(-363f, -816f, -2449f, -592f))), Struct_3(Struct_1(vec2<i32>(41356i, 1i), vec4<f32>(-1309f, -633f, 528f, 180f))), Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), vec4<f32>(917f, 800f, 1796f, -354f))), Struct_3(Struct_1(vec2<i32>(21199i, -9072i), vec4<f32>(304f, -1546f, 470f, -1000f))), Struct_3(Struct_1(vec2<i32>(-1i, 5093i), vec4<f32>(262f, -230f, 2796f, -1969f))), Struct_3(Struct_1(vec2<i32>(24526i, 9467i), vec4<f32>(1096f, -2353f, -687f, 1000f))), Struct_3(Struct_1(vec2<i32>(2147483647i, -1i), vec4<f32>(417f, 445f, -347f, 1604f))), Struct_3(Struct_1(vec2<i32>(-1i, 13135i), vec4<f32>(214f, -654f, -352f, 1193f))), Struct_3(Struct_1(vec2<i32>(-43719i, 0i), vec4<f32>(1000f, 896f, -557f, -114f))));

var<private> global1: f32 = -2359f;

var<private> global2: array<i32, 6>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec4<f32> {
    global2 = array<i32, 6>();
    let var_0 = -_wgslsmith_clamp_vec3_i32(abs(~abs(vec3<i32>(24014i, -18231i, -3880i))), -_wgslsmith_clamp_vec3_i32(u_input.b.yzz, vec3<i32>(6041i, 29956i, -52910i) ^ arg_0.yww, vec3<i32>(30579i, 68657i, 85039i)), -arg_0.yyw & u_input.b.zxx);
    global3 = Struct_2(_wgslsmith_add_vec3_u32(~(select(u_input.c, u_input.c, vec3<bool>(global3.c, true, false)) ^ global3.a), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(23247u, u_input.a, 41674u), vec3<u32>(0u, 4294967295u, global3.b)), ~(vec3<u32>(arg_2.b, u_input.a, 0u) << (vec3<u32>(4294967295u, 38387u, 102152u) % vec3<u32>(32u))), ~(~vec3<u32>(37808u, arg_2.b, u_input.c.x)))), 1u, any(select(select(select(vec4<bool>(arg_2.c, true, true, arg_2.c), vec4<bool>(false, arg_2.c, true, false), true), select(vec4<bool>(global3.c, global3.c, false, global3.c), vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, false, true)), !vec4<bool>(arg_2.c, global3.c, arg_2.c, arg_2.c)), vec4<bool>(arg_2.c & true, true, true, arg_2.c), !(!vec4<bool>(false, global3.c, true, global3.c)))));
    var var_1 = Struct_2(global3.a, abs(_wgslsmith_sub_u32(select(arg_2.b, ~global3.a.x, global3.c | arg_2.c), 0u)), ~1u >= ~(~(~global3.a.x)));
    var var_2 = arg_2;
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-139f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.a.b.x))))), arg_3.a.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_3.a.b.x, -820f)), -1327f, !arg_2.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(2082f, -1805f)))), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.b.x, _wgslsmith_f_op_f32(-arg_3.a.b.x), _wgslsmith_f_op_f32(trunc(arg_3.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.b.x + arg_3.a.b.x) + -597f))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_2(~(~reverseBits(select(vec3<u32>(57300u, global3.a.x, 1u), u_input.c, false))), 38954u, all(select(vec3<bool>(true, !arg_0, arg_0), select(vec3<bool>(global3.c, global3.c, global3.c), !vec3<bool>(global3.c, true, arg_0), select(vec3<bool>(false, global3.c, global3.c), vec3<bool>(arg_0, false, true), false)), !global3.c)));
    global2 = array<i32, 6>();
    var var_1 = -(~(-select(arg_1, vec4<i32>(arg_1.x, arg_1.x, -2147483647i, 46017i), select(vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(global3.c, global3.c, var_0.c, true)))));
    var var_2 = Struct_1(arg_1.wx ^ countOneBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b.x, 1i)), -vec2<i32>(1i, var_1.x))), _wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(reverseBits(vec4<i32>(2147483647i, 37679i, 7342i, global2[_wgslsmith_index_u32(var_0.b, 6u)]) << (vec4<u32>(4294967295u, 17687u, global3.a.x, global3.b) % vec4<u32>(32u)))), vec3<i32>(~abs(27422i), i32(-1i) * -25468i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_1.x, -2147483647i, var_1.x), -arg_1)), Struct_2(vec3<u32>(38871u, ~global3.a.x, 1u), _wgslsmith_sub_u32(global3.a.x, global3.a.x) >> (global3.b % 32u), true), Struct_3(Struct_1(-vec2<i32>(u_input.b.x, var_1.x), vec4<f32>(2504f, 1580f, 742f, -623f))))));
    var var_3 = -1i;
    return _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(arg_1, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -30931i, var_1.x, -30774i), vec4<i32>(13550i, u_input.b.x, global2[_wgslsmith_index_u32(var_0.a.x, 6u)], 0i) ^ vec4<i32>(u_input.b.x, 2147483647i, var_1.x, -69622i))), ~u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(func_2(false, u_input.b), _wgslsmith_add_vec4_i32(~vec4<i32>(9233i, 43128i, 0i, global2[_wgslsmith_index_u32(42079u, 6u)]), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 6u)]) >> (vec4<u32>(global3.b, u_input.a, 79361u, u_input.a) % vec4<u32>(32u)), u_input.b << (vec4<u32>(113494u, arg_0.b, arg_0.b, global3.a.x) % vec4<u32>(32u))))), -countOneBits(~(i32(-1i) * -15544i)), u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -38520i, 2147483647i), vec4<i32>(u_input.b.x, -15962i, 4007i, -50657i)) & (u_input.b & u_input.b))));
    var var_1 = 1u;
    let var_2 = Struct_3(Struct_1(u_input.b.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(942f, 1300f, 521f, -1212f), vec4<f32>(-389f, 314f, -1126f, 1000f))))));
    let var_3 = Struct_3(Struct_1(countOneBits(vec2<i32>(u_input.b.x, var_2.a.a.x | u_input.b.x)), var_2.a.b));
    let var_4 = vec2<i32>(_wgslsmith_mod_i32(~func_2(arg_0.c, u_input.b).x, _wgslsmith_add_i32(16412i, _wgslsmith_mult_i32(-2147483647i, 0i))) ^ func_2(!(global3.a.x == u_input.a), var_0).x, 19040i);
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(abs(-(-global2[_wgslsmith_index_u32(22902u, 6u)] << (u_input.c.x % 32u))), 2147483647i);
    global3 = Struct_2(min(u_input.c, vec3<u32>(68297u, _wgslsmith_mult_u32(global3.b | 4294967295u, firstTrailingBit(global3.b)), ~1u)), _wgslsmith_add_u32(1u, 1u), global3.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1804f * _wgslsmith_f_op_f32(trunc(-443f))));
    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, global3.a.x)), ~func_1(Struct_2(vec3<u32>(44395u, 4294967295u, 1u), u_input.a, false), false)), ~(~4294967295u), ~select(~(~u_input.c.x), 89420u, false));
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(136158u, 6u)] >> (var_2.x % 32u), -abs(2147483647i), -_wgslsmith_mult_i32(var_0.x, var_0.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), var_0.x >> (0u % 32u)), _wgslsmith_dot_vec4_i32(min(u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -40116i, var_0.x, -1i), u_input.b, vec4<i32>(-46350i, -1i, global2[_wgslsmith_index_u32(var_2.x, 6u)], u_input.b.x))))), firstLeadingBit(vec2<i32>(~var_0.x, global2[_wgslsmith_index_u32(u_input.a, 6u)])) >> (~countOneBits(u_input.c.yz) % vec2<u32>(32u)));
    let var_3 = !select(!select(vec4<bool>(global3.c, global3.c, global3.c, true), vec4<bool>(global3.c, true, true, global3.c), false), vec4<bool>((global3.c & true) || any(vec4<bool>(true, global3.c, true, true)), all(vec4<bool>(global3.c, false, global3.c, true)), select(global3.c && global3.c, true, true), global3.c), 0i >= u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(36113u, 43069u, global3.a.x)), vec3<u32>(u_input.a, var_2.x, 1u)), ~_wgslsmith_div_u32(u_input.a, u_input.c.x), ~var_2.x)), func_1(Struct_2(firstLeadingBit(vec3<u32>(10504u, u_input.a, global3.a.x) | var_2), firstTrailingBit(~u_input.a), true), var_3.x), global2[_wgslsmith_index_u32(var_2.x, 6u)]);
}

