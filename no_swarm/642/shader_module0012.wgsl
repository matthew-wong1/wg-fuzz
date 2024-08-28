struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = 0u;
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_1)));
    let var_3 = Struct_1(arg_0.x, select(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.c.x), vec4<i32>(1i, u_input.c.x, 22525i, -287i), vec4<i32>(u_input.c.x, 0i, u_input.c.x, -1i)), vec4<i32>(u_input.c.x, u_input.c.x, -34725i, -23472i))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(-4918i, u_input.a, 9550i, u_input.a)), vec4<i32>(-61064i, -u_input.a, ~0i, ~2147483647i)), vec4<bool>(false, !(1u != u_input.b.x), false, true)), true && any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), abs(~vec4<u32>(u_input.b.x, 1u, 70407u, var_0)));
    var var_4 = ~_wgslsmith_dot_vec2_u32(var_3.d.wx, select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, var_0)), ~u_input.b.x), vec2<u32>(var_3.d.x, u_input.b.x) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(var_3.d.x, var_3.d.x), u_input.b.zz) % vec2<u32>(32u)), select(!vec2<bool>(true, var_3.c), vec2<bool>(true, var_3.c), vec2<bool>(var_3.c, true))));
    return var_3.d;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec4<i32> {
    return vec4<i32>(arg_0, arg_1.b.x, _wgslsmith_div_i32(-5432i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3, -2656i, arg_3), -vec4<i32>(arg_1.b.x, 32046i, 0i, 0i))), 23524i);
}

fn func_2() -> i32 {
    let var_0 = ~func_4(i32(-1i) * -_wgslsmith_mod_i32(u_input.a, -2147483647i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(285f))), ~(~vec4<i32>(-24545i, -2147483647i, 45452i, 0i)), !any(vec3<bool>(false, true, false)), ~vec4<u32>(4294967295u, 26878u, 4294967295u, u_input.b.x)), _wgslsmith_mult_vec4_u32(~func_3(vec4<f32>(1427f, -531f, -1140f, -219f)), select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(8871u, 36317u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true)), -41817i);
    var var_1 = var_0.wzx;
    var var_2 = vec4<i32>(13492i, _wgslsmith_mod_i32(select(_wgslsmith_mult_i32(~var_0.x, -6497i), _wgslsmith_div_i32(1i, 17443i), true), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-76313i, 38266i, 0i), var_0.zwx, vec3<bool>(true, true, false)), var_0.zxx)), _wgslsmith_div_i32(var_0.x & -2147483647i, var_0.x), reverseBits(var_1.x >> (max(u_input.b.x, abs(u_input.b.x)) % 32u)));
    return 2517i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~vec4<i32>(func_2(), -_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.x, -2562i), -21437i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(arg_2.b.x, 1i, 0i, arg_2.b.x)) >> (arg_2.d.x % 32u), abs(0i)), -reverseBits(abs(6599i)));
    var_0 = arg_2.b;
    var_0 = ~arg_2.b;
    var_0 = abs(_wgslsmith_div_vec4_i32(~arg_2.b, -arg_2.b));
    var_0 = vec4<i32>(func_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-arg_1.x, -2147483647i >> (arg_2.d.x % 32u)), -1i), arg_2, ~(~vec4<u32>(u_input.b.x, 0u, arg_2.d.x, 51397u)), _wgslsmith_clamp_i32(~var_0.x, max(-u_input.a, 10059i), u_input.a)).x, countOneBits(_wgslsmith_sub_i32(func_4(var_0.x, arg_2, arg_2.d, var_0.x).x, ~var_0.x)) & _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.b.ww, countOneBits(vec2<i32>(u_input.c.x, 18935i))), vec2<i32>(-arg_1.x, arg_1.x)), arg_1.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.b.x, 1i) | (vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i)), arg_1));
    return arg_2.a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, arg_0.b >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.d, arg_0.d), vec4<u32>(44635u, 89745u, u_input.b.x, arg_0.d.x)) % vec4<u32>(32u)), !all(vec2<bool>(true, true)), ~min(arg_0.d, min(vec4<u32>(arg_0.d.x, u_input.b.x, arg_0.d.x, arg_0.d.x), vec4<u32>(4294967295u, 30109u, u_input.b.x, u_input.b.x))) | (~firstLeadingBit(arg_0.d) | _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.d.x, 29042u, arg_0.d.x), vec4<u32>(arg_0.d.x, arg_0.d.x, 981u, 0u)), ~vec4<u32>(4294967295u, u_input.b.x, 103787u, 1u))));
    var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, -1404f), vec2<f32>(-1685f, arg_0.a), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, -1135f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 1899f))))));
    return Struct_1(-403f, vec4<i32>(abs(~abs(-1i)), 2147483647i, abs(u_input.c.x), ~(-19963i)), var_0.c, ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, u_input.b.x, var_1.d.x), vec4<u32>(4294967295u, var_0.d.x, u_input.b.x, 0u)), _wgslsmith_sub_vec4_u32(var_1.d, ~vec4<u32>(u_input.b.x, u_input.b.x, 40189u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-852f, 205f)), -169f)) + _wgslsmith_f_op_f32(func_1(~u_input.b, vec2<i32>(u_input.a, 1i), Struct_1(-2266f, vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x), true, vec4<u32>(10986u, u_input.b.x, u_input.b.x, 0u)), vec4<f32>(-170f, -929f, -136f, -803f)))), -vec4<i32>(select(-1i, -1754i, false), _wgslsmith_mult_i32(u_input.a, u_input.c.x), u_input.a & -60073i, -u_input.a), false, vec4<u32>(25830u, ~1u, ~u_input.b.x, countOneBits(u_input.b.x ^ 1u))));
    let var_1 = _wgslsmith_add_vec3_u32(min(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.zx, vec2<u32>(u_input.b.x, var_0.d.x)), u_input.b.x, _wgslsmith_mod_u32(1u, ~5561u)), reverseBits(vec3<u32>(~0u, var_0.d.x, ~u_input.b.x))), var_0.d.xxx);
    let var_2 = _wgslsmith_mult_i32(~u_input.a, -(abs(_wgslsmith_dot_vec3_i32(var_0.b.wyy, var_0.b.wzy)) ^ _wgslsmith_add_i32(firstTrailingBit(u_input.c.x), _wgslsmith_sub_i32(var_0.b.x, 32493i))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(804f - -350f) * 1205f))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -var_0.b, vec4<i32>(-5888i, func_5(Struct_1(1024f, var_0.b, var_0.c, vec4<u32>(32948u, var_1.x, var_0.d.x, 4294967295u))).b.x, func_4(-27163i, Struct_1(-1137f, var_0.b, var_0.c, var_0.d), func_5(Struct_1(-416f, vec4<i32>(var_2, 0i, u_input.a, u_input.c.x), false, vec4<u32>(33117u, var_0.d.x, var_1.x, 62228u))).d, var_0.b.x).x, select(-u_input.a, _wgslsmith_add_i32(var_0.b.x, var_2), all(vec4<bool>(false, var_0.c, var_0.c, false))))), !select(true, !func_5(Struct_1(1300f, vec4<i32>(1i, -2147483647i, var_0.b.x, 30825i), false, var_0.d)).c, true), var_0.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(655f)), select(var_0.b, firstLeadingBit(_wgslsmith_mod_vec4_i32(func_4(var_2, Struct_1(var_0.a, vec4<i32>(-6400i, 1583i, var_2, u_input.a), false, var_0.d), vec4<u32>(0u, 1u, 1105u, 1u), -1i), var_0.b)), var_0.c), (1272f >= _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(floor(var_0.a)))) || all(vec2<bool>(var_0.c, var_0.c)), var_0.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(step(var_0.a, var_0.a)), 1015f, _wgslsmith_f_op_f32(f32(-1f) * -690f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-299f, var_0.a)), _wgslsmith_f_op_f32(step(var_0.a, -472f)))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.a - var_0.a)), var_0.a, -283f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 736f, var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -315f, 770f, -377f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -881f, var_0.a, var_0.a)))))));
    var var_4 = vec2<bool>(select(abs(var_0.d.x << (var_0.d.x % 32u)), ~(var_1.x & 22677u), !(var_1.x > 0u)) <= 76738u, (~_wgslsmith_mult_u32(u_input.b.x, 1u) > (var_1.x & (var_0.d.x << (var_0.d.x % 32u)))) | !var_0.c);
    var_4 = vec2<bool>(!(!var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-133f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a))) == 145f);
    let var_5 = 19589i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xx >> (var_1.xy % vec2<u32>(32u)), ~var_0.d.zy, ~((var_1 >> (~u_input.b % vec3<u32>(32u))) | var_0.d.yyw));
}

