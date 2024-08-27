struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1486u, 0u);

var<private> global1: vec3<f32> = vec3<f32>(-252f, 530f, 1217f);

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, global1.x))) - vec3<f32>(384f, 939f, global2.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -2413f), _wgslsmith_f_op_f32(-2187f + _wgslsmith_f_op_f32(select(707f, global2.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -1033f), -824f)), true, !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), false));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-706f * global1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-368f, global1.x))))));
    let var_1 = 2147483647i;
    let var_2 = vec2<u32>(~global0.x, abs(2068u | u_input.b.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -779f) - var_0.b.x), var_0.a.x)));
    return min(var_2.x, u_input.c.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(global0.x, ~vec3<i32>(-1i, 1i, 1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -104f))));
    let var_1 = vec3<bool>(any(vec3<bool>(true, true, true)) | !any(vec2<bool>(true, true)), !select(true, true, false), any(vec2<bool>(true, true)));
    global0 = _wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(var_0.a, _wgslsmith_add_u32(global0.x, u_input.a.x)) >> (~vec2<u32>(~var_0.a, func_3()) % vec2<u32>(32u)), vec2<u32>(0u, global0.x));
    let var_2 = Struct_2(_wgslsmith_clamp_u32(~(~global0.x << (~global0.x % 32u)), select(~(u_input.b.x ^ 102870u), u_input.c.x, var_1.x), var_0.a | ~_wgslsmith_clamp_u32(global0.x, u_input.c.x, global0.x)), vec3<i32>(_wgslsmith_mod_i32(-reverseBits(-1i), _wgslsmith_mod_i32(var_0.b.x, _wgslsmith_mod_i32(7714i, -13849i))), _wgslsmith_dot_vec2_i32(var_0.b.xz, var_0.b.zy << (u_input.b.xx % vec2<u32>(32u))), var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2015f));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1271f, var_2.c) - vec3<f32>(var_0.c, 346f, -1201f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(638f - global1.x))), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)), _wgslsmith_f_op_f32(-global1.x)))) * vec3<f32>(850f, global1.x, var_0.c));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.c, 527f, 181f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(200f, var_0.c, global2.x, -1089f))), !vec4<bool>(var_1.x, true, false, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1023f, global1.x, 1537f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -541f, -882f, 727f), vec4<f32>(var_2.c, global1.x, -874f, 1000f)), vec4<f32>(var_0.c, var_0.c, global1.x, var_2.c), all(vec3<bool>(var_1.x, var_1.x, false)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-510f)), _wgslsmith_f_op_f32(trunc(1221f)))), _wgslsmith_f_op_f32(select(407f, _wgslsmith_f_op_f32(select(405f, global1.x, var_1.x)), true)), _wgslsmith_f_op_f32(1892f + 461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-902f)) - _wgslsmith_f_op_f32(step(global1.x, 955f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, global1.x, global1.x)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = !(!select(select(select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), false), select(vec3<bool>(arg_3.x, true, false), vec3<bool>(false, false, true), vec3<bool>(arg_3.x, true, false)), vec3<bool>(false, true, arg_3.x)), select(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x), !vec3<bool>(true, arg_3.x, arg_3.x), arg_3.x), true));
    var var_1 = ~_wgslsmith_div_i32(countOneBits(_wgslsmith_clamp_i32(-43551i >> (global0.x % 32u), arg_2 | arg_2, _wgslsmith_clamp_i32(-33435i, -40292i, arg_2))), ~(~0i));
    var var_2 = ~arg_2;
    let var_3 = vec2<bool>(any(vec3<bool>(false, all(vec4<bool>(false, var_0.x, false, var_0.x)), true)), !(!all(vec4<bool>(false, true, var_0.x, false))));
    global0 = ~(~_wgslsmith_mod_vec2_u32(min(u_input.b.zz, vec2<u32>(global0.x, 102595u)), abs(u_input.c.yx) >> (u_input.b.yx % vec2<u32>(32u))));
    return Struct_2(28780u & _wgslsmith_sub_u32(0u, u_input.b.x | u_input.b.x), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(0i, firstLeadingBit(arg_2), ~arg_2), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -1i, arg_2, arg_2) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(2147483647i, arg_2, 36147i, -1i))) ^ firstLeadingBit(~vec3<i32>(arg_2, arg_2, 19046i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(517f + -1357f))))));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(global2.yz + _wgslsmith_f_op_vec2_f32(-global2.zx)), _wgslsmith_f_op_vec4_f32(func_2()), abs(i32(-1i) * -2147483647i), select(vec2<bool>(true, true), select(vec2<bool>(true, global1.x == global1.x), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), false), vec2<bool>(true, false)));
    var var_1 = vec3<bool>(true, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_0.b.x, var_0.b.x), 79925i) == var_0.b.x, true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 490f, _wgslsmith_f_op_f32(global1.x * 401f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 508f, -111f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-564f, 867f, -415f, var_0.c), vec4<f32>(1000f, global2.x, global1.x, 1458f))) - vec4<f32>(global2.x, 2100f, -259f, var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(388f + global1.x), _wgslsmith_f_op_f32(max(247f, 793f)), var_0.c, var_0.c)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + vec4<f32>(-1878f, 1979f, var_0.c, 228f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-301f, var_0.c, 1096f, -1268f), vec4<f32>(-1783f, -1000f, global2.x, var_0.c))))))), all(vec2<bool>(all(vec3<bool>(var_1.x, true, var_1.x)), var_1.x)) && true, vec3<bool>(select(func_4(global2.yz, vec4<f32>(904f, 1650f, var_0.c, var_0.c), var_0.b.x, vec2<bool>(false, var_1.x)).b.x < -var_0.b.x, false, false), true, !any(!vec3<bool>(var_1.x, false, false))));
    global2 = _wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)), global2.x)), _wgslsmith_f_op_f32(-1060f * -955f), _wgslsmith_f_op_f32(f32(-1f) * -2575f)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x - var_0.c) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1001f)))), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(abs(var_2.a.x))))));
    return -var_0.b.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_2.d;
    global0 = firstLeadingBit(~(u_input.a.zy ^ vec2<u32>(func_4(vec2<f32>(2505f, arg_1.a.x), vec4<f32>(339f, global1.x, 2056f, global2.x), 35895i, vec2<bool>(false, true)).a, global0.x)));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(~firstTrailingBit(max(global0.x, 4294967295u)), u_input.c.x), 1u, ~(~_wgslsmith_div_u32(~u_input.b.x, 1u)), ~select(_wgslsmith_sub_u32(global0.x >> (u_input.a.x % 32u), u_input.b.x), select(4294967295u, 4294967295u, arg_1.d.x) & 8254u, true));
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(floor(1656f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)), i32(-1i) * -1i, !var_0.yz);
    var var_3 = Struct_1(arg_1.a, vec4<f32>(-319f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(352f, 1473f)), global1.x)), global1.x, 855f), any(!(!vec4<bool>(var_0.x, var_0.x, arg_2.d.x, var_0.x))), arg_1.d);
    return !(!arg_2.d);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(!(!vec3<bool>(!arg_1.d.x, false, all(arg_1.d))), !func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(28955i, 17082i), vec2<i32>(-41555i, -21415i)), arg_1, arg_1), all(!(!vec4<bool>(false, arg_1.c, arg_1.c, true))));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + global2.x), _wgslsmith_div_f32(func_4(global2.zx, vec4<f32>(479f, global2.x, 1450f, -580f), 2147483647i, arg_1.d.yy).c, 1f)), global2.zx)), _wgslsmith_f_op_vec4_f32(-arg_0.b), firstLeadingBit(func_1(min(u_input.c, countOneBits(vec4<u32>(4294967295u, 4294967295u, global0.x, 1u))))), select(arg_1.d.yx, !func_5(firstTrailingBit(1764i), arg_1, Struct_1(vec3<f32>(-845f, 148f, 1148f), vec4<f32>(765f, arg_1.b.x, 238f, -387f), arg_0.d.x, arg_0.d)).xx, arg_1.d.x == (-1000f >= _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x))));
    global2 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.yzw));
    var var_2 = func_5(_wgslsmith_dot_vec4_i32(-(-vec4<i32>(-2147483647i, 3604i, 73314i, 15917i) & min(vec4<i32>(15383i, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(0i, 15246i, -5172i, 38275i))), vec4<i32>(-var_1.b.x, var_1.b.x, ~(-17542i), ~var_1.b.x) | vec4<i32>(select(-1i, var_1.b.x, var_0.x), _wgslsmith_add_i32(-2147483647i, 8039i), var_1.b.x, 1i)), arg_0, arg_1);
    let var_3 = _wgslsmith_clamp_vec3_u32(~(firstLeadingBit(u_input.a) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, global0.x, var_1.a), vec3<u32>(1u, 39187u, var_1.a))) >> (~(~(~vec3<u32>(var_1.a, 1u, 10453u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(27328u | u_input.a.x, u_input.c.x, 107988u) << (u_input.c.yzy % vec3<u32>(32u)), min(~u_input.a << (vec3<u32>(1643u, 0u, 6759u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.a ^ u_input.b, u_input.a & vec3<u32>(global0.x, 15258u, var_1.a)))), vec3<u32>(firstTrailingBit(func_3()), 99417u, var_1.a ^ _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x | 15697u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(vec2<u32>(~firstLeadingBit(0u), _wgslsmith_div_u32(u_input.c.x, 4294967295u))) ^ ~vec2<u32>(83037u, global0.x);
    let var_0 = Struct_2(~(~global0.x) << (62899u % 32u), vec3<i32>(-1i) * -(abs(vec3<i32>(0i, 0i, 1i)) >> (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1120f * -1213f))));
    let var_1 = ~u_input.c.wy;
    let var_2 = var_0;
    let var_3 = func_6(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, -245f, -1237f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(231f, 1157f, -1470f) + vec3<f32>(-2294f, global1.x, 1121f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2736f, global2.x, 191f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, 948f, global1.x, var_0.c)))), true, !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_1(vec3<f32>(global1.x, 793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-390f, -896f)) + _wgslsmith_div_f32(292f, global2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(397f, var_2.c, 361f, -220f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -241f, -1109f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_2.c, -271f, var_2.c) - vec4<f32>(global1.x, var_2.c, 1050f, 686f))), true, select(func_5(func_1(u_input.c), Struct_1(vec3<f32>(var_2.c, 532f, -1370f), vec4<f32>(-609f, -1438f, 382f, global2.x), false, vec3<bool>(true, false, true)), Struct_1(vec3<f32>(global2.x, var_2.c, var_0.c), vec4<f32>(504f, var_2.c, var_0.c, var_2.c), true, vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), func_5(52723i, Struct_1(vec3<f32>(282f, -531f, var_2.c), vec4<f32>(-1453f, global1.x, 1588f, var_0.c), true, vec3<bool>(false, false, false)), Struct_1(vec3<f32>(global1.x, -184f, var_2.c), vec4<f32>(var_2.c, global1.x, var_2.c, global1.x), false, vec3<bool>(true, false, true))), any(vec2<bool>(true, true))), true)));
    global0 = vec2<u32>(~abs((var_0.a << (u_input.c.x % 32u)) & 31042u), 12138u);
    let var_4 = ~var_2.a;
    let var_5 = _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f + _wgslsmith_f_op_f32(f32(-1f) * -1108f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-350f, -1833f, var_5, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1465f, global2.x, -344f, 1185f)), select(!vec4<bool>(true, var_3.c, var_3.c, false), !vec4<bool>(var_3.c, false, true, var_3.c), !vec4<bool>(var_3.d.x, false, var_3.c, var_3.d.x))))));
}

