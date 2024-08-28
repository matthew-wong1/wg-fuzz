struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: array<bool, 26>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = Struct_4(-1000f);
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    var var_1 = reverseBits(countOneBits(vec3<i32>(arg_2.d, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 36668i, 1i), ~vec3<i32>(1i, u_input.b.x, 1i)), 48674i)));
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e.x, 0i, 1i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d, 53714i, var_1.x, -2147483647i), vec4<i32>(40403i, u_input.d, 2147483647i, -1i))), var_1.x), min(var_1.yx, vec2<i32>(-(var_1.x << (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -19238i), vec2<i32>(28406i, u_input.b.x)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, arg_2.c, arg_2.c, 150f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_2.a))), _wgslsmith_f_op_f32(1003f - _wgslsmith_f_op_f32(max(arg_2.c, var_0.a))), 294f, _wgslsmith_f_op_f32(-696f - _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_5) -> vec3<bool> {
    global0 = array<vec2<i32>, 17>();
    var var_0 = 1u;
    global0 = array<vec2<i32>, 17>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1957f, _wgslsmith_f_op_f32(f32(-1f) * -2335f), arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1987f, arg_0.x, arg_0.x) - vec3<f32>(967f, -383f, arg_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, min(30035u, u_input.a.x), _wgslsmith_mult_u32(u_input.c.x, 25330u)), 26u)])), Struct_5(select(select(vec4<bool>(arg_2.a.x, false, true, true), arg_2.a, false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], arg_2.a.x, false, arg_2.a.x), !arg_2.a)), Struct_3(!arg_2.a.x, Struct_2(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.c.x), arg_1, i32(-1i) * -48294i, select(arg_2.a.xyy, arg_2.a.zwy, false)), arg_0.x, i32(-1i) * -2147483647i, 17956u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-699f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-206f, arg_0.x, arg_0.x), Struct_5(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(5052u, 26u)])), Struct_3(global1[_wgslsmith_index_u32(37291u, 26u)], Struct_2(4294967295u, 2147483647i, arg_1, arg_2.a.xzy), -669f, 44870i, 14398u))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1155f) * _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = vec2<u32>(max(min(_wgslsmith_dot_vec4_u32(u_input.c, firstLeadingBit(u_input.c)), u_input.c.x), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 50082u, u_input.a.x, u_input.c.x), vec4<u32>(33677u, 4294967295u, u_input.c.x, 22119u)), abs(u_input.c)))), u_input.a.x);
    return vec3<bool>(true, _wgslsmith_add_u32(19391u, ~u_input.a.x >> (25388u % 32u)) >= 9384u, 673f != _wgslsmith_f_op_f32(exp2(arg_0.x)));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = (abs(firstLeadingBit(vec3<u32>(71794u, u_input.c.x, 4347u))) | ~(~(~vec3<u32>(112173u, u_input.c.x, u_input.a.x)))) | ~vec3<u32>((u_input.a.x ^ 0u) >> (u_input.c.x % 32u), u_input.c.x, 1u);
    var_0 = u_input.c.wyy;
    var var_1 = var_0.x;
    var var_2 = !(!select(func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a, -936f))), abs(12128i), Struct_5(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(var_0.x, 26u)]))), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(56220u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)])), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], true)));
    let var_3 = Struct_1(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -50730i, u_input.d, -1i) ^ vec4<i32>(6603i, 18812i, 1i, u_input.d), ~vec4<i32>(-2147483647i, -1i, -10585i, -2147483647i))), abs(u_input.c.xy));
    return select(select(select(!(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], var_2.x)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)], false, true), vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(6700u, 26u)], var_2.x), vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(11351u, 26u)], true, true)), global1[_wgslsmith_index_u32(var_3.b.x, 26u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_3.b.x, 26u)], !global1[_wgslsmith_index_u32(var_0.x, 26u)], !global1[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(func_2(vec2<f32>(-372f, 682f), u_input.d, Struct_5(vec4<bool>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], true))).x, all(vec3<bool>(true, false, false)), false, func_2(vec2<f32>(arg_0.a, arg_0.a), 5030i, Struct_5(vec4<bool>(true, var_2.x, global1[_wgslsmith_index_u32(var_3.b.x, 26u)], global1[_wgslsmith_index_u32(56606u, 26u)]))).x), false), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, arg_0.a))), var_3.a.x, Struct_5(vec4<bool>(var_2.x, true, true, true))).x), select(select(!vec4<bool>(var_2.x, true, false, var_2.x), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], true)), !(!vec4<bool>(global1[_wgslsmith_index_u32(var_3.b.x, 26u)], var_2.x, var_2.x, global1[_wgslsmith_index_u32(9415u, 26u)]))), select(!vec4<bool>(false, var_2.x, global1[_wgslsmith_index_u32(var_3.b.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)]), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.x, 26u)], true)), vec4<bool>(false, !global1[_wgslsmith_index_u32(7317u, 26u)], var_2.x, false)), var_2.x), vec4<bool>(!var_2.x, all(select(vec3<bool>(var_2.x, var_2.x, false), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(var_3.b.x, 26u)], true), vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(43429u, 26u)]), vec3<bool>(false, var_2.x, false)), !global1[_wgslsmith_index_u32(1u, 26u)])), true, all(!vec2<bool>(var_2.x, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, -1973f, -1742f) * vec3<f32>(-1669f, 1416f, 857f)), Struct_5(vec4<bool>(true, true, false, false)), Struct_3(arg_0.d.x, Struct_2(11367u, 0i, arg_0.c, vec3<bool>(arg_1.a.x, arg_1.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)])), 540f, 0i, 4294967295u))).x, -306f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1596f, -151f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 220f, 248f)), arg_1, Struct_3(false, arg_0, _wgslsmith_f_op_f32(-304f * -936f), min(-1i, -5614i), 1548u))).x));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, var_0.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1648f, 200f) * vec2<f32>(-346f, var_0.x)), vec2<f32>(-1704f, var_0.x))), global1[_wgslsmith_index_u32(4294967295u, 26u)])) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-197f, -870f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-720f, -371f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(371f + -331f)))))));
    global1 = array<bool, 26>();
    global0 = array<vec2<i32>, 17>();
    global1 = array<bool, 26>();
    return vec3<i32>(min(u_input.b.x, u_input.d), u_input.b.x, -43704i) << (u_input.c.yxz % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(func_4(Struct_2(_wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x), -41859i, ~(-22238i), vec3<bool>(global1[_wgslsmith_index_u32(1u & u_input.c.x, 26u)], true, global1[_wgslsmith_index_u32(0u, 26u)])), Struct_5(select(func_1(Struct_4(-462f)), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)], false), vec4<bool>(global1[_wgslsmith_index_u32(15892u, 26u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], true)))));
    global1 = array<bool, 26>();
    global1 = array<bool, 26>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(758f)) * _wgslsmith_f_op_f32(select(-363f, 372f, global1[_wgslsmith_index_u32(u_input.c.x, 26u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1176f + _wgslsmith_f_op_f32(f32(-1f) * -271f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f)))));
    let var_2 = !select(vec4<bool>(global1[_wgslsmith_index_u32(37669u, 26u)], select(global1[_wgslsmith_index_u32(37268u, 26u)], !global1[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c.x != 7444u), global1[_wgslsmith_index_u32(~4294967295u, 26u)], true), func_1(Struct_4(_wgslsmith_f_op_f32(sign(-1942f)))), global1[_wgslsmith_index_u32(u_input.a.x, 26u)]);
    var var_3 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.c.zyy), countOneBits(u_input.c.yxz)), ~(~u_input.c.wzz)));
    let var_4 = max(abs(1i | -(var_0.x | u_input.e.x)), -(~var_0.x));
    var var_5 = Struct_2(4294967295u, var_4, 28653i, var_2.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(1f, func_4(Struct_2(_wgslsmith_add_u32(abs(0u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), -(~var_5.c), i32(-1i) * -1i, vec3<bool>(var_5.a < 4294967295u, global1[_wgslsmith_index_u32(firstTrailingBit(var_5.a), 26u)], var_5.d.x)), Struct_5(var_2)), ~11991u, ~9721u, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(max(4294967295u, 0u), _wgslsmith_sub_u32(var_5.a, 1u), 1u), var_5.a), min(vec2<u32>(u_input.c.x, 13625u) >> ((vec2<u32>(46108u, var_3.x) >> (u_input.c.zz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~var_3.x, abs(var_3.x)))));
}

