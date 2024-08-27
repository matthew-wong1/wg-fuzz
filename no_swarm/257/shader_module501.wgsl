struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), true)) + _wgslsmith_f_op_f32(f32(-1f) * -849f)), -635f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-443f, arg_0.x))), arg_0.x)));
    var var_1 = Struct_1(~4294967295u >> (~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 15800u, 1u)), vec3<u32>(1u, 1u, 1u)) % 32u), -63370i);
    var var_2 = min(abs(vec4<u32>(0u, 18783u, ~_wgslsmith_mult_u32(13389u, var_1.a), ~1u)), vec4<u32>(var_1.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(69235u, 0u)), ~vec2<u32>(4294967295u, var_1.a))), min(_wgslsmith_div_u32(var_1.a, var_1.a) | var_1.a, var_1.a), _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a), vec2<u32>(29318u, var_1.a)))));
    let var_3 = Struct_1(1u, var_1.b);
    var var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -(_wgslsmith_div_vec2_i32(vec2<i32>(-75i, 0i), vec2<i32>(1i, 30173i)) << (firstLeadingBit(vec2<u32>(36008u, var_2.x)) % vec2<u32>(32u))), vec2<i32>(u_input.a, -1i ^ _wgslsmith_mult_i32(~var_3.b, 0i)));
    return var_2.x;
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec3_u32(min(vec3<u32>(arg_0.a, arg_0.a, _wgslsmith_div_u32(arg_0.a, _wgslsmith_add_u32(arg_0.a, arg_0.a))), vec3<u32>(37694u, 1u, 0u & ~arg_0.a)), _wgslsmith_mod_vec3_u32(~(vec3<u32>(arg_0.a, arg_0.a, arg_0.a) & vec3<u32>(arg_0.a, arg_0.a, 4294967295u)), ~vec3<u32>(3684u, arg_0.a, 2999u)) ^ vec3<u32>(1u, arg_0.a, 0u));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~arg_0.a, _wgslsmith_add_u32(~(17931u ^ arg_0.a), 5621u)), arg_0.b);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -678f);
    let var_3 = true;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), var_2))), 1542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(abs(-495f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2)))) + _wgslsmith_div_f32(var_2, var_2)), var_2);
    return reverseBits(select(vec4<u32>(26727u, 68227u, 26666u, var_0.x) << (min(vec4<u32>(arg_0.a, 38578u, arg_0.a, 26432u), vec4<u32>(4294967295u, arg_0.a, arg_0.a, 0u)) % vec4<u32>(32u)), vec4<u32>(3523u, 0u, ~arg_0.a, ~1u), !(!vec4<bool>(false, false, var_3, var_3)))) >> (select(~(~vec4<u32>(44714u, var_0.x, var_0.x, arg_0.a)), ~vec4<u32>(_wgslsmith_sub_u32(47053u, 1u), 4294967295u, abs(82926u), var_0.x), all(vec2<bool>(true, true))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(reverseBits(33472i), arg_1.b, -34335i);
    let var_1 = arg_0.wzx;
    let var_2 = ~var_1.x;
    let var_3 = Struct_1(var_1.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, var_0.x), vec3<i32>(1i, u_input.a, var_0.x)), abs(vec3<i32>(1649i, 9946i, 21783i)), vec3<i32>(u_input.a, u_input.a, arg_1.b)), vec3<i32>(arg_1.b, -u_input.a, -2147483647i)), u_input.a));
    let var_4 = !(!select(vec2<bool>(all(vec4<bool>(false, false, true, true)), true), vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, true, true, false)))));
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = func_4(~(~(~(~vec4<u32>(0u, 0u, 60067u, 0u)))), Struct_1(abs(~func_2(vec2<f32>(1000f, -112f))), _wgslsmith_mod_i32(1i, i32(-1i) * -u_input.a)), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 64141u, 40398u), _wgslsmith_clamp_vec4_u32(vec4<u32>(87424u, 22666u, 1u, 19944u), vec4<u32>(19165u, 0u, 1u, 4294967295u), vec4<u32>(57246u, 1u, 1u, 27766u))), ~vec4<u32>(1u, 1u, 4294967295u, 14771u) | func_3(Struct_1(4294967295u, 45087i)), true));
    var_0 = Struct_1(firstLeadingBit(var_0.a), var_0.b);
    var var_1 = u_input.a;
    var var_2 = func_4(~(func_3(Struct_1(var_0.a, var_0.b)) << (~(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a) >> (vec4<u32>(var_0.a, 70572u, 68033u, 20807u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_u32(~(~var_0.a), select(min(10528u, var_0.a), _wgslsmith_mult_u32(var_0.a, var_0.a), false)), _wgslsmith_sub_i32(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(29885i, -2147483647i, var_0.b), vec3<i32>(1i, 2147483647i, -1i))) ^ 56752i), max(vec4<u32>(var_0.a, 4294967295u, 1u, firstTrailingBit(abs(113027u))), vec4<u32>(var_0.a, _wgslsmith_sub_u32(0u, var_0.a), var_0.a, _wgslsmith_mod_u32(~0u, var_0.a & 4294967295u))));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(244f * 1000f);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(58136u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 53017u)), ~vec2<u32>(30022u, 29494u)) & vec2<u32>(1u, 1u));
    var_0 = ~countOneBits(countOneBits(vec2<u32>(~var_0.x, _wgslsmith_clamp_u32(var_0.x, 38696u, var_0.x))));
    var_0 = reverseBits(~select(vec2<u32>(var_0.x << (var_0.x % 32u), reverseBits(var_0.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 43586u), vec2<u32>(var_0.x, var_0.x)), select(true, true, false) | false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1002f))) - arg_2.x);
    var var_2 = true;
    return func_4(~(abs(~vec4<u32>(var_0.x, 77702u, 4294967295u, 4294967295u)) << (~(vec4<u32>(3189u, var_0.x, 72825u, var_0.x) | vec4<u32>(27623u, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u))), func_4(abs(~(~vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x))), Struct_1(func_4(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(1u, var_0.x, var_0.x, 0u)), func_4(vec4<u32>(0u, var_0.x, 1u, 4294967295u), Struct_1(5982u, arg_1.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 55977u)), abs(vec4<u32>(var_0.x, 0u, var_0.x, 1u))).a, -arg_0.x), ~(~vec4<u32>(var_0.x, 0u, 0u, 12051u))), (firstLeadingBit(~vec4<u32>(var_0.x, var_0.x, 69006u, var_0.x)) << (func_3(Struct_1(10557u, arg_1.x)) % vec4<u32>(32u))) & abs(select(min(vec4<u32>(118085u, 1u, 773u, 71658u), vec4<u32>(var_0.x, 1u, 45811u, 69523u)), max(vec4<u32>(var_0.x, var_0.x, var_0.x, 21345u), vec4<u32>(var_0.x, var_0.x, 99479u, var_0.x)), vec4<bool>(true, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(abs(firstTrailingBit(vec2<i32>(u_input.a, -1i))) & (vec2<i32>(-1i) * -vec2<i32>(81643i, 4254i))), -(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 25296i)), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))) & -(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, -50479i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2157f + _wgslsmith_f_op_f32(1596f + 1169f)) * _wgslsmith_f_op_f32(func_1())), 599f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -776f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f * _wgslsmith_f_op_f32(abs(-589f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f) + _wgslsmith_f_op_f32(f32(-1f) * -1028f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -771f), -2202f)))));
    var var_2 = var_0;
    let var_3 = Struct_1(var_0.a, -u_input.a);
    let var_4 = func_5(~vec2<i32>(-(~0i), -9484i), ~(-(vec3<i32>(var_3.b, var_2.b, var_0.b) & vec3<i32>(-2147483647i, 36751i, -2147483647i)) ^ ~vec3<i32>(4876i, var_2.b, u_input.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 2037f) + _wgslsmith_f_op_f32(-var_1)), var_1, -594f), vec3<f32>(_wgslsmith_div_f32(var_1, 410f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1359f))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(var_0.a, 83u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a, var_0.a, var_3.a), vec3<u32>(var_4.a, var_3.a, 11636u))))), vec4<u32>(var_0.a, var_4.a, ~_wgslsmith_mod_u32(var_3.a, var_0.a), var_3.a), 1011f, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b, var_2.b), vec2<i32>(var_2.b, 2147483647i)), -var_4.b)), vec2<f32>(996f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1255f - 191f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(step(var_1, var_1)), all(vec2<bool>(true, false)))), any(vec2<bool>(true, true))))));
}

