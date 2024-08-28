struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(select(vec4<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), false), select(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, all(vec3<bool>(true, false, true)), true, true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1877f)))), -387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1035f)))), _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1948f + -1000f), _wgslsmith_f_op_f32(trunc(434f)))))));
    global0 = !(!(var_0.b.x != var_0.b.x) || var_0.a.x) || var_0.a.x;
    let var_1 = firstLeadingBit(vec4<i32>(-4698i, i32(-1i) * -(~4214i), countOneBits(-(-13899i >> (u_input.c % 32u))), u_input.d.x));
    global0 = all(vec2<bool>(var_0.a.x, (select(var_1.x, var_1.x, false) << (u_input.a % 32u)) <= firstTrailingBit(-3342i)));
    return vec4<bool>(true, false, any(select(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a, all(select(vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a.wzz, var_0.a.x)))), u_input.c <= u_input.a);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_5(~(~(~_wgslsmith_mult_u32(u_input.a, arg_1))), -(~(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 52661i), u_input.d))), -_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.d.x, -1i, 0i, 1025i)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b.x, 11767i, -16395i), vec4<i32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.d.x)))), arg_0, -(i32(-1i) * -u_input.b.x));
    var var_1 = Struct_3(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), func_3(), true), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, -369f, _wgslsmith_f_op_f32(877f - -430f), -277f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, 223f, -1000f, 256f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -808f, _wgslsmith_f_op_f32(235f - 607f), _wgslsmith_div_f32(-2093f, 1546f))))));
    let var_2 = var_1.b.zyw;
    var_0 = Struct_5(arg_1, vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(countOneBits(-2147483647i)), var_0.c.x), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.d.x, 2147483647i)), -37401i)), var_0.c, Struct_1(4294967295u), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i & u_input.b.x, u_input.d.x) << (~1u % 32u), 15119i));
    var_0 = Struct_5(u_input.c, var_0.b, firstLeadingBit(var_0.c), arg_0, _wgslsmith_dot_vec4_i32(min(-firstLeadingBit(vec4<i32>(-46539i, 1i, u_input.b.x, -276i)), vec4<i32>(59095i, 83035i << (u_input.c % 32u), ~(-14758i), _wgslsmith_dot_vec4_i32(var_0.c, var_0.c))), countOneBits(var_0.c)));
    return Struct_3(select(!(!var_1.a), select(func_3(), !vec4<bool>(false, true, true, var_1.a.x), !var_1.a), !(!all(vec3<bool>(true, true, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.b))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(Struct_1(u_input.a), ~19995u);
    let var_1 = Struct_4(Struct_2(u_input.d.x, Struct_1(4294967295u), vec2<bool>(!any(var_0.a.yx), var_0.a.x), var_0.a, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(37582u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(6370u, u_input.c), max(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.c, 1u))))), abs(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.d.x), ~u_input.b.x), _wgslsmith_div_i32(abs(u_input.b.x), abs(u_input.d.x)))));
    var var_2 = select(vec4<u32>(u_input.c, 1u, 0u ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.e, 1u, 0u), vec3<u32>(u_input.a, u_input.c, var_1.a.e)), abs(var_1.a.b.a), !var_0.a.x), 32178u >> (_wgslsmith_mult_u32(abs(4294967295u), 0u) % 32u)), ~firstLeadingBit(abs(select(vec4<u32>(u_input.c, u_input.a, var_1.a.b.a, 14170u), vec4<u32>(u_input.a, u_input.c, u_input.a, 24963u), var_0.a))), true);
    return var_1.a.b;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global0 = true;
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-536f, -1536f, 1821f, 595f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(602f, 1119f, 1000f, -941f) - vec4<f32>(406f, -176f, -1693f, -770f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -573f, 1260f, 164f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, -1000f, 1985f, -656f)) - vec4<f32>(-176f, -643f, -2026f, -293f)), !func_2(Struct_1(77001u), 3552u).a)), vec4<f32>(_wgslsmith_f_op_f32(704f * -606f), _wgslsmith_f_op_f32(965f + _wgslsmith_f_op_f32(f32(-1f) * -548f)), func_2(arg_0.b, arg_0.b.a & arg_0.e).b.x, _wgslsmith_f_op_f32(max(-903f, _wgslsmith_f_op_f32(round(-1000f))))))), select(arg_0.c.x | arg_0.c.x, 1i == select(_wgslsmith_clamp_i32(arg_0.a, 51726i, -25583i), _wgslsmith_clamp_i32(u_input.d.x, 4221i, u_input.b.x), !arg_0.c.x), true)));
    var var_1 = Struct_2(i32(-1i) * -2147483647i, arg_0.b, !select(vec2<bool>(all(vec2<bool>(true, arg_0.d.x)), true), arg_0.d.ww, all(arg_0.d.wwz) && arg_0.d.x), arg_0.d, ~u_input.c);
    var var_2 = _wgslsmith_mod_vec4_u32((_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a, u_input.a, 14060u, arg_0.b.a), ~vec4<u32>(4294967295u, arg_0.b.a, arg_0.e, var_1.b.a), vec4<u32>(85887u, 4294967295u, 0u, u_input.a)) >> (firstTrailingBit(~vec4<u32>(var_1.b.a, 0u, 4294967295u, 60698u)) % vec4<u32>(32u))) << (vec4<u32>(var_1.b.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(5632u, 38568u, 0u), firstTrailingBit(vec3<u32>(var_1.e, 0u, 52215u))), 5149u, ~u_input.a) % vec4<u32>(32u)), ~(~abs(~vec4<u32>(0u, u_input.c, var_1.e, 25451u))));
    return Struct_4(arg_0, _wgslsmith_sub_vec2_i32((vec2<i32>(-2147483647i, 1i) ^ u_input.d) | countOneBits(u_input.d), u_input.b) << (abs(~firstTrailingBit(vec2<u32>(u_input.a, arg_0.e))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = func_4(Struct_2(u_input.d.x, func_1(), func_2(Struct_1(1u), u_input.c).a.zy, func_2(Struct_1(abs(u_input.a)), 104938u).a, u_input.a));
    global0 = !var_0.a.c.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-290f)) - _wgslsmith_f_op_f32(floor(932f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(747f + 493f))))))), -504f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(func_1(), 1u).b.x), -1113f)));
    global0 = !(!func_4(Struct_2(var_0.a.a, Struct_1(28833u), func_2(var_0.a.b, var_0.a.b.a).a.zx, var_0.a.d, ~var_0.a.e)).a.d.x);
    let var_2 = Struct_3(!(!func_3()), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_1.x, var_1.x)))), 411f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)))))), -664f));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, 355f, true)))) - _wgslsmith_f_op_f32(-504f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, var_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2470f)) + _wgslsmith_f_op_f32(193f + _wgslsmith_f_op_f32(floor(1855f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) + _wgslsmith_f_op_f32(-var_3))))), firstLeadingBit(abs(~countOneBits(vec2<u32>(21375u, 4294967295u)))));
}

