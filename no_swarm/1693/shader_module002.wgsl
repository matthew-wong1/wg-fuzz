struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = !vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), false);
    var_0 = -(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_0.x, 1i, -2147483647i, 46086i), u_input.b), -u_input.b) | u_input.b);
    var_0 = u_input.b;
    var_0 = (firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 23458i), u_input.a.x, countOneBits(-17732i), -13174i)) ^ u_input.b) & _wgslsmith_add_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, -87839i, var_0.x), vec4<i32>(var_0.x, var_0.x, u_input.e, u_input.e))), select(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, u_input.b), true) >> (~(vec4<u32>(u_input.d, u_input.c.x, 25592u, u_input.c.x) | vec4<u32>(39993u, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u)));
    return vec2<bool>(!all(!(!vec4<bool>(false, var_1.x, false, var_1.x))), any(!var_1));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_4(Struct_3(vec4<bool>(arg_1.x, func_3().x, (u_input.c.x < u_input.c.x) && (-1i <= u_input.b.x), all(!arg_1.wy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 618f, 102f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, -1116f, 304f))), _wgslsmith_div_vec3_f32(vec3<f32>(-631f, -1684f, -126f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 495f, -375f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-214f * 851f))), _wgslsmith_f_op_f32(f32(-1f) * -1182f)) * _wgslsmith_f_op_f32(ceil(-1000f))), u_input.b.x, select(select(vec4<bool>(true, true, arg_0, arg_0), !(!vec4<bool>(false, false, arg_0, true)), !arg_1.x), select(arg_1, !vec4<bool>(false, arg_1.x, arg_0, true), vec4<bool>(!arg_0, false, false, arg_1.x)), all(arg_1)));
    var var_1 = vec3<u32>(min(u_input.d, ~min(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(108610u, u_input.d, u_input.d), vec3<u32>(55118u, 16013u, 47643u)))), u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, 0u, 51112u) | vec3<u32>(u_input.d, u_input.d, u_input.d), countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.c.x)), vec3<u32>(~66605u, u_input.c.x, _wgslsmith_mod_u32(u_input.d, u_input.d))), ~vec3<u32>(68607u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 66676u, 4294967295u), vec3<u32>(1u, u_input.c.x, u_input.c.x)), _wgslsmith_add_u32(u_input.d, u_input.c.x))));
    var_1 = max(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_div_u32(7103u, u_input.d), ~var_1.x, ~21618u)), min(~vec3<u32>(var_1.x, u_input.d, 7713u), ~vec3<u32>(4294967295u, 1u, 1u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_1.x, 1u), vec3<u32>(0u, 0u, 71224u)) % vec3<u32>(32u)))), abs(vec3<u32>(_wgslsmith_div_u32(var_1.x << (u_input.c.x % 32u), 1u), ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(64025u, 68824u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 0u)), ~vec3<u32>(1u, 4294967295u, 7196u)))));
    var_1 = ~vec3<u32>(var_1.x, ~u_input.d, reverseBits(~var_1.x) & 1u);
    let var_2 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(-1114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1873f, var_0.b)) * 1726f)), _wgslsmith_f_op_f32(var_0.b - var_0.a.b.x));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(min(u_input.b.x, 1i), vec3<i32>(-2147483647i, ~(~(-1i)), 1i));
    let var_1 = 1u;
    var_0 = Struct_1(-2449i, -vec3<i32>(var_0.a, ~(-u_input.a.x), 0i));
    return _wgslsmith_f_op_f32(func_4(any(select(select(vec2<bool>(true, true), func_3(), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), func_3(), vec2<bool>(true, true))), vec4<bool>(false, false, true, var_1 < var_1)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var_1 = 877f;
    let var_2 = Struct_4(Struct_3(!vec4<bool>(true, true, 0i < u_input.b.x, u_input.d >= u_input.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1002f, 616f, 868f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(972f, 3049f, 404f), vec3<f32>(-1000f, -439f, 516f))) - _wgslsmith_div_vec3_f32(vec3<f32>(445f, 1661f, -795f), vec3<f32>(1091f, -2123f, -242f)))))), _wgslsmith_f_op_f32(f32(-1f) * -131f), u_input.e, !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true)));
    let var_3 = any(vec3<bool>(var_2.a.a.x, true, true));
    return Struct_3(select(vec4<bool>(false, var_0 < -51013i, !var_2.d.x, !var_3 && true), var_2.a.a, var_3), vec3<f32>(-512f, var_2.a.b.x, -1708f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_dot_vec4_u32(vec4<u32>(min(0u, u_input.c.x), ~22572u, min(u_input.d, 1u), min(33048u, u_input.c.x)), ~(~vec4<u32>(u_input.d, 70949u, u_input.c.x, u_input.c.x))) < 0u) & any(vec4<bool>(true, true, false, all(vec4<bool>(false, true, false, true)) || any(vec2<bool>(true, true))));
    let var_1 = Struct_5(func_1(u_input.e, -u_input.e, min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.e) ^ u_input.b.yy, vec2<i32>(-1i, 1i)), -vec2<i32>(-8517i, 1i)), _wgslsmith_mod_u32(u_input.d, ~0u)), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, -871f, 412f))) - func_1(u_input.a.x, 0i, ~vec2<i32>(u_input.a.x, 1i), countOneBits(34151u)).b)), ~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i & u_input.a.x), i32(-1i) * -2147483647i);
    var var_2 = select(~((vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 0u) >> (firstLeadingBit(vec4<u32>(3537u, 1u, u_input.d, u_input.d)) % vec4<u32>(32u))) << (abs(select(vec4<u32>(0u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(38090u, u_input.d, 0u, u_input.c.x), var_1.b.a)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, 60700u, u_input.d), vec4<u32>(4294967295u, u_input.d, 14492u, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.d, 20575u))), vec4<u32>(abs(38579u & u_input.d), _wgslsmith_div_u32(~u_input.c.x, ~u_input.d), max(u_input.d, ~4294967295u), ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(20207u, 138359u)))), var_1.d > 2147483647i);
    let var_3 = Struct_4(Struct_3(vec4<bool>(false, true, !any(var_1.b.a), func_3().x), var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.b.x, var_1.b.b.x, var_1.b.a.x)) * -1000f), -1000f)) + var_1.a.b.x), var_1.d >> (select(u_input.c.x ^ 26909u, _wgslsmith_add_u32(~u_input.c.x, firstLeadingBit(u_input.d)), true) % 32u), vec4<bool>(var_1.a.a.x, ~countOneBits(u_input.d) < ~0u, all(vec3<bool>(var_1.b.a.x, var_1.a.a.x | var_1.b.a.x, true)), !(var_2.x <= var_2.x)));
    let var_4 = Struct_2(var_1.c, vec4<u32>((u_input.c.x >> (~4294967295u % 32u)) >> ((var_2.x << (0u % 32u)) % 32u), _wgslsmith_mult_u32(0u, ~var_2.x | _wgslsmith_sub_u32(var_2.x, u_input.d)), _wgslsmith_clamp_u32(u_input.d, ~42752u, u_input.c.x), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(u_input.a.zz, ~u_input.b.wy, !var_3.a.a.wy) | select(vec2<i32>(2147483647i, var_3.c), u_input.a.yz, any(var_3.a.a.yy))), vec2<i32>(reverseBits(var_1.d), _wgslsmith_add_i32(23106i, abs(_wgslsmith_mult_i32(var_4.a, var_3.c)))), u_input.a, max(var_4.b.x | _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, u_input.d), var_2.x), var_2.x), _wgslsmith_f_op_f32(139f + 960f));
}

