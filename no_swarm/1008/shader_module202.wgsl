struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<f32, 14> = array<f32, 14>(-469f, 1085f, 2107f, 1416f, -457f, -591f, 1808f, -135f, -1000f, 958f, -2817f, 1423f, 516f, -2202f);

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 1u, 0u, 7728u, 3313u, 41618u, 0u, 70099u, 13256u, 7511u, 1u, 4294967295u, 0u, 66273u, 36571u, 1u, 4294967295u, 9567u, 4294967295u, 12077u, 4294967295u, 7729u, 4294967295u);

var<private> global2: vec2<f32> = vec2<f32>(1429f, -511f);

var<private> global3: f32 = 819f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(756f, 2222f, true))) * 230f))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(173f + arg_1.x)));
    var_0 = 804f;
    global0 = array<f32, 14>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)]), 14u)])));
    return arg_0.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = select(~min(15647i, -5077i), func_3(-vec4<i32>(27781i, reverseBits(u_input.b.x), _wgslsmith_clamp_i32(u_input.a, 37937i, u_input.b.x), u_input.b.x), vec4<f32>(462f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17213u, 23u)], 23u)], 23u)], 23u)], 23u)], 14u)] * -127f))), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))), true);
    let var_1 = !(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_3(~_wgslsmith_div_vec4_i32(min(-vec4<i32>(2147483647i, var_0, 11993i, u_input.a), abs(vec4<i32>(-84407i, u_input.b.x, 16365i, -20782i))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, 0i), -u_input.a, countOneBits(-2147483647i), -1i)), vec4<u32>(global1[_wgslsmith_index_u32(0u, 23u)] | countOneBits(0u), 62512u, _wgslsmith_clamp_u32(~1644u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(24107u, 62009u, global1[_wgslsmith_index_u32(19813u, 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3158u, 23u)], 23u)], global1[_wgslsmith_index_u32(49384u, 23u)]))), 1u), ~4294967295u), ~global1[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38110u, 23u)], 23u)], 1u, global1[_wgslsmith_index_u32(15263u, 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 3886u, 1u, 4294967295u)), 1u, true), 23u)], select(vec3<i32>(39281i, var_0 & _wgslsmith_add_i32(0i, 0i), ~32874i), firstLeadingBit(vec3<i32>(var_0, u_input.a, -27346i)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(68354u, 60660u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11608u, 23u)], 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 0u)), firstLeadingBit(vec3<u32>(0u, 100251u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)]))) % vec3<u32>(32u)), -(i32(-1i) * -2147483647i) == u_input.b.x));
    var var_3 = global2.x;
    var var_4 = !vec4<bool>(false, 39640i < var_2.a.x, true || (all(vec4<bool>(true, true, true, var_1)) | any(vec2<bool>(var_1, false))), 1172f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28990u, 1u, var_2.c), 23u)], 23u)], 14u)], var_1)));
    return Struct_1(1u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec4<i32> {
    global0 = array<f32, 14>();
    let var_0 = vec2<i32>(countOneBits(2147483647i), u_input.a) & u_input.b;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(620f, 1092f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33444u, 23u)], 23u)], 14u)]) + vec3<f32>(660f, arg_2.x, 436f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -221f, 176f) * vec3<f32>(global2.x, arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(24704u, 14u)], -711f, 1842f))))))));
    global0 = array<f32, 14>();
    let var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(4520u, 4294967295u), vec2<u32>(66307u, _wgslsmith_add_u32(9321u, global1[_wgslsmith_index_u32(var_1.a, 23u)]))), _wgslsmith_add_vec2_u32(abs(select(vec2<u32>(var_1.a, 74248u), vec2<u32>(global1[_wgslsmith_index_u32(37554u, 23u)], global1[_wgslsmith_index_u32(50687u, 23u)]), true)), vec2<u32>(~var_1.a, reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a, 23u)], 23u)], 23u)]))));
    return -select(~(-vec4<i32>(2147483647i, 0i, var_0.x, var_0.x)), (vec4<i32>(var_0.x, 27480i, u_input.b.x, 18416i) ^ vec4<i32>(6179i, 14799i, var_0.x, -7903i)) | vec4<i32>(var_0.x, var_0.x, 8274i, -1i), false) ^ (vec4<i32>(-34528i, ~u_input.a, var_0.x, 1i) << (_wgslsmith_div_vec4_u32(~vec4<u32>(2318u, var_1.a, 28087u, var_1.a), ~(~vec4<u32>(var_1.a, var_1.a, global1[_wgslsmith_index_u32(1u, 23u)], 0u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = vec2<f32>(-1457f, arg_3.x);
    global0 = array<f32, 14>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - _wgslsmith_f_op_f32(exp2(arg_3.x))) + _wgslsmith_f_op_f32(-1049f + _wgslsmith_f_op_f32(-var_0.x))), firstTrailingBit(firstTrailingBit(~global1[_wgslsmith_index_u32(7685u, 23u)]) >> (abs(global1[_wgslsmith_index_u32(max(arg_2.x, global1[_wgslsmith_index_u32(20544u, 23u)]), 23u)]) % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.x, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60595u, 23u)], 23u)], 1u, global1[_wgslsmith_index_u32(0u, 23u)]), ~arg_2), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, select(global1[_wgslsmith_index_u32(arg_2.x, 23u)], 1u, arg_1)), 23u)]) == abs(global1[_wgslsmith_index_u32(arg_2.x, 23u)]), func_2(vec3<f32>(global0[_wgslsmith_index_u32(15738u, 14u)], -1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -331f)))));
    global1 = array<u32, 23>();
    let var_2 = -_wgslsmith_add_i32(u_input.b.x, i32(-1i) * -arg_0.x) == func_1(vec4<bool>(all(vec4<bool>(var_1.c, var_1.c, false, arg_1)), false, var_1.c, true), vec4<bool>(false, true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, arg_1))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, -661f) - var_0))))).x;
    return _wgslsmith_f_op_vec2_f32(floor(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 14>();
    var var_0 = ~max(firstLeadingBit(-2147483647i), u_input.a);
    let var_1 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)];
    var var_2 = Struct_2(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56277u, 23u)], 23u)], 54632u)) | (~vec3<u32>(global1[_wgslsmith_index_u32(64135u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72468u, 23u)], 23u)], 12847u) | vec3<u32>(global1[_wgslsmith_index_u32(10484u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], 74306u)), _wgslsmith_add_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(109282u, 23u)], 108212u, 118687u), vec3<u32>(~28885u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79301u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(68034u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)]))))), vec2<u32>(19502u, ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 5966u), ~3712u), 23u)]));
    var var_3 = vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(-vec3<i32>(69500i, 38923i, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, -26700i)), -select(vec3<i32>(3065i, 1i, u_input.a) << (vec3<u32>(var_2.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51305u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.x, 23u)], 23u)], 23u)]) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.b.x), vec3<i32>(0i, u_input.b.x, u_input.a)), true)), i32(-1i) * -14660i);
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, -5470i, -38778i, u_input.b.x), vec4<i32>(u_input.b.x, var_3.x, var_3.x, 0i)), vec4<i32>(u_input.a, var_3.x, u_input.a, 27092i)), abs(func_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec2<f32>(-1000f, -444f)))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(select(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.x, 23u)], 23u)], var_2.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22878u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec4<u32>(0u, 33433u, var_2.b.x, global1[_wgslsmith_index_u32(var_2.b.x, 23u)])), vec4<u32>(global1[_wgslsmith_index_u32(32014u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(var_2.a.x, 23u)], global1[_wgslsmith_index_u32(var_2.a.x, 23u)]), true), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 14189u, var_2.a.x, 1u), vec4<u32>(4294967295u, 4294967295u, var_2.a.x, var_2.a.x)) >> (abs(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.a.x, 23u)], 23u)], 1u, var_2.a.x)) % vec4<u32>(32u)), any(vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), -1526f, _wgslsmith_f_op_f32(floor(global2.x))))));
    global3 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_2.b.x | 53235u, ~var_2.b.x), abs(~81328u)), firstTrailingBit(vec2<u32>(4053u, 1u))), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, ~(~firstTrailingBit(var_2.b.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_2.b.x, 43242u), vec4<u32>(var_2.a.x, var_2.b.x, 4294967295u, 28883u)) % 32u)));
}

