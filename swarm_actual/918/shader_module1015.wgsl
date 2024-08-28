struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<i32, 8> = array<i32, 8>(-1i, 0i, -36781i, 1i, 1i, -12060i, 0i, 0i);

var<private> global2: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1499f, -1090f), vec2<f32>(115f, 1533f), vec2<f32>(-2274f, -379f), vec2<f32>(783f, 602f), vec2<f32>(-1553f, -909f), vec2<f32>(-517f, 1000f), vec2<f32>(1176f, 1713f), vec2<f32>(316f, -842f), vec2<f32>(277f, 547f), vec2<f32>(655f, 487f), vec2<f32>(-734f, -566f), vec2<f32>(1049f, 730f), vec2<f32>(-310f, -633f), vec2<f32>(-1704f, -1414f), vec2<f32>(-1508f, -353f), vec2<f32>(1727f, -1406f), vec2<f32>(837f, -850f), vec2<f32>(-1000f, -1447f), vec2<f32>(-2699f, 1249f), vec2<f32>(-1221f, -636f), vec2<f32>(-2647f, 265f), vec2<f32>(-674f, 458f), vec2<f32>(-253f, 1165f), vec2<f32>(-611f, -688f), vec2<f32>(1137f, 2857f), vec2<f32>(352f, 683f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(1u, min(_wgslsmith_div_u32(35838u, u_input.a.x), 1u))), 13u)], ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(arg_3.a.x, arg_3.a.x, 1u)), 8u)] << (90343u % 32u), -1i);
    let var_1 = Struct_2(select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], var_0.a, var_0.a, global0[_wgslsmith_index_u32(48676u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(50955u, 13u)], var_0.a, var_0.a, true), var_0.a), !(!vec4<bool>(false, true, var_0.a, var_0.a)), vec4<bool>(global0[_wgslsmith_index_u32(min(u_input.a.x, arg_3.a.x), 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], arg_1 > arg_1)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], var_0.a, true))), !(!any(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)])))));
    var var_2 = firstLeadingBit(vec3<i32>(-(~var_0.b), select(1i, _wgslsmith_sub_i32(1i, -6430i), any(select(var_1.a.zxy, vec3<bool>(var_1.a.x, global0[_wgslsmith_index_u32(arg_0.x, 13u)], var_0.a), var_0.a))), -1i));
    var var_3 = Struct_3(~u_input.b);
    let var_4 = Struct_1(all(var_1.a.zy), arg_2.x, firstTrailingBit(-1i));
    return global0[_wgslsmith_index_u32(arg_3.a.x, 13u)];
}

fn func_2() -> vec4<u32> {
    var var_0 = !(-18616i < ~(~u_input.d.x ^ (i32(-1i) * -7281i)));
    var_0 = !(false & !func_3(~vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), 680f, firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(17850u, 8u)])), Struct_3(u_input.b)));
    global0 = array<bool, 13>();
    let var_1 = Struct_3(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b.x, 1u)), u_input.b));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~(-u_input.c.zy), -_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], -33117i), u_input.c.xy)), countOneBits(max(u_input.c.zz, u_input.e.yy << (vec2<u32>(var_1.a.x, 1u) % vec2<u32>(32u))))) ^ (vec2<i32>(u_input.e.x, global1[_wgslsmith_index_u32(var_1.a.x, 8u)]) >> ((firstTrailingBit(vec2<u32>(19305u, u_input.a.x) | u_input.b) ^ reverseBits(vec2<u32>(22718u, 0u))) % vec2<u32>(32u)));
    return ~_wgslsmith_mult_vec4_u32(~select(_wgslsmith_div_vec4_u32(vec4<u32>(18719u, var_1.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 6112u, var_1.a.x, 2510u)), vec4<u32>(u_input.a.x, 0u, 42175u, 78919u), vec4<bool>(global0[_wgslsmith_index_u32(59054u, 13u)], true, global0[_wgslsmith_index_u32(1150u, 13u)], true)), vec4<u32>(~u_input.a.x, var_1.a.x ^ 1u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(2410u, var_1.a.x, 2695u, 47796u)), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x))));
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<bool, 13>();
    let var_0 = vec3<f32>(-1234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1290f)) * -124f))), _wgslsmith_f_op_f32(min(-374f, 496f)));
    var var_1 = false;
    let var_2 = true;
    let var_3 = _wgslsmith_mult_u32(u_input.b.x ^ 1u, 52133u);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, countOneBits(2093u), _wgslsmith_add_u32(u_input.b.x, 84289u), ~max(~u_input.b.x, u_input.b.x | 12244u)), _wgslsmith_mod_vec4_u32(max(max(reverseBits(vec4<u32>(u_input.b.x, 25171u, var_3, 0u)), func_2()), vec4<u32>(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11630u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, var_3, u_input.a.x, var_3)), 82857u, 0u)), vec4<u32>((var_3 | var_3) << (~var_3 % 32u), 1u, u_input.a.x, 33838u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1i >> (u_input.b.x % 32u)) >> (~(~_wgslsmith_dot_vec2_u32(u_input.b, abs(vec2<u32>(24243u, u_input.a.x)))) % 32u);
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.c << (select(_wgslsmith_mod_vec3_u32(~vec3<u32>(6280u, u_input.a.x, u_input.a.x), u_input.a), countOneBits(vec3<u32>(5719u, u_input.a.x, 20639u)), global0[_wgslsmith_index_u32(abs(func_1(true)), 13u)]) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-39834i, var_0, -global1[_wgslsmith_index_u32(113474u, 8u)]), firstLeadingBit(vec3<i32>(-49946i, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0))));
    var var_2 = u_input.e.wxx;
    var var_3 = Struct_1(any(select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, u_input.b.x), 13u)])), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-21930i, var_2.x, -2147483647i, 21921i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_2.x, 0i, 2147483647i), vec4<i32>(15357i, var_2.x, 1036i, -15938i))), u_input.d), _wgslsmith_dot_vec4_i32(firstTrailingBit(-u_input.e), u_input.d) << (_wgslsmith_add_u32(reverseBits(u_input.b.x), u_input.b.x) % 32u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-931f, -493f, -462f), vec3<f32>(-515f, -1000f, -1124f), vec3<bool>(false, var_3.a, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -248f, -221f) * vec3<f32>(-777f, 255f, 250f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, 1176f, 325f) - vec3<f32>(-794f, 425f, 1000f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 576f, 1307f))))));
    global1 = array<i32, 8>();
    var var_5 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(abs(~var_0), _wgslsmith_add_i32(var_1.x, 15118i) & ~global1[_wgslsmith_index_u32(0u, 8u)]), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, abs(u_input.b.x)), 8u)]);
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_add_vec2_u32(u_input.a.xx, ~u_input.b), ~(u_input.b | vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(all(!vec4<bool>(var_3.a, global0[_wgslsmith_index_u32(4294967295u, 13u)], true, var_3.a)), true)), u_input.d, vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(~u_input.b.x, ~0u), firstLeadingBit(0u)), u_input.e);
}

