struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, false, false)), true), true == select(false, false, true)), u_input.c.x, ~abs(vec3<i32>(u_input.b, -2147483647i, u_input.b)) << (abs(~(~vec3<u32>(u_input.d, u_input.c.x, 52751u))) % vec3<u32>(32u)), min(vec4<u32>(u_input.d << (u_input.d % 32u), min(u_input.d, u_input.c.x), 13867u, u_input.d >> (50697u % 32u)) >> (vec4<u32>(31649u, 2310u, ~u_input.c.x, countOneBits(u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(select(0u, 4294967295u, true), u_input.d, _wgslsmith_div_u32(u_input.d, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), vec3<u32>(u_input.d, 31578u, u_input.d))), ~vec4<u32>(u_input.c.x, 35793u, 72935u, u_input.c.x))), max(firstLeadingBit(u_input.c), _wgslsmith_mult_vec2_u32(~select(vec2<u32>(41121u, u_input.d), u_input.c, false), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c), _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(52091u, 0u))))));
    let var_1 = 1f;
    let var_2 = vec2<bool>(var_0.a.x, all(!vec3<bool>(28099u == var_0.d.x, true, all(vec3<bool>(var_0.a.x, false, var_0.a.x)))));
    let var_3 = -vec4<i32>(var_0.c.x, max(-10973i | (50954i | u_input.a), var_0.c.x), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -40491i), vec3<i32>(var_0.c.x, var_0.c.x, u_input.b)), 2147483647i | u_input.b), var_0.c.x), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-23458i, u_input.a, -2485i), var_0.c.x));
    let var_4 = var_0;
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, abs(var_4.e.x ^ var_0.d.x)), vec2<u32>(27715u, 4294967295u));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-620f, _wgslsmith_div_f32(-1000f, -1063f), _wgslsmith_div_f32(484f, -362f)))), Struct_1(vec2<bool>(arg_1 && false, true), _wgslsmith_mult_u32(1u, ~arg_0 | (u_input.d & 56250u)), vec3<i32>(7398i, -36405i, -10569i), vec4<u32>(23094u, ~(~u_input.c.x), u_input.c.x, ~(arg_0 ^ 47209u)), abs(u_input.c) & func_3()), _wgslsmith_mult_i32(firstTrailingBit(~u_input.a), -_wgslsmith_div_i32(17535i, u_input.b)) >> (0u % 32u), Struct_1(vec2<bool>(any(vec3<bool>(arg_1, true, arg_1)), arg_1 && !arg_1), _wgslsmith_mult_u32(~(~42053u), _wgslsmith_sub_u32(~4294967295u, arg_0)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.b, 0i, 19797i), vec3<i32>(-4806i, u_input.b, -1i)), vec3<i32>(-2147483647i, 27499i, 2147483647i)), min(~vec3<i32>(66311i, 1i, u_input.b), vec3<i32>(-2147483647i, -39196i, u_input.b)), select(vec3<i32>(u_input.b, u_input.b, -3140i), vec3<i32>(22460i, 41996i, 2147483647i), true) | ~vec3<i32>(-2147483647i, -68840i, u_input.a)), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(46865u, u_input.d, arg_0, 0u), vec4<u32>(17167u, 40237u, 0u, u_input.c.x)), ~vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, arg_0)), select(u_input.c, vec2<u32>(arg_0, u_input.c.x), false)));
    var var_1 = Struct_2(2147483647i, var_0.b, var_0.c, max(u_input.b, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(var_0.a, 1i)), var_0.e.c.x >> (6524u % 32u))), var_0.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
    let var_3 = vec3<bool>(any(select(select(vec4<bool>(var_1.c.a.x, true, arg_1, var_0.c.a.x), vec4<bool>(var_0.e.a.x, var_0.c.a.x, arg_1, true), vec4<bool>(false, false, var_0.c.a.x, arg_1)), !vec4<bool>(true, var_0.e.a.x, arg_1, false), arg_1)) | arg_1, true, true);
    var var_4 = -279f;
    return Struct_2(var_1.e.c.x, _wgslsmith_f_op_vec3_f32(-var_0.b), Struct_1(select(select(select(var_0.e.a, var_1.e.a, true), select(vec2<bool>(false, true), var_1.c.a, var_1.c.a), all(vec2<bool>(false, false))), !vec2<bool>(arg_1, true), select(select(var_3.yx, vec2<bool>(var_1.c.a.x, var_0.c.a.x), var_3.x), !vec2<bool>(var_0.c.a.x, false), false)), _wgslsmith_div_u32(~var_1.c.e.x, 0u) & ~(var_0.e.b << (var_1.e.b % 32u)), var_0.e.c, var_0.c.d, var_1.e.e), var_1.c.c.x, var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(select(vec4<bool>(arg_0.e.a.x, arg_1.a.x, arg_0.c.a.x, any(!vec3<bool>(arg_1.a.x, true, false))), vec4<bool>(arg_1.a.x, true, true, true), false || arg_0.c.a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, !(u_input.b == -37296i)), vec4<bool>(!any(vec3<bool>(true, arg_1.a.x, true)), false, true, true), any(select(select(vec3<bool>(true, arg_0.e.a.x, true), vec3<bool>(arg_1.a.x, arg_0.e.a.x, arg_0.e.a.x), true), vec3<bool>(false, true, true), vec3<bool>(arg_1.a.x, true, true)))), vec4<bool>(arg_0.c.a.x, (-u_input.b >= -16504i) && false, _wgslsmith_mult_i32(u_input.b, reverseBits(arg_1.c.x)) < countOneBits(10053i), arg_0.c.b < 1u));
    var var_1 = func_2(arg_1.e.x, _wgslsmith_f_op_f32(-arg_0.b.x) < arg_0.b.x);
    let var_2 = func_2(~(~select(0u, abs(arg_1.d.x), var_0.x)), arg_1.a.x).c;
    var var_3 = _wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(trunc(-1404f)));
    let var_4 = func_2(_wgslsmith_mult_u32(~arg_0.e.e.x, firstLeadingBit(func_2(var_1.c.e.x >> (1u % 32u), !var_2.a.x).e.e.x)), all(!var_2.a) != false);
    return Struct_2(_wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(_wgslsmith_mod_i32(select(1i, var_4.c.c.x, arg_1.a.x), 45713i), -2147483647i, var_2.c.x)), var_4.b, Struct_1(vec2<bool>(!var_2.a.x, false), var_2.e.x, var_4.e.c, func_2(~var_1.e.b, true).c.d, ~var_2.d.yx), 0i, Struct_1(vec2<bool>(any(!vec4<bool>(true, var_0.x, var_4.e.a.x, false)), all(var_1.c.a) == true), u_input.d, var_1.e.c, vec4<u32>(~(~u_input.c.x), 1u, ~arg_0.c.d.x, 1u), vec2<u32>(~106063u, _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.b, var_1.e.b), var_1.e.d.x))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(func_2(_wgslsmith_div_u32(u_input.c.x, ~u_input.d) >> (~max(10754u, u_input.c.x) % 32u), false), func_2(u_input.d, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))).e);
    var var_1 = !any(!select(select(vec4<bool>(false, var_0.c.a.x, var_0.e.a.x, var_0.e.a.x), vec4<bool>(var_0.c.a.x, true, true, true), vec4<bool>(true, false, var_0.e.a.x, true)), !vec4<bool>(var_0.e.a.x, var_0.e.a.x, var_0.c.a.x, false), !var_0.e.a.x));
    var_1 = !any(vec2<bool>(all(select(var_0.e.a, vec2<bool>(var_0.c.a.x, var_0.e.a.x), vec2<bool>(true, true))), !any(vec3<bool>(var_0.c.a.x, var_0.e.a.x, false))));
    let var_2 = Struct_1(vec2<bool>(select(true, !func_4(var_0, Struct_1(vec2<bool>(var_0.e.a.x, true), var_0.e.d.x, vec3<i32>(1i, -18187i, u_input.a), var_0.e.d, var_0.e.e)).c.a.x, !(59691u != u_input.d)), var_0.e.a.x), reverseBits(1u), ~(~var_0.e.c), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(var_0.e.d, var_0.e.d), var_0.c.d) << (~vec4<u32>(71751u, min(var_0.c.b, 58727u), _wgslsmith_add_u32(u_input.c.x, u_input.d), 1u) % vec4<u32>(32u)), firstLeadingBit(~var_0.c.d.xy | u_input.c));
    var_1 = true;
    return vec2<bool>(!all(var_2.a), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a >= u_input.b;
    var_0 = !any(select(func_1(), vec2<bool>(all(vec4<bool>(false, true, false, true)), func_2(4294967295u, true).e.a.x), false));
    var var_1 = u_input.d;
    let var_2 = func_4(Struct_2(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, _wgslsmith_f_op_f32(min(-314f, 953f)), -215f)), Struct_1(vec2<bool>(all(vec3<bool>(true, true, false)), false), 22995u, func_2(u_input.d, true).e.c, func_2(u_input.c.x, true).c.d, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) >> (u_input.c % vec2<u32>(32u)), min(vec2<u32>(87993u, u_input.d), vec2<u32>(71982u, 0u)))), 0i, func_2(u_input.d, true).c), Struct_1(func_1(), 1u, firstTrailingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.b, -1i), vec3<i32>(u_input.b, 38447i, -60781i))), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x) ^ vec4<u32>(34247u, u_input.d, 4294967295u, 59330u), firstTrailingBit(~vec4<u32>(20470u, u_input.d, u_input.c.x, u_input.d))), ~max(vec2<u32>(u_input.c.x, 4294967295u) << (u_input.c % vec2<u32>(32u)), vec2<u32>(46293u, u_input.d))));
    var var_3 = func_4(var_2, Struct_1(var_2.e.a, 1u, ~vec3<i32>(-var_2.d, -var_2.e.c.x, ~var_2.c.c.x), var_2.e.d, u_input.c)).c;
    let var_4 = func_2(_wgslsmith_mult_u32(var_2.e.b, _wgslsmith_div_u32(0u, ~241u)), var_2.c.a.x & any(!select(vec4<bool>(var_3.a.x, var_3.a.x, false, var_3.a.x), vec4<bool>(true, true, var_2.e.a.x, false), vec4<bool>(false, var_2.c.a.x, var_3.a.x, var_3.a.x)))).e;
    var var_5 = var_2.c.c.xy;
    let var_6 = ~(~(~var_4.d.zyx >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(62501u, 17367u, var_4.d.x), var_4.d.xyy, var_2.e.d.ywy) % vec3<u32>(32u)))) ^ ~firstLeadingBit(var_4.d.xzx);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - -774f), var_2.b.x, !(false || select(var_3.a.x, var_4.a.x, false)))), _wgslsmith_f_op_f32(floor(func_4(Struct_2(-var_3.c.x, var_2.b, Struct_1(vec2<bool>(true, var_3.a.x), 0u, vec3<i32>(u_input.a, 1i, -26468i), vec4<u32>(var_4.d.x, 66680u, 51730u, var_3.b), vec2<u32>(0u, var_6.x)), reverseBits(var_5.x), func_4(var_2, var_2.c).e), Struct_1(vec2<bool>(false, false), 4294967295u >> (var_4.d.x % 32u), _wgslsmith_add_vec3_i32(vec3<i32>(var_5.x, -2147483647i, var_4.c.x), var_4.c), var_3.d, vec2<u32>(0u, 4833u) >> (u_input.c % vec2<u32>(32u)))).b.x)));
}

