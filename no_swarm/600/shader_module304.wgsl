struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = select(firstLeadingBit(~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(9663i, 2147483647i, 25470i)))), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(1i, 2147483647i, u_input.a), ~u_input.a), vec3<bool>(!any(vec3<bool>(true, false, false)), true, false));
    var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, firstTrailingBit(_wgslsmith_mult_i32(48125i, -1i)), _wgslsmith_add_i32(u_input.a, var_0.x)), min(countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_0.x, var_0.x), ~vec3<i32>(var_0.x, var_0.x, -50666i))), vec3<i32>(~u_input.a, countOneBits(~(-2147483647i)), abs(reverseBits(var_0.x)))));
    var_0 = -(~(-_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, -2147483647i), -vec3<i32>(546i, u_input.a, u_input.a))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1279f + _wgslsmith_f_op_f32(202f + 570f)), _wgslsmith_f_op_f32(f32(-1f) * -236f)))), 1291f);
    let var_2 = _wgslsmith_f_op_f32(-390f + -367f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_5(Struct_3(Struct_1(~vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-1163f - _wgslsmith_f_op_f32(func_3())), vec2<bool>(true, true)), Struct_1(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(880f)))), vec2<bool>(true, true)), Struct_1(-firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, -40027i)), vec3<bool>(true, true, all(vec2<bool>(true, true))), 1000f, select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(302f)) - _wgslsmith_div_f32(626f, -2009f)), _wgslsmith_div_f32(-333f, _wgslsmith_div_f32(1004f, -874f))))), 50403u | _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.b.x, 1u, u_input.c, arg_0), vec4<u32>(arg_0, u_input.c, 21713u, arg_0), vec4<bool>(true, true, true, true)), select(vec4<u32>(u_input.c, u_input.c, 39448u, arg_0), vec4<u32>(0u, arg_0, u_input.c, 1u), false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), Struct_2(true));
    var_0 = Struct_5(Struct_3(Struct_1(-(~vec3<i32>(-5676i, u_input.a, u_input.a)), var_0.c, _wgslsmith_div_f32(var_0.a.b.c, 364f), vec2<bool>(true, true)), Struct_1(var_0.a.c.a, !(!var_0.a.c.b), var_0.a.c.c, vec2<bool>(any(var_0.c.zy), -1000f != var_0.a.d)), var_0.a.c, -1281f), 1u, !var_0.c, var_0.d);
    var var_1 = firstTrailingBit(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.b.a.x, 41236i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 26117i)))));
    var var_2 = var_0.a.b.c;
    var var_3 = var_0.d;
    return var_0.a.c;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, 355i, u_input.a)), vec3<i32>(u_input.a, -1i, 0i)), vec3<bool>(all(vec2<bool>(arg_2, arg_2)), false, true), -797f, !select(vec2<bool>(false, true), vec2<bool>(false, arg_2), true)), Struct_1(vec3<i32>(u_input.a, u_input.a, countOneBits(u_input.a)), !(!vec3<bool>(arg_1.a, arg_2, arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_div_f32(649f, arg_0)), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, arg_1.a), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_1.a)), u_input.a == 54424i)), func_2(max(12738u, u_input.c) | ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(select(319f, 1512f, true))))), _wgslsmith_add_u32(~(1u >> (u_input.c % 32u)), u_input.c) >> (~(~_wgslsmith_mult_u32(u_input.c, 4294967295u)) % 32u), !(!(!vec3<bool>(true, true, arg_2))), Struct_2(true));
    let var_1 = any(vec3<bool>(arg_1.a, any(vec2<bool>(true, true)), all(!vec2<bool>(false, arg_2))));
    let var_2 = var_0;
    return var_2.c.zx;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_sub_i32(arg_1.d.a.x ^ abs(_wgslsmith_mod_i32(-arg_1.d.a.x, firstTrailingBit(arg_0))), arg_0);
    var var_1 = Struct_5(Struct_3(func_2(42163u), func_2(71463u), func_2(~_wgslsmith_add_u32(arg_2, arg_2)), _wgslsmith_f_op_f32(trunc(-1546f))), u_input.b.x, vec3<bool>(any(vec3<bool>(arg_0 >= 2147483647i, !arg_1.d.b.x, true)), all(vec4<bool>(true, select(false, arg_1.c.a, false), true, true)), !(!(arg_0 > 1i))), Struct_2(select(select(arg_1.c.a, any(vec4<bool>(arg_1.d.d.x, arg_1.a.x, true, true)), true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 36655u)) >= min(arg_2, 0u), false)));
    var var_2 = Struct_4(!vec2<bool>(false, var_1.a.a.d.x), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.d.c)), _wgslsmith_f_op_f32(-var_1.a.b.c), 1f, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.c) * _wgslsmith_f_op_f32(select(arg_1.d.c, -724f, var_1.a.c.b.x))))), arg_1.c, Struct_1(vec3<i32>(func_2(4294967295u).a.x, arg_1.d.a.x << ((38446u >> (u_input.c % 32u)) % 32u), arg_1.d.a.x), select(select(select(arg_1.d.b, vec3<bool>(true, true, false), vec3<bool>(arg_1.d.b.x, true, arg_1.d.d.x)), select(arg_1.d.b, vec3<bool>(false, var_1.c.x, true), vec3<bool>(var_1.d.a, true, var_1.a.b.b.x)), func_2(19331u).b), arg_1.d.b, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.d + 636f), -448f)), select(!func_1(var_1.a.a.c, arg_1.c, arg_1.a.x), vec2<bool>(select(var_1.d.a, var_1.c.x, var_1.d.a), true), true)));
    let var_3 = u_input.b.zz;
    var_1 = Struct_5(Struct_3(Struct_1(abs(-var_1.a.b.a), arg_1.d.b, arg_1.d.c, !var_2.a), arg_1.d, var_1.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2046f), _wgslsmith_f_op_f32(582f * -426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.c) * var_2.d.c)))), _wgslsmith_dot_vec3_u32(vec3<u32>(min(24002u, 4294967295u), var_3.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_2, 0u), arg_2)), ~vec3<u32>(max(4294967295u, arg_2), abs(arg_2), abs(4294967295u))), vec3<bool>(true, any(var_2.a), !any(!vec4<bool>(false, arg_1.a.x, true, false))), Struct_2(!(_wgslsmith_sub_i32(1i, -7814i) != arg_0)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.d.c), var_1.a.c.c, -524f, _wgslsmith_f_op_f32(step(var_1.a.c.c, _wgslsmith_f_op_f32(-arg_1.b.x)))) - _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - var_2.b)))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.a.a.xy | arg_1.d.a.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.b.a.x, var_0), var_1.a.c.a.zx)), -1i ^ firstLeadingBit(_wgslsmith_mod_i32(-30454i, var_0)), -1i, _wgslsmith_dot_vec2_i32(var_2.d.a.yz, vec2<i32>(_wgslsmith_mod_i32(arg_0, arg_1.d.a.x), var_0 << (4294967295u % 32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1670f + 765f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c * var_1.a.b.c) + _wgslsmith_f_op_f32(select(-716f, var_2.d.c, arg_1.c.a))))), abs(1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(278f - var_1.a.d))), _wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, -302f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(270f * arg_1.d.c), -365f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(2147483647i, Struct_4(vec2<bool>(true, 48763u != u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1256f, 342f, -980f, 129f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 133f, -643f, -1000f)))), Struct_2(true), Struct_1(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ -vec3<i32>(0i, 1i, u_input.a), vec3<bool>(true, true, true), 959f, func_1(_wgslsmith_f_op_f32(308f - 1136f), Struct_2(true), true))), 1u);
}

