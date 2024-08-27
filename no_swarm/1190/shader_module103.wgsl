struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(4294967295u);
    var_0 = arg_0.b.x;
    let var_1 = firstTrailingBit(vec3<u32>(abs(_wgslsmith_div_u32(~4294967295u, 1u)), 7138u, _wgslsmith_mod_u32(26779u, arg_0.b.x)));
    let var_2 = true;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(abs(arg_0.b.x) << (var_1.x % 32u)), ~arg_0.b.x), 37023u);
    return reverseBits(47933u);
}

fn func_2() -> vec3<i32> {
    let var_0 = vec2<u32>(46102u, _wgslsmith_clamp_u32(1u, func_3(Struct_1(vec3<i32>(u_input.b.x, -2147483647i, -1i) ^ u_input.a, select(vec4<u32>(40941u, 57844u, 0u, 0u), vec4<u32>(0u, 20887u, 92689u, 13201u), vec4<bool>(false, true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), u_input.a.yx)), 0u));
    let var_1 = min(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b.x << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 6737i, 1i), vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x))), u_input.a), vec3<i32>(abs(u_input.a.x), 0i, -2147483647i)) >> (reverseBits(~min(_wgslsmith_mod_vec3_u32(vec3<u32>(33078u, var_0.x, var_0.x), vec3<u32>(var_0.x, 7411u, 4294967295u)), vec3<u32>(var_0.x, var_0.x, var_0.x))) % vec3<u32>(32u));
    var var_2 = Struct_2(u_input.a >> (vec3<u32>(var_0.x, ~var_0.x, var_0.x) % vec3<u32>(32u)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.x, -1i), abs(vec3<i32>(38160i, 1i, u_input.a.x))) << (max(vec3<u32>(5791u, var_0.x, 24004u) << (vec3<u32>(var_0.x, 92165u, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 9055u))) % vec3<u32>(32u)), firstLeadingBit(max(select(vec4<u32>(var_0.x, var_0.x, 1u, 1u), vec4<u32>(4294967295u, 40717u, var_0.x, 0u), true), vec4<u32>(88229u, var_0.x, var_0.x, 26083u) >> (vec4<u32>(49550u, var_0.x, 6902u, var_0.x) % vec4<u32>(32u)))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, select(true, true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_div_vec2_i32(firstLeadingBit(var_1.xz), min(-vec2<i32>(3773i, 46803i), select(vec2<i32>(2147483647i, u_input.a.x), u_input.b, vec2<bool>(false, true))))));
    let var_3 = _wgslsmith_sub_u32(~128443u, reverseBits(var_2.b.b.x));
    var var_4 = ~var_0.x;
    return var_1 | _wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(-2463i, 27285i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 5121i), u_input.b.x), _wgslsmith_mod_i32(~(-14996i), _wgslsmith_sub_i32(12378i, 5619i))), vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2369i, -1i, u_input.b.x) | vec4<i32>(u_input.a.x, 33763i, 0i, u_input.b.x), ~vec4<i32>(var_1.x, var_1.x, 2028i, u_input.a.x)), -32827i));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(countOneBits(vec3<i32>(reverseBits(arg_0.b.d.x), func_2().x, _wgslsmith_div_i32(-5232i, arg_0.b.d.x))) & firstLeadingBit(u_input.a), arg_0.b.b, select(select(vec3<bool>(all(vec3<bool>(true, false, true)), true, false), arg_0.b.c, all(!vec2<bool>(arg_0.b.c.x, arg_0.b.c.x))), arg_0.b.c, vec3<bool>(false, false, any(vec4<bool>(true, false, true, true)) | (4294967295u <= arg_0.b.b.x))), ~select(_wgslsmith_clamp_vec2_i32(arg_0.a.yz, vec2<i32>(35386i, 13000i), vec2<i32>(-42500i, 2147483647i)), ~arg_0.b.a.xx, !arg_0.b.c.x) | u_input.a.zx);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1439f)));
    var_0 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1344f, 960f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) * -480f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1577f, -1473f), _wgslsmith_f_op_f32(ceil(-628f)))), true))));
    var var_3 = var_2.x;
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = func_4(Struct_2(-select(vec3<i32>(-1i, -32582i, arg_1.x), func_2(), vec3<bool>(true, true, false)), arg_0.a));
    var_0 = func_4(func_4(func_4(Struct_2(vec3<i32>(arg_0.a.a.x, arg_0.a.d.x, arg_0.a.a.x), var_0.b))));
    var var_1 = select(var_0.b.b, abs(_wgslsmith_add_vec4_u32(vec4<u32>(~var_0.b.b.x, _wgslsmith_mult_u32(33021u, var_0.b.b.x), ~1u, var_0.b.b.x), arg_0.a.b)), arg_0.a.c.x);
    var var_2 = func_4(func_4(func_4(func_4(Struct_2(var_0.a, Struct_1(arg_1.wxz, vec4<u32>(4294967295u, 14983u, var_0.b.b.x, 4294967295u), var_0.b.c, u_input.a.zz))))));
    var var_3 = !(!all(func_4(Struct_2(vec3<i32>(-2147483647i, -61870i, arg_0.a.d.x), arg_0.a)).b.c) & var_2.b.c.x);
    return select(!select(var_0.b.c.xx, arg_0.b.zz, arg_0.a.c.xz), var_0.b.c.yx, select(vec2<bool>(!var_2.b.c.x, true), vec2<bool>(func_4(Struct_2(vec3<i32>(-19803i, 0i, -2605i), var_2.b)).b.c.x, var_0.b.c.x & !var_0.b.c.x), vec2<bool>(var_2.b.c.x, _wgslsmith_add_i32(arg_1.x, var_2.a.x) < firstTrailingBit(57446i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(38240u, abs(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(1u, 43727u, 0u)), select(~vec3<u32>(15471u, 13148u, 4294967295u), vec3<u32>(3175u, 30262u, 0u), true))));
    var var_1 = vec3<bool>(all(vec4<bool>(true, true, true, true)) || (_wgslsmith_f_op_f32(ceil(-705f)) > _wgslsmith_f_op_f32(f32(-1f) * -314f)), any(!func_1(Struct_3(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(var_0, 4294967295u, var_0, var_0), vec3<bool>(false, false, false), vec2<i32>(u_input.b.x, u_input.a.x)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(var_0, var_0, var_0, 53963u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(431f, 629f, false)), 1000f, true))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1990f)) - _wgslsmith_f_op_f32(f32(-1f) * -773f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) + _wgslsmith_f_op_f32(round(-183f)))));
    var_1 = select(!select(select(vec3<bool>(var_1.x, var_1.x, false), func_4(Struct_2(u_input.a, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(var_0, var_0, var_0, var_0), vec3<bool>(false, var_1.x, true), u_input.a.zx))).b.c, var_1.x || var_1.x), !(!vec3<bool>(false, var_1.x, var_1.x)), !func_4(Struct_2(vec3<i32>(0i, u_input.a.x, u_input.b.x), Struct_1(vec3<i32>(1i, u_input.b.x, 0i), vec4<u32>(4795u, 51599u, var_0, var_0), vec3<bool>(false, false, false), u_input.a.yx))).b.c), select(vec3<bool>(var_1.x, func_1(Struct_3(Struct_1(vec3<i32>(u_input.a.x, 2147483647i, -9210i), vec4<u32>(var_0, var_0, 41024u, 15141u), vec3<bool>(var_1.x, var_1.x, var_1.x), u_input.b), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true)), vec4<i32>(u_input.a.x, 0i, -1i, -39214i)).x | true, all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), false))), !vec3<bool>(var_1.x, any(var_1.zz), !var_1.x), any(select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, false, var_1.x, true), var_1.x), !vec4<bool>(false, true, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), vec3<bool>(all(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, false, var_1.x))), false, false & var_1.x));
    var var_2 = vec2<bool>(!(func_4(Struct_2(vec3<i32>(2147483647i, 46093i, u_input.a.x), Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i), vec4<u32>(0u, var_0, var_0, 1u), vec3<bool>(true, false, var_1.x), vec2<i32>(-25619i, -342i)))).b.c.x != var_1.x), ~var_0 < 1u);
    let var_3 = Struct_3(func_4(func_4(func_4(Struct_2(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), Struct_1(u_input.a, vec4<u32>(var_0, var_0, var_0, var_0), vec3<bool>(var_2.x, false, false), vec2<i32>(u_input.a.x, u_input.b.x)))))).b, select(vec4<bool>(any(func_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(u_input.a, vec4<u32>(var_0, 1u, var_0, var_0), vec3<bool>(false, false, true), u_input.b))).b.c), true, any(select(vec3<bool>(var_2.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_2.x), var_1.x)), true), !vec4<bool>(all(vec3<bool>(var_1.x, var_2.x, false)), var_2.x, var_2.x, var_1.x), !select(vec4<bool>(false, var_1.x, true, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x), func_1(Struct_3(Struct_1(vec3<i32>(33471i, 43659i, u_input.a.x), vec4<u32>(var_0, var_0, 0u, 1u), vec3<bool>(var_2.x, var_2.x, var_2.x), vec2<i32>(2147483647i, u_input.b.x)), vec4<bool>(var_2.x, false, false, var_1.x), vec4<bool>(true, false, var_1.x, false)), vec4<i32>(0i, 21828i, -39745i, u_input.b.x)).x)), select(vec4<bool>(!any(vec3<bool>(var_1.x, var_1.x, true)), !(var_1.x || var_1.x), var_1.x || select(true, var_1.x, false), var_2.x), !select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), !vec4<bool>(var_2.x, false, false, true), var_1.x), vec4<bool>(func_1(Struct_3(Struct_1(u_input.a, vec4<u32>(10067u, 89412u, 0u, 4294967295u), vec3<bool>(var_1.x, var_2.x, var_2.x), vec2<i32>(-2890i, -2147483647i)), vec4<bool>(false, false, false, true), vec4<bool>(false, var_1.x, true, var_2.x)), max(vec4<i32>(-16038i, 30012i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x))).x, true, any(func_4(Struct_2(vec3<i32>(35659i, u_input.b.x, u_input.b.x), Struct_1(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec4<u32>(8585u, var_0, var_0, var_0), vec3<bool>(var_1.x, false, var_2.x), u_input.b))).b.c), _wgslsmith_f_op_f32(step(550f, -1000f)) < _wgslsmith_f_op_f32(trunc(1000f)))));
    var_1 = !(!(!select(!vec3<bool>(var_1.x, true, false), var_3.b.zxw, var_3.c.yzz)));
    let var_4 = func_4(Struct_2(vec3<i32>(func_2().x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), var_3.a.d), countOneBits(41851i)) >> (var_3.a.b.zxz % vec3<u32>(32u)), func_4(func_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, 54685i), Struct_1(vec3<i32>(var_3.a.a.x, u_input.a.x, -16162i), vec4<u32>(var_0, var_3.a.b.x, var_3.a.b.x, var_0), vec3<bool>(false, var_1.x, var_1.x), vec2<i32>(var_3.a.d.x, var_3.a.d.x))))).b)).b;
    var var_5 = Struct_1(_wgslsmith_mod_vec3_i32((abs(vec3<i32>(var_4.d.x, var_3.a.a.x, u_input.a.x)) << (vec3<u32>(91548u, 1u, 27204u) % vec3<u32>(32u))) | vec3<i32>(-var_4.a.x, _wgslsmith_add_i32(var_4.d.x, u_input.b.x), 2147483647i), abs(var_3.a.a)), ~vec4<u32>(1u, var_3.a.b.x, 29123u, 592u), vec3<bool>(true, false, true), var_3.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(var_3.a.a.x ^ min(var_4.d.x, var_5.a.x)), ~var_5.d.x), vec2<u32>(1u, var_0), var_4.a, abs(46009i));
}

