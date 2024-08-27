struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> f32 {
    global0 = array<vec3<bool>, 14>();
    var var_0 = Struct_1(arg_1.c.d.x, max(~3004i, ~_wgslsmith_add_i32(~43277i, -1i)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), max(vec2<u32>(u_input.c, 109626u), u_input.b.ww)), u_input.b.xw), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.c.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-189f - -1018f), 904f)), -309f), -1000f), arg_1.b.e);
    global0 = array<vec3<bool>, 14>();
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(arg_0, -_wgslsmith_add_vec2_i32(var_0.e.zx, -vec2<i32>(arg_0.x, u_input.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.b.a, 1289f, false))))))), ~reverseBits(i32(-1i) * -arg_2.x), _wgslsmith_dot_vec3_u32(u_input.b.yyw, vec3<u32>(12378u, ~_wgslsmith_add_u32(var_0.c, 0u), ~(~var_0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.b.d), vec3<f32>(259f, _wgslsmith_f_op_f32(-arg_1.b.d.x), _wgslsmith_f_op_f32(exp2(var_0.d.x)))))), select(var_0.e | var_0.e, -var_0.e, true) ^ abs(var_0.e));
    return arg_1.c.d.x;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global0 = array<vec3<bool>, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(1027f)), firstLeadingBit(u_input.a), _wgslsmith_sub_u32(~u_input.c & _wgslsmith_div_u32(0u, u_input.d), 14733u) & ~_wgslsmith_div_u32(abs(u_input.b.x), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, 862f, -712f) + vec3<f32>(-1207f, -1945f, 709f))), vec3<f32>(-308f, -327f, _wgslsmith_f_op_f32(f32(-1f) * -1401f))))), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.a, 1i, 0i, arg_0)) << (vec4<u32>(_wgslsmith_add_u32(8434u, 67465u), u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.yz), 0u) % vec4<u32>(32u)), abs(select(firstTrailingBit(vec4<i32>(arg_0, 0i, 2147483647i, u_input.a)), vec4<i32>(1i, 23925i, -2147483647i, 0i), false))));
    var var_1 = ~firstTrailingBit(arg_0);
    let var_2 = Struct_2(arg_0 >> (u_input.d % 32u), Struct_1(510f, select(-(i32(-1i) * -2147483647i), arg_0, select(select(true, false, false), u_input.b.x == 1u, true)), var_0.c, vec3<f32>(199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(var_0.e.x, 4063i), Struct_2(arg_0, Struct_1(-822f, u_input.a, u_input.d, var_0.d, var_0.e), var_0, var_0.e.xy, vec4<bool>(true, false, false, false)), vec3<i32>(arg_0, arg_0, -22357i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -697f) - _wgslsmith_f_op_f32(f32(-1f) * -2168f))), abs(-vec4<i32>(-34714i, var_0.e.x, var_0.b, -78258i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-1097f - -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -429f)), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, var_0.c), _wgslsmith_add_vec3_u32(vec3<u32>(58469u, 86575u, u_input.d), vec3<u32>(var_0.c, u_input.b.x, var_0.c))) & u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d), _wgslsmith_f_op_vec3_f32(-var_0.d))), var_0.e), _wgslsmith_add_vec2_i32(-(~vec2<i32>(var_0.b, arg_0)), var_0.e.yx), !vec4<bool>(true & (u_input.a > -1i), true, false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))));
    var_1 = var_0.e.x;
    return ~firstLeadingBit(firstLeadingBit(select(vec3<i32>(0i, -1i, -34530i), vec3<i32>(1i, 1i, var_0.e.x), true) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -15815i, -39365i), _wgslsmith_div_i32(2147483647i, u_input.a), u_input.a, 0i), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -16541i, 25027i, 18319i), vec4<i32>(-2387i, 39321i, u_input.a, -13791i))), 2147483647i, -2147483647i), func_2(_wgslsmith_sub_i32(u_input.a, u_input.a)), ~_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a, -25494i, 1i), max(~vec3<i32>(u_input.a, u_input.a, -1i), max(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(68485i, u_input.a, -2147483647i)))));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-(-2147483647i << (_wgslsmith_mult_u32(u_input.d, u_input.b.x) % 32u)), _wgslsmith_add_i32(u_input.a ^ u_input.a, ~var_0.x)), ~min(-max(u_input.a, u_input.a), 1i));
    var var_2 = u_input.b;
    var var_3 = vec2<i32>(~(-1i >> (_wgslsmith_mod_u32(69476u, u_input.b.x) % 32u)) >> (_wgslsmith_sub_u32(firstLeadingBit(var_2.x), firstTrailingBit(~u_input.b.x)) % 32u), max(-var_0.x, -31436i));
    var var_4 = !select(!((false & arg_0) && !arg_0), arg_0, arg_0);
    return Struct_2(1i, Struct_1(_wgslsmith_f_op_f32(sign(922f)), _wgslsmith_dot_vec3_i32(vec3<i32>(~0i, _wgslsmith_add_i32(-12268i, 2147483647i), ~15062i), vec3<i32>(var_0.x, _wgslsmith_add_i32(u_input.a, var_0.x), 0i)), reverseBits(u_input.d), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1))), select(-(vec4<i32>(var_3.x, var_0.x, var_0.x, var_3.x) ^ vec4<i32>(var_0.x, 47483i, var_0.x, 1322i)), -firstLeadingBit(vec4<i32>(var_3.x, var_0.x, -1i, 29638i)), arg_0)), Struct_1(arg_1.x, -abs(_wgslsmith_dot_vec3_i32(var_0, var_0)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21450u, u_input.d), vec2<u32>(u_input.d, u_input.b.x)), reverseBits(_wgslsmith_add_vec2_u32(var_2.wx, vec2<u32>(21469u, var_2.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(-412f, 477f, -650f))), vec4<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, u_input.a), var_0), -41827i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -34879i), _wgslsmith_mult_i32(-65825i, var_3.x)))), vec2<i32>(~var_0.x, countOneBits(-(i32(-1i) * -2147483647i))), vec4<bool>(arg_0, true, false, any(select(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(28803u, 14u)], true)) && arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    var var_0 = func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1593f))), 454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1466f, -1023f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, -468f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-313f)) - _wgslsmith_f_op_f32(min(-1249f, _wgslsmith_f_op_f32(max(1128f, -166f)))))));
    let var_1 = func_1(var_0.e.x, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f + var_0.b.d.x)))), 617f, _wgslsmith_f_op_f32(ceil(-143f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_i32(-var_0.d, var_0.d) >> (~firstTrailingBit(vec2<u32>(var_0.c.c, 1u)) % vec2<u32>(32u)), Struct_2(_wgslsmith_mod_i32(0i ^ var_0.a, _wgslsmith_div_i32(-2147483647i, u_input.a)), Struct_1(_wgslsmith_f_op_f32(abs(-1409f)), _wgslsmith_mult_i32(var_0.c.e.x, 18518i), var_0.c.c, var_0.c.d, abs(var_0.c.e)), func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.x, 183f, var_0.c.d.x) - var_0.c.d), _wgslsmith_f_op_f32(-var_0.b.a)).c, _wgslsmith_div_vec2_i32(var_0.d, -var_0.d), !select(var_0.e, vec4<bool>(false, false, true, var_0.e.x), var_0.e.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.d.x, var_0.b.e.x, var_0.b.e.x), select(firstLeadingBit(var_0.b.e.www), vec3<i32>(0i, -73775i, -15171i), func_1(false, var_0.c.d, -2876f).e.zyx))))).b;
    let var_2 = var_1;
    global0 = array<vec3<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) + _wgslsmith_f_op_f32(max(1228f, _wgslsmith_div_f32(var_0.c.d.x, var_1.a))))), var_1.e.zxx);
}

