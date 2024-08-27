struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = Struct_1(-23366i);
    let var_1 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2430f, -2186f)) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-634f)), 477f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(879f, 549f), vec2<f32>(921f, -663f))) - vec2<f32>(826f, 1503f)))));
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 76658u, u_input.a, 61649u), vec4<u32>(0u, 78173u, 10885u, 0u) & _wgslsmith_mult_vec4_u32(vec4<u32>(48369u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 60781u, u_input.a))));
    var var_3 = -_wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_div_i32(1302i, -39869i), _wgslsmith_mod_i32(var_0.a, -var_0.a)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-16677i, var_0.a) ^ vec2<i32>(var_1.a, 2147483647i), vec2<i32>(var_0.a, var_0.a) >> (var_2.xy % vec2<u32>(32u)))));
    var_3 = vec2<i32>(~u_input.b | -1i, var_1.a);
    return var_1.b;
}

fn func_2() -> Struct_2 {
    var var_0 = -3391i ^ _wgslsmith_mod_i32(u_input.b >> (u_input.a % 32u), -u_input.b);
    let var_1 = !vec4<bool>(false, true, any(vec2<bool>(true, false)), false);
    var_0 = firstTrailingBit(max(~u_input.b, -25294i));
    var var_2 = u_input.a;
    let var_3 = Struct_3(reverseBits(~(-2147483647i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(!var_1.x)))));
    return Struct_2(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, var_3.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, -25187i), vec2<i32>(-26085i, 2147483647i)), -vec2<i32>(var_3.a, var_3.a)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = func_2();
    var var_1 = max(select(1u, u_input.a, arg_0), 1u);
    var var_2 = Struct_1(min(select(u_input.b, 0i, false) << (~u_input.a % 32u), -11308i));
    var var_3 = Struct_1(_wgslsmith_mult_i32(var_2.a, select(_wgslsmith_mod_i32(select(-22169i, arg_1.a.x, true), func_2().a.x), arg_2.a.x, true)));
    let var_4 = 166f;
    return firstTrailingBit(max((var_0.a << (abs(vec2<u32>(1u, 26361u)) % vec2<u32>(32u))) ^ arg_1.a, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.a.x, ~var_3.a), max(arg_1.a, firstLeadingBit(vec2<i32>(var_0.a.x, arg_1.a.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<i32>(abs(~(-38451i)), ~abs(arg_0.a.x)) >> (vec2<u32>(7848u, _wgslsmith_add_u32(0u, ~u_input.a)) % vec2<u32>(32u)));
    let var_1 = -_wgslsmith_mod_vec3_i32(firstLeadingBit(min(vec3<i32>(25000i, -2147483647i, arg_1), vec3<i32>(var_0.a.x, 2147483647i, -4331i))) >> (arg_2.xzw % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, arg_0.a.x), vec3<i32>(u_input.b, var_0.a.x, -18999i)), -vec3<i32>(2196i, 17701i, -2147483647i)));
    var var_2 = vec4<i32>(arg_0.a.x, arg_1, ~var_1.x, ~_wgslsmith_dot_vec4_i32(min(-vec4<i32>(36776i, 35687i, u_input.b, 7033i), firstTrailingBit(vec4<i32>(var_1.x, var_0.a.x, 0i, arg_0.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(5009i, u_input.b, var_1.x, u_input.b), vec4<i32>(22385i, 2147483647i, var_0.a.x, -1i)) | vec4<i32>(u_input.b, 0i, 21452i, 0i)));
    let var_3 = u_input.b ^ -(~firstLeadingBit(min(2147483647i, -16536i)));
    var_2 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.b, 8676i, _wgslsmith_div_i32(~21546i, 1i), arg_1)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, var_1.x, -min(arg_0.a.x, 0i), reverseBits(~(-2147483647i))), vec4<i32>(7620i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -6356i), var_1.yz), 2147483647i), countOneBits(1i), _wgslsmith_sub_i32(u_input.b ^ var_0.a.x, -2147483647i))));
    return Struct_1(firstLeadingBit(~(countOneBits(-33689i) | (var_3 >> (1401u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = func_4(Struct_2(-(~func_1(true, Struct_2(vec2<i32>(0i, -33358i)), Struct_2(vec2<i32>(1i, 12971i))))), countOneBits(var_0), vec4<u32>(1u, 46397u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(6429u, u_input.a)), select(1u, u_input.a, 0i > (var_0 << (u_input.a % 32u)))));
    var_1 = func_4(func_2(), var_0, select(countOneBits(vec4<u32>(0u, u_input.a, 35649u, u_input.a) << (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.a, u_input.a, 30729u, 28259u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(u_input.a, u_input.a, 29815u, u_input.a), vec4<u32>(0u, u_input.a, 16076u, 25761u), true), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<bool>(true, true, true, true)), vec4<u32>(0u, 9414u, firstTrailingBit(1u), _wgslsmith_div_u32(u_input.a, 1u))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(false, false)), true), vec4<bool>(u_input.b <= -17474i, false, select(false, true, true), true))));
    let var_2 = Struct_3(~_wgslsmith_add_i32(i32(-1i) * -1i, var_0), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-439f * -577f), 1f, false)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(255f - 1321f) + -977f))));
    let var_3 = func_4(func_2(), 1i, abs(vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, u_input.a), u_input.a, u_input.a, 43543u)));
    var var_4 = var_2;
    var var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b.x)))))));
    var_4 = Struct_3(0i << (~abs(4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.b.x, var_2.b.x), vec2<f32>(555f, 536f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.b.x))), _wgslsmith_div_vec2_f32(var_4.b, _wgslsmith_f_op_vec2_f32(var_4.b - var_2.b)))));
    let var_6 = Struct_1(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), ~(vec2<u32>(75719u, 22296u) ^ (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4915u) % vec2<u32>(32u))))), (vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_6.a, -1i), vec4<i32>(var_3.a, 2147483647i, 80598i, var_2.a)), 9851i, -1i | u_input.b, _wgslsmith_add_i32(var_0, -2147483647i)) << (~(vec4<u32>(0u, u_input.a, u_input.a, 29271u) ^ vec4<u32>(32845u, 25573u, 4294967295u, 0u)) % vec4<u32>(32u))) >> ((select(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 60860u, 43215u), vec4<u32>(u_input.a, u_input.a, 20127u, 1u)), 8351i < var_1.a) >> (~(vec4<u32>(0u, u_input.a, 57301u, 57452u) & vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-371f - 653f), var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -623f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(false)).x)), _wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(735f - 718f))));
}

