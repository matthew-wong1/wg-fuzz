struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = abs(-(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, 0i))) >> ((~vec2<u32>(u_input.b, u_input.b) << (min(vec2<u32>(13243u, 4294967295u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, u_input.c, -2147483647i), vec3<i32>(73997i, u_input.a, var_0.x)), abs(vec3<i32>(u_input.a, var_0.x, var_0.x) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), abs(-(vec3<i32>(var_0.x, -32566i, var_0.x) | vec3<i32>(-12513i, 0i, -36335i)))) | ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, -4989i, u_input.a) & vec3<i32>(var_0.x, -2147483647i, 1i)), ~select(vec3<i32>(var_0.x, -1i, -1i), vec3<i32>(var_0.x, u_input.c, var_0.x), vec3<bool>(true, false, true)));
    var_1 = var_0.x;
    let var_2 = Struct_3(vec4<i32>(~(-2430i >> (firstTrailingBit(37862u) % 32u)), ~(~var_0.x & _wgslsmith_mult_i32(37782i, 0i)), firstTrailingBit(2147483647i), var_0.x), Struct_1(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 82199u, u_input.b), vec3<u32>(0u, 70153u, 0u))))), _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b), 73572u, 1u, 1u), ~(countOneBits(vec4<u32>(4294967295u, u_input.b, u_input.b, 1u)) & max(vec4<u32>(u_input.b, 0u, 18353u, u_input.b), vec4<u32>(u_input.b, u_input.b, 20136u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, -1512f, -100f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-987f, 813f, 2024f), vec3<f32>(-675f, -1199f, -365f))))));
    var var_3 = var_2;
    return select(select(all(vec4<bool>(true, true, true, true)), true, true), false, false) & select(true, true, !(_wgslsmith_sub_u32(u_input.b, var_2.c.x) == ~u_input.b));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = 857f;
    let var_1 = (select(_wgslsmith_clamp_u32(~arg_0.b.a.x, abs(1u), abs(u_input.b)), arg_0.c.x, all(vec2<bool>(false, true))) << (u_input.b % 32u)) <= u_input.b;
    var_0 = _wgslsmith_f_op_f32(ceil(arg_0.d.x));
    var_0 = _wgslsmith_f_op_f32(-arg_2);
    var_0 = -355f;
    return Struct_2(select(select(!(!vec4<bool>(var_1, var_1, false, var_1)), select(vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_1, var_1, true, var_1), arg_2 < arg_2), select(select(vec4<bool>(true, false, false, false), vec4<bool>(var_1, var_1, true, true), vec4<bool>(false, var_1, false, var_1)), !vec4<bool>(var_1, false, false, var_1), !vec4<bool>(var_1, true, true, var_1))), vec4<bool>(true, !var_1, func_3(), true), vec4<bool>(var_1, all(vec3<bool>(var_1, var_1, var_1)), var_1 || (false && var_1), false)), _wgslsmith_add_i32(1i, -(~(-arg_0.a.x))), 12609i);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = func_2(Struct_3(arg_1, Struct_1(firstTrailingBit(vec3<u32>(87030u, u_input.b, u_input.b)) << (vec3<u32>(32148u, u_input.b, 61409u) % vec3<u32>(32u))), vec4<u32>(firstTrailingBit(u_input.b), 8784u, ~(4294967295u ^ u_input.b), ~17322u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, -2502f), 685f, 655f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(514f, -500f, -186f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 421f, -630f)))))), arg_1.yxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(129f))), _wgslsmith_f_op_f32(floor(344f)))) * -756f));
    let var_1 = 0u ^ select(_wgslsmith_clamp_u32(26975u, ~(u_input.b & u_input.b), u_input.b), u_input.b, !any(select(var_0.a, var_0.a, true)));
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_clamp_u32(abs(1u), 38421u, 1u);
    let var_4 = var_0;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1 << (var_3 % 32u), _wgslsmith_mod_u32(1u, 21717u) >> (~var_1 % 32u), _wgslsmith_mult_u32(0u, ~13936u)), abs(~reverseBits(vec3<u32>(93886u, 1u, 79470u)))), vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 18897u), vec3<u32>(90341u, 4294967295u, 43582u))), abs(86157u), min(~(~u_input.b), select(var_3, u_input.b, var_0.a.x) >> (var_3 % 32u))), ~vec3<u32>(1u, _wgslsmith_sub_u32(var_2, 44908u), 0u) ^ vec3<u32>(15407u, 33316u, _wgslsmith_mult_u32(~var_3, reverseBits(u_input.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    var var_0 = 1i;
    var_0 = -1i ^ (countOneBits(u_input.c) ^ firstLeadingBit(abs(u_input.c) >> (arg_0.x % 32u)));
    var_0 = reverseBits(select(u_input.a, ~0i, arg_1.x) >> ((~9106u ^ func_1(vec3<i32>(u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.c, -42658i, 33512i, u_input.c)).x) % 32u)) ^ u_input.c;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1((vec3<i32>(-21648i, u_input.c, 46140i) & vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ vec3<i32>(u_input.a, -16774i, 2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -10502i, u_input.c, -2147483647i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(-1i, 0i, u_input.c, 17970i), vec4<i32>(u_input.c, 0i, u_input.a, -1i))), vec2<bool>(select(true, true, true), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, -310f, -1465f, 151f))))) < u_input.b;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(u_input.c, min(~u_input.c, u_input.c))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(u_input.c, u_input.c, 61987i)), 0i, _wgslsmith_add_i32(u_input.c, u_input.c)), -u_input.a), reverseBits(abs(-14906i))));
    var var_2 = vec4<bool>(false, true, ~u_input.b > ~(~45838u), false);
    var var_3 = _wgslsmith_f_op_f32(select(1319f, 139f, any(vec2<bool>(select(true, !var_2.x, true), var_2.x))));
    let var_4 = Struct_2(!select(func_2(Struct_3(vec4<i32>(2147483647i, -1i, var_1.x, 1i), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec4<u32>(u_input.b, 1u, 54041u, u_input.b), vec3<f32>(2152f, 514f, 1852f)), -vec3<i32>(0i, -2147483647i, var_1.x), -1007f).a, select(vec4<bool>(false, var_2.x, false, var_2.x), func_2(Struct_3(vec4<i32>(u_input.a, -20934i, u_input.c, -60098i), Struct_1(vec3<u32>(26634u, 4294967295u, 123216u)), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec3<f32>(-1738f, 1716f, -453f)), vec3<i32>(u_input.c, 44207i, var_1.x), -1963f).a, true), var_2.x), var_1.x, -(_wgslsmith_clamp_i32(2147483647i, -u_input.c, abs(var_1.x)) ^ ~1i));
    var_3 = -676f;
    let var_5 = Struct_3(firstTrailingBit(abs(-(vec4<i32>(var_1.x, 1i, u_input.c, 228i) | vec4<i32>(1i, var_1.x, 36542i, -2147483647i)))), Struct_1(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_mod_u32(1u, ~u_input.b))), select(firstLeadingBit(vec4<u32>(abs(u_input.b), _wgslsmith_clamp_u32(u_input.b, 71968u, 0u), ~0u, u_input.b)), _wgslsmith_add_vec4_u32(max(vec4<u32>(39037u, 130172u, u_input.b, u_input.b), vec4<u32>(41227u, 4294967295u, 4294967295u, u_input.b)), vec4<u32>(103922u, 38195u, 4294967295u, 4294967295u) & vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b)), !var_4.a), vec3<f32>(961f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-962f, 751f)))), _wgslsmith_f_op_f32(f32(-1f) * -1414f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_5.b.a.xy | var_5.b.a.yy)) >> (vec2<u32>(u_input.b, ~52302u) % vec2<u32>(32u)), _wgslsmith_add_u32(var_5.b.a.x, _wgslsmith_mod_u32(4294967295u, 3677u)), vec3<u32>(~select(4294967295u & u_input.b, firstTrailingBit(u_input.b), false), var_5.b.a.x, 7526u), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(var_5.a.yxw, _wgslsmith_div_vec3_i32(var_5.a.yxy, _wgslsmith_div_vec3_i32(var_5.a.yxy, var_5.a.www)), firstTrailingBit(-vec3<i32>(var_5.a.x, 13888i, 0i))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_5.a.x, 43088i), select(var_5.a.wzx, var_5.a.zxz, true)) & var_5.a.www, var_5.a.zxw), u_input.b);
}

