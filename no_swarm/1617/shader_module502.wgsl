struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_4,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2638f, -1046f) - vec2<f32>(1257f, -1186f)))))));
    let var_1 = Struct_5(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(25724u, _wgslsmith_mod_u32(u_input.a, 1u), countOneBits(106722u)), abs(vec3<u32>(u_input.a, u_input.a, 0u)) & (vec3<u32>(1u, 1u, 1u) | vec3<u32>(u_input.a, u_input.a, 1u)), select(vec3<u32>(32551u, 1u, u_input.a), ~vec3<u32>(1u, 0u, 0u), true)), select(vec3<u32>(1u, 10496u, 4294967295u), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(6634u, 36839u, u_input.a), vec3<u32>(5889u, 0u, 38283u)), vec3<u32>(17162u, u_input.a, 21192u)), true), vec3<bool>(true, false, all(vec2<bool>(true, false)))), u_input.a > abs(2872u), Struct_4(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, -354f)))), Struct_1(_wgslsmith_f_op_f32(max(-1099f, -1100f)), firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, -3247i, 1i)), _wgslsmith_div_i32(-1i, -51872i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-45153i, -16362i))), var_0.x), true, !vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, var_0.x <= -1000f), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(692f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, -563f))), Struct_1(-1992f, vec4<i32>(2147483647i, 2147483647i, 0i, 0i), i32(-1i) * -15673i, vec2<i32>(-46194i, 1i)), Struct_1(_wgslsmith_f_op_f32(min(var_0.x, -885f)), vec4<i32>(-39538i, 2147483647i, -22730i, 0i), -64i >> (u_input.a % 32u), abs(vec2<i32>(21786i, 27303i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 132f) + vec3<f32>(var_0.x, var_0.x, var_0.x)))), abs(vec4<u32>(50364u, 4294967295u, 1u, u_input.a) & vec4<u32>(1527u, 57138u, u_input.a, 1u)))), _wgslsmith_sub_u32(4294967295u, 1u), 12812u);
    let var_2 = var_1.c;
    let var_3 = var_1.c.c;
    var var_4 = u_input.a >= 0u;
    return var_1.c.a.b.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(463f)))) * 503f)), vec4<i32>(_wgslsmith_clamp_i32(-15889i, -1i, -6392i), max(countOneBits(-2147483647i), -8775i) >> (u_input.a % 32u), abs(firstTrailingBit(-1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-18470i, -46729i), vec2<i32>(1i, -26841i))), abs(func_3())), _wgslsmith_dot_vec3_i32(countOneBits(~(-vec3<i32>(-2147483647i, 38151i, 2147483647i))), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mod_i32(0i, 25351i), -18836i), abs(abs(vec3<i32>(2147483647i, 8168i, 1i))))), max(vec2<i32>(21069i, -(~9848i)), select(vec2<i32>(_wgslsmith_add_i32(-11212i, 0i), i32(-1i) * -75230i), vec2<i32>(reverseBits(2147483647i), _wgslsmith_mod_i32(-13729i, 1i)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))));
    let var_1 = ~(~countOneBits(firstTrailingBit(u_input.a))) ^ 1u;
    var var_2 = Struct_3(169f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1033f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - var_0.a))))));
    var var_3 = -var_2.b.b.xx;
    let var_4 = vec4<u32>(~var_1, u_input.a | (u_input.a & _wgslsmith_add_u32(4294967295u, u_input.a)), abs(var_1), ~firstLeadingBit(40338u));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, var_2.c, 1000f), vec3<f32>(var_0.a, var_0.a, var_0.a)))))))), var_2.b, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(-var_2.b.a))), var_2.b.b ^ select(vec4<i32>(var_3.x, var_3.x, var_0.b.x, 9956i), vec4<i32>(0i, var_0.d.x, -40510i, var_3.x) | var_0.b, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false)), _wgslsmith_div_i32(~var_3.x, -_wgslsmith_add_i32(0i, var_2.b.c)), countOneBits(vec2<i32>(var_3.x, 48880i << (var_4.x % 32u)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1297f, -473f))))), 827f), abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(54458u, 0u, 96899u, 0u), var_4)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 230f) - _wgslsmith_f_op_f32(max(-308f, arg_0.c.a))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-916f, arg_0.d.x) + -431f)), func_2().c, arg_0.a.x), func_3() == func_3(), !vec4<bool>(_wgslsmith_div_f32(-2934f, arg_0.a.x) < arg_0.c.a, any(vec4<bool>(true, true, true, true)), true, !all(vec3<bool>(false, true, false))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.a)), _wgslsmith_div_f32(695f, arg_0.b.a), -533f), arg_0.c, func_2().c, arg_0.d, ~(func_2().e >> (func_2().e % vec4<u32>(32u)))));
    return arg_0.e.x;
}

fn func_1() -> Struct_5 {
    let var_0 = vec2<u32>(u_input.a >> (~26279u % 32u), countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(12742u | u_input.a, 4087u), _wgslsmith_sub_u32(select(u_input.a, 1148u, true), 4294967295u))));
    let var_1 = vec2<u32>(reverseBits(firstLeadingBit(countOneBits(0u))), ~func_4(func_2(), u_input.a ^ var_0.x));
    var var_2 = 72643i;
    let var_3 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(-22681i, -72154i), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), min(vec2<i32>(2147483647i, -1062i), ~vec2<i32>(30817i, -5678i)))), abs(-abs(-vec2<i32>(-3314i, 7131i))), firstTrailingBit(vec2<i32>(1i, 1i)) & (-(~vec2<i32>(1i, -2147483647i)) & firstTrailingBit(-vec2<i32>(-43731i, -18685i))));
    let var_4 = func_2().c;
    return Struct_5(abs(firstTrailingBit(vec3<u32>(~var_1.x, _wgslsmith_div_u32(var_1.x, u_input.a), var_1.x >> (2079u % 32u)))), all(vec3<bool>(true, !(39179u > u_input.a), true)), Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -596f), var_4, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_4.a)), -763f))), any(vec2<bool>(all(vec2<bool>(false, false)), true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, var_4.a, 1130f) + vec3<f32>(-466f, 1973f, var_4.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 120f, var_4.a)))), func_2().b, var_4, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(884f, var_4.a, -939f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, 382f, -1712f) - vec3<f32>(var_4.a, 1426f, var_4.a)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17004u, var_0.x), vec4<u32>(var_0.x, 0u, var_1.x, var_1.x)))), ~abs(firstTrailingBit(1u)), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 7131u, u_input.a) ^ vec3<u32>(var_1.x, var_0.x, var_1.x), vec3<u32>(13507u, var_1.x, var_1.x) ^ vec3<u32>(var_0.x, 0u, 5067u))), vec3<u32>(var_0.x, ~_wgslsmith_mod_u32(var_1.x, 0u), max(u_input.a, 67068u))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(countOneBits(abs(1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 4255i, 1i, -2147483647i), vec4<i32>(1i, -299i, 7582i, -1i)), select(vec4<i32>(-39840i, 67342i, 36693i, 2147483647i), vec4<i32>(61267i, -28579i, -13913i, 2147483647i), vec4<bool>(false, true, false, false))), ~(~(-336i))), -15052i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, -19277i) << (select(vec4<u32>(u_input.a, 63267u, 1u, 15873u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false) % vec4<u32>(32u)), -vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(185f, 646f) - _wgslsmith_f_op_f32(288f - 859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1484f)), _wgslsmith_f_op_f32(f32(-1f) * -1674f))), func_5(func_1(), func_2().b), func_5(Struct_5(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 0u))), all(vec3<bool>(true, true, true)), Struct_4(func_1().c.a, true, vec4<bool>(false, true, false, false), func_1().c.d), ~1u, 1u), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-229f, 839f), -189f, true)), func_5(Struct_5(vec3<u32>(u_input.a, u_input.a, 13077u), true, Struct_4(Struct_3(-1508f, Struct_1(-3082f, vec4<i32>(var_0.x, -31135i, 6000i, var_0.x), var_0.x, var_0.zy), -252f), true, vec4<bool>(true, false, false, false), Struct_2(vec3<f32>(232f, -294f, 1110f), Struct_1(1766f, vec4<i32>(15407i, var_0.x, var_0.x, var_0.x), var_0.x, var_0.yy), Struct_1(-1354f, vec4<i32>(0i, -9479i, var_0.x, -19082i), var_0.x, var_0.zx), vec3<f32>(-144f, -2693f, 804f), vec4<u32>(43259u, u_input.a, 4555u, u_input.a))), u_input.a, u_input.a), Struct_1(-277f, vec4<i32>(-4781i, var_0.x, var_0.x, var_0.x), -20898i, var_0.yy)).b, firstTrailingBit(-1i) >> (76195u % 32u), vec2<i32>(var_0.x, ~(-34140i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(763f)), -1359f, -235f) - vec3<f32>(-825f, -739f, 1f))), func_1().c.d.e);
    var_1 = Struct_2(var_1.d, Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), vec4<i32>(-1i, select(~var_0.x, -2147483647i, false), ~reverseBits(var_0.x), _wgslsmith_div_i32(var_1.c.b.x, 2147483647i)), _wgslsmith_sub_i32(8603i, max(9005i, func_2().c.b.x)), var_0.wx), var_1.c, _wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, -1327f, var_1.d.x) + _wgslsmith_f_op_vec3_f32(-var_1.a))), vec3<bool>(true, all(func_1().c.c.wzw), all(vec3<bool>(true, false, false))))), var_1.e);
    var_0 = ~_wgslsmith_add_vec4_i32(func_5(func_1(), Struct_1(_wgslsmith_f_op_f32(trunc(var_1.b.a)), vec4<i32>(var_1.c.c, var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), 20636i, vec2<i32>(0i, var_1.b.b.x))).b, abs(var_1.c.b | vec4<i32>(var_0.x, var_1.c.c, var_1.b.c, var_1.c.b.x)));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-196f, _wgslsmith_f_op_f32(var_1.a.x + var_1.d.x), _wgslsmith_div_f32(var_1.b.a, -2669f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(386f, _wgslsmith_f_op_f32(step(var_1.d.x, 204f)), -2003f)))), func_5(Struct_5(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 31218u, u_input.a), vec3<u32>(83778u, u_input.a, 4294967295u)), vec3<u32>(1u, 10996u, 1388u), vec3<bool>(true, false, true)), true, Struct_4(func_1().c.a, func_1().b, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), func_2()), u_input.a, u_input.a), var_1.c), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, 894f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1238f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_1.a.x)), vec4<u32>(~(~21643u), func_2().e.x, var_1.e.x, ~(_wgslsmith_add_u32(var_1.e.x, u_input.a) & ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.yy, -133f, var_1.b.b.yzy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-416f - var_1.b.a)));
}

