struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4036u, 1u);

var<private> global1: array<Struct_4, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    let var_0 = i32(-1i) * -select(~u_input.a.x, -(i32(-1i) * -2147483647i), true);
    global1 = array<Struct_4, 8>();
    let var_1 = -select(-(vec4<i32>(u_input.b, var_0, u_input.a.x, -23028i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, -37137i, 59177i), vec4<i32>(u_input.a.x, var_0, u_input.b, var_0))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(15140i, -45303i, -11449i, u_input.b) >> (vec4<u32>(global0.x, 38313u, global0.x, 1u) % vec4<u32>(32u)), ~vec4<i32>(var_0, var_0, u_input.b, 2147483647i)), vec4<i32>(36150i, 1i, var_0, var_0) ^ vec4<i32>(u_input.b, 0i, var_0, 2147483647i)), any(vec2<bool>(true, true)) && true);
    global1 = array<Struct_4, 8>();
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2299f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1552f))))), var_1.wxw, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 26123i), var_1.yx) <= 21097i, true, -10249i), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.zx, u_input.a), -28285i)), 1i, Struct_2(984f, 407f, (var_1.xww | var_1.yzx) | _wgslsmith_div_vec3_i32(max(var_1.xyz, var_1.wxz), ~var_1.wyz), Struct_1(min(u_input.c, u_input.c) != firstLeadingBit(38342u), all(vec2<bool>(true, true)), _wgslsmith_mult_i32(u_input.a.x, -29085i)), -(~abs(81589i))), 26483i);
    return vec4<i32>(-42868i, max(_wgslsmith_dot_vec3_i32((vec3<i32>(1i, 2147483647i, var_0) | var_2.a.c) >> (~vec3<u32>(global0.x, global0.x, 4294967295u) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(var_1.wyy, var_2.c.c)), var_2.d), abs(0i), var_2.a.d.c);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    var var_0 = vec3<u32>(global0.x, _wgslsmith_mult_u32(arg_1.b.x, 1u), select(~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 72918u), vec2<u32>(19022u, u_input.c)), 30347u, all(vec3<bool>(!arg_1.a.d.a, true, arg_2.x))));
    var var_1 = vec3<bool>(true, true, arg_2.x);
    var var_2 = Struct_5(i32(-1i) * -1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(205f, arg_0.b.x)) * arg_1.a.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-363f, arg_1.a.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f + -404f) + -1549f), -335f), ~arg_0.c);
    let var_3 = !(global0.x == var_0.x);
    var_0 = _wgslsmith_clamp_vec3_u32(abs(~(~vec3<u32>(arg_1.b.x, 0u, global0.x) | vec3<u32>(global0.x, 1u, u_input.c))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(arg_1.b), ~vec3<u32>(~var_0.x, 4294967295u, arg_1.b.x), vec3<u32>(_wgslsmith_add_u32(1u, 49818u), abs(var_0.x), _wgslsmith_sub_u32(~arg_1.b.x, ~14541u))), abs((arg_1.b << (arg_1.b % vec3<u32>(32u))) | ~abs(vec3<u32>(13279u, arg_1.b.x, var_0.x))));
    return 1u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global1 = array<Struct_4, 8>();
    var var_0 = _wgslsmith_mult_u32(func_4(Struct_5(1i, _wgslsmith_f_op_vec3_f32(arg_1.yxw * vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), firstLeadingBit(func_3())), Struct_3(arg_0.a, vec3<u32>(4294967295u, min(global0.x, 52512u), u_input.c >> (global0.x % 32u))), !select(select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_2, true), true), vec3<bool>(arg_2, arg_0.a.d.a, false), vec3<bool>(true, arg_0.c.d.a, true))), ~max(global0.x, global0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1)) * arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, 185f, arg_1.x, 131f) * arg_1)), ~firstTrailingBit(29048u) == 27317u)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1394f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-973f, arg_1.x))), arg_0.a.b, arg_0.a.b), _wgslsmith_f_op_vec4_f32(trunc(arg_1)), arg_2)));
    let var_2 = arg_0.c;
    var var_3 = Struct_5(~(reverseBits(~u_input.b) & ((i32(-1i) * -3285i) & -var_2.d.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))), -486f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -201f)), arg_1.x, _wgslsmith_f_op_f32(step(611f, _wgslsmith_f_op_f32(trunc(-1213f))))), !(!(!vec3<bool>(var_2.d.b, var_2.d.b, arg_0.c.d.a))))), vec4<i32>(6908i & (u_input.b ^ var_2.d.c), arg_0.a.c.x, arg_0.b, var_2.d.c));
    return !any(!select(!vec4<bool>(true, true, var_2.d.b, arg_0.a.d.a), vec4<bool>(false, false, true, false), arg_2));
}

fn func_1() -> Struct_1 {
    let var_0 = !select(!vec3<bool>(true, func_2(global1[_wgslsmith_index_u32(1u, 8u)], vec4<f32>(-395f, 702f, -281f, 1465f), true), true), !vec3<bool>(true, true, func_2(Struct_4(Struct_2(-682f, 197f, vec3<i32>(u_input.b, -1i, 4747i), Struct_1(false, true, -2147483647i), u_input.a.x), -2147483647i, Struct_2(839f, 653f, vec3<i32>(u_input.b, u_input.b, u_input.a.x), Struct_1(true, true, u_input.b), -1i), u_input.b), vec4<f32>(171f, -574f, 321f, -441f), false)), select(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false), true)));
    let var_1 = Struct_5(-(~firstTrailingBit(max(u_input.b, -1i))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1196f, 1064f)), -280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-615f, 228f)) + _wgslsmith_f_op_f32(ceil(337f)))))), vec4<i32>(~(~(-1i)), -1i, u_input.a.x, -(~countOneBits(u_input.b))));
    let var_2 = ~abs(var_1.c << (firstTrailingBit(vec4<u32>(1u, 18457u, 1u, u_input.c)) % vec4<u32>(32u))) & vec4<i32>(max(firstTrailingBit(reverseBits(u_input.a.x)), u_input.b), 2147483647i, 1i, -21015i);
    global0 = ~(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.c, 329u, u_input.c)) << (~vec3<u32>(u_input.c, 104626u, 0u) % vec3<u32>(32u)), ~vec3<u32>(0u, 67466u, global0.x)));
    return Struct_1(_wgslsmith_f_op_f32(trunc(1000f)) == -542f, false, _wgslsmith_div_i32(firstLeadingBit(firstTrailingBit(~u_input.a.x)), var_2.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_5(func_1().c, vec3<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2, -206f, false)))) + _wgslsmith_f_op_f32(ceil(-512f))), _wgslsmith_f_op_f32(-arg_2)), abs(min(vec4<i32>(arg_0.c, 6614i, u_input.b, -2147483647i), abs(vec4<i32>(2147483647i, u_input.b, arg_0.c, arg_0.c))) | vec4<i32>(firstLeadingBit(-27695i), 24877i, u_input.a.x, u_input.b)));
    var var_1 = ~arg_3;
    global0 = vec3<u32>(global0.x, 66515u, ~_wgslsmith_add_u32(reverseBits(global0.x | 1u), 12662u));
    var var_2 = Struct_3(Struct_2(arg_2, arg_2, var_0.c.zxx, arg_0, arg_0.c), max(vec3<u32>(_wgslsmith_sub_u32(arg_3.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, var_1.x, arg_3.x), vec4<u32>(4294967295u, 1u, u_input.c, global0.x)), 0u), ~arg_3) << (arg_3 % vec3<u32>(32u)));
    global0 = ~((_wgslsmith_sub_vec3_u32(var_2.b, arg_3) >> (arg_3 % vec3<u32>(32u))) & ~reverseBits(_wgslsmith_clamp_vec3_u32(arg_3, vec3<u32>(global0.x, 46726u, 4294967295u), var_2.b)));
    return Struct_2(var_0.b.x, arg_2, -max(var_2.a.c, firstLeadingBit(vec3<i32>(u_input.a.x, 0i, -1i) & var_0.c.xxx)), arg_0, 0i);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    global0 = firstTrailingBit(select(vec3<u32>(firstLeadingBit(17303u), 1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, global0.x, 1u)), vec3<u32>(u_input.c, 4294967295u, 24599u))), countOneBits(vec3<u32>(u_input.c, 9318u, global0.x)), vec3<bool>(arg_0.a.d.a, func_1().a, !any(arg_1.xx))));
    let var_0 = Struct_1(true, any(!vec3<bool>(arg_0.c.d.b, arg_1.x && arg_1.x, true)), -2147483647i);
    var var_1 = any(arg_1);
    var_1 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(435f, _wgslsmith_f_op_f32(arg_0.c.b + arg_0.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(54707u, ~u_input.c, func_6(Struct_4(func_5(func_1(), vec3<bool>(true, true, true), 1f, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, global0.x), vec3<u32>(global0.x, u_input.c, 1u))), 32008i, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -572f), _wgslsmith_f_op_f32(f32(-1f) * -340f), firstLeadingBit(vec3<i32>(1i, u_input.a.x, -1i)), Struct_1(true, true, u_input.b), u_input.a.x), firstLeadingBit(11224i)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), select(~(-vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(6205i, 1i, u_input.b), vec3<i32>(-2575i, u_input.b, -38909i)), -u_input.b, -2147483647i, func_3().x), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false))));
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(min(select(vec3<u32>(53149u, 67213u, global0.x), vec3<u32>(102425u, 3682u, u_input.c), vec3<bool>(true, true, true)), firstLeadingBit(~vec3<u32>(37164u, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c, 26658u, global0.x)), ~vec3<u32>(1u, 46981u, u_input.c) | ~vec3<u32>(u_input.c, 0u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, u_input.c, 50411u), abs(vec3<u32>(u_input.c, global0.x, 41596u))))), 19547u);
    let var_1 = _wgslsmith_sub_u32(global0.x, _wgslsmith_mult_u32(18177u, var_0)) > (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0, 1u, 1u, var_0)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(62271u, 33226u, var_0, var_0), vec4<u32>(4294967295u, u_input.c, 20588u, u_input.c), vec4<u32>(4294967295u, u_input.c, 1u, 31252u))) >> (var_0 % 32u));
    global1 = array<Struct_4, 8>();
    var var_2 = 788f;
    let x = u_input.a;
    s_output = StorageBuffer(-871f);
}

