struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 5651u, 5508u, 4294967295u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    var var_0 = all(!select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, any(vec3<bool>(false, false, false)), true)));
    var var_1 = Struct_2(Struct_1(select(select(all(vec2<bool>(true, false)), true, true), true, true), 34766i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-144f, _wgslsmith_f_op_f32(-1852f + -2852f), 2140f)))), abs(global0.x));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1291f, -1075f)), var_1.b.x, false)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f + 283f)), ~u_input.a), var_1.b, var_1.c);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_div_f32(-1000f, var_1.b.x))), var_1.b.x));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))), var_1.b.x, var_2.x), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(227f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-297f, var_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f), -616f)), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)));
    return vec3<i32>(u_input.a, _wgslsmith_add_i32(select(firstLeadingBit(-19529i << (1u % 32u)), _wgslsmith_div_i32(i32(-1i) * -34056i, _wgslsmith_dot_vec2_i32(vec2<i32>(-32320i, var_1.a.b), vec2<i32>(u_input.a, u_input.a))), var_1.a.a), 2147483647i), select(1i, 0i & u_input.a, true));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> u32 {
    return ~_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.xz, ~global0.xz)), ~global0.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = 143f;
    global0 = vec4<u32>(func_4(_wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(u_input.a, u_input.a, -1i) | vec3<i32>(u_input.a, 12137i, u_input.a)) >> (~countOneBits(41409u) % 32u), var_0, ~1u), global0.x, min(global0.x, _wgslsmith_div_u32(global0.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), global0.zx), _wgslsmith_clamp_u32(17534u, global0.x, 17065u)))), 1u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(999f)) * -1400f) - var_0), Struct_2(Struct_1(true, 2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1209f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -971f, var_0))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))))), global0.x), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(select(1567f, -889f, false)), true)), 1160f)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(909f, var_0)) - var_0), true)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-995f, var_0)) + _wgslsmith_f_op_f32(-1f)));
    var var_2 = var_1.b;
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.d, var_2.b)) * var_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 929f, -514f) - var_2.b)), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_2.a.a, var_1.c, var_1.b.a.a)), var_1.b.a.a))), select(global0.x, func_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, 3185i), 0i), 164f, reverseBits(53021u >> (global0.x % 32u))), var_2.a.a));
    return !(!select(vec4<bool>(true, true, false, var_2.a.a), select(select(vec4<bool>(var_2.a.a, false, var_1.e, true), vec4<bool>(true, true, var_2.a.a, var_1.e), vec4<bool>(var_1.b.a.a, true, var_3.a.a, var_3.a.a)), !vec4<bool>(var_2.a.a, var_2.a.a, false, true), !vec4<bool>(true, var_3.a.a, true, var_2.a.a)), false));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(u_input.a, firstTrailingBit(-1i))) >> (arg_2.x % 32u), ~u_input.a, arg_1.x ^ arg_1.x, func_3().x);
    var var_1 = !arg_0;
    return _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~(~1u), _wgslsmith_mult_u32(1u, arg_2.x), _wgslsmith_dot_vec3_u32(global0.zxx, vec3<u32>(global0.x, arg_2.x, global0.x) ^ vec3<u32>(arg_2.x, global0.x, 23691u)), ~abs(0u)), ~vec4<u32>(~arg_2.x, 59803u, arg_2.x >> (9966u % 32u), global0.x)), min(~vec4<u32>(4294967295u, 46179u, 2422u, arg_2.x), select(~vec4<u32>(1u, arg_2.x, 4294967295u, arg_2.x), max(vec4<u32>(global0.x, 876u, global0.x, 61118u), vec4<u32>(arg_2.x, arg_2.x, 0u, global0.x)), any(vec3<bool>(arg_0, arg_0, true)))) | reverseBits(~(~vec4<u32>(6253u, arg_2.x, 1u, 4294967295u))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> vec4<f32> {
    global0 = func_5(any(func_2()), -(-vec4<i32>(-1i, arg_0, 1i, 0i) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, arg_1.b.c, global0.x), vec4<u32>(1u, arg_1.b.c, 48247u, 0u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(41735u, 77594u, abs(arg_1.b.c), global0.x), abs(vec4<u32>(arg_1.b.c, global0.x, 1u, global0.x)) >> (vec4<u32>(0u, global0.x, global0.x, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), global0.wxx);
    let var_0 = select(select(select(!func_2().zzw, vec3<bool>(true, true, true), !(true | arg_2)), func_2().wyw, !(!(!vec3<bool>(false, arg_1.b.a.a, arg_2)))), select(!select(select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_1.e, arg_1.c), arg_2), vec3<bool>(arg_1.e, arg_1.e, true), select(true, true, false)), select(!vec3<bool>(true, true, arg_2), !vec3<bool>(arg_2, true, arg_1.c), vec3<bool>(arg_2, all(vec3<bool>(false, arg_1.b.a.a, arg_2)), false)), vec3<bool>(any(!vec3<bool>(arg_2, arg_1.e, arg_1.e)), arg_2, false)), func_2().yyy);
    var var_1 = arg_1.b.a.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(822f, arg_1.d.x, arg_1.b.b.x, arg_1.d.x) + vec4<f32>(-485f, arg_1.b.b.x, arg_1.a, -779f)), vec4<f32>(879f, 707f, arg_1.b.b.x, -1955f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1125f, 1585f, arg_1.a, arg_1.b.b.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.b.x, arg_1.d.x, arg_1.b.b.x, 440f), vec4<f32>(arg_1.d.x, -1444f, 142f, 909f)))), vec4<bool>(!arg_1.c, arg_1.b.a.a, true, arg_1.b.a.a))) - vec4<f32>(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(557f, -968f)))), -1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1013f, _wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a)), arg_1.b.b.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f) - -1000f), -483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-499f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_2.x) + -1000f)), 1881f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -920f, arg_1.a, -1118f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(347f, -214f, 1000f, arg_1.a), vec4<f32>(-1000f, -596f, arg_1.d.x, -696f), vec4<bool>(var_0.x, false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.a, 733f, -202f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1836f, 1845f, var_2.x, -974f), vec4<f32>(arg_1.a, var_2.x, -961f, var_2.x))))) * vec4<f32>(var_2.x, 1431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, arg_1.a)) * -1328f))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(any(!func_2().zwy), abs(_wgslsmith_div_i32(~abs(u_input.a), u_input.a)));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_0.b, -1i)), _wgslsmith_add_vec2_i32(~vec2<i32>(var_0.b, 2147483647i), -vec2<i32>(u_input.a, 12216i))), ~(~(vec2<i32>(0i, 14969i) ^ vec2<i32>(3261i, u_input.a)))), ~(~min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_0.b), vec2<i32>(-22220i, 0i)), -vec2<i32>(var_0.b, u_input.a))));
    var var_2 = vec4<bool>(func_2().x, false, all(arg_1), true);
    var_2 = !select(vec4<bool>(func_2().x, _wgslsmith_div_f32(353f, arg_0.x) < 795f, false, true), !vec4<bool>(any(vec4<bool>(var_0.a, true, false, arg_1.x)), any(var_2.zwy), true, arg_1.x), !((0u <= global0.x) && false));
    var_2 = vec4<bool>(true, !var_2.x, all(vec4<bool>(!(!var_2.x), arg_1.x, global0.x < global0.x, true)), !(!func_2().x));
    return Struct_2(Struct_1(!select(false, var_2.x, func_2().x), _wgslsmith_dot_vec3_i32(-func_3(), vec3<i32>(-var_1, -37338i, _wgslsmith_dot_vec3_i32(vec3<i32>(-344i, -1i, 2147483647i), vec3<i32>(u_input.a, var_0.b, -121071i))))), vec3<f32>(-1156f, _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1(var_1 << (2206u % 32u), Struct_3(arg_0.x, Struct_2(var_0, arg_0.wzy, 52034u), arg_1.x, arg_0.zxz, var_0.a), true)).x))), 0u & ~(~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(all(vec3<bool>(true, true, true)), u_input.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(366f, -1387f)), 418f, _wgslsmith_f_op_f32(-1941f + 1814f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, 1032f, -893f))))))), ~1u | (1u | _wgslsmith_mod_u32(~70956u, abs(global0.x))));
    let var_1 = true;
    var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, -881f, -856f)) - _wgslsmith_f_op_vec4_f32(func_1(var_0.a.b, Struct_3(var_0.b.x, Struct_2(Struct_1(var_1, var_0.a.b), var_0.b, 4294967295u), var_1, var_0.b, true), true))) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + -1403f), 581f, _wgslsmith_div_f32(1086f, 680f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), var_0.b.x, -382f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(sign(-103f)), func_2().x)))), func_2().yy);
    global0 = _wgslsmith_mult_vec4_u32(~max(vec4<u32>(54780u, var_0.c, 33883u, var_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 69555u, global0.x, global0.x), vec4<u32>(global0.x, var_0.c, 0u, 4294967295u))) ^ vec4<u32>(_wgslsmith_add_u32(0u, firstLeadingBit(4294967295u)), _wgslsmith_div_u32(reverseBits(38249u), global0.x), global0.x, ~7454u), ~(~reverseBits(vec4<u32>(global0.x, 1u, var_0.c, 0u) & vec4<u32>(var_0.c, 0u, 4294967295u, var_0.c))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1506f)), 836f);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(534f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_i32(u_input.a, -44403i), Struct_3(var_0.b.x, Struct_2(Struct_1(var_1, var_0.a.b), var_0.b, global0.x), var_1, var_0.b, var_1), var_1)).x) + var_0.b.x), var_0.b.x, -1654f);
    var_0 = Struct_2(var_0.a, var_3.zxx, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(35299u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), _wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.x, var_0.c), global0.xw), global0.yw)) >> (var_0.c % 32u));
}

