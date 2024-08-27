struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = vec3<i32>(~u_input.a, -u_input.a, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(~30249u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_0.x, 19978u, arg_1.x), vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x)), ~1u) % vec3<u32>(32u)), select(vec3<i32>(u_input.a, -57276i, 2147483647i), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(3133i, u_input.a, -1i), vec3<i32>(28113i, -28082i, -8217i))), any(select(arg_2, arg_2, arg_2.x)))));
    global0 = array<vec2<i32>, 26>();
    var var_1 = vec3<u32>(min(~(~1u) & (_wgslsmith_mod_u32(1u, 1u) | firstTrailingBit(arg_0.x)), 1u), ~(~countOneBits(0u)), ~(~0u) << (arg_0.x % 32u));
    var var_2 = _wgslsmith_div_u32(0u, var_1.x ^ ~_wgslsmith_clamp_u32(10096u, var_1.x, 7274u));
    let var_3 = _wgslsmith_mod_u32(76288u, abs(~_wgslsmith_sub_u32(~24675u, 90127u)));
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-(i32(-1i) * -23081i), var_0.x), -var_0.x, _wgslsmith_div_i32(-47735i, u_input.a));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    global0 = array<vec2<i32>, 26>();
    var var_0 = Struct_1(arg_0.a, firstLeadingBit(-50703i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, 20652i, arg_1, arg_1), vec4<i32>(-2147483647i, 1i, arg_1, arg_1)), u_input.a) == 54950i, -vec3<i32>(_wgslsmith_mult_i32(-46314i, _wgslsmith_mod_i32(u_input.a, arg_1)), func_3(~vec2<u32>(36068u, 27890u), vec2<u32>(1u, 4294967295u), vec3<bool>(arg_0.a, true, false)), -77554i), vec3<f32>(-1278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1368f, 118f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-284f)))));
    var_0 = Struct_1(false, -2147483647i, false, -vec3<i32>(reverseBits(2147483647i), 49141i ^ arg_1, -var_0.b) ^ ((vec3<i32>(0i, var_0.d.x, u_input.a) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(firstTrailingBit(12119u), ~0u, reverseBits(40422u)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_0.e - var_0.e));
    global0 = array<vec2<i32>, 26>();
    var var_1 = Struct_4(arg_0, _wgslsmith_f_op_f32(trunc(var_0.e.x)), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(19236u, 0u)), vec2<u32>(1u, 1u))), vec2<u32>(~4294967295u, ~1u)), reverseBits(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 100826u, 1u)), abs(_wgslsmith_add_u32(1u, 13072u)), ~115459u != _wgslsmith_clamp_u32(1u, 25381u, 60496u))), 1u);
    return _wgslsmith_f_op_f32(exp2(1f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(var_1.b + 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(125f, 684f)) - _wgslsmith_f_op_f32(-var_0.e.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0.e.x, var_1.b)))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = vec2<i32>(u_input.a, 65075i);
    var var_1 = Struct_4(Struct_2(false), 352f, arg_0.c, 1u, ~(~arg_0.c.x));
    var var_2 = func_3(~(~vec2<u32>(var_1.e, 4294967295u)) << (vec2<u32>(65297u, var_1.c.x) % vec2<u32>(32u)), arg_0.c, select(!select(select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_2, arg_0.e.c, arg_2), vec3<bool>(arg_1, arg_1, arg_2)), vec3<bool>(var_1.a.a, false, arg_1), !vec3<bool>(false, false, var_1.a.a)), select(select(select(vec3<bool>(arg_0.e.a, arg_1, arg_1), vec3<bool>(var_1.a.a, arg_0.e.a, arg_0.e.c), vec3<bool>(arg_0.e.a, arg_0.e.a, arg_2)), select(vec3<bool>(false, false, arg_1), vec3<bool>(false, true, arg_1), arg_2), true), !vec3<bool>(arg_0.e.a, arg_0.e.a, true), false), !select(select(vec3<bool>(var_1.a.a, arg_0.e.c, var_1.a.a), vec3<bool>(false, var_1.a.a, arg_0.e.c), arg_2), !vec3<bool>(true, var_1.a.a, var_1.a.a), true)));
    let var_3 = ~(~reverseBits(arg_0.e.d));
    var var_4 = _wgslsmith_f_op_f32(-arg_0.e.e.x);
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1, all(vec3<bool>(arg_0.e.a, arg_0.e.a, var_1.a.a)), true), select(!vec4<bool>(false, var_1.a.a, false, false), vec4<bool>(false, arg_1, arg_0.e.c, arg_0.e.a), true)), !select(vec4<bool>(true, var_1.a.a, any(vec4<bool>(arg_1, true, false, arg_0.e.c)), false), select(vec4<bool>(arg_1, arg_1, true, arg_2), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.a.a, true, true)), vec4<bool>(var_1.a.a && true, true, true, arg_2)), !select(vec4<bool>(true, arg_2, var_1.a.a && true, any(vec4<bool>(var_1.a.a, arg_2, var_1.a.a, true))), select(vec4<bool>(false, var_1.a.a, arg_1, false), vec4<bool>(true, false, arg_0.e.c, true), var_1.a.a), !(!vec4<bool>(arg_0.e.c, true, false, false))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_div_u32(1u, arg_0);
    var var_1 = vec4<bool>(true, !(all(vec4<bool>(true, false, false, false)) && true), true, any(vec3<bool>(true, true, true)));
    global0 = array<vec2<i32>, 26>();
    var_1 = func_4(Struct_3(~(_wgslsmith_sub_vec3_i32(vec3<i32>(-92903i, u_input.a, 3651i), vec3<i32>(-26001i, 1i, 65227i)) >> (vec3<u32>(1u, var_0, 66699u) % vec3<u32>(32u))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-67798i, u_input.a, 5207i, u_input.a) | vec4<i32>(-1i, -5742i, -2147483647i, u_input.a), reverseBits(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), vec2<u32>(~arg_0, reverseBits(_wgslsmith_mult_u32(64203u, arg_0))), select(u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, -2147483647i), i32(-1i) * -1i), true), Struct_1(func_2(Struct_2(var_1.x), 41525i), -17113i, true && !var_1.x, vec3<i32>(abs(u_input.a), -2147483647i, -u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 142f, -695f))))), all(vec2<bool>(!(!var_1.x), var_1.x)), false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(117f * -1353f), _wgslsmith_f_op_f32(263f - -840f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-324f)), _wgslsmith_f_op_f32(step(-892f, _wgslsmith_f_op_f32(f32(-1f) * -251f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f - -426f) - 1371f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1066f)) - _wgslsmith_f_op_f32(f32(-1f) * -194f)))));
    var var_2 = Struct_1(!all(select(vec4<bool>(false, var_1.x, false, false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true)), !vec4<bool>(false, var_1.x, false, var_1.x))), _wgslsmith_sub_i32(~u_input.a, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-35947i, u_input.a, -2147483647i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, 0i), vec4<i32>(1i, -2147483647i, u_input.a, -2147483647i))))), (var_0 < ~abs(arg_0)) && var_1.x, _wgslsmith_div_vec3_i32(firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-17143i, u_input.a, 26127i), vec3<i32>(u_input.a, -25167i, u_input.a))), abs(-(~vec3<i32>(u_input.a, -19412i, 31253i)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, -1008f, -678f)))))));
    return 24047i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(u_input.a, 17356i, reverseBits(~u_input.a)), (vec4<i32>(func_1(106429u), min(2147483647i, 48174i), -5810i, -6188i) | vec4<i32>(countOneBits(0i), u_input.a, abs(u_input.a), firstLeadingBit(u_input.a))) << (~(countOneBits(vec4<u32>(1u, 4294967295u, 1u, 4294967295u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec2<u32>(firstLeadingBit(44827u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 15548u), vec2<u32>(1u, 0u))) & select(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), select(true, true, true))), u_input.a, Struct_1(true, u_input.a << (max(12655u, ~0u) % 32u), any(vec2<bool>(false, all(vec4<bool>(true, false, false, false)))), _wgslsmith_div_vec3_i32(~vec3<i32>(43773i, 30510i, -40380i), vec3<i32>(i32(-1i) * -4154i, 1i, -65136i)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1232f), -1370f, _wgslsmith_f_op_f32(sign(-376f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e.e.x * var_0.e.e.x))))));
    var var_2 = Struct_2(all(func_4(Struct_3(-vec3<i32>(2147483647i, 25909i, var_0.d), firstLeadingBit(vec4<i32>(38647i, -1i, -42204i, u_input.a)), var_0.c, var_0.d << (var_0.c.x % 32u), var_0.e), any(!vec3<bool>(false, var_0.e.a, true)), select(24284u != var_0.c.x, !var_0.e.a, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, var_1, var_1, -128f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(564f, -229f, 923f, var_0.e.e.x), vec4<f32>(-273f, var_1, -1412f, var_0.e.e.x))))).wyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.e.x + var_0.e.e.x)))), vec2<i32>(~(~(~51992i)), 0i), 1u, i32(-1i) * -2147483647i);
}

