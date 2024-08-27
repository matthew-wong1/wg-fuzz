struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(any(vec3<bool>(true, false, false)), !select(true, true, true), true));
    var_0 = vec3<bool>(var_0.x, false, var_0.x);
    var var_1 = true;
    var_0 = vec3<bool>(!var_0.x, var_0.x, false);
    var_0 = vec3<bool>(var_0.x, _wgslsmith_mult_u32(57312u, u_input.a.x) >= select(_wgslsmith_dot_vec4_u32(u_input.c, firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 2155u))), 27695u, var_0.x), false);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-945f, -1233f, -1495f, 1271f), vec4<f32>(-245f, -247f, -106f, 969f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -392f, 698f, -921f))))), vec4<f32>(-645f, _wgslsmith_f_op_f32(step(751f, _wgslsmith_f_op_f32(-248f * 1979f))), -689f, -756f)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = arg_0;
    let var_3 = Struct_1(select(!vec4<bool>(var_1.c.x, !var_2.c.x, true, false), select(var_1.a, vec4<bool>(var_0.c.x, !arg_0.b.x, true, var_2.b.x), vec4<bool>(var_0.e != true, all(vec2<bool>(true, var_1.a.x)), arg_1 != arg_1, true)), true), !(!select(!vec3<bool>(var_2.b.x, false, var_0.e), !var_1.b, all(vec3<bool>(var_1.c.x, var_2.e, var_0.b.x)))), vec4<bool>(all(arg_0.a), true, true, any(select(var_1.b, !var_2.b, false))), var_2.d, true | (min(~arg_1, _wgslsmith_mult_u32(arg_1, u_input.c.x)) >= u_input.c.x));
    var var_4 = var_0.b.x;
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1079f)) * _wgslsmith_div_f32(arg_2.x, 1304f)))) < arg_2.x, var_3.b.x, 941f > _wgslsmith_f_op_f32(sign(arg_2.x)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = 2608f;
    var var_1 = Struct_1(!vec4<bool>(arg_0, arg_2, arg_0, !(false & arg_2)), select(func_4(Struct_1(!vec4<bool>(false, arg_2, arg_0, arg_2), vec3<bool>(arg_2, true, true), select(vec4<bool>(arg_2, arg_0, arg_2, arg_2), vec4<bool>(arg_0, arg_2, true, false), arg_2), -2147483647i, arg_2), ~u_input.c.x ^ _wgslsmith_div_u32(0u, u_input.c.x), _wgslsmith_f_op_vec4_f32(func_3())), vec3<bool>(true, true, true), select(select(func_4(Struct_1(vec4<bool>(arg_2, true, arg_0, true), vec3<bool>(arg_2, arg_2, arg_0), vec4<bool>(arg_0, false, true, arg_2), -1i, false), 1u, vec4<f32>(var_0, var_0, var_0, var_0)), func_4(Struct_1(vec4<bool>(arg_2, false, arg_0, arg_2), vec3<bool>(arg_0, true, arg_2), vec4<bool>(true, arg_2, true, arg_0), u_input.e, arg_0), u_input.a.x, vec4<f32>(var_0, 1000f, var_0, var_0)), true), vec3<bool>(false, true, true), vec3<bool>(false, false, any(vec3<bool>(true, false, false))))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(u_input.b != 22002i, true, all(vec2<bool>(false, false)), arg_2), !(!vec4<bool>(arg_0, arg_0, arg_2, arg_0)), all(!vec4<bool>(arg_2, false, false, arg_2))), select(select(vec4<bool>(arg_2, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, arg_2), all(vec3<bool>(false, false, arg_0))), vec4<bool>(func_4(Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(arg_0, true, arg_2), vec4<bool>(false, true, true, arg_2), arg_1, false), 1u, vec4<f32>(-837f, -798f, var_0, var_0)).x, all(vec4<bool>(arg_0, arg_2, false, true)), any(vec3<bool>(false, arg_2, true)), func_4(Struct_1(vec4<bool>(arg_2, arg_2, false, true), vec3<bool>(arg_2, arg_2, true), vec4<bool>(arg_2, false, arg_2, true), -10716i, true), 67696u, vec4<f32>(var_0, var_0, 1664f, var_0)).x), all(!vec4<bool>(false, false, arg_2, arg_2)))), 69900i, !(!any(vec3<bool>(false, arg_2, false))));
    let var_2 = -60136i;
    let var_3 = Struct_1(var_1.c, var_1.c.wyz, !vec4<bool>(false, true, var_1.a.x, var_2 >= _wgslsmith_mod_i32(-3672i, -1i)), -41288i, any(select(!var_1.c, var_1.c, true)));
    let var_4 = _wgslsmith_f_op_f32(abs(2276f));
    return Struct_1(!select(var_1.c, select(vec4<bool>(true, var_1.b.x, var_3.a.x, arg_0), vec4<bool>(true, true, arg_2, true), !vec4<bool>(arg_0, false, true, true)), all(var_3.a)), !select(!(!var_3.c.zxz), !var_3.a.yzy, all(func_4(var_3, 4294967295u, vec4<f32>(var_4, 349f, var_0, 111f)))), select(!vec4<bool>(arg_2, var_1.b.x, !arg_0, var_1.b.x), select(var_1.c, select(var_1.c, var_1.a, any(vec4<bool>(true, arg_2, arg_0, true))), any(vec2<bool>(false, false))), select(select(var_1.a, !vec4<bool>(true, arg_0, false, false), var_3.a.x & var_1.c.x), var_3.c, select(vec4<bool>(var_3.e, var_1.e, var_3.b.x, false), vec4<bool>(var_1.c.x, false, arg_2, true), arg_0 & false))), ~arg_1, !all(!(!vec2<bool>(arg_2, arg_0))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 120f, 1000f, -714f), vec4<f32>(-1000f, -2426f, 573f, 1374f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1014f, -2312f, 1267f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, -224f, -330f, 650f) + vec4<f32>(1224f, 709f, -2346f, -809f))), vec4<bool>(true, true, select(true, arg_0.b.x, arg_0.e), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(767f + 181f), _wgslsmith_f_op_f32(-426f + 718f), -398f, _wgslsmith_f_op_f32(floor(-722f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-156f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-736f * -482f), _wgslsmith_f_op_f32(floor(-156f))))), select(vec4<bool>(arg_0.b.x, 1i <= _wgslsmith_mult_i32(-1i, u_input.e), ~u_input.a.x > _wgslsmith_dot_vec3_u32(u_input.c.xxx, u_input.c.zyx), all(vec2<bool>(false, true))), arg_2.c, !(!(!vec4<bool>(false, arg_0.b.x, true, arg_0.a.x))))));
    let var_1 = Struct_1(vec4<bool>(false & (_wgslsmith_f_op_f32(sign(var_0.x)) < _wgslsmith_f_op_f32(-var_0.x)), arg_0.e, arg_2.c.x, true), arg_2.c.yzy, !func_2(true, arg_3.x, true).c, _wgslsmith_div_i32(firstTrailingBit(arg_1), arg_2.d), true);
    let var_2 = abs(51502u);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.xwx)), var_0.zxz);
    var var_4 = func_2(false, countOneBits(_wgslsmith_add_i32(u_input.b, ~(~16081i))), var_0.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.x, 1567f)), -992f));
    return select(vec4<bool>(var_1.e, arg_2.b.x, false, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, var_4.d, -2147483647i, 0i), vec4<i32>(-3332i, var_4.d, arg_2.d, -83478i)), i32(-1i) * -1554i, _wgslsmith_mult_i32(arg_3.x, var_1.d)) == ~arg_3.x), vec4<bool>(arg_2.a.x, arg_0.b.x, true, ~_wgslsmith_mult_u32(u_input.a.x, 35323u) > _wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(u_input.c.x, 7278u))), var_4.a);
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-853f, -1741f))));
    let var_1 = Struct_1(!select(func_5(Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), u_input.b, false), -1i, func_2(false, 1i, false), _wgslsmith_div_vec2_i32(vec2<i32>(-38361i, -37912i), vec2<i32>(u_input.d, -10846i))), vec4<bool>(u_input.a.x != 2516u, true, all(vec4<bool>(true, false, true, false)), u_input.a.x > 4294967295u), true), !(!vec3<bool>(func_2(true, -26716i, true).a.x, true, true)), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b, 43918i, u_input.d), vec4<i32>(-37733i, -1i, 2147483647i, u_input.e) >> (u_input.c % vec4<u32>(32u))) == ~(u_input.b & -2147483647i), !(!any(vec3<bool>(false, false, true))), true, !(true | (70538i < u_input.e))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-58724i, u_input.e), -2147483647i), !(true && any(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(~4294967295u, 1u), u_input.c.x, max(abs(u_input.a.x), 0u >> (u_input.c.x % 32u))) ^ (select(u_input.c.ywz, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 10832u, 591u), u_input.c.wyw), !var_1.c.zxy) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), ~u_input.c.ywz, reverseBits(u_input.c.ywz))), ~u_input.c.yyy);
    var_2 = 1u;
    var var_3 = var_1.d;
    return vec4<bool>(true | (u_input.b == max(u_input.d, u_input.b)), var_1.a.x, !any(func_4(func_2(false, -33983i, var_1.e), min(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -101f, var_0) * vec4<f32>(var_0, var_0, -2282f, -814f))).zx), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(14892i >= u_input.e, true, false, all(vec2<bool>(false, true)))), !(!func_1())), func_5(Struct_1(vec4<bool>(true, true, false, true), func_4(func_2(true, u_input.d, true), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(func_3())), vec4<bool>(all(vec4<bool>(false, true, false, true)), false, all(vec3<bool>(false, true, false)), func_1().x), _wgslsmith_mod_i32(u_input.d, _wgslsmith_mod_i32(1i, -2147483647i)), u_input.c.x <= _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, u_input.c.x, u_input.c.x, 30255u))), -u_input.b, Struct_1(vec4<bool>(true, true, true, true), !func_5(Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec4<bool>(false, false, false, true), -2253i, true), u_input.d, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), vec4<bool>(false, false, true, false), u_input.b, true), vec2<i32>(u_input.d, -1i)).xxz, vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(abs(-1i), u_input.e), u_input.c.x < _wgslsmith_mod_u32(u_input.a.x, 75530u)), vec2<i32>(u_input.d, firstLeadingBit(2147483647i))).yyz, func_5(func_2(true, -u_input.e, false), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.b, u_input.b)), vec2<i32>(~u_input.b, _wgslsmith_mult_i32(u_input.d, 16394i))), func_2(all(vec2<bool>(true, true)) | true, -_wgslsmith_mod_i32(2147483647i, u_input.e), func_2(true, -36385i, select(false, false, false)).c.x), vec2<i32>(1i, abs(reverseBits(u_input.e)))), u_input.d, !(!func_4(func_2(false, 60568i, true), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, -443f, -930f, 1913f) + vec4<f32>(1000f, -1113f, 1163f, -472f))).x));
    let var_1 = Struct_1(vec4<bool>(true || func_1().x, true, true, all(select(func_5(Struct_1(var_0.c, var_0.b, vec4<bool>(false, true, false, var_0.c.x), u_input.e, var_0.e), 37313i, Struct_1(var_0.c, var_0.a.xzx, vec4<bool>(var_0.e, true, var_0.e, var_0.e), -28436i, true), vec2<i32>(2147483647i, u_input.e)), !vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(var_0.a.x, false, false, var_0.b.x)))), vec3<bool>(true, var_0.a.x, !(!(var_0.c.x != var_0.b.x))), var_0.c, var_0.d, all(vec4<bool>(var_0.a.x, var_0.c.x, true, !var_0.e)));
    var var_2 = 28222u;
    var_2 = ~(~abs(u_input.c.x));
    let var_3 = _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.d, -1i), u_input.e >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.d, 2147483647i, 2147483647i), abs(vec3<i32>(var_1.d, var_0.d, var_1.d))))), vec2<i32>(var_0.d << (~(~12762u) % 32u), 55671i << (u_input.c.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2443f)), -1723f))), -617f, 297f, 600f), reverseBits(vec3<i32>(1i, var_0.d, _wgslsmith_add_i32(func_2(var_0.b.x, -9424i, var_1.e).d, ~(-9009i)))), select(abs(~(~29013u)), u_input.a.x | ~u_input.a.x, var_0.c.x || !any(vec3<bool>(true, true, var_0.b.x))), 1168f);
}

