struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(u_input.a, false, !select(select(vec2<bool>(true, arg_2.b), vec2<bool>(arg_2.b, arg_2.c.x), arg_0.c), vec2<bool>(arg_2.c.x, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_0.b)), arg_0.d, arg_2.e), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(arg_2.a, u_input.a, u_input.a), ~vec3<u32>(4294967295u, 105233u, 1u)), vec3<u32>(u_input.a, arg_0.a, 15908u ^ arg_2.a), max(vec3<u32>(111260u, arg_2.a, 39860u), ~vec3<u32>(arg_2.a, 1u, u_input.a))), 185f, Struct_1(abs(~u_input.a), all(!vec3<bool>(arg_0.b, arg_2.c.x, true)), select(select(arg_2.c, !vec2<bool>(arg_2.b, false), !vec2<bool>(arg_2.b, true)), vec2<bool>(true && arg_2.b, false), false), 14523i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.e.x - 1000f), -973f, -582f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.x - -1439f) + _wgslsmith_f_op_f32(step(arg_0.e.x, arg_0.e.x)))))));
    var var_1 = arg_2.e.x;
    var_1 = var_0.a.e.x;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_vec2_i32(u_input.b, arg_1.yx, var_2.yx);
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(func_3(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 44478u, 4294967295u, 2018u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(u_input.a, 89463u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 64175u, u_input.a, u_input.a), vec4<bool>(false, true, true, false))), false, vec2<bool>(true, true), max(0i, select(u_input.b.x, -2147483647i, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1202f, 745f, 402f))))), -countOneBits(~vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(38000u, -70827i <= u_input.b.x, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, -551f, 337f)))), u_input.a, u_input.a ^ u_input.a);
    var var_1 = 30537u;
    var var_2 = Struct_2(Struct_1(var_0.x << (_wgslsmith_sub_u32(~u_input.a, u_input.a) % 32u), false, select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true)), _wgslsmith_mult_i32(-14021i, _wgslsmith_mod_i32(-1i, abs(u_input.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1240f, 212f, -2417f))))), select(max(~var_0 << (~var_0 % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1884u, u_input.a), var_0), max(u_input.a, 1u), u_input.a)), vec3<u32>(_wgslsmith_sub_u32(51346u, u_input.a), u_input.a >> (var_0.x % 32u), _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(u_input.a, u_input.a))) << (_wgslsmith_clamp_vec3_u32(countOneBits(var_0), vec3<u32>(4294967295u, var_0.x, 1u), select(var_0, var_0, vec3<bool>(true, false, false))) % vec3<u32>(32u)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f), 1f)))), Struct_1(func_3(Struct_1(select(0u, 4294967295u, false), true, vec2<bool>(true, true), -11689i, vec3<f32>(1000f, 305f, 363f)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, u_input.b.x, 9536i, -29550i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(firstLeadingBit(var_0.x), false, vec2<bool>(true, true), u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, -1138f, -936f) + vec3<f32>(-543f, 2342f, -1453f)))), true, select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, false, true)), true)), u_input.b.x ^ _wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, -1i, u_input.b.x), vec3<i32>(-1i, u_input.b.x, u_input.b.x)), vec3<i32>(-35136i, u_input.b.x, -44821i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f - 1000f)), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1394f - 1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))), _wgslsmith_f_op_f32(-821f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f + -317f))), all(vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.d.e.x);
    var var_4 = Struct_2(var_2.d, var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1296f))))))), Struct_1(_wgslsmith_add_u32(abs(1u), 1u), var_2.a.b, vec2<bool>(all(vec3<bool>(false, false, var_2.d.c.x)), true), ~0i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 1000f, var_2.a.e.x), var_2.a.e)) * _wgslsmith_f_op_vec3_f32(var_2.d.e - vec3<f32>(-164f, 1161f, 1668f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.d.e.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_2.a.e.x))))))));
    return var_4.a;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var var_1 = var_0.e.zy;
    let var_2 = Struct_1(~(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 29977u, 12216u), firstLeadingBit(4376u))), true, vec2<bool>(func_2().b, var_0.c.x), -25734i, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -346f)), var_0.e.x))));
    let var_3 = abs(_wgslsmith_sub_i32(1i, firstLeadingBit(-abs(-1i))));
    let var_4 = Struct_3(Struct_2(func_2(), select(vec3<u32>(~u_input.a, var_0.a, abs(var_2.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_2.a, 1u), vec3<u32>(4294967295u, var_2.a, 8413u)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.b, var_0.b, var_2.b), vec3<bool>(false, true, var_2.b), vec3<bool>(true, var_2.c.x, true)), select(vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(true, true, true), var_2.c.x))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1636f, 1257f))), Struct_1(1u, true, !select(var_0.c, vec2<bool>(var_0.b, var_2.c.x), false), ~_wgslsmith_sub_i32(var_3, 44095i), _wgslsmith_f_op_vec3_f32(select(var_0.e, _wgslsmith_f_op_vec3_f32(min(var_0.e, vec3<f32>(var_1.x, -836f, var_0.e.x))), select(var_0.b, var_2.b, false)))), _wgslsmith_f_op_f32(-345f + -680f)));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(16656i, u_input.b.x);
    let var_1 = func_1();
    let var_2 = 4740u;
    let var_3 = func_2().c;
    var var_4 = func_1();
    var var_5 = countOneBits(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(var_1.a.a.d, var_4.a.a.d, 15914i, -1i) | vec4<i32>(u_input.b.x, 1i, u_input.b.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-22566i), _wgslsmith_div_i32(11421i, u_input.b.x), abs(0i), _wgslsmith_mult_i32(0i, var_4.a.d.d)), ~(-vec4<i32>(var_4.a.d.d, -12220i, u_input.b.x, -42570i))), abs(reverseBits(vec4<i32>(-14456i, 1i, u_input.b.x, 49896i) & vec4<i32>(var_4.a.d.d, u_input.b.x, -2147483647i, var_1.a.a.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(select(vec4<u32>(u_input.a, var_2, u_input.a, 0u), vec4<u32>(u_input.a, 25172u, var_2, var_1.a.d.a), vec4<bool>(var_1.a.d.b, var_3.x, true, true))) & vec4<u32>(u_input.a, 25228u, ~4294967295u, _wgslsmith_mult_u32(var_1.a.b.x, var_4.a.d.a))), var_4.a.e, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.a.a, 1u, var_2, 45941u) << (~vec4<u32>(var_1.a.a.a, 1u, 0u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(20003u, 61980u, 1u, var_1.a.d.a))) ^ 0u, select(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(var_4.a.b.yy, var_4.a.b.yx), min(vec2<u32>(var_1.a.b.x, var_4.a.d.a), var_1.a.b.zy), _wgslsmith_sub_vec2_u32(vec2<u32>(11070u, 44192u), vec2<u32>(1u, var_2))), ~var_1.a.b.zy), var_2, select(false, true, var_4.a.a.c.x)));
}

