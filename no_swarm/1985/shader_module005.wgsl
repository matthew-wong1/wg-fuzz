struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, true, false, true, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -519f), countOneBits(_wgslsmith_div_u32(arg_1, arg_1)) > u_input.a.x, 4294967295u, firstTrailingBit(vec3<i32>(8538i, 26598i, -2147483647i)) << (u_input.a % vec3<u32>(32u)), ~max(firstLeadingBit(vec4<u32>(1u, 85565u, 11116u, 68585u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 121394u, 1u, 17623u), vec4<u32>(arg_1, 0u, 37887u, arg_1)))), Struct_1(_wgslsmith_f_op_f32(floor(-987f)), countOneBits(~4294967295u) < ~u_input.a.x, abs(u_input.a.x), vec3<i32>(-1i, -firstLeadingBit(11544i), -22137i), ~(vec4<u32>(18500u, arg_1, 1u, arg_1) & vec4<u32>(18868u, u_input.a.x, u_input.a.x, u_input.a.x)) >> (((vec4<u32>(arg_1, 60281u, 49656u, arg_1) ^ vec4<u32>(u_input.a.x, 48733u, 3016u, 4294967295u)) ^ ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), true, ~countOneBits(arg_1), -vec3<i32>(~(-3191i), -1i, countOneBits(2147483647i)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 135507u, u_input.a.x, arg_1), vec4<u32>(1u, 24675u, u_input.a.x, 9975u)))), false, vec3<f32>(1769f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(1731f + arg_2)) - _wgslsmith_div_f32(arg_2, -951f)), 1082f));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = 1u;
    var var_1 = arg_0.b;
    var var_2 = arg_0.d;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~0i, arg_0.a.d.x), _wgslsmith_mod_i32(arg_0.a.d.x, max(-24959i, arg_0.c.d.x))), vec2<i32>(-min(0i, var_1.d.x), 33331i)), -43966i);
    var_3 = var_1.d.xy;
    return var_1.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> f32 {
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * 353f)), -1229f)));
    var var_1 = func_2(arg_3.b.c > (_wgslsmith_div_u32(arg_1.e.x, 23982u) >> (_wgslsmith_sub_u32(arg_3.b.e.x, 4294967295u) % 32u)), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.e.x, arg_3.a.c, 2445u, arg_1.e.x), max(arg_3.b.e, vec4<u32>(0u, u_input.a.x, arg_1.e.x, 0u))) << (arg_3.b.e.x % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(459f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_3.a.a)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_3)) + 761f);
    let var_3 = var_1.c.e.zx;
    return 253f;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_3.x)), arg_2, 10608u, vec3<i32>(_wgslsmith_sub_i32(1i, abs(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(1i, countOneBits(_wgslsmith_mod_i32(11595i, 2147483647i))), _wgslsmith_mult_i32(i32(-1i) * -43486i, 0i)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 4294967295u)), u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 36829u, 1u, u_input.a.x), vec4<u32>(14760u, u_input.a.x, 32389u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12126u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 17318u))), vec4<bool>(!arg_1.x, any(vec4<bool>(arg_1.x, true, false, arg_1.x)), true, arg_2)), ~(~(~vec4<u32>(34460u, 65261u, 18497u, u_input.a.x)))));
    global0 = array<bool, 8>();
    var var_1 = var_0.e;
    return !vec3<bool>(all(arg_1.zx), true, !((-4888i | var_0.d.x) < _wgslsmith_mult_i32(-4760i, -67891i)));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: bool) -> vec4<i32> {
    var var_0 = -1i;
    let var_1 = ~vec4<u32>(~u_input.a.x, 6680u, ~u_input.a.x, firstTrailingBit(0u));
    var_0 = ~12484i;
    return select(_wgslsmith_div_vec4_i32(firstLeadingBit(~(~vec4<i32>(-4281i, 0i, 0i, -61665i))), firstTrailingBit(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-3743i, 2147483647i, -80607i, 2147483647i)), vec4<i32>(-58057i, 2147483647i, 36006i, -2147483647i) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_1.x) % vec4<u32>(32u))))), vec4<i32>(2147483647i, ~(-2147483647i), 17321i, 1i) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-6356i, 43640i, 1i, -17335i), ~vec4<i32>(0i, 32603i, -23081i, -2147483647i)), vec4<i32>(2147483647i >> (1u % 32u), _wgslsmith_sub_i32(-2147483647i, -2147483647i), 40691i, firstTrailingBit(-1i))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, select(2147483647i, -3465i, !all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 19180i), vec3<i32>(1i, -2147483647i, -18230i))) ^ abs(-1i), -firstTrailingBit(-2741i)), func_5(-660f, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(48630i, -1i, 2147483647i), Struct_1(-259f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x, vec3<i32>(1i, -2147483647i, -33308i), vec4<u32>(43181u, 0u, u_input.a.x, u_input.a.x)), -4292i, Struct_2(Struct_1(989f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x, vec3<i32>(-26845i, -1i, -1i), vec4<u32>(24393u, 1u, 128608u, u_input.a.x)), Struct_1(-1057f, false, u_input.a.x, vec3<i32>(2147483647i, -1i, 71370i), vec4<u32>(76764u, 2072u, 22495u, 0u)), Struct_1(1000f, global0[_wgslsmith_index_u32(19211u, 8u)], 4294967295u, vec3<i32>(-1i, -1i, -2147483647i), vec4<u32>(4294967295u, u_input.a.x, 51287u, 1u)), true, vec3<f32>(359f, -1000f, -952f))))), select(!vec3<bool>(global0[_wgslsmith_index_u32(40783u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(29588u, 8u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], true)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(18523u, 8u)])), !(true | global0[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, -1299f, -586f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1000f, true, 46022u, vec3<i32>(3727i, 1i, -70487i), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 54423u)), Struct_1(346f, true, u_input.a.x, vec3<i32>(37723i, 4348i, 0i), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), Struct_1(-1000f, false, u_input.a.x, vec3<i32>(-1i, -2147483647i, 33541i), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec3<f32>(1904f, -507f, -1000f)))), -1133f, _wgslsmith_f_op_f32(f32(-1f) * -2225f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1689f, -924f, -574f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-556f, 154f, 734f))))), true));
    global0 = array<bool, 8>();
    var var_1 = var_0.wxw;
    var var_2 = func_2(!(!global0[_wgslsmith_index_u32(6766u | u_input.a.x, 8u)]) || false, countOneBits(firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_f32(-1010f * 1f)).c;
    var var_3 = ~_wgslsmith_clamp_u32(var_2.c, var_2.e.x, _wgslsmith_div_u32(u_input.a.x & _wgslsmith_sub_u32(u_input.a.x, var_2.c), _wgslsmith_div_u32(u_input.a.x, 29006u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -643f, 1052f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1208f * var_2.a), var_2.a, _wgslsmith_f_op_f32(trunc(-908f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, var_2.a, -1769f))))));
}

