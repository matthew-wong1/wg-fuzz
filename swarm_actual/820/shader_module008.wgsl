struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = abs(_wgslsmith_div_vec4_u32(~vec4<u32>(33643u, u_input.a.x, ~arg_1.b.x, _wgslsmith_sub_u32(66332u, 63635u)), select(vec4<u32>(~4294967295u, ~arg_1.b.x, _wgslsmith_clamp_u32(35670u, u_input.a.x, arg_1.b.x), _wgslsmith_mod_u32(0u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1070u, arg_1.b.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(63612u, 58320u, 1u, u_input.a.x), vec4<u32>(107188u, u_input.a.x, 58083u, arg_1.b.x))), true)));
    var var_1 = Struct_1(~(~(-arg_1.a)), max(var_0.wz, vec2<u32>(var_0.x, ~(~10972u))), _wgslsmith_mod_i32(firstLeadingBit(arg_1.c), -2147483647i), select(vec2<bool>(any(arg_1.d), true), arg_1.d, vec2<bool>(true, any(vec3<bool>(arg_1.d.x, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-346f, arg_1.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(724f - arg_1.e.x))), -905f) - arg_1.e));
    let var_2 = ~61928u;
    var_1 = arg_1;
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = 517f;
    let var_1 = _wgslsmith_f_op_f32(1831f + var_0);
    var var_2 = 1000f <= arg_3.e.x;
    var_2 = arg_2.a.d.x && false;
    let var_3 = select(!vec3<bool>(all(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(arg_1, arg_3.d.x), vec2<bool>(false, false), false))), !vec3<bool>((arg_3.b.x >= 1u) != true, true, any(select(vec3<bool>(arg_3.d.x, arg_2.a.d.x, true), vec3<bool>(arg_3.d.x, arg_1, arg_2.a.d.x), true))), select(all(vec2<bool>(arg_2.a.d.x, func_3(arg_3.a.xz, arg_3))), arg_3.d.x, true));
    return arg_3.a.x;
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(950f)), _wgslsmith_f_op_f32(856f * -1000f), -526f, _wgslsmith_f_op_f32(f32(-1f) * -592f))), vec4<f32>(_wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(floor(715f))), -1270f, -629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -806f)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), var_0.a.x, var_0.a.x, var_0.a.x)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, var_0.a.x, -325f, var_0.a.x)));
    var var_1 = (~abs(u_input.a.x << (u_input.a.x % 32u)) << (((~29216u >> (u_input.a.x % 32u)) & ~1u) % 32u)) >> (~_wgslsmith_mod_u32(min(u_input.a.x, u_input.a.x << (4294967295u % 32u)), 29190u) % 32u);
    return vec3<i32>(select(-8584i, func_4(_wgslsmith_f_op_f32(round(var_0.a.x)), func_3(countOneBits(vec2<i32>(14106i, -1i)), Struct_1(vec3<i32>(6973i, 2147483647i, -2690i), vec2<u32>(u_input.a.x, 16579u), 20065i, vec2<bool>(false, false), var_0.a)), Struct_2(Struct_1(vec3<i32>(-2147483647i, -28671i, -1i), u_input.a, 23707i, vec2<bool>(false, true), var_0.a)), Struct_1(firstTrailingBit(vec3<i32>(46610i, 2147483647i, -2147483647i)), u_input.a ^ vec2<u32>(u_input.a.x, 12496u), ~2147483647i, vec2<bool>(false, false), var_0.a)), true), -firstLeadingBit(-46035i >> (u_input.a.x % 32u)), i32(-1i) * -7457i);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = firstTrailingBit(81337u);
    let var_1 = Struct_3(arg_0.e);
    let var_2 = Struct_5(abs(~u_input.a.x), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, arg_2.x, 1394f, 506f))), vec4<bool>(arg_0.d.x, any(!vec4<bool>(false, arg_0.d.x, true, true)), arg_0.d.x, true), u_input.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.x, arg_2.x))) + arg_2.x))), !arg_0.d.x, Struct_4(var_1, !vec4<bool>(!arg_0.d.x, true, arg_0.d.x, !arg_0.d.x), ~vec2<u32>(116479u, var_0 >> (var_0 % 32u))));
    let var_3 = func_3(-arg_0.a.xx, Struct_1(func_2() ^ -vec3<i32>(arg_3.x, -1i, arg_1), var_2.e.c, arg_1, var_2.b.b.ww, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.e.x, arg_2.x, false)), _wgslsmith_f_op_f32(562f - arg_0.e.x), var_1.a.x, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.e.x, -283f, var_1.a.x, 1000f), arg_0.e, func_3(arg_3.xw, arg_0))), vec4<bool>(any(var_2.e.b), arg_0.d.x, true, arg_0.d.x)))));
    let var_4 = ~(~(-_wgslsmith_sub_i32(-2147483647i, -arg_0.c)));
    return ~(~1u << (var_2.a % 32u));
}

fn func_1(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = ~(~abs(vec4<u32>(arg_0.a.b.x, 37645u, 0u, 1u))) ^ reverseBits(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7070u, 13149u, 22377u, arg_0.a.b.x), vec4<u32>(u_input.a.x, 27732u, 11068u, 1u)), u_input.a.x << (arg_0.a.b.x % 32u), u_input.a.x, ~u_input.a.x));
    let var_1 = !arg_0.a.d.x | !(~(arg_0.a.a.x >> (1u % 32u)) >= arg_0.a.a.x);
    var_0 = min(countOneBits(vec4<u32>(countOneBits(arg_0.a.b.x) & (u_input.a.x & u_input.a.x), _wgslsmith_add_u32(~arg_0.a.b.x, ~u_input.a.x), u_input.a.x, u_input.a.x)), vec4<u32>(func_5(Struct_1(func_2(), arg_0.a.b | vec2<u32>(25858u, var_0.x), -arg_0.a.a.x, !vec2<bool>(false, arg_0.a.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -377f, arg_0.a.e.x, -858f))), abs(min(-29762i, arg_0.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(416f, arg_0.a.e.x, arg_0.a.e.x), arg_0.a.e.xww)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(619f, arg_0.a.e.x, arg_0.a.e.x)))), vec4<i32>(arg_0.a.c, ~arg_0.a.a.x, arg_0.a.a.x, 53706i)), u_input.a.x, ~u_input.a.x & ~6232u, ~var_0.x));
    let var_2 = Struct_5(~var_0.x, Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.e.x, 760f, 186f, arg_0.a.e.x) + vec4<f32>(-476f, arg_0.a.e.x, 439f, arg_0.a.e.x)), arg_0.a.e))), !(!(!vec4<bool>(arg_0.a.d.x, false, false, arg_0.a.d.x))), ~_wgslsmith_mod_vec2_u32(~arg_0.a.b, ~vec2<u32>(u_input.a.x, 1u))), _wgslsmith_f_op_f32(arg_0.a.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1209f)))), _wgslsmith_div_u32(arg_0.a.b.x, ~abs(arg_0.a.b.x)) > 16854u, Struct_4(Struct_3(vec4<f32>(arg_0.a.e.x, _wgslsmith_f_op_f32(ceil(arg_0.a.e.x)), arg_0.a.e.x, _wgslsmith_f_op_f32(-arg_0.a.e.x))), !vec4<bool>(var_1, var_1, true, false), ~vec2<u32>(_wgslsmith_add_u32(arg_0.a.b.x, u_input.a.x), 4294967295u)));
    var_0 = ~(~vec4<u32>(~u_input.a.x, min(4294967295u, var_0.x), ~30197u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 34421u, var_0.x, 1u), vec4<u32>(0u, 0u, var_2.e.c.x, 4060u)))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(62388u | var_2.e.c.x, var_0.x & 4294967295u, _wgslsmith_mult_u32(307u, 0u), ~var_0.x), ~vec4<u32>(46645u, 1u, var_2.b.c.x, var_0.x) << (vec4<u32>(33054u, 39324u, 4294967295u, 0u) % vec4<u32>(32u)));
    return vec4<u32>(abs(_wgslsmith_div_u32(5135u, 5076u)), 1u, 50695u, ~var_0.x);
}

fn func_6(arg_0: vec4<u32>) -> i32 {
    let var_0 = -vec2<i32>(1i, -34737i) ^ vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-36023i, -24651i, 2147483647i), vec3<i32>(-4875i, 0i, -4769i)) >> (u_input.a.x % 32u), 2147483647i | _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(10260i, 1i, -1i)), ~vec3<i32>(1932i, 2147483647i, -1i)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-354f, 154f, -2203f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -167f), 1129f, true)), _wgslsmith_div_f32(-323f, _wgslsmith_div_f32(117f, 646f)), _wgslsmith_f_op_f32(-1957f - -310f), -502f)));
    let var_2 = var_1.a.x;
    let var_3 = -33955i;
    let var_4 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_3, var_0.x, var_0.x), vec3<i32>(var_3, -652i, var_3)) & (vec3<i32>(var_0.x, -2147483647i, var_0.x) << (arg_0.yxy % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(45502i, countOneBits(1i), var_0.x), select(~vec3<i32>(-1i, -1i, var_0.x), -vec3<i32>(var_0.x, -2147483647i, var_0.x), false), _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_3, var_0.x, var_0.x)), vec3<i32>(-2147483647i, var_3, var_0.x) ^ vec3<i32>(0i, var_3, 2147483647i)))), min(u_input.a, arg_0.xx), var_0.x, vec2<bool>(!(!func_3(var_0, Struct_1(vec3<i32>(var_0.x, var_3, -2147483647i), vec2<u32>(u_input.a.x, u_input.a.x), var_3, vec2<bool>(true, false), var_1.a))), false), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(1290f - var_1.a.x)) - var_1.a.x)));
    return 21282i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(26542i >> (~u_input.a.x % 32u)));
    var_0 = -3920i;
    var_0 = func_6(~(~(vec4<u32>(u_input.a.x, u_input.a.x, 6189u, 71408u) ^ vec4<u32>(6235u, u_input.a.x, 1u, 0u))) & ~(~func_1(Struct_2(Struct_1(vec3<i32>(0i, -44137i, -5669i), u_input.a, 22923i, vec2<bool>(true, true), vec4<f32>(978f, -727f, 761f, 1530f))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f))) - -1705f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(274f - 784f), _wgslsmith_f_op_f32(1314f * 351f))) - -1456f)), true));
    var_0 = 1i;
    var_0 = _wgslsmith_div_i32(~abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), countOneBits(vec2<i32>(71016i, 2147483647i)))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -42840i), ~(~vec2<i32>(-2147483647i, 2147483647i))), func_6(vec4<u32>(4294967295u, _wgslsmith_mod_u32(59028u, 19519u), 30819u, ~0u))));
    var var_2 = !(!select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, all(vec2<bool>(false, true)), true, false), select(any(vec4<bool>(false, false, true, false)), true, all(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 1u));
}

