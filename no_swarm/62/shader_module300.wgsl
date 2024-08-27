struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(~0u, ~u_input.b.x), ~countOneBits(abs(51713u)));
    let var_1 = Struct_2(vec3<i32>(-countOneBits(arg_0) << (u_input.b.x % 32u), -u_input.a.x, arg_0), vec4<u32>(u_input.b.x, u_input.b.x, min(37464u, _wgslsmith_mult_u32(~23280u, ~u_input.b.x)), 1u));
    let var_2 = Struct_1(vec3<bool>(all(vec2<bool>(true, true)), true, !all(vec2<bool>(false, false))), vec3<bool>(true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, false, true), true)), select(true, -1097f != _wgslsmith_f_op_f32(floor(-2242f)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f)))), u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2235f)))))))));
    var var_3 = u_input.b.x;
    let var_4 = var_1;
    return _wgslsmith_clamp_u32(~max(~66123u, _wgslsmith_add_u32(var_4.b.x, u_input.b.x)) ^ 26658u, ~(~max(firstLeadingBit(var_1.b.x), var_4.b.x)), ~var_1.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, 18123i, u_input.a.x), ~u_input.a.x, -103110i)), min(min(firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u)), ~vec4<u32>(0u, u_input.b.x, 66055u, u_input.b.x)), vec4<u32>(u_input.b.x, reverseBits(13571u), ~14724u, _wgslsmith_add_u32(u_input.b.x, 0u)))), select(_wgslsmith_mult_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 8245u, u_input.b.x))), ~0u, true));
    var_0 = Struct_3(Struct_2(vec3<i32>(-u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 2147483647i), _wgslsmith_mod_i32(var_0.a.a.x, -2147483647i)) & ~(var_0.a.a << (vec3<u32>(4294967295u, var_0.a.b.x, 16576u) % vec3<u32>(32u))), countOneBits(var_0.a.b)), ~func_3(1i << (u_input.b.x % 32u)));
    var var_1 = _wgslsmith_div_i32(var_0.a.a.x & 2147483647i, ~(-u_input.a.x));
    var var_2 = Struct_3(Struct_2(abs(vec3<i32>(0i, ~u_input.a.x, _wgslsmith_sub_i32(-16277i, -1i))), abs(vec4<u32>(_wgslsmith_div_u32(1u, u_input.b.x), ~var_0.b, ~u_input.b.x, 62894u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.b.x, var_0.a.b.x), 15085u));
    let var_3 = Struct_2(var_0.a.a, ~(vec4<u32>(countOneBits(var_0.b), ~u_input.b.x, reverseBits(var_0.b), _wgslsmith_sub_u32(40595u, 0u)) ^ vec4<u32>(countOneBits(var_2.a.b.x), 26615u, ~0u, var_2.a.b.x)));
    return Struct_1(select(!vec3<bool>(true, select(false, true, true), true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, 11176u != u_input.b.x), true || all(vec3<bool>(true, false, false))), select(vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, true, true))), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false))), (func_3(-1i) ^ (80437u & var_0.a.b.x)) == ~var_0.a.b.x, false), 372f, select(u_input.a.x, u_input.a.x, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(625f, _wgslsmith_f_op_f32(abs(1f))) + 473f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1888f, -327f, -668f, -175f), vec4<f32>(181f, -1000f, -704f, -1000f))) - _wgslsmith_div_vec4_f32(vec4<f32>(1198f, -435f, 2165f, -513f), vec4<f32>(-518f, -1466f, -656f, 421f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, 762f, -914f, 478f)) * vec4<f32>(712f, -138f, -248f, 1625f))))));
    var var_1 = ~(~(~abs(func_3(3718i))));
    var_1 = firstTrailingBit(~35498u << (arg_1.a.b.x % 32u));
    var_1 = ~u_input.b.x;
    let var_2 = Struct_4(func_4(Struct_3(func_4(arg_1, func_2(), Struct_2(vec3<i32>(10150i, arg_1.a.a.x, arg_1.a.a.x), arg_2.b)), 4294967295u), func_2(), arg_1.a), _wgslsmith_sub_vec2_i32(vec2<i32>(select(reverseBits(24754i), 25938i, true), -7545i | (u_input.a.x << (arg_2.b.x % 32u))), ~(-_wgslsmith_div_vec2_i32(arg_2.a.yx, arg_0.a.yz))));
    return 4294967295u & _wgslsmith_sub_u32(max(~(~arg_2.b.x), func_4(arg_1, Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), var_0.x, var_2.b.x, 901f), arg_1.a).b.x), 22130u);
}

fn func_1() -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -11537i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), vec3<i32>(-1i) * -vec3<i32>(1i, 0i, -1i)), ~vec4<u32>(u_input.b.x, 4294967295u, 63728u, u_input.b.x) | ~select(vec4<u32>(87767u, u_input.b.x, u_input.b.x, 33308u), vec4<u32>(32642u, u_input.b.x, 11505u, 1u), vec4<bool>(false, false, true, true))), _wgslsmith_clamp_u32(func_5(func_4(Struct_3(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), 4294967295u), func_2(), Struct_2(vec3<i32>(-77818i, 1i, u_input.a.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), Struct_3(func_4(Struct_3(Struct_2(vec3<i32>(2147483647i, 1i, 1i), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 79784u)), u_input.b.x), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, false), -762f, -3320i, -1702f), Struct_2(vec3<i32>(-50144i, 0i, u_input.a.x), vec4<u32>(10482u, u_input.b.x, 58391u, u_input.b.x))), u_input.b.x), func_4(Struct_3(Struct_2(vec3<i32>(64078i, -2147483647i, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), 4294967295u), func_2(), func_4(Struct_3(Struct_2(vec3<i32>(-1i, 29039i, 0i), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 60750u)), u_input.b.x), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), 776f, u_input.a.x, 1324f), Struct_2(vec3<i32>(-43484i, u_input.a.x, u_input.a.x), vec4<u32>(70752u, 27132u, 4294967295u, u_input.b.x))))), ~(~(4294967295u & u_input.b.x)), u_input.b.x << (0u % 32u)));
    var var_1 = Struct_1(vec3<bool>(true, any(vec2<bool>(false, false)) != true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -780f) + _wgslsmith_f_op_f32(f32(-1f) * -651f)) >= _wgslsmith_f_op_f32(select(-233f, _wgslsmith_f_op_f32(round(1000f)), any(vec3<bool>(true, false, false))))), vec3<bool>(true, !(!func_2().a.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-362f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(287f * -769f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-823f - -953f))))), _wgslsmith_sub_i32(-1165i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638f + _wgslsmith_f_op_f32(floor(544f))))));
    var var_2 = _wgslsmith_div_u32(0u, 69902u);
    var_1 = Struct_1(vec3<bool>(var_1.b.x, var_1.b.x, !func_2().a.x), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)) + -867f)), _wgslsmith_add_i32(var_0.a.a.x, 1i), var_1.e);
    let var_3 = u_input.a;
    return var_0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -(~vec3<i32>(func_1(), 2754i, max(71059i, -2147483647i)));
    var var_1 = abs(select(select(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1655i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 1i, var_0.x, u_input.a.x)), firstLeadingBit(vec4<i32>(u_input.a.x, -2789i, 6580i, var_0.x)) << (vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<bool>(true, false, true, all(vec2<bool>(false, false)))), _wgslsmith_div_vec4_i32(max(countOneBits(vec4<i32>(1i, var_0.x, u_input.a.x, 1i)), select(vec4<i32>(-2147483647i, -1i, var_0.x, 0i), vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x), false)), ~vec4<i32>(var_0.x, -6362i, u_input.a.x, var_0.x)), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_4(Struct_2(var_1.xxz, _wgslsmith_sub_vec4_u32(func_4(Struct_3(Struct_2(vec3<i32>(var_0.x, var_1.x, 4790i), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), u_input.b.x), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), -1163f, u_input.a.x, 662f), Struct_2(var_1.yzx, vec4<u32>(32044u, 50453u, 4294967295u, u_input.b.x))).b ^ ~vec4<u32>(47487u, 0u, u_input.b.x, u_input.b.x), ~countOneBits(vec4<u32>(53272u, 4294967295u, 1u, 16u)))), vec2<i32>(u_input.a.x << ((firstTrailingBit(u_input.b.x) << (29014u % 32u)) % 32u), -21487i));
    var_1 = (select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15474i, 0i, -1i, -1i), ~vec4<i32>(4734i, var_2.b.x, 2147483647i, 42397i), vec4<i32>(-2147483647i, u_input.a.x, var_1.x, u_input.a.x)), -vec4<i32>(-54164i, var_1.x, var_2.b.x, var_0.x) & vec4<i32>(var_0.x, 67311i, 18261i, var_0.x), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))) & ~vec4<i32>(1i, var_0.x, reverseBits(var_0.x), -1i)) ^ (~select(vec4<i32>(var_0.x, 7285i, 43000i, 37732i) >> (vec4<u32>(0u, var_2.a.b.x, 56418u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_2.a.a.x, var_1.x, u_input.a.x), vec4<i32>(var_2.b.x, var_0.x, -29395i, u_input.a.x)), vec4<bool>(true, true, true, true)) >> (var_2.a.b % vec4<u32>(32u)));
    let var_3 = any(select(select(func_2().a, vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, all(vec2<bool>(false, false)), true), func_2().a), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2().b)));
    var_1 = select(~firstTrailingBit(vec4<i32>(var_2.a.a.x, i32(-1i) * -36304i, -2147483647i, _wgslsmith_dot_vec2_i32(var_0.yz, var_1.yy))), _wgslsmith_mod_vec4_i32(vec4<i32>((30521i & u_input.a.x) >> (func_5(Struct_2(var_1.zwx, var_2.a.b), Struct_3(var_2.a, u_input.b.x), var_2.a) % 32u), firstTrailingBit(var_1.x), ~_wgslsmith_mod_i32(-2147483647i, u_input.a.x), 1i), max(vec4<i32>(-43399i, u_input.a.x, u_input.a.x, 19415i), ~vec4<i32>(5047i, var_0.x, 0i, 0i)) & ~(vec4<i32>(8862i, u_input.a.x, -2147483647i, -9660i) ^ vec4<i32>(var_1.x, 16652i, var_2.b.x, 0i))), select(vec4<bool>(false, var_3, var_0.x <= var_2.b.x, true), !(!vec4<bool>(false, true, true, var_3)), vec4<bool>(!any(vec3<bool>(false, true, var_3)), !var_3 & any(vec4<bool>(false, true, true, var_3)), false, func_2().b.x)));
    var_1 = firstLeadingBit(~vec4<i32>(_wgslsmith_mod_i32(~var_1.x, abs(u_input.a.x)), -_wgslsmith_add_i32(var_1.x, 1i), -var_0.x, _wgslsmith_add_i32(countOneBits(2147483647i), ~var_1.x)));
    var var_4 = Struct_2(max(vec3<i32>(abs(var_2.a.a.x | 38391i), func_1(), 1i), vec3<i32>(var_0.x, _wgslsmith_mult_i32(20095i, ~var_2.a.a.x), abs(u_input.a.x))), ~_wgslsmith_mod_vec4_u32(var_2.a.b, var_2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, -1922f, 1000f, -1351f)) * vec4<f32>(540f, -447f, -320f, -1718f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, -1074f, -1273f, -971f))))), vec4<f32>(727f, -577f, 1000f, -321f)), ~(((var_2.a.b.yxz >> (vec3<u32>(89956u, var_4.b.x, 85792u) % vec3<u32>(32u))) ^ min(vec3<u32>(u_input.b.x, 0u, var_4.b.x), var_4.b.yyx)) ^ vec3<u32>(_wgslsmith_clamp_u32(var_4.b.x, u_input.b.x, var_4.b.x), _wgslsmith_mod_u32(44329u, u_input.b.x), var_2.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(712f + -638f), 776f))));
}

