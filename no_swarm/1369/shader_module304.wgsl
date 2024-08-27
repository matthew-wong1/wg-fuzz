struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(~u_input.b, 23u)], false, max(_wgslsmith_add_i32(reverseBits(15036i), u_input.c >> (1u % 32u)), firstLeadingBit(~arg_1.x)) > ~(_wgslsmith_add_i32(-49932i, -35243i) << (u_input.b % 32u)));
    let var_1 = Struct_1(!arg_0.yxz, vec2<bool>(var_0.x, arg_0.x), abs(~vec3<i32>(arg_1.x, max(arg_1.x, -2147483647i), 2147483647i)), 10720u, false);
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-869f, 257f, -757f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-940f, -585f, -1482f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 184f, -571f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, -714f, -307f) + vec3<f32>(143f, -1489f, 937f)) + vec3<f32>(965f, 528f, 1042f))), select(!vec3<bool>(var_0.x, true, false), select(select(vec3<bool>(true, false, false), var_1.a, vec3<bool>(true, var_1.e, false)), var_2.a, var_2.a.x), all(select(arg_0, vec4<bool>(var_2.a.x, false, var_0.x, arg_0.x), arg_0))))), vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f + 648f)))), 390f), select(vec3<bool>(all(select(arg_0, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 23u)], true, false), global0[_wgslsmith_index_u32(0u, 23u)])), false, global0[_wgslsmith_index_u32(var_1.d, 23u)]), arg_0.xzz, arg_0.x)));
    return abs(vec4<u32>(var_2.d, 4294967295u, (abs(u_input.b) ^ (var_2.d & var_1.d)) >> (_wgslsmith_sub_u32(abs(1u), _wgslsmith_mod_u32(1u, var_1.d)) % 32u), var_1.d));
}

fn func_2() -> Struct_4 {
    var var_0 = min(~(func_3(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<i32>(u_input.a, u_input.a, -46665i, -35186i)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(23730u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))), vec4<u32>(select(1u, u_input.b, global0[_wgslsmith_index_u32(func_3(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], true), global0[_wgslsmith_index_u32(16653u, 23u)]), vec4<i32>(24934i, -1i, -2147483647i, 2147483647i)).x, 23u)]), 4294967295u >> (u_input.b % 32u), 65083u, _wgslsmith_div_u32(firstLeadingBit(21245u) ^ ~u_input.b, u_input.b)));
    global1 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    var_0 = select(vec4<u32>(133940u, u_input.b, 1u, 48496u), reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 55881u, u_input.b), vec4<u32>(reverseBits(u_input.b), u_input.b, ~51628u, ~u_input.b))), vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(~var_0.x, 23u)], false)), select(any(vec3<bool>(true, true, false)), any(!vec3<bool>(global0[_wgslsmith_index_u32(8395u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(13261u, ~var_0.x), 23u)]), global0[_wgslsmith_index_u32(0u, 23u)], any(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 23u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], true, global0[_wgslsmith_index_u32(45597u, 23u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 23u)])))));
    let var_1 = vec4<i32>(-_wgslsmith_mult_i32(~u_input.a, _wgslsmith_div_i32(~(-1i), -5421i)), ~(~(~(-2308i >> (u_input.b % 32u)))), max(reverseBits(7522i ^ u_input.c), u_input.a), ~min(0i, u_input.a << ((2036u & var_0.x) % 32u)));
    let var_2 = var_1;
    return Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_div_f32(-1032f, 116f))), _wgslsmith_f_op_f32(f32(-1f) * -354f)), Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(11322u, 23u)]), vec3<bool>(true, false, true)), vec2<bool>(global0[_wgslsmith_index_u32(18795u, 23u)], true), min(vec3<i32>(0i, 2147483647i, u_input.a) & vec3<i32>(6047i, var_1.x, -1i), vec3<i32>(-1i, 41769i, -2147483647i)), 24049u, global0[_wgslsmith_index_u32(~var_0.x << (abs(u_input.b) % 32u), 23u)]), !(!(!global0[_wgslsmith_index_u32(53895u, 23u)])), Struct_1(vec3<bool>(true, true, true), !select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])), vec3<i32>(var_1.x, var_2.x, -1i), 31601u, !(!global0[_wgslsmith_index_u32(20917u, 23u)])), 1u), vec2<f32>(-477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-744f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(444f)) + -1111f))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_div_u32(~(var_0.a.b.d ^ 74080u), var_0.a.b.d)), firstTrailingBit(var_0.a.b.d), _wgslsmith_dot_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(68961u, var_0.a.b.d, 32521u, 1u), vec4<u32>(26933u, 4294967295u, 19476u, var_0.a.b.d)) >> (vec4<u32>(u_input.b, 67970u, u_input.b, 4294967295u) % vec4<u32>(32u))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.a.d.d, var_0.a.b.d, 4294967295u), vec4<u32>(u_input.b, var_0.a.b.d, var_0.a.b.d, u_input.b)))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(906f + -2091f)));
    global1 = false;
    let var_3 = var_1;
    return vec2<i32>(-20568i, var_0.a.d.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    let var_0 = min(vec2<i32>(~_wgslsmith_clamp_i32(u_input.c >> (4294967295u % 32u), u_input.a, -u_input.a), -18470i), func_1(-1000f, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1788f, 700f, -355f) + vec3<f32>(475f, -294f, -1000f)) + vec3<f32>(327f, 922f, -583f)))));
    let var_1 = reverseBits(_wgslsmith_mult_vec4_i32(~min(vec4<i32>(2147483647i, 26473i, u_input.c, -43834i), vec4<i32>(u_input.a, u_input.a, 16550i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, u_input.c, -1i) & vec4<i32>(var_0.x, 1i, 8979i, 23121i), vec4<i32>(u_input.a, 51232i, var_0.x, -21542i) & vec4<i32>(-28245i, u_input.a, 2147483647i, -5253i))) | select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -25470i, u_input.c, var_0.x), vec4<i32>(1i, var_0.x, -10769i, -1i)), 1i, -2147483647i, _wgslsmith_mod_i32(var_0.x, 1i)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, u_input.a, -2147483647i, u_input.c), vec4<i32>(1i, -39030i, -2147483647i, 1i))), vec4<bool>(global0[_wgslsmith_index_u32(39845u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b < u_input.b, false | global0[_wgslsmith_index_u32(u_input.b, 23u)])));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2054f, 1687f, -115f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1537f, -1000f, 341f) - vec3<f32>(2140f, -289f, 451f)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, 731f, 757f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1415f, 519f, -1737f))))));
    let var_3 = select(!vec3<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], true, false, global0[_wgslsmith_index_u32(u_input.b, 23u)])), func_2().a.b.b.x, select(true, all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)])), true)), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 23u)] | false, global0[_wgslsmith_index_u32(0u, 23u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], true, false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), vec3<bool>(true, true, true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(40922u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 23u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], false)))), !vec3<bool>(true, select(!global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(~u_input.b, 23u)], true), global0[_wgslsmith_index_u32(u_input.b, 23u)]));
    let var_4 = ~(~_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 32120u, 19697u)), min(func_3(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], var_3.x, var_3.x, true), var_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 33634u, 1u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)))));
    var var_5 = (~(abs(var_4.x) | _wgslsmith_add_u32(59082u, var_4.x)) & min(~4612u, ~(~u_input.b))) > ~_wgslsmith_mod_u32(~var_4.x, _wgslsmith_dot_vec2_u32(var_4.xx, vec2<u32>(1u, 4294967295u)));
    global1 = !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2().a.e, firstLeadingBit(24517u)), 23u)]) || false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(15988i, var_0.x), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 330f, 1791f, var_2.a.x))))))));
}

