struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(43031u, 0u, 0u, 0u);

var<private> global1: vec4<i32>;

var<private> global2: bool = true;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-16306i, 207f, vec2<i32>(47708i, 28736i), vec2<f32>(909f, -295f), i32(-2147483648)), Struct_1(-1i, 448f, vec2<i32>(2147483647i, 0i), vec2<f32>(987f, 902f), -1i), Struct_1(-1i, -596f, vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-1143f, -697f), -10845i), Struct_1(i32(-2147483648), -282f, vec2<i32>(-1i, 5313i), vec2<f32>(-1000f, 746f), 1i), Struct_1(17783i, 1404f, vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-206f, 1100f), -4309i), Struct_1(20067i, -289f, vec2<i32>(1i, -23487i), vec2<f32>(-1790f, 142f), -17221i), Struct_1(30631i, -1000f, vec2<i32>(37255i, -1i), vec2<f32>(-553f, -1356f), -15214i), Struct_1(-39062i, 1116f, vec2<i32>(-11844i, 0i), vec2<f32>(-823f, 775f), -13069i), Struct_1(-1i, 1779f, vec2<i32>(19264i, 10251i), vec2<f32>(-682f, -711f), 0i), Struct_1(-27952i, -317f, vec2<i32>(-79161i, 2412i), vec2<f32>(-984f, 144f), 35517i), Struct_1(-1i, 870f, vec2<i32>(0i, 4228i), vec2<f32>(1282f, -151f), -2555i), Struct_1(-54675i, 751f, vec2<i32>(0i, 49001i), vec2<f32>(-1593f, 1087f), 2147483647i), Struct_1(-6471i, -949f, vec2<i32>(0i, -11996i), vec2<f32>(571f, -1990f), -1i), Struct_1(-9723i, -617f, vec2<i32>(-7079i, 0i), vec2<f32>(-162f, 312f), -34447i), Struct_1(i32(-2147483648), 1000f, vec2<i32>(1i, 2147483647i), vec2<f32>(-1014f, -362f), i32(-2147483648)), Struct_1(28679i, -1000f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<f32>(-1545f, 958f), -41576i), Struct_1(0i, 552f, vec2<i32>(-14115i, -10953i), vec2<f32>(-1970f, 487f), 0i), Struct_1(0i, 426f, vec2<i32>(0i, 64612i), vec2<f32>(2090f, 1000f), 0i), Struct_1(2389i, -985f, vec2<i32>(i32(-2147483648), -1i), vec2<f32>(278f, -341f), 2147483647i), Struct_1(0i, 1872f, vec2<i32>(32987i, -21894i), vec2<f32>(1125f, -1449f), -45131i), Struct_1(2147483647i, -1531f, vec2<i32>(-47733i, -1i), vec2<f32>(-1097f, 2338f), -1i), Struct_1(-3608i, -1786f, vec2<i32>(22728i, -11396i), vec2<f32>(-844f, 1402f), 2147483647i), Struct_1(6384i, 2424f, vec2<i32>(i32(-2147483648), -1i), vec2<f32>(338f, 423f), -8700i), Struct_1(-1i, 899f, vec2<i32>(-1i, -18718i), vec2<f32>(917f, 1000f), -1i), Struct_1(-22929i, 1000f, vec2<i32>(0i, i32(-2147483648)), vec2<f32>(808f, 609f), 0i), Struct_1(i32(-2147483648), 1000f, vec2<i32>(2147483647i, -22125i), vec2<f32>(-1000f, -759f), 2147483647i), Struct_1(0i, -482f, vec2<i32>(1i, -1i), vec2<f32>(582f, 575f), -46399i), Struct_1(0i, 1000f, vec2<i32>(1i, 4322i), vec2<f32>(-951f, -1252f), 38397i), Struct_1(0i, -158f, vec2<i32>(2147483647i, -99525i), vec2<f32>(-1696f, 1612f), -1i), Struct_1(-1i, -697f, vec2<i32>(23060i, -28944i), vec2<f32>(1000f, 922f), -15627i), Struct_1(2147483647i, -979f, vec2<i32>(2147483647i, 26728i), vec2<f32>(409f, -317f), -1i), Struct_1(0i, 1345f, vec2<i32>(1i, 10938i), vec2<f32>(-1267f, -1408f), -3918i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global0.x), u_input.a), 32u)];
    var var_1 = arg_3;
    let var_2 = Struct_1(global1.x, arg_0.d.x, ~_wgslsmith_add_vec2_i32(global1.ww, max(var_0.c, select(vec2<i32>(1i, arg_1.e), var_1.c, vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.d.x, var_1.d.x), arg_0.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-529f, 575f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1174f, -1441f)))), arg_3.d, arg_2)), arg_1.c.x);
    var var_3 = vec4<bool>(any(select(select(select(vec3<bool>(global3.x, arg_2, arg_2), vec3<bool>(global3.x, global3.x, arg_2), vec3<bool>(arg_2, global3.x, global3.x)), vec3<bool>(arg_2, global3.x, true), false), !(!vec3<bool>(arg_2, true, global3.x)), true)), true, true, true);
    global2 = all(select(select(vec4<bool>(true, !global3.x, true, true), select(select(vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, arg_2, global3.x, arg_2)), vec4<bool>(true, true, true, true), !vec4<bool>(global3.x, arg_2, arg_2, var_3.x)), arg_2), select(vec4<bool>(var_3.x, var_3.x, any(global3.yz), global0.x == 19752u), vec4<bool>(global0.x <= 1u, all(vec4<bool>(false, false, global3.x, var_3.x)), true == arg_2, arg_3.a < var_0.e), !arg_2), arg_2));
    return countOneBits(firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_3.e, arg_3.a, var_1.c.x), firstTrailingBit(vec3<i32>(2147483647i, global1.x, global1.x))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> vec2<i32> {
    global4 = array<Struct_1, 32>();
    var var_0 = vec4<i32>(10025i, global1.x, arg_2, ~(~(~global1.x << (_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u))));
    let var_1 = select(func_3(Struct_1(arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), arg_3.d.x)), global1.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, -187f)), abs(arg_3.a)), global4[_wgslsmith_index_u32(72128u, 32u)], global3.x, arg_3), vec3<i32>(_wgslsmith_sub_i32(var_0.x, arg_3.c.x) | -1i, global1.x, ~4123i) ^ vec3<i32>(1i, ~global1.x << (arg_0.x % 32u), ~arg_3.a), !select(!(!vec3<bool>(global3.x, true, global3.x)), !vec3<bool>(true, global3.x, global3.x), vec3<bool>(true, any(vec3<bool>(false, global3.x, true)), !global3.x)));
    let var_2 = !select(!select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, global3.x, false), true), vec3<bool>(global3.x, abs(41795u) == _wgslsmith_dot_vec3_u32(vec3<u32>(51226u, 0u, arg_0.x), vec3<u32>(global0.x, 109165u, u_input.a)), true | global3.x), _wgslsmith_div_i32(2147483647i, arg_2) == 42603i);
    global1 = vec4<i32>(-9448i, -1i << (countOneBits(u_input.a) % 32u), 16153i, var_1.x);
    return ~arg_3.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-10475i, -28870i, -2147483647i), global1.yxz), vec3<i32>(45952i, _wgslsmith_dot_vec3_i32(vec3<i32>(39874i, global1.x, 16651i), global1.wyz), max(global1.x, arg_0.x))), -2147483647i >> (_wgslsmith_mod_u32(~global0.x, ~arg_1.x) % 32u)), ~((firstTrailingBit(arg_0) | global1.yy) & _wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, 0i)), vec2<i32>(8192i, arg_0.x))));
    global2 = select(true, false, all(select(global3.zx, vec2<bool>(all(vec2<bool>(true, global3.x)), global3.x), vec2<bool>(21286i > arg_0.x, global3.x))));
    var var_1 = arg_2;
    global0 = vec4<u32>(global0.x, _wgslsmith_clamp_u32(global0.x, reverseBits(0u), select(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, u_input.a, 0u), ~vec4<u32>(global0.x, global0.x, u_input.a, 3316u)), true)), 0u, ~u_input.a);
    var var_2 = all(select(vec3<bool>(true, !global3.x, true), vec3<bool>(false, true, true), true));
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global4 = array<Struct_1, 32>();
    global4 = array<Struct_1, 32>();
    let var_0 = Struct_1(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(min(arg_0.a, 1i), max(425i, -2147483647i)), select(_wgslsmith_div_i32(arg_0.e, 0i), global1.x, global3.x & true)), 1000f, countOneBits(global1.yy), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), arg_0.b), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mod_vec2_i32(func_2(vec4<u32>(69037u, 10034u, global0.x, 15076u), arg_0.d, global1.x, global4[_wgslsmith_index_u32(u_input.a, 32u)]), global1.wz >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(57530u, 1u, 13206u, global0.x)), max(u_input.a, 0u), _wgslsmith_mod_u32(4294967295u, u_input.a), reverseBits(8071u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, -1172f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, 405f)))))), 2147483647i);
    var var_1 = ~(~global0.zzx);
    var var_2 = ~(~vec4<u32>(0u, var_1.x, reverseBits(global0.x), ~global0.x) ^ ~vec4<u32>(0u, ~4294967295u, ~global0.x, var_1.x));
    return _wgslsmith_mult_i32(arg_0.e, global1.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    global0 = vec4<u32>(3429u, abs(_wgslsmith_dot_vec3_u32(global0.yzz ^ vec3<u32>(0u, u_input.a, 50180u), ~reverseBits(vec3<u32>(0u, global0.x, 0u)))), u_input.a & _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), abs(~49372u)), 418u);
    global2 = any(arg_3) & false;
    var var_0 = arg_1;
    var_0 = global4[_wgslsmith_index_u32(global0.x, 32u)];
    let var_1 = arg_3.wxy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(-2051f + arg_1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global0 = vec4<u32>(global0.x, ~(~(~4294967295u)) | _wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, u_input.a, global0.x, global0.x), vec4<u32>(1u, global0.x, 48126u, 34027u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.x, 18821u), vec4<u32>(global0.x, u_input.a, global0.x, 32848u))), ~(abs(global0.x) & ~1u), 88477u);
    global2 = false;
    let var_1 = vec2<bool>((global3.x | true) || global3.x, all(vec3<bool>(any(select(vec4<bool>(global3.x, true, true, true), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(global3.x, true, true, global3.x))), global3.x, any(vec3<bool>(global3.x, global3.x, global3.x)))));
    var var_2 = vec3<f32>(-1000f, -360f, _wgslsmith_f_op_f32(func_5(Struct_1(global1.x, 1f, vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(2147483647i, -1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1636f, -123f)), ~(-1i)), Struct_1(func_1(Struct_1(global1.x, -724f, global1.yy, vec2<f32>(2177f, -797f), 85304i)), -1108f, vec2<i32>(-1i) * -vec2<i32>(2147483647i, 16282i), vec2<f32>(_wgslsmith_f_op_f32(step(921f, 792f)), _wgslsmith_f_op_f32(f32(-1f) * -1441f)), i32(-1i) * -2147483647i), false, !vec4<bool>(!var_1.x, select(global3.x, var_1.x, var_1.x), global3.x, !global3.x))));
    var var_3 = max(_wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, global0.x, 4294967295u, u_input.a), _wgslsmith_f_op_f32(trunc(var_2.x)), reverseBits(vec3<i32>(global1.x, 16322i, _wgslsmith_add_i32(func_1(Struct_1(global1.x, var_2.x, vec2<i32>(0i, 17221i), var_2.xz, 38854i)), global1.x << (1u % 32u)))), min(i32(-1i) * -34566i, ~global1.x));
}

