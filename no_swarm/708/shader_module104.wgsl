struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1916u, 21955u, 4294967295u, 1u), vec4<u32>(0u, 0u, 23588u, 0u), vec4<u32>(7489u, 1u, 0u, 1u), vec4<u32>(20029u, 0u, 1u, 1u), vec4<u32>(62537u, 1u, 1548u, 0u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(7472u, 32329u, 0u, 0u), vec4<u32>(0u, 20233u, 0u, 13034u));

var<private> global1: vec4<f32>;

var<private> global2: f32 = 1257f;

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(282f, -790f, 387f), vec3<f32>(-1279f, 1097f, -111f), vec3<f32>(529f, -777f, 436f), vec3<f32>(891f, 716f, 101f), vec3<f32>(-313f, 1800f, 310f), vec3<f32>(-959f, 1493f, -540f), vec3<f32>(-557f, 943f, -1244f), vec3<f32>(-1383f, -1373f, -557f), vec3<f32>(404f, 665f, 2361f), vec3<f32>(379f, 360f, -613f), vec3<f32>(809f, -902f, 1412f), vec3<f32>(599f, 739f, -1484f), vec3<f32>(-383f, -1666f, 1762f), vec3<f32>(-1599f, -682f, -1383f), vec3<f32>(-343f, -1036f, 570f), vec3<f32>(1166f, -425f, 1320f), vec3<f32>(-1476f, 1200f, 2570f));

var<private> global4: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1260f, 2123f, 1000f, 1327f) - vec4<f32>(arg_3.c.a, global1.x, arg_3.b, global1.x)) * vec4<f32>(global1.x, -220f, -549f, arg_3.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2623f, -378f, global1.x, arg_3.c.a) * vec4<f32>(arg_3.a.x, -2243f, global1.x, 488f)), arg_3.a)))));
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.a.x, 40526u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(~4294967295u, u_input.a.x, select(42473u, ~14157u, arg_0))), !select(!vec4<bool>(arg_1, false, arg_1, false), !(!vec4<bool>(false, true, arg_1, arg_1)), arg_0), select(!(!(!vec4<bool>(true, false, arg_0, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(arg_0, false, arg_0, arg_1), vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, arg_1, false, true)), !vec4<bool>(false, arg_1, arg_1, true), !arg_0), !vec4<bool>(arg_1, arg_1, true, arg_1)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1, false, arg_1, arg_0), all(vec2<bool>(arg_1, arg_0)))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(arg_3.a.x - global1.x), -951f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, global1.x, global1.x, -1842f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.c.a)) - _wgslsmith_f_op_f32(trunc(arg_3.b)))), Struct_1(-1743f)));
    let var_1 = 1i;
    var var_2 = var_0.d.c;
    global2 = _wgslsmith_f_op_f32(floor(476f));
    return vec3<bool>(var_0.c.x, arg_1 || (true & arg_0), true);
}

fn func_2() -> vec4<f32> {
    global3 = array<vec3<f32>, 17>();
    global3 = array<vec3<f32>, 17>();
    var var_0 = select(select(vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(u_input.b, -45885i, -2147483647i, u_input.b)) < (i32(-1i) * -2147483647i), all(vec3<bool>(true, true, false)) & true), !func_3(true, true, -vec4<i32>(u_input.b, -24574i, u_input.b, 0i), Struct_2(vec4<f32>(global1.x, -861f, -595f, global1.x), 1233f, Struct_1(global1.x))), false), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, func_3(false, true, vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i), Struct_2(vec4<f32>(-1346f, global1.x, global1.x, 1000f), 1106f, Struct_1(758f))).x, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), vec3<bool>(any(vec4<bool>(false, false, false, true)) || (u_input.b <= 23533i), true, select(false, true, true) | any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(func_3(true, true, vec4<i32>(-1i, 0i, 0i, -6998i), Struct_2(vec4<f32>(global1.x, -1321f, global1.x, global1.x), global1.x, Struct_1(-779f))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global1.x * global1.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1361f, -387f), _wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(min(279f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1609f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a - global1.x))))), var_1);
    return _wgslsmith_f_op_vec4_f32(-var_2.a);
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, 1547f, _wgslsmith_div_f32(arg_1, global1.x), 777f) * _wgslsmith_f_op_vec4_f32(func_2()))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(867f, 461f, -793f, global1.x), vec4<f32>(-277f, 2194f, 197f, arg_1)), vec4<f32>(arg_1, global1.x, arg_1, global1.x)))), vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + -573f))), global1.x)));
    return abs((u_input.a.x << (u_input.a.x % 32u)) | ~u_input.a.x);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(~(-(arg_0 ^ -2147483647i)), -4910i);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.d.a.x)), _wgslsmith_f_op_f32(arg_2.d.c.a - global1.x), _wgslsmith_f_op_f32(-1225f - -182f), global1.x)))));
    let var_1 = 56661u;
    global3 = array<vec3<f32>, 17>();
    let var_2 = _wgslsmith_clamp_u32(arg_2.a, _wgslsmith_div_u32(_wgslsmith_div_u32(25140u ^ u_input.a.x, _wgslsmith_add_u32(10886u, arg_2.a)), 108485u), firstLeadingBit(min(1040u, u_input.a.x)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a.x, -274f, -1645f, global1.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(arg_2.d.a, arg_2.d.a)))))), arg_2.d.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(813f * arg_2.d.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(_wgslsmith_mult_i32(select(-1i, 0i, true) << (func_1(true, -1017f) % 32u), ~53896i)), any(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), Struct_3(1u, select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, select(false, true, false), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(false, all(vec4<bool>(true, false, false, true)), false && any(vec2<bool>(true, false)), false), Struct_2(vec4<f32>(-210f, 555f, _wgslsmith_f_op_f32(global1.x * global1.x), -1179f), global1.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1377f)))));
    global0 = array<vec4<u32>, 8>();
    let var_1 = func_4(select(-reverseBits(u_input.b), u_input.b, all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), true, Struct_3(_wgslsmith_mod_u32(~(~5311u), ~u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_3(global1.x >= 964f, all(vec3<bool>(false, false, false)), firstTrailingBit(vec4<i32>(-22367i, 56566i, u_input.b, 19332i)), func_4(-1i, true, Struct_3(4294967295u, vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(757f, global1.x, -1318f, 1000f), 1000f, Struct_1(global1.x))))).x, true), func_4(-select(u_input.b, u_input.b, false), true, Struct_3(u_input.a.x >> (4294967295u % 32u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(u_input.b, true, Struct_3(u_input.a.x, vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), var_0)))))).b;
    global2 = 1074f;
    let var_2 = var_0.c;
    let var_3 = false;
    var var_4 = 4294967295u;
    let var_5 = Struct_3(u_input.a.x, vec4<bool>(any(vec3<bool>(true, true || var_3, var_3)), false || var_3, var_3, any(select(!vec4<bool>(false, true, true, var_3), select(vec4<bool>(false, true, var_3, var_3), vec4<bool>(false, false, var_3, var_3), vec4<bool>(true, true, true, true)), false | var_3))), select(select(select(!vec4<bool>(false, false, true, var_3), !vec4<bool>(true, var_3, false, var_3), select(vec4<bool>(false, false, true, var_3), vec4<bool>(false, var_3, false, var_3), vec4<bool>(var_3, var_3, true, true))), !select(vec4<bool>(var_3, var_3, false, false), vec4<bool>(var_3, true, var_3, var_3), var_3), true), vec4<bool>(true, _wgslsmith_mult_u32(43229u, 1u) <= _wgslsmith_mod_u32(0u, u_input.a.x), true, false), var_3), func_4(u_input.b, false, Struct_3(~_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), !select(vec4<bool>(false, var_3, true, false), vec4<bool>(var_3, var_3, true, var_3), var_3), select(vec4<bool>(var_3, true, false, var_3), vec4<bool>(var_3, false, var_3, var_3), any(vec4<bool>(true, false, var_3, var_3))), func_4(i32(-1i) * -54000i, false, Struct_3(u_input.a.x, vec4<bool>(true, false, false, var_3), vec4<bool>(var_3, true, true, var_3), Struct_2(vec4<f32>(1235f, -1000f, global1.x, var_1), -567f, var_0.c))))));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1663f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -26593i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_i32(u_input.b, -2147483647i), _wgslsmith_add_i32(11027i, min(u_input.b, 13992i)), 11026i), vec4<i32>(-5691i, ~(~2371i), _wgslsmith_mult_i32(reverseBits(u_input.b), u_input.b), countOneBits(u_input.b) ^ countOneBits(-32321i))), u_input.b, abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -8889i, u_input.b, 0i), vec4<i32>(1i, -2147483647i, -36911i, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, 23860i)), -vec4<i32>(u_input.b, -13338i, u_input.b, 25895i))) ^ firstLeadingBit(-u_input.b), ~(~(_wgslsmith_sub_u32(u_input.a.x, 5991u) ^ (u_input.a.x << (u_input.a.x % 32u)))));
}

