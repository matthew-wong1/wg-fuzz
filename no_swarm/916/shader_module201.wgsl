struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), u_input.b, -u_input.b)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -433i, u_input.b), vec3<i32>(-31253i, u_input.b, -42061i)), -vec3<i32>(-2147483647i, -29763i, u_input.b), ~(~vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(38114i, -1i, u_input.b) & vec3<i32>(49463i, -1i, -1i), firstLeadingBit(vec3<i32>(-38549i, u_input.b, 62079i)), vec3<i32>(u_input.b, u_input.b, u_input.b)) & ~(~vec3<i32>(0i, u_input.b, u_input.b)), -(abs(vec3<i32>(3413i, u_input.b, u_input.b)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, 46721i), vec3<i32>(38032i, u_input.b, u_input.b), vec3<i32>(622i, -1i, u_input.b)))));
    var var_1 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))));
    var var_2 = Struct_2(~countOneBits(115037u), -1436f, 0u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))), -595f));
    var_0 = -(i32(-1i) * -(i32(-1i) * -21712i));
    return vec3<u32>(_wgslsmith_sub_u32(4294967295u, 68727u), ~(~(~_wgslsmith_mult_u32(17111u, var_2.c))), _wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(1u, 92418u)), var_2.c));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~vec3<u32>(36794u & (_wgslsmith_mult_u32(u_input.c, u_input.c) << (_wgslsmith_mult_u32(0u, 50404u) % 32u)), ~3658u, u_input.c);
    var_0 = vec3<u32>(~u_input.a.x, u_input.a.x, ~abs(var_0.x));
    let var_1 = ~vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 54756u, 86758u, 27110u), vec4<u32>(u_input.a.x, 0u, var_0.x, 1u)) ^ var_0.x, _wgslsmith_sub_u32(1u, u_input.c) << (~u_input.c % 32u));
    var_0 = var_1;
    var_0 = func_3(vec4<f32>(1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1184f - -519f)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-710f, -859f)) + -308f))));
    return select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), !all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.d.a;
    let var_1 = select(39568u, _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.c, ~4294967295u), ~u_input.c), arg_1.x);
    var_0 = _wgslsmith_f_op_f32(-571f + _wgslsmith_div_f32(-1000f, -836f));
    let var_2 = !vec2<bool>(true, arg_0.x | arg_1.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b))), -816f))) - -1180f);
    return ~3920u;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(max(arg_0, vec4<u32>(arg_0.x, 7540u, u_input.a.x, 0u)), vec4<u32>(arg_0.x, 7367u, 1u, arg_0.x)), ~select(arg_0.x, _wgslsmith_div_u32(arg_0.x, 49642u), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(361f, arg_1.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(arg_0.x, u_input.c, arg_0.x, 1u)), arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, abs(4294967295u), arg_0.x, 4294967295u >> (arg_0.x % 32u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(27485u, 74688u, arg_0.x, 1155u), vec4<u32>(19918u, u_input.c, u_input.a.x, arg_0.x))))), Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    var_0 = Struct_2(~firstTrailingBit(0u), -1000f, reverseBits(~(~var_0.c)), var_0.d);
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = Struct_3(~(~(~21582u)), (1i >> (~_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u)) > 11257i, Struct_2(14068u, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -623f) + -1771f))), firstTrailingBit(abs(1u)), Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)), -597f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(arg_1))))), u_input.b >> (~countOneBits(0u) % 32u));
    var var_3 = firstLeadingBit(vec2<u32>(var_0.c, ~(~var_2.c.a)));
    return var_2.c.d;
}

fn func_1() -> Struct_1 {
    return func_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, 30380u, 205u, ~4294967295u), ~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), firstLeadingBit(vec4<u32>(1017u, u_input.c, 0u, 0u) & vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.c))) << (vec4<u32>(func_4(vec2<bool>(true, false), func_2(), Struct_2(4294967295u, 1029f, 65759u, Struct_1(-658f, 1499f))), _wgslsmith_mult_u32(0u, 37002u), _wgslsmith_sub_u32(13984u, ~u_input.a.x), _wgslsmith_add_u32(~36467u, _wgslsmith_mod_u32(u_input.a.x, 73538u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)), 158f, _wgslsmith_f_op_f32(step(-130f, 881f)), _wgslsmith_f_op_f32(-962f + -2041f))));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    var var_0 = arg_0.d;
    var_0 = Struct_1(-716f, func_1().b);
    return -1i;
}

fn func_7(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_5(vec4<u32>(u_input.c << (0u % 32u), _wgslsmith_mult_u32(0u, 4664u), u_input.a.x, 1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(148f, 302f, 1985f, -801f))), vec4<f32>(707f, -424f, -1000f, -950f))).a)) + 671f);
    var var_1 = Struct_2(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2770f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-954f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(-1344f))))), firstLeadingBit(_wgslsmith_add_u32(arg_3, countOneBits(4294967295u ^ arg_3))), func_1());
    var_1 = Struct_2(~reverseBits(1u), _wgslsmith_f_op_f32(select(func_1().a, _wgslsmith_f_op_f32(trunc(var_1.b)), true)), 1u, var_1.d);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + -199f))) + 430f);
    var var_2 = arg_1.x;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(abs(abs(~vec4<i32>(33874i, u_input.b, u_input.b, -2147483647i) | countOneBits(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b)))), vec2<i32>(select(-u_input.b, u_input.b, true), _wgslsmith_mod_i32(~12031i, u_input.b)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 52941u), vec2<u32>(u_input.c, u_input.c))), vec2<u32>(8509u, 1u)) % vec2<u32>(32u)), func_6(Struct_2(~1u, _wgslsmith_f_op_f32(f32(-1f) * -1287f), ~_wgslsmith_div_u32(8368u, u_input.a.x), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1608f))), vec2<i32>(1i, -10239i) | vec2<i32>(12669i, u_input.b)), u_input.a.x);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(49636u, select(u_input.a.x, u_input.c, false)), u_input.c);
    var var_2 = Struct_2(740u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2172f, var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f), var_0.a))), abs(4294967295u), func_7(vec4<i32>(-1i) * -(~vec4<i32>(1i, -1i, -2381i, -31084i)), select(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.b), ~(-vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, -441f < var_0.a)), _wgslsmith_div_i32(reverseBits(-33102i), i32(-1i) * -u_input.b), 74574u));
    let var_3 = select(!vec4<bool>(any(vec3<bool>(true, false, true)), select(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, false)), true), false, true), !select(vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !vec4<bool>(true, u_input.a.x <= var_2.a, true, false), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, true, false), true)));
    var var_4 = Struct_2(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(565f - var_2.d.a))), 4294967295u, Struct_1(-386f, var_2.d.b));
    var var_5 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, u_input.a.x, 1u, u_input.c), ~vec4<u32>(var_2.a, var_4.a, 69676u, var_2.c)), _wgslsmith_sub_u32(u_input.a.x >> (1u % 32u), 39894u)) & 21575u, var_2.a);
    var_4 = Struct_2(~firstLeadingBit(1u), _wgslsmith_f_op_f32(max(var_0.b, 985f)), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(11423u, 2458u)), ~(~u_input.a.x), _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_2.a, var_5.x, var_2.c), vec3<u32>(6950u, var_4.c, 4294967295u)), vec3<u32>(var_4.c, var_2.a, 31079u)), ~0u), ~abs(~vec4<u32>(4294967295u, 9118u, var_2.c, 0u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), var_2.d.b)), _wgslsmith_f_op_f32(var_4.d.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1012f)) - func_1().a))));
    var var_6 = ~(~(~(~vec3<u32>(13110u, var_4.a, var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

