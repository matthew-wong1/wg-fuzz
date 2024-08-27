struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = max(-1i, abs(firstLeadingBit(1i)));
    let var_1 = u_input.c;
    let var_2 = true;
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f - -355f)), 587f, -292f)));
    return var_2;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = vec3<bool>(true, func_3(), arg_0.x);
    var_0 = select(select(!vec3<bool>(true, false, var_0.x | arg_0.x), vec3<bool>(arg_0.x & !var_0.x, true, !var_0.x), all(vec4<bool>(true, any(vec4<bool>(false, var_0.x, false, arg_0.x)), true, !var_0.x))), vec3<bool>(!(true & !arg_0.x), ((u_input.b >> (u_input.a.x % 32u)) == u_input.b) & false, ~(i32(-1i) * -42897i) >= _wgslsmith_div_i32(u_input.e, ~u_input.e)), !select(vec3<bool>(any(vec2<bool>(var_0.x, false)), all(vec4<bool>(var_0.x, arg_0.x, true, arg_0.x)), arg_0.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, arg_0.x))), !(!vec3<bool>(false, var_0.x, true))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(0u >> ((u_input.a.x | (0u | u_input.c)) % 32u), _wgslsmith_sub_u32(4294967295u, abs(~18051u))), select(~(i32(-1i) * -8324i), 56377i, var_0.x) & -14530i, reverseBits(u_input.a), ~countOneBits(vec4<u32>(min(u_input.c, 17929u), ~u_input.a.x, 0u, 56240u)), 6017i);
    let var_2 = 16782u;
    var_0 = vec3<bool>(!(!var_0.x) & any(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, arg_0.x))), !((~var_2 != _wgslsmith_dot_vec4_u32(var_1.d, u_input.a)) == false), var_1.e >= _wgslsmith_mult_i32(var_1.b, ~(var_1.b ^ -1i)));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-28934i, u_input.d, var_1.b, 1i), vec4<i32>(u_input.b, 15965i, -31333i, var_1.e) << (var_1.d % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(var_1.e, var_1.b, var_1.b, u_input.d)) | abs(vec4<i32>(var_1.e, 1i, var_1.e, u_input.b))), vec4<i32>(-u_input.b, ~var_1.e | (-1i & u_input.e), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 0i, 0i), vec3<i32>(-1i, 16116i, u_input.b)), u_input.b), -30533i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-9630i, 11746i), ~u_input.b, -(u_input.e << (1260u % 32u)), var_1.e), vec4<i32>(-8430i, ~(~u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -2147483647i, -27776i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(31526i, var_1.e, 7594i, -69870i), vec4<i32>(23628i, u_input.d, var_1.e, 56175i), vec4<i32>(-5993i, var_1.b, u_input.b, var_1.b))), ~u_input.e));
}

fn func_1() -> Struct_2 {
    let var_0 = max(0u, ~select(min(u_input.c, u_input.a.x) ^ _wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u), _wgslsmith_div_u32(countOneBits(u_input.c), u_input.a.x), any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_sub_i32(-50534i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, -22741i, -22794i, 19835i), ~vec4<i32>(2147483647i, u_input.b, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(u_input.e, 2147483647i), u_input.d, -16074i, _wgslsmith_mult_i32(30634i, u_input.d))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.b) | vec4<i32>(u_input.b, u_input.e, u_input.e, 1i), vec4<i32>(-1i, -54157i, 0i, 2147483647i)), func_2(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, -2134f, 249f))))));
    var var_2 = u_input.e;
    var_2 = max(var_1, firstLeadingBit(_wgslsmith_mult_i32(~(~(-6866i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, u_input.e), vec4<i32>(48216i, u_input.b, u_input.b, -1i)))));
    var var_3 = select(vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 2251u), vec2<u32>(1u, var_0))), ~(~u_input.a.zx)), _wgslsmith_sub_u32(u_input.a.x, var_0), ~2897u << (~var_0 % 32u)), u_input.a, !((func_3() != true) & all(vec2<bool>(false, true))));
    return Struct_2(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, var_1, 12032i), vec3<i32>(u_input.e, 18874i, u_input.e), vec3<i32>(-33111i, 0i, -50377i))), firstTrailingBit(vec3<i32>(var_1, u_input.e, -7684i) << (vec3<u32>(var_3.x, 21053u, var_0) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_mult_u32(~4294967295u, var_3.x << (var_0 % 32u)), var_0, ~_wgslsmith_dot_vec3_u32(u_input.a.wxz, u_input.a.xzz)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(-802f * -1159f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1786f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(876f + -1606f), 898f))));
    var var_2 = arg_0;
    let var_3 = ~abs(firstTrailingBit(u_input.a.zww));
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = 1u;
    var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_1.d.x)), 1u);
    let var_1 = vec4<bool>(arg_0, any(select(!select(vec4<bool>(arg_0, false, false, true), vec4<bool>(true, arg_0, false, false), true), vec4<bool>(arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, true), vec4<bool>(!arg_0, !arg_0, false, true))), arg_0, func_3());
    var_0 = arg_1.d.x >> (firstLeadingBit(~69240u) % 32u);
    var var_2 = vec4<i32>(-18093i, i32(-1i) * -_wgslsmith_div_i32(-1i, -54202i), countOneBits(arg_1.e), arg_3);
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-772f, -1618f)), -201f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-771f)), 608f, true)), 303f, -1473f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(255f)), _wgslsmith_f_op_f32(round(-1562f)))), _wgslsmith_f_op_f32(f32(-1f) * -1246f))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_5(true, Struct_1(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, 6426u)), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -5296i), _wgslsmith_div_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), vec4<u32>(1u, 1u, u_input.c, u_input.a.x) ^ vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 98552u)), (u_input.a & vec4<u32>(1680u, u_input.a.x, 23015u, 24087u)) | vec4<u32>(31899u, 42181u, 0u, u_input.c), 1i), func_4(func_1(), Struct_1(max(u_input.a.x, 4294967295u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.e, 20717i)), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 73448u)), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.e), vec2<i32>(u_input.b, 1i))), _wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 24730i, -17587i, 2147483647i), vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.b)))), -25570i)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - _wgslsmith_f_op_f32(func_5(true, Struct_1(u_input.c, 2147483647i, vec4<u32>(50938u, 28041u, u_input.c, 1u), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x), -1i), func_4(Struct_2(vec3<i32>(-2147483647i, u_input.b, 1i)), Struct_1(0u, -38946i, u_input.a, u_input.a, u_input.d), 1283i), -u_input.d))))));
    let var_3 = func_1();
    var var_4 = Struct_2(var_3.a);
    var var_5 = _wgslsmith_dot_vec3_i32(max(abs(abs(vec3<i32>(-2147483647i, u_input.d, 0i) ^ vec3<i32>(-28775i, -1i, -1i))), func_4(func_1(), Struct_1(56234u, countOneBits(var_3.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 4945u), u_input.a), -var_3.a.x), _wgslsmith_mod_i32(-2147483647i, var_4.a.x)).a), -(~vec3<i32>(~var_3.a.x, abs(0i), _wgslsmith_div_i32(-72077i, -22206i))));
    var var_6 = Struct_2(var_4.a);
    let var_7 = func_3();
    var var_8 = func_4(Struct_2(vec3<i32>(-reverseBits(-14240i), u_input.d, var_4.a.x)), Struct_1(u_input.a.x, _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(var_4.a, var_3.a), _wgslsmith_dot_vec2_i32(var_6.a.yz, var_4.a.xx), all(vec3<bool>(false, false, false))), u_input.d), max(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(62982u, u_input.c, 0u, 0u), u_input.a), ~vec4<u32>(0u, u_input.c, 60376u, 21988u), ~u_input.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 68601u, 0u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 23382u))), ~vec4<u32>(u_input.c & 70701u, u_input.c, 49133u, ~4294967295u), reverseBits(var_4.a.x)), -35122i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_0.x)), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(step(var_2, 241f))))) - var_2), -var_3.a.x);
}

