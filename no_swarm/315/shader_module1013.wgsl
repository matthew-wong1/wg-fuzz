struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> i32 {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), vec4<u32>(0u, 83212u, arg_1.x, arg_1.x)) | arg_1.x)), vec2<u32>(~35845u << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1.yx) % 32u), 1u) | _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.x, 1u), _wgslsmith_sub_vec2_u32(arg_1.zx, arg_1.yz)), ~vec2<u32>(arg_1.x, arg_1.x)));
    let var_0 = select(vec4<i32>(abs(~arg_0), i32(-1i) * -2147483647i, select(arg_0, u_input.d.x, true), firstLeadingBit(-42425i | arg_0)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.yz & vec2<u32>(arg_1.x, 3115u), select(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(30680u, 0u), true)), arg_1.x, _wgslsmith_mod_u32(arg_1.x, arg_1.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(25444u, 0u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x))) % vec4<u32>(32u)), vec4<i32>(min(arg_0, _wgslsmith_dot_vec3_i32(~u_input.d, u_input.d)), -((0i >> (arg_1.x % 32u)) ^ (u_input.b << (59343u % 32u))), 0i, min(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, -26292i), u_input.d), 1i), 61882i >> (~arg_1.x % 32u))), arg_1.x == arg_1.x);
    let var_1 = !(!vec4<bool>(true, arg_3, any(vec3<bool>(arg_2, arg_3, false)) && any(vec2<bool>(false, false)), true));
    var var_2 = -246f;
    global0 = 1u;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~var_0.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(~var_0.x, firstLeadingBit(-30666i)), firstTrailingBit(vec2<i32>(u_input.b, arg_0)), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.zx, vec2<i32>(1i, 23285i), var_0.zy), -vec2<i32>(arg_0, 2147483647i), vec2<i32>(u_input.a, u_input.c)))), -35214i);
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.d.x;
    let var_1 = ~reverseBits(~(~24877i));
    var var_2 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))));
    var var_3 = vec4<i32>(func_3(reverseBits(select(-var_1, 1i, any(vec3<bool>(true, true, var_2.x)))), vec3<u32>(57716u, ~reverseBits(1u), _wgslsmith_mult_u32(1u, 1u)), var_2.x, 1u != _wgslsmith_div_u32(select(1u, 4294967295u, true), 30226u)), -8187i, _wgslsmith_div_i32(reverseBits(-1i), u_input.d.x ^ -reverseBits(-2147483647i)), (i32(-1i) * -2147483647i) | -firstTrailingBit(-2147483647i));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 765f) + -2051f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1485f, -263f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-523f, _wgslsmith_f_op_f32(ceil(129f))), vec2<f32>(1f, _wgslsmith_f_op_f32(floor(748f)))))));
    return vec2<u32>(1u, countOneBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(27685u, 4294967295u), vec2<u32>(4212u, 1u)), abs(vec2<u32>(12227u, 1u)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> vec4<u32> {
    global0 = ~1u;
    global0 = firstTrailingBit(~countOneBits(1u));
    var var_0 = arg_0;
    var var_1 = true;
    var_0 = _wgslsmith_mult_vec2_u32(~func_2(), select(~arg_0, ~vec2<u32>(~arg_0.x, 74691u), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true))));
    return (_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, arg_2, 1u, 1u) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1788u, arg_0.x, 132547u), vec4<u32>(37793u, var_0.x, var_0.x, arg_2)), all(vec4<bool>(false, false, true, true))), vec4<u32>(4294967295u, 1u, firstTrailingBit(arg_0.x), firstTrailingBit(1u))) >> (vec4<u32>(arg_2, firstTrailingBit(1950u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2, 3503u), max(arg_2, var_0.x)), countOneBits(abs(arg_0.x))) % vec4<u32>(32u))) >> ((vec4<u32>(~min(28675u, var_0.x), 71766u, ~var_0.x, max(1u, arg_0.x) >> (_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(0u, 21703u)) % 32u)) << (_wgslsmith_div_vec4_u32(countOneBits(countOneBits(vec4<u32>(arg_2, var_0.x, arg_0.x, arg_2))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, arg_0.x, arg_0.x, 50794u), vec4<u32>(1u, 1912u, var_0.x, var_0.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> bool {
    global0 = arg_3.x;
    var var_0 = Struct_3(_wgslsmith_div_i32(-(~(-18635i)), max(_wgslsmith_mult_i32(func_3(u_input.a, vec3<u32>(arg_3.x, arg_3.x, 43431u), true, true), arg_2), 10838i)), vec2<bool>(true, !all(select(vec4<bool>(arg_0.c.x, true, arg_1, arg_1), arg_0.c, arg_0.c))), ~_wgslsmith_div_u32(arg_3.x, arg_3.x) ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(13879u, 45u), arg_3.x), arg_3.x), 3133u >= arg_3.x, vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_3.wz, arg_3.yx), max(~arg_3.x, _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(arg_3.x, arg_3.x, 44660u, arg_3.x))), _wgslsmith_add_u32(~arg_3.x, 61562u)) >> (arg_3.yzz % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-438f)) + arg_0.b);
    global0 = arg_3.x;
    let var_2 = ~vec3<i32>(arg_0.a.x, _wgslsmith_clamp_i32(1i, ~(arg_2 | 20661i), 1i), _wgslsmith_add_i32(var_0.a, _wgslsmith_mult_i32(countOneBits(var_0.a), _wgslsmith_mult_i32(arg_0.a.x, -56556i))));
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_5(Struct_4(arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1)) - _wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(arg_2.b, arg_1.x, 232f, arg_1.x))))), arg_2.c.x, vec4<i32>(-firstTrailingBit(~arg_2.a.x), _wgslsmith_mod_i32(arg_2.a.x, min(arg_2.a.x, arg_2.a.x)), arg_2.a.x, -firstLeadingBit(1i)));
    var var_1 = var_0.a.a.c;
    global0 = ~1u;
    let var_2 = 1172f;
    let var_3 = Struct_4(Struct_1(-arg_2.a, _wgslsmith_f_op_f32(arg_2.b - arg_2.b), select(vec4<bool>(true, !var_1.x, var_1.x, true), !vec4<bool>(arg_0.x, false, var_1.x, arg_2.c.x), any(var_0.a.a.c.zyw) && arg_0.x)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * 1016f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.ww) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1821f, 757f))), var_0.b.wx, var_0.a.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(vec3<bool>(true, true, !func_4(Struct_1(vec4<i32>(-28794i, -1i, 29920i, u_input.b), 106f, vec4<bool>(true, false, false, false)), all(vec2<bool>(true, false)), -u_input.d.x, func_1(vec2<u32>(7534u, 3490u), u_input.d.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) - _wgslsmith_f_op_f32(select(-890f, -944f, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-568f)))), 837f, _wgslsmith_f_op_f32(-1f))), Struct_1(-(vec4<i32>(u_input.c, -24343i, u_input.b, u_input.c) >> (vec4<u32>(19524u, 4294967295u, 4294967295u, 17211u) % vec4<u32>(32u))) ^ vec4<i32>(1i, _wgslsmith_mult_i32(-1i, 2147483647i), 1i, i32(-1i) * -2147483647i), -1000f, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))));
    var var_2 = func_5(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec3<bool>(any(vec3<bool>(true, false, true)), false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(min(-620f, var_1.b.x)), _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)))))), Struct_1(-(~vec4<i32>(1i, 1i, 1i, 1i)), -602f, vec4<bool>(true, true, true, true)));
    let var_3 = ~(~(0u & ~select(12129u, 0u, true)));
    var var_4 = vec3<bool>(false, false, (!all(vec4<bool>(false, false, false, true)) || true) | true);
    let var_5 = all(vec4<bool>(false, all(var_4.yz) || func_4(Struct_1(vec4<i32>(u_input.c, u_input.b, 23210i, u_input.b), 676f, vec4<bool>(var_4.x, true, var_4.x, false)), u_input.c >= u_input.c, _wgslsmith_mult_i32(18049i, 27572i), vec4<u32>(32958u, 19654u, var_3, 4294967295u)), !var_4.x, true));
    let var_6 = max(~countOneBits(~abs(vec4<u32>(var_3, 14851u, 19306u, var_3))), vec4<u32>(5832u | _wgslsmith_add_u32(abs(var_3), func_1(vec2<u32>(var_3, var_3), 1i, 79077u).x), _wgslsmith_sub_u32(var_3, 52377u << (var_3 % 32u)) ^ func_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 18712u), vec2<u32>(var_3, var_3)), -4104i, 1u).x, 81532u, 1u));
    var var_7 = Struct_1(vec4<i32>(u_input.a, _wgslsmith_add_i32(u_input.c, ~0i), 30512i, -2147483647i) & abs(firstLeadingBit(~vec4<i32>(u_input.a, 1i, u_input.b, u_input.b))), -194f, vec4<bool>(var_5 && var_4.x, false, any(!vec3<bool>(var_4.x, var_5, var_4.x)) && (!var_4.x != var_4.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~var_7.a.x), -2147483647i, _wgslsmith_mult_i32(u_input.c, var_7.a.x), func_3(~select(u_input.b, -2147483647i, false), vec3<u32>(1u, var_6.x, var_6.x), false, true)));
}

