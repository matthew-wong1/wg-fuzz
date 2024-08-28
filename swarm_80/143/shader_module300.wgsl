struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<f32>(1247f, -799f, 795f, 1000f), true, -1594f), Struct_1(vec4<f32>(-1000f, 1000f, 1115f, -1250f), false, 417f), Struct_1(vec4<f32>(-823f, 1802f, -427f, 746f), false, 881f), Struct_1(vec4<f32>(866f, 683f, 107f, -989f), false, 255f), Struct_1(vec4<f32>(556f, -103f, -200f, -2129f), false, 190f), Struct_1(vec4<f32>(576f, -132f, -1166f, 588f), false, -324f), Struct_1(vec4<f32>(-962f, 434f, 800f, 682f), true, -841f), Struct_1(vec4<f32>(-692f, 1007f, 1785f, -600f), false, -1080f), Struct_1(vec4<f32>(477f, -1144f, -995f, 154f), true, -1200f), Struct_1(vec4<f32>(-1625f, 1484f, -192f, 1028f), false, -1969f), Struct_1(vec4<f32>(-197f, 782f, 1607f, -136f), true, 1020f), Struct_1(vec4<f32>(358f, 2441f, -616f, 400f), true, 165f), Struct_1(vec4<f32>(125f, 288f, 567f, -349f), true, -1131f), Struct_1(vec4<f32>(-1663f, 553f, 788f, 903f), true, -816f), Struct_1(vec4<f32>(-1393f, -397f, -361f, 1434f), false, -229f), Struct_1(vec4<f32>(550f, 315f, -613f, -1000f), false, -1951f), Struct_1(vec4<f32>(-1775f, 446f, -654f, -165f), false, -1190f), Struct_1(vec4<f32>(-1179f, 624f, -975f, 497f), false, -1053f), Struct_1(vec4<f32>(-957f, -1370f, 115f, 688f), false, -574f), Struct_1(vec4<f32>(-1000f, -1343f, 197f, 775f), true, -167f));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: i32;

var<private> global4: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<u32>(~(_wgslsmith_mult_u32(_wgslsmith_div_u32(23819u, 34913u), reverseBits(u_input.a.x)) >> (30649u % 32u)), global0.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.a + _wgslsmith_f_op_vec4_f32(-global0.b.a)) - vec4<f32>(_wgslsmith_f_op_f32(min(global0.b.a.x, -188f)), -422f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b.a.x)), 1f), _wgslsmith_f_op_f32(min(-2228f, global0.c.x)))), true, _wgslsmith_f_op_f32(global0.b.a.x + 1267f));
    global4 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(28699i, -14722i, u_input.b.x), vec3<i32>(-28915i, u_input.b.x, global4.x)), reverseBits(vec3<i32>(2147483647i, global4.x, u_input.b.x) | vec3<i32>(1i, 14368i, u_input.b.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.b.x, i32(-1i) * -33974i, u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(global4.x, 0i, u_input.b.x), select(vec3<i32>(u_input.b.x, -12828i, 2147483647i), vec3<i32>(u_input.b.x, 21064i, global4.x), global2.x)))), vec3<i32>(_wgslsmith_add_i32(1i, ~(~27317i)), 1i, u_input.b.x));
    var var_2 = _wgslsmith_div_f32(global0.b.a.x, 640f);
    global2 = select(!(!(!vec2<bool>(var_1.b, global2.x))), !vec2<bool>(-350f >= _wgslsmith_f_op_f32(sign(var_1.a.x)), false), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_0.x), ~vec2<u32>(4294967295u, u_input.a.x)) > ~0u);
    return countOneBits(vec3<u32>(65311u, _wgslsmith_div_u32(~var_0.x, global0.a.x) ^ 15570u, min(abs(0u), _wgslsmith_clamp_u32(~4294967295u, 1u, var_0.x >> (var_0.x % 32u)))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(min(global0.b.a.x, global0.b.a.x));
    global0 = Struct_3(~(~min(func_3(), ~global0.a)), global0.b, global0.c);
    global3 = u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_2 = Struct_4(Struct_3(global0.a, Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1354f, 681f, -1129f, -1353f)))), _wgslsmith_f_op_vec2_f32(select(var_1.a.yz, var_1.a.xw, var_1.b))));
    return vec4<u32>(~(~1u), 124530u, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(52236u, 1u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 55325u, arg_1), var_2.a.a), func_3().x), 0u), ~(~vec4<u32>(global0.a.x, global0.a.x, 4294967295u, 4294967295u))), 0u);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(global0.a.x, arg_2), u_input.a.x, firstLeadingBit(global0.a.x)), global0.a), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(426f + -1064f), -849f, -254f, -597f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec2_f32(-arg_0.xy))));
    var var_0 = vec4<i32>(_wgslsmith_div_i32(22817i, 14793i), select(-26871i, -global4.x, !((arg_1.b && global2.x) || any(vec4<bool>(arg_1.b, global2.x, false, global2.x)))), 1i >> (abs(_wgslsmith_mult_u32(~arg_2, 37905u)) % 32u), -12744i);
    let var_1 = Struct_4(Struct_3(firstTrailingBit(vec3<u32>(arg_2, ~arg_2, 0u & arg_2)), Struct_2(_wgslsmith_f_op_vec4_f32(round(arg_0))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_1.c)))));
    var_0 = vec4<i32>(8291i, -(~(~u_input.b.x) << ((~var_1.a.a.x ^ ~var_1.a.a.x) % 32u)), u_input.b.x, countOneBits(abs(-10283i) >> (~arg_2 % 32u)) ^ ~(-23334i));
    var var_2 = firstTrailingBit(2147483647i);
    return Struct_3(firstTrailingBit(global0.a ^ var_1.a.a), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.a.b.a, vec4<f32>(arg_0.x, var_1.a.b.a.x, arg_1.a.x, -309f)), _wgslsmith_f_op_vec4_f32(global0.b.a + vec4<f32>(arg_1.c, var_1.a.b.a.x, -211f, global0.b.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1000f)))), vec2<f32>(-879f, _wgslsmith_f_op_f32(-var_1.a.b.a.x)), ~1u > global0.a.x))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_4(func_4(global0.b.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(i32(-1i) * -1i, _wgslsmith_sub_u32(u_input.a.x, 0u), !vec3<bool>(false, global2.x, false)), vec4<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), vec2<u32>(48446u, u_input.a.x)), ~0u, ~arg_0)), 20u)], _wgslsmith_mod_u32(firstTrailingBit(~9729u), ~(~global0.a.x))));
    return select(_wgslsmith_add_i32(-23037i, ~(-9383i)) & _wgslsmith_mult_i32(global4.x, abs(u_input.b.x)), -u_input.b.x, global2.x & global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(func_1(u_input.a.x) >> (u_input.a.x % 32u), -1i >> (select(19693u, global0.a.x ^ global0.a.x, true) % 32u), firstTrailingBit(global4.x) & -2147483647i), ~(~_wgslsmith_add_i32(global4.x, 2147483647i)));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b.a) + vec4<f32>(-1417f, global0.c.x, global0.b.a.x, -1720f)), global0.b.a) * _wgslsmith_f_op_vec4_f32(global0.b.a + _wgslsmith_f_op_vec4_f32(floor(global0.b.a)))), global1[_wgslsmith_index_u32(0u, 20u)], 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-global0.c.x);
    var var_2 = var_1;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, var_1, global0.b.a.x, global0.b.a.x) * global0.b.a) - _wgslsmith_div_vec4_f32(global0.b.a, vec4<f32>(-253f, 552f, -507f, -1324f))))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))), 1300f, _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(step(var_1, 1000f))))));
    var var_4 = true;
    global2 = !(!(!select(select(vec2<bool>(global2.x, true), vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x)), select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(true, true)), global2.x)));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(-19188i, 0u, countOneBits(_wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(global4.x, 2147483647i), true), global4.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(var_3.a.yw, vec2<f32>(-784f, global0.c.x))))))));
}

