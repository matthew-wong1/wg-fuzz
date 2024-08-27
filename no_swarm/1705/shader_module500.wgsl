struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2276f + _wgslsmith_f_op_f32(sign(124f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f - -1045f) * 1441f)), !any(vec4<bool>(true, true, true, true)), abs(vec3<i32>(u_input.a, u_input.a, 26252i)) ^ abs(-vec3<i32>(u_input.a, -2451i, -2147483647i)), _wgslsmith_add_vec3_i32(max(select(vec3<i32>(-72993i, u_input.a, u_input.a), vec3<i32>(-10566i, 0i, u_input.a), vec3<bool>(false, true, false)), ~vec3<i32>(u_input.a, u_input.a, -1i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(7585i, u_input.a, -13076i), vec3<i32>(u_input.a, u_input.a, 1i)))), select(vec4<bool>(select(all(vec3<bool>(true, true, true)), true, true), true | (u_input.a == u_input.a), all(vec3<bool>(false, false, false)), true & all(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false)), true));
    let var_1 = select(var_0.b.wz, !select(!(!vec2<bool>(var_0.a.b, true)), var_0.b.zx, all(var_0.b.wy)), vec2<bool>(any(select(vec2<bool>(var_0.b.x, false), vec2<bool>(false, false), !vec2<bool>(false, var_0.a.b))), false));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -777f)), ~0u < _wgslsmith_div_u32(select(50231u, 0u, true) << (~1499u % 32u), _wgslsmith_clamp_u32(14278u, max(4294967295u, 4294967295u), 4294967295u)), select(_wgslsmith_mod_vec3_i32(~var_0.a.c, -var_0.a.c | ~vec3<i32>(var_0.a.c.x, u_input.a, u_input.a)), abs(abs(~var_0.a.d)), var_0.b.wxz), var_0.a.d);
    var var_3 = false;
    let var_4 = select(var_0.b, !select(select(!vec4<bool>(false, var_1.x, false, var_0.a.b), !var_0.b, !vec4<bool>(true, var_1.x, var_2.b, true)), select(select(var_0.b, var_0.b, true), select(var_0.b, vec4<bool>(false, var_2.b, true, false), var_0.b), var_0.b), _wgslsmith_f_op_f32(step(-219f, 163f)) <= var_0.a.a), false);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> bool {
    var var_0 = true;
    var_0 = all(!(!vec3<bool>(!arg_1.b, true, all(vec2<bool>(arg_1.b, arg_1.b)))));
    let var_1 = true;
    let var_2 = vec3<bool>(true, !(~abs(30080u) < _wgslsmith_add_u32(func_3(), ~108555u)), !var_1 || false);
    var_0 = arg_0.b;
    return var_1;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_f32(695f, 1080f);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, 0i)), vec4<i32>(1i, ~max(-23725i, -1i), u_input.a, -9639i)), u_input.a, u_input.a);
    var var_2 = vec4<bool>(all(vec2<bool>(!all(vec2<bool>(false, false)), false || (u_input.a > u_input.a))), 1u != (_wgslsmith_mod_u32(firstTrailingBit(0u), ~13838u) & ~0u), any(vec3<bool>(func_2(Struct_1(-1015f, true, var_1, var_1), Struct_1(174f, false, vec3<i32>(u_input.a, -2147483647i, 2147483647i), var_1), vec4<f32>(-1749f, -2571f, -908f, -531f), 300f), true, true)) || func_2(Struct_1(1102f, all(vec4<bool>(false, true, false, true)), -var_1, vec3<i32>(var_1.x, u_input.a, u_input.a)), Struct_1(1725f, true, var_1, var_1), vec4<f32>(_wgslsmith_div_f32(896f, -1000f), _wgslsmith_f_op_f32(sign(573f)), _wgslsmith_f_op_f32(f32(-1f) * -488f), 1673f), _wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(round(-487f)))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(696f, 1000f)), -1799f), _wgslsmith_f_op_f32(-114f * -1514f))), all(!vec4<bool>(false, all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), all(var_2.zzz), true)), vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(var_1.x, 0i)), ~1i) & var_1, ~firstLeadingBit(~max(var_1, var_1)));
    var var_4 = var_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1061f, -1662f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_3.a, 1422f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(-23830i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2455f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) + _wgslsmith_f_op_f32(-726f * -1000f)), true, _wgslsmith_mult_vec3_i32(-(vec3<i32>(3883i, u_input.a, u_input.a) >> (~vec3<u32>(4294967295u, 4294967295u, 45578u) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -28703i), reverseBits(vec3<i32>(u_input.a, 2481i, -2147483647i))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, 1i), countOneBits(vec3<i32>(u_input.a, -1i, 2147483647i) & vec3<i32>(-19743i, u_input.a, u_input.a)) & max(~vec3<i32>(13306i, u_input.a, u_input.a), abs(vec3<i32>(-2147483647i, u_input.a, u_input.a))), -vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), 46244i, _wgslsmith_mod_i32(u_input.a, u_input.a))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 1u), min(1u, 14833u), ~1u, 38471u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~38587u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(43254u, 0u, 4294967295u, 4294967295u))), _wgslsmith_div_u32(_wgslsmith_div_u32(30860u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 20551u), vec2<u32>(37911u, 0u))), ~_wgslsmith_mod_u32(60728u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = var_1.c.x;
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x & var_2.x, var_2.x), var_2.wx) | ~vec2<u32>(~0u, ~var_2.x));
}

