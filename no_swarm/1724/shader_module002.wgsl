struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(859f, 121f, -690f, -1143f) * vec4<f32>(346f, 1674f, -602f, 537f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-670f, -1030f, 243f, -1000f), vec4<f32>(442f, 2084f, 1000f, -772f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2131f, -2073f, 1369f, -1000f))))));
    return var_0.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_5) -> u32 {
    let var_0 = arg_3.b.a;
    var var_1 = ~select(u_input.c.x, _wgslsmith_add_u32(4294967295u, firstLeadingBit(4294967295u)), 55719i > arg_3.a.x);
    let var_2 = arg_3.b.b;
    var_1 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.b.a.x)) * _wgslsmith_f_op_f32(select(-1947f, arg_0.x, true))) - -643f), _wgslsmith_f_op_f32(max(arg_3.b.a, _wgslsmith_f_op_f32(ceil(arg_3.b.c))))));
    return _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(arg_2, ~(~_wgslsmith_add_vec3_u32(u_input.d.www, vec3<u32>(arg_2.x, u_input.c.x, arg_2.x)))));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = firstLeadingBit(u_input.d.yz | ~vec2<u32>(4294967295u, u_input.d.x));
    let var_1 = ~vec2<u32>(var_0.x, 4294967295u);
    var var_2 = vec4<i32>(u_input.b.x, -57596i, 0i, 36605i);
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(373f, 610f, 488f, 854f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.a, -1000f, arg_0.b.a.x) + arg_0.b.a), _wgslsmith_f_op_vec4_f32(func_3(u_input.b)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true))))), Struct_5(vec3<i32>(~_wgslsmith_mod_i32(-49746i, var_2.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_2.x, var_2.x, u_input.a.x), vec4<i32>(-13472i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(var_2.x, var_2.x, -14090i, u_input.a.x) | vec4<i32>(var_2.x, -2147483647i, 1i, u_input.b.x)), -2147483647i), Struct_3(arg_0.a, Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_0.b.a, arg_0.b.a))), -1103f)), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(1u), 4294967295u), _wgslsmith_div_u32(u_input.d.x, ~_wgslsmith_div_u32(9471u, var_0.x)), var_0.x), Struct_5(var_2.xyx, Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-488f - -340f))), arg_0.b, _wgslsmith_f_op_f32(arg_0.b.a.x + -351f))));
    var var_4 = -_wgslsmith_sub_vec4_i32(min(~firstTrailingBit(vec4<i32>(-25677i, var_2.x, u_input.b.x, 1751i)), -vec4<i32>(u_input.a.x, 52718i, -1i, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-7549i, _wgslsmith_add_i32(u_input.a.x, var_2.x), select(u_input.a.x, 0i, false), u_input.a.x), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.b.x, 24531i), vec4<i32>(var_2.x, var_2.x, u_input.b.x, var_2.x)), vec4<i32>(u_input.a.x, var_2.x, u_input.a.x, var_2.x) ^ vec4<i32>(u_input.a.x, var_2.x, -2147483647i, -22178i))));
    return Struct_3(-119f, arg_0.b, arg_0.a);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 521f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(843f, 775f, -1256f, 728f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1464f))))));
    let var_1 = arg_0;
    var var_2 = abs(vec3<i32>(0i, 0i, max(-19531i >> (u_input.c.x % 32u), u_input.b.x | -25063i)) >> (u_input.d.yyx % vec3<u32>(32u)));
    var_0 = func_2(func_2(Struct_3(-587f, var_0.b, func_2(func_2(Struct_3(-172f, Struct_2(var_0.b.a), 921f))).c)));
    let var_3 = ~_wgslsmith_clamp_vec3_i32(~(-(vec3<i32>(1i, u_input.a.x, 1i) ^ vec3<i32>(13268i, u_input.a.x, var_2.x))), vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.xx, ~var_2.zy), 1i, (2147483647i & var_2.x) & -2147483647i), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_2.x, u_input.a.x, -4103i)), firstTrailingBit(min(vec3<i32>(var_2.x, var_2.x, 15835i), vec3<i32>(-26468i, u_input.b.x, 2147483647i)))));
    return Struct_1(_wgslsmith_mod_i32(-(~u_input.b.x), _wgslsmith_add_i32(34221i, -max(var_2.x, 2147483647i))), -6511i);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = Struct_1(u_input.b.x, u_input.a.x);
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), !(~u_input.d.x == ~13488u), true);
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -102f)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, -186f, -812f, 959f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-874f, -996f, -684f, -258f)))) + vec4<f32>(_wgslsmith_f_op_f32(-475f + -1070f), _wgslsmith_f_op_f32(829f - 308f), -992f, 768f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1560f, 142f, 857f, 440f))))));
    return arg_0.b;
}

fn func_6(arg_0: i32, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-32035i, select(38713i, -2147483647i, false))) | u_input.b, vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -33021i, ~(-42403i), ~u_input.a.x), _wgslsmith_div_i32(-arg_0, -arg_0)) >> (vec2<u32>(u_input.d.x, ~_wgslsmith_mod_u32(u_input.c.x, 25440u)) % vec2<u32>(32u)));
    let var_1 = Struct_5(_wgslsmith_mod_vec3_i32(vec3<i32>(~0i, func_5(func_1(vec2<bool>(true, false)), any(vec2<bool>(true, false))), _wgslsmith_sub_i32(1i, -1i)), _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, arg_0) & -vec3<i32>(var_0.x, 0i, -50002i), vec3<i32>(-6873i & u_input.b.x, i32(-1i) * -4934i, -var_0.x))), Struct_3(_wgslsmith_f_op_f32(arg_1.x * 1992f), Struct_2(_wgslsmith_f_op_vec4_f32(max(arg_1, vec4<f32>(-697f, -236f, 553f, arg_1.x)))), arg_1.x));
    let var_2 = !(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    var var_3 = var_1.b;
    let var_4 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, u_input.a), ((var_1.a.yz << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))) | (u_input.b >> (u_input.c % vec2<u32>(32u)))) << (firstLeadingBit(u_input.d.wy) % vec2<u32>(32u))) & vec2<i32>(-2147483647i, arg_0);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = func_6(func_5(func_1(vec2<bool>(28259i != u_input.b.x, false)), any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a * -194f)) * -940f) - 759f));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c + var_1.b.c));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.b.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_2.b.b.a)))))));
    var_3 = 1038f;
    let var_5 = Struct_1(_wgslsmith_mod_i32(-select(abs(0i), 0i, var_4.a.x != var_1.b.b.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.a.xx, vec2<i32>(2147483647i, var_1.a.x)), min(vec2<i32>(-5810i, -31110i), vec2<i32>(-2147483647i, var_2.a.x))), -11734i)), reverseBits(-reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2.a.x, u_input.a.x, 1i), vec4<i32>(var_2.a.x, var_2.a.x, var_1.a.x, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~var_0, 62559u, func_4(vec4<f32>(858f, var_1.b.b.a.x, -1701f, 1000f), Struct_5(var_2.a, var_1.b), vec3<u32>(var_0, var_0, 0u), var_2) | 52763u));
}

