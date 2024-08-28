struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(34456u, 7126u, 38683u, 4294967295u), vec4<u32>(4294967295u, 7296u, 40193u, 1u), vec4<u32>(4294967295u, 13601u, 0u, 4294967295u), vec4<u32>(1u, 1u, 20228u, 0u), vec4<u32>(5617u, 0u, 43829u, 4294967295u), vec4<u32>(0u, 1353u, 4294967295u, 0u), vec4<u32>(1u, 0u, 4294967295u, 76809u), vec4<u32>(32452u, 1u, 32983u, 4294967295u), vec4<u32>(105540u, 30739u, 0u, 8076u), vec4<u32>(4294967295u, 34323u, 1u, 0u), vec4<u32>(4294967295u, 6565u, 45045u, 109669u), vec4<u32>(0u, 4687u, 13011u, 35444u), vec4<u32>(1u, 43973u, 5331u, 0u), vec4<u32>(1u, 12781u, 4294967295u, 34275u), vec4<u32>(52545u, 1u, 1u, 89640u), vec4<u32>(52867u, 21208u, 1u, 0u), vec4<u32>(32124u, 4294967295u, 1u, 826u), vec4<u32>(1u, 29069u, 1u, 4294967295u), vec4<u32>(43201u, 0u, 229u, 1u), vec4<u32>(29478u, 28964u, 0u, 36966u), vec4<u32>(0u, 91042u, 1u, 1u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 0u, 45597u, 6605u), vec4<u32>(1u, 4294967295u, 61263u, 30868u), vec4<u32>(19478u, 0u, 45558u, 1u), vec4<u32>(29564u, 1u, 16581u, 10838u), vec4<u32>(4294967295u, 50261u, 48109u, 17319u), vec4<u32>(0u, 49404u, 2883u, 0u), vec4<u32>(1u, 41664u, 7666u, 30141u), vec4<u32>(9087u, 37681u, 1u, 4294967295u), vec4<u32>(0u, 1u, 19716u, 38013u), vec4<u32>(35981u, 4294967295u, 19575u, 41186u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f));
    var var_1 = vec3<f32>(-1051f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -328f)))), _wgslsmith_f_op_f32(715f * arg_0.c.x));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.c.yzw + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-200f, -441f, 1f), vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, 1000f)), _wgslsmith_f_op_f32(sign(391f)), 1f), arg_0.b.zxw)))));
    var var_2 = u_input.a & 0u;
    let var_3 = vec3<i32>(-_wgslsmith_dot_vec4_i32(~arg_0.a, arg_0.a), arg_0.d, 2147483647i);
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> vec4<bool> {
    var var_0 = ~(~(firstLeadingBit(func_3(Struct_1(vec4<i32>(-2147483647i, 0i, 20313i, 0i), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<f32>(-2784f, 854f, 2027f, 497f), -21247i))) & firstTrailingBit(select(1u, arg_0, false))));
    let var_1 = !vec4<bool>(arg_2, select(true, all(vec4<bool>(false, true, arg_2, arg_2)), true), arg_2, false);
    var var_2 = _wgslsmith_f_op_f32(875f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)))));
    var_0 = ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 12903u, select(arg_0, arg_1.x, false), ~arg_0), vec4<u32>(arg_1.x, 1u, 85377u, u_input.a) | ~vec4<u32>(arg_1.x, u_input.a, 1u, 4294967295u)), vec4<u32>(13164u, 24720u, 20880u, ~1u));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -250f)), -218f);
    return vec4<bool>(any(select(!select(var_1, var_1, arg_2), select(!vec4<bool>(var_1.x, false, true, arg_2), vec4<bool>(arg_2, true, arg_2, var_1.x), any(var_1.wxw)), var_1)), all(select(vec4<bool>(true, true, select(var_1.x, var_1.x, true), var_1.x), select(var_1, vec4<bool>(true, var_1.x, true, arg_2), true), vec4<bool>(var_1.x, all(var_1.yy), !arg_2, arg_2))), false | all(vec4<bool>(all(vec3<bool>(true, false, arg_2)), true, arg_2 && true, true)), select(-53482i, -1i, any(!vec3<bool>(var_1.x, arg_2, arg_2))) > ~_wgslsmith_mult_i32(-43802i, abs(45378i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>) -> bool {
    global0 = array<vec4<u32>, 32>();
    var var_0 = Struct_2(arg_1.x, Struct_1(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -17315i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 68325i), vec2<i32>(75451i, 1i))), 67558i, -countOneBits(-28365i), -21695i), func_2(u_input.a, countOneBits(~vec2<u32>(65401u, u_input.a)), true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1000f, arg_1.x) + vec4<f32>(arg_1.x, 106f, arg_1.x, arg_1.x)), vec4<f32>(-296f, arg_1.x, arg_1.x, arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x, arg_1.x, -1228f))), -firstLeadingBit(1i)), max(~countOneBits(2147483647i) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(17341u, 4294967295u, u_input.a, 65390u), vec4<u32>(u_input.a, u_input.a, u_input.a, 15589u)) | abs(u_input.a)) % 32u), abs(15600i)), -firstTrailingBit(1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(var_0.b.c * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-660f, -388f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-var_0.b.c.x)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.x)))), 2588f)), var_0.b, var_0.c << (4294967295u % 32u), 21253i);
    let var_2 = arg_1;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = -1448f;
    var var_1 = arg_1.b.c;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, 109323u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(32549u, ~0u), arg_1.b.b.x), abs(~(~vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), all(arg_1.b.b)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 5619u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, 17292u)), _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, 23821u), vec2<u32>(_wgslsmith_mod_u32(1846u, 57128u), ~u_input.a))));
    let var_3 = Struct_3(_wgslsmith_sub_u32(61991u, u_input.a), select(vec4<bool>(select(false, true, false), arg_1.b.b.x, arg_1.b.b.x, firstTrailingBit(-1i) > (arg_1.c & arg_1.b.d)), func_2(u_input.a, select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 9951u), vec2<u32>(0u, 45969u)), ~vec2<u32>(0u, u_input.a), select(vec2<bool>(arg_1.b.b.x, false), arg_0.xz, vec2<bool>(arg_1.b.b.x, false))), arg_1.b.b.x), arg_0.x), _wgslsmith_clamp_i32(79067i, 1i, ~(-2785i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) + _wgslsmith_f_op_f32(ceil(-573f))));
    var var_4 = -6480i;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1420f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(658f, -1814f)))), func_4(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, func_1(vec2<bool>(true, true), vec3<f32>(499f, 1000f, 305f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f - -2035f)), Struct_1(vec4<i32>(1i, -1i, 0i, -35053i), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, 254f, 166f, 467f)), min(1i, 19667i)), -23471i, _wgslsmith_mult_i32(select(-12464i, 0i, false), ~0i))), _wgslsmith_mult_i32(-_wgslsmith_add_i32(firstTrailingBit(-15593i), reverseBits(2016i)), _wgslsmith_add_i32(select(2147483647i, -2147483647i, true), i32(-1i) * -6141i) ^ -27561i), func_4(select(vec3<bool>(all(vec3<bool>(false, true, false)), select(true, false, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)) && true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1110f - 2031f)), Struct_1(~vec4<i32>(0i, 23185i, -2147483647i, 2147483647i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 199f, 1860f, -1012f))), i32(-1i) * -1i), -1i, 8295i)).a.x);
    global0 = array<vec4<u32>, 32>();
    let var_1 = 29127u;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.c.yz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, -1938f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, var_0.b.c.x))))), var_0.b.c.zy)), Struct_3(52418u, vec4<bool>(func_2(~var_1, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), func_2(18082u, vec2<u32>(55337u, var_1), var_0.b.b.x).x).x, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2166f - var_0.b.c.x))))), Struct_3(59967u, vec4<bool>(func_1(!vec2<bool>(var_0.b.b.x, var_0.b.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, 1139f, -938f) - var_0.b.c.wzz)), all(vec2<bool>(var_0.b.b.x, true)), var_0.b.b.x, true), 13541i, var_0.a), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_0.d, 1i, 386i, 11171i)) >> (vec4<u32>(33417u, ~75106u, var_1, u_input.a) % vec4<u32>(32u)), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(59684i, 1i, var_0.b.d, 14592i), firstLeadingBit(var_0.b.a)))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a.x + 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a.x), var_3.b.d)))) + -987f));
}

