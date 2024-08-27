struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-7086i, 15388i, 53388i), vec3<i32>(11723i, i32(-2147483648), 1i), vec3<i32>(2147483647i, 10219i, 1i), vec3<i32>(i32(-2147483648), 17229i, i32(-2147483648)), vec3<i32>(6367i, -50426i, -1i), vec3<i32>(-52946i, -1i, 25137i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec3<i32>, 6>();
    let var_0 = 22853u;
    global0 = array<vec3<i32>, 6>();
    let var_1 = true;
    global0 = array<vec3<i32>, 6>();
    return -1076f;
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1709f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b)) + _wgslsmith_f_op_f32(step(-342f, 345f))), (u_input.e.x != 1u) == true)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1190f, _wgslsmith_f_op_f32(-1098f + 854f), _wgslsmith_f_op_f32(f32(-1f) * -1423f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(3111f, -560f, -1753f), vec3<f32>(-749f, -574f, -926f), true))), abs(_wgslsmith_sub_i32(-33460i, u_input.c)) & -u_input.b), 4294967295u, 7221i);
    var var_1 = Struct_2(var_0.b.a.x, Struct_1(var_0.b.a, -1i), ~u_input.d, 2147483647i);
    var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.a.x))), -1512f)), Struct_1(var_0.b.a, -(~_wgslsmith_sub_i32(u_input.c, var_0.b.b))), _wgslsmith_sub_u32(_wgslsmith_add_u32(~reverseBits(var_1.c), ~(~4294967295u)), _wgslsmith_div_u32(var_0.c, u_input.e.x) >> (_wgslsmith_div_u32(firstTrailingBit(59949u), _wgslsmith_clamp_u32(var_1.c, 21251u, 0u)) % 32u)), -u_input.b);
    var_1 = Struct_2(-1384f, Struct_1(var_1.b.a, ((i32(-1i) * -67011i) | var_0.b.b) << (~var_1.c % 32u)), ~(~_wgslsmith_mult_u32(var_1.c, 1u)) & select(~_wgslsmith_dot_vec2_u32(u_input.e, u_input.e), u_input.a, !any(vec3<bool>(false, false, false))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.b, 2147483647i, var_0.d, -1i), vec4<i32>(u_input.c, u_input.c, u_input.b, 45617i)), ~vec4<i32>(-1i, var_1.b.b, -28966i, -62076i)), _wgslsmith_clamp_i32(u_input.b, firstLeadingBit(-1637i), 0i)), var_0.d, 1i));
    var var_2 = 0u;
    return !all(vec2<bool>(all(vec2<bool>(true, false)), true));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(336f, -1215f, !func_2())), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1995f, -289f), -1000f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f - 1263f)))));
    global0 = array<vec3<i32>, 6>();
    global0 = array<vec3<i32>, 6>();
    var var_1 = 1u;
    var var_2 = !(!vec4<bool>(_wgslsmith_div_u32(u_input.d, 50893u) == 0u, false, true, select(all(vec4<bool>(false, false, false, false)), true, true)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x), u_input.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-788f, 114f, -753f), vec3<f32>(arg_2.a.x, 1060f, 720f)))))));
    global0 = array<vec3<i32>, 6>();
    var var_1 = select(!vec4<bool>(true, all(vec2<bool>(true, true)) | true, !(arg_0.x < 1i), _wgslsmith_clamp_u32(13710u, 18155u, u_input.a) <= _wgslsmith_div_u32(0u, u_input.e.x)), !select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, any(vec4<bool>(true, false, false, true)), select(true, true, true), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(true, false, true)), vec4<bool>(true, true, !(u_input.e.x != 4294967295u), func_2()), true));
    var_1 = select(!vec4<bool>(var_1.x, var_1.x, !var_1.x | true, var_1.x), select(select(vec4<bool>(u_input.d != u_input.a, var_1.x, true, true), vec4<bool>(true, !var_1.x, any(var_1.wxz), true), !(!vec4<bool>(false, var_1.x, true, true))), !(!(!vec4<bool>(var_1.x, false, false, var_1.x))), !vec4<bool>(u_input.d <= 4294967295u, var_1.x && false, var_1.x & var_1.x, u_input.e.x != u_input.e.x)), select(select(vec4<bool>(any(var_1.yyx), var_1.x, true, 12460i == arg_2.b), !select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), vec4<bool>(true || var_1.x, var_1.x & var_1.x, all(var_1.wyz), true)), vec4<bool>(all(!vec2<bool>(var_1.x, false)), false, false, true), !vec4<bool>(true, arg_1.a.x >= var_0.x, all(var_1.yz), true)));
    global0 = array<vec3<i32>, 6>();
    return _wgslsmith_f_op_f32(round(-1193f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, ~select(u_input.e.x, u_input.d, false)), _wgslsmith_div_vec2_u32(vec2<u32>(~66429u, 11321u), _wgslsmith_sub_vec2_u32(u_input.e, countOneBits(u_input.e)))), u_input.a);
    let var_1 = u_input.b;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(782f, 588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(348f * -1559f), -1000f, true)) - 3072f), _wgslsmith_f_op_f32(func_4(vec2<i32>(~u_input.b, var_1 << (u_input.a % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1670f, 1171f, -124f) + vec3<f32>(1000f, -476f, 1838f)), u_input.b), func_1(vec3<f32>(-780f, -392f, -1106f))))), _wgslsmith_div_i32(_wgslsmith_mult_i32(reverseBits(var_1), -(i32(-1i) * -15791i)), var_1));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_2.b), vec2<i32>(-1i, 38401i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), func_1(var_2.a), var_2))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-2159f * var_2.a.x), var_2.a.x))), -_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_1, var_2.b), vec3<i32>(var_1, u_input.b, 1i) >> (vec3<u32>(u_input.e.x, u_input.a, u_input.e.x) % vec3<u32>(32u)))), countOneBits(abs(8730u)), (i32(-1i) * -(-1335i ^ var_1)) >> (~_wgslsmith_sub_u32(~112130u, firstTrailingBit(27192u)) % 32u));
    let var_4 = select(vec3<u32>(firstTrailingBit(~u_input.e.x), var_3.c, 55073u) | vec3<u32>(~0u, _wgslsmith_mult_u32(0u ^ u_input.d, ~var_0.x), var_0.x), _wgslsmith_sub_vec3_u32(select(firstLeadingBit(vec3<u32>(70231u, 4294967295u, 52342u)), abs(vec3<u32>(var_0.x, 4294967295u, var_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), ~vec3<u32>(u_input.a, 23666u, 19966u)) | ~(~(~vec3<u32>(0u, 42226u, u_input.e.x))), vec3<bool>(~max(var_3.c, var_3.c) >= ~(~var_3.c), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, 26430u)) >> (abs(vec2<u32>(1u, 0u << (var_3.c % 32u))) % vec2<u32>(32u)));
}

