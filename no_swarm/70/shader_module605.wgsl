struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_2(vec3<i32>(-(~u_input.a), _wgslsmith_sub_i32(-1i, -max(4597i, 51142i)), max((u_input.a ^ -17196i) ^ 0i, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(sign(-2026f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-123f)), _wgslsmith_f_op_f32(round(1031f)), _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1586f, 232f, -1568f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, -146f))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f + 104f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, -373f, 1036f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1915f, 301f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-932f, 387f, -198f))), vec2<f32>(-1111f, _wgslsmith_f_op_f32(f32(-1f) * -720f))));
    var_0 = Struct_2(~vec3<i32>(-406i, _wgslsmith_mod_i32(var_0.a.x, u_input.a), abs(var_0.a.x)) ^ max(min(var_0.a ^ vec3<i32>(u_input.a, var_0.a.x, -1i), ~var_0.a), vec3<i32>(var_0.a.x, 17360i, 1i & var_0.a.x)), var_0.b, Struct_1(_wgslsmith_f_op_f32(select(-1358f, 1676f, false & arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.a)), _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(exp2(var_0.c.b.x)))), vec2<f32>(-1250f, -1334f)));
    var var_1 = 1168f;
    let var_2 = vec4<bool>(~reverseBits(10386u) >= ~arg_1.x, arg_0, any(vec2<bool>(_wgslsmith_f_op_f32(-1093f - -327f) >= _wgslsmith_f_op_f32(1000f + var_0.c.a), arg_0)), all(!select(!vec4<bool>(false, false, arg_0, true), vec4<bool>(true, arg_0, false, true), true)));
    var var_3 = firstLeadingBit(var_0.a.yx);
    return arg_1.zx;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = Struct_2((vec3<i32>(u_input.a, max(-3499i, -2147483647i), 6940i) ^ -select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-35890i, 1i, u_input.a), true)) >> (vec3<u32>(4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(77547u, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 1u)) % 32u), max(_wgslsmith_mod_u32(arg_1.x, arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(2678u, 46537u), arg_1)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(57662u, arg_1.x), arg_1.x, 0u << (0u % 32u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * -387f))), arg_0)), vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1804f, arg_0), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 274f), vec2<f32>(arg_0, 920f)))))), Struct_1(-521f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(-256f - arg_0), 145f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 771f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(1550f, arg_0)))))));
    var var_1 = arg_0;
    var_1 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.b.x * -445f), _wgslsmith_f_op_f32(abs(var_0.b.c.x)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.c.x, -299f)))) - _wgslsmith_f_op_f32(f32(-1f) * -539f));
    let var_2 = ~arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.b.c.x)), _wgslsmith_f_op_f32(select(var_0.b.b.x, _wgslsmith_f_op_f32(var_0.c.c.x * 240f), any(vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.b.zx, vec2<f32>(arg_0, var_0.c.b.x), vec2<bool>(true, true)))))))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(190f, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), abs(~func_3(true, vec4<u32>(50320u, 1u, 60679u, 4294967295u))))));
    let var_1 = Struct_5(Struct_3(Struct_1(-475f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1706f, -1418f) - vec3<f32>(var_0.x, 811f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1084f, 326f, 459f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-884f, 148f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec2<bool>(false, false)))), ~(~max(1u, 10894u))), 1u, ~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(46488u, 31710u), 1u)), Struct_3(Struct_1(_wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 551f, 1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1167f, -602f, var_0.x), vec3<f32>(-170f, 1967f, -1318f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) - vec2<f32>(1222f, var_0.x)))), !vec2<bool>(true, all(vec3<bool>(true, false, false))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(80599u, 22036u), 1u, 6960u), ~_wgslsmith_add_u32(9543u, 6759u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a.a.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1371f)))), var_1.a.b.x && var_1.d.b.x)));
    var var_2 = reverseBits(-(5777i << (var_1.d.c % 32u)));
    var var_3 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-183f, var_0.x)) + _wgslsmith_f_op_f32(909f - var_1.a.a.c.x))), _wgslsmith_f_op_vec3_f32(var_1.d.a.b - _wgslsmith_f_op_vec3_f32(var_1.d.a.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, var_0.x, 1000f) + vec3<f32>(var_1.d.a.c.x, var_1.d.a.a, 1031f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.a.c + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.a.a, -1202f) - vec2<f32>(-1326f, -1680f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.d.a.c.x)))), select(vec2<bool>(var_1.c <= var_1.b, true), select(vec2<bool>(true, !var_1.a.b.x), vec2<bool>(true, true), var_1.d.b), select(!vec2<bool>(var_1.d.b.x, false), var_1.d.b, true)), reverseBits(0u));
    return Struct_5(var_1.d, ~var_3.c & reverseBits(0u), var_3.c, var_1.d);
}

fn func_5(arg_0: Struct_5, arg_1: f32) -> vec4<f32> {
    var var_0 = !vec4<bool>(arg_0.d.b.x, !select(any(vec3<bool>(false, arg_0.a.b.x, arg_0.a.b.x)), arg_0.a.b.x, arg_0.a.b.x), true, !all(!vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, false)));
    var_0 = select(select(select(!vec4<bool>(false, true, false, var_0.x), vec4<bool>(arg_0.d.b.x, any(vec3<bool>(var_0.x, var_0.x, arg_0.d.b.x)), var_0.x || var_0.x, true | var_0.x), select(vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(true, arg_0.a.b.x, true, arg_0.a.b.x), vec4<bool>(false, arg_0.a.b.x, false, arg_0.d.b.x), vec4<bool>(var_0.x, true, false, var_0.x)), all(var_0.zx))), !(!select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(arg_0.d.b.x, arg_0.d.b.x, arg_0.a.b.x, true), vec4<bool>(arg_0.d.b.x, true, false, true))), true), !select(vec4<bool>(!arg_0.d.b.x, true, true, false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_0.x, false, false), var_0.x), vec4<bool>(any(vec4<bool>(false, arg_0.a.b.x, false, var_0.x)), var_0.x, u_input.a >= u_input.a, var_0.x || var_0.x)), !vec4<bool>(arg_0.a.b.x, false, true, true));
    var_0 = !(!select(!vec4<bool>(false, arg_0.a.b.x, var_0.x, arg_0.a.b.x), vec4<bool>(!arg_0.d.b.x, arg_0.a.b.x, arg_0.d.b.x, true), func_2().a.b.x));
    var_0 = vec4<bool>(all(!vec3<bool>(false, var_0.x, !var_0.x)), all(select(!vec4<bool>(true, var_0.x, arg_0.a.b.x, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, arg_0.d.b.x), vec4<bool>(true, false, false, false)), select(vec4<bool>(var_0.x, arg_0.d.b.x, arg_0.d.b.x, true), vec4<bool>(true, var_0.x, arg_0.a.b.x, true), vec4<bool>(arg_0.a.b.x, false, var_0.x, true)), !vec4<bool>(arg_0.a.b.x, true, true, true)), select(!vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), false))), true, func_2().a.b.x);
    var_0 = !(!vec4<bool>(any(vec4<bool>(var_0.x, arg_0.d.b.x, arg_0.d.b.x, arg_0.d.b.x)), select(true, true, true), any(vec4<bool>(var_0.x, false, true, false)), false));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, _wgslsmith_f_op_f32(f32(-1f) * -861f), arg_0.a.a.b.x, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_0.d.a.b.x, arg_1) * vec4<f32>(arg_0.d.a.a, arg_0.a.a.b.x, 1302f, -866f)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a.c, 9164u, 24302u), vec4<u32>(52495u, 1u, 4294967295u, arg_0.a.c)), abs(arg_0.d.c)) <= arg_0.d.c)));
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(func_2(), _wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-958f, 504f, true)))))));
    let var_2 = _wgslsmith_f_op_f32(sign(1087f));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_1.x, 951f, -318f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-var_1.x), func_2().a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_2)), var_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1423f, -1260f)))) - vec4<f32>(289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(func_2().d.a.b.x - -1346f), -785f))));
    var var_3 = true & (_wgslsmith_mult_i32(-max(0i, u_input.a), 0i) >= u_input.a);
    return vec3<bool>(true, all(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!(!(!(u_input.a > u_input.a))), 46065i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -202f, 1000f, 341f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(241f, 157f, -124f, 434f))), vec4<f32>(-1539f, -996f, -555f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, 653f, _wgslsmith_div_f32(-540f, -617f), 1051f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(246f, -975f, -442f, 1789f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-708f, 570f, 789f, 514f), vec4<f32>(-1390f, -449f, -970f, 1161f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(670f, 444f, 1285f, 328f)))), all(func_1()))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1083f, -911f, -324f)) + vec4<f32>(-638f, -1096f, 865f, -1000f)) - vec4<f32>(_wgslsmith_f_op_f32(309f + -950f), _wgslsmith_f_op_f32(-407f * 192f), -1000f, -1747f))));
    let var_2 = min(-2147483647i, max(var_0.b, _wgslsmith_sub_i32(0i, -42713i) & _wgslsmith_add_i32(var_0.b, i32(-1i) * -1i)));
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1)));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.a.a * -898f) - 695f)))) + -272f);
    var_5 = _wgslsmith_f_op_f32(var_1.x - -1354f);
    var_5 = -100f;
    let var_6 = Struct_2(abs(select(vec3<i32>(var_2, var_0.b, var_2), abs(abs(vec3<i32>(1i, 2147483647i, var_0.b))), vec3<bool>(var_0.a, var_0.a, var_3.d.b.x))), func_2().d.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + _wgslsmith_f_op_f32(abs(1049f))) * _wgslsmith_f_op_f32(var_3.d.a.b.x * _wgslsmith_f_op_f32(var_3.a.a.a - var_3.d.a.c.x))), var_4.xwx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1406f, var_1.x) + vec2<f32>(736f, var_3.a.a.b.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1993f) + var_4.yw)) + var_3.a.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~var_3.d.c) | 33438u, countOneBits(4294967295u), 2650u));
}

