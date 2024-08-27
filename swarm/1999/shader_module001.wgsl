struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = min(abs(_wgslsmith_sub_i32(firstTrailingBit(u_input.d.x), var_0.d.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(max(arg_1.c.x, -31764i), ~(14309i | var_0.c.x), 2147483647i | var_0.d.x), vec3<i32>(u_input.d.x, select(var_0.c.x, 0i | var_0.c.x, false), -(~var_0.d.x))));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(var_0.b.x + 1526f), -1058f, _wgslsmith_div_f32(var_0.b.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1297f, arg_2)), _wgslsmith_f_op_f32(sign(-532f)), -1616f, 698f)))), arg_1.c, arg_1.c);
    var var_3 = u_input.c;
    let var_4 = _wgslsmith_f_op_f32(-arg_0);
    return select(!vec4<bool>(true == var_2.a, true, all(!vec2<bool>(var_0.a, false)), any(!vec3<bool>(true, arg_1.a, false))), select(select(!select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(true, var_0.a, arg_1.a, var_2.a), arg_1.a), select(select(vec4<bool>(var_0.a, true, var_2.a, arg_1.a), vec4<bool>(true, false, var_0.a, false), false), !vec4<bool>(var_0.a, var_2.a, false, true), var_0.a), select(!vec4<bool>(false, false, arg_1.a, var_0.a), vec4<bool>(false, var_0.a, var_2.a, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, false & (var_3.x < 43090u), false, false && any(vec3<bool>(arg_1.a, arg_1.a, var_2.a))), !select(!vec4<bool>(var_2.a, arg_1.a, var_0.a, false), !vec4<bool>(var_0.a, arg_1.a, var_2.a, true), all(vec4<bool>(false, var_2.a, false, false)))), true);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = select(!(!select(vec4<bool>(false, arg_1, true, true), !vec4<bool>(arg_0.a, arg_0.a, arg_1, true), func_3(arg_0.b.x, arg_0, -368f))), vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.a, true, arg_0.a, arg_1), vec4<bool>(arg_2.a, false, arg_2.a, arg_1))), true, !(~u_input.e.x == _wgslsmith_sub_u32(u_input.c.x, u_input.c.x))), !(!vec4<bool>(true, !arg_1, false, true)));
    var var_1 = reverseBits(0u ^ ~(~u_input.c.x));
    let var_2 = arg_0.c.wy;
    var_1 = u_input.c.x;
    var var_3 = arg_2;
    return var_0;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    let var_0 = vec2<bool>(arg_0, !all(select(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), true), func_2(Struct_1(false, vec4<f32>(-364f, 2152f, 1400f, 1020f), vec4<i32>(28945i, 0i, 0i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -13205i)), arg_0, Struct_1(arg_0, vec4<f32>(544f, 400f, -548f, 491f), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(u_input.d.x, -11079i, u_input.d.x, 1i))), arg_0)));
    var var_1 = _wgslsmith_add_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~(-18884i), -23075i) & vec2<i32>(~u_input.d.x, u_input.d.x), max(u_input.d.zy, vec2<i32>(-2147483647i << (u_input.b.x % 32u), abs(24691i)))));
    var_1 = -max(_wgslsmith_div_i32(i32(-1i) * -34518i, u_input.d.x) >> (_wgslsmith_div_u32(1u, 1u) % 32u), 37305i);
    let var_2 = Struct_1(!arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 778f, 619f, -576f)), vec4<f32>(924f, 772f, -1358f, -659f)))), vec4<f32>(1621f, -387f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(1089f, 1251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -918f))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(~(-2147483647i), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(6969i, u_input.d.x, -2147483647i), u_input.d)), u_input.d.x, u_input.d.x, -46125i), ~vec4<i32>(u_input.d.x, _wgslsmith_div_i32(0i, -2147483647i), i32(-1i) * -37645i, _wgslsmith_add_i32(-2147483647i, 46572i))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-63365i, u_input.d.x, u_input.d.x, -9312i) & vec4<i32>(u_input.d.x, 5015i, u_input.d.x, 2063i), -max(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -23840i, -1i, u_input.d.x))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -51127i, u_input.d.x, 9449i) >> (vec4<u32>(u_input.c.x, u_input.e.x, 1u, u_input.a.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 1i, 14753i, -97383i), vec4<i32>(23140i, 1i, u_input.d.x, u_input.d.x))), !(!arg_0)));
    var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(17081i, ~min(_wgslsmith_dot_vec3_i32(vec3<i32>(51206i, 0i, 22278i), vec3<i32>(1i, u_input.d.x, -9905i)), ~var_2.c.x)), var_2.c.x);
    return !(!vec2<bool>(all(vec2<bool>(false, true)), u_input.c.x < 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, all(select(select(vec2<bool>(false, false), func_1(false), true), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_1 = Struct_1(!all(!vec3<bool>(var_0.x, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-839f, -1661f, 1000f, 281f), vec4<f32>(1177f, -1194f, -661f, 363f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1464f, -889f, 152f, 901f) * vec4<f32>(1152f, 2245f, 1435f, 1000f)))))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(reverseBits(u_input.d.x), 31021i, _wgslsmith_dot_vec2_i32(vec2<i32>(28925i, u_input.d.x), vec2<i32>(0i, -74439i)), u_input.d.x), reverseBits(vec4<i32>(-19816i, u_input.d.x, u_input.d.x, u_input.d.x))), vec4<i32>(~_wgslsmith_sub_i32(u_input.d.x, -4137i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -32057i, u_input.d.x), firstTrailingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, 50507i), ~(-2147483647i)), u_input.d.x), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(37455i, u_input.d.x, u_input.d.x, u_input.d.x) & vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, -38467i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)))), -firstLeadingBit(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2736i, -17723i, u_input.d.x, u_input.d.x), vec4<i32>(7945i, u_input.d.x, u_input.d.x, u_input.d.x)))));
    var var_2 = 2147483647i;
    var_2 = var_1.c.x;
    var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(~(-2147483647i) >> (_wgslsmith_add_u32(u_input.c.x, u_input.e.x) % 32u)), select(u_input.d.x, 1i, true), -_wgslsmith_div_i32(var_1.c.x, u_input.d.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(41472i, u_input.d.x, max(0i, 1i), -1i), vec4<i32>(u_input.d.x, u_input.d.x, 31287i << (u_input.e.x % 32u), u_input.d.x)), vec4<i32>(~(-2147483647i), ~_wgslsmith_add_i32(var_1.d.x, -10526i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, var_1.d.x, 0i), vec3<i32>(var_1.c.x, u_input.d.x, -1i)), var_1.d.x)));
    let var_3 = Struct_1(true, var_1.b, vec4<i32>(0i, u_input.d.x, firstLeadingBit(countOneBits(-1i)) << (u_input.a.x % 32u), _wgslsmith_mod_i32(1i, ~(-u_input.d.x))), abs(vec4<i32>(_wgslsmith_mod_i32(-1i, 1i), max(~(-629i), var_1.c.x), 9201i, -1i)));
    var_1 = Struct_1(!var_3.a, vec4<f32>(_wgslsmith_f_op_f32(min(var_3.b.x, var_1.b.x)), -195f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.b.x, var_3.b.x)) - _wgslsmith_f_op_f32(var_3.b.x * 1000f)), _wgslsmith_f_op_f32(trunc(-128f)))), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(step(1000f, -985f)))), vec4<i32>(select(0i, var_3.c.x, false), ~(-var_3.c.x), u_input.d.x >> ((u_input.b.x & ~1u) % 32u), var_3.d.x), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_1.d.x, var_1.d.x, _wgslsmith_div_i32(2147483647i, var_3.c.x), 2361i), ~firstLeadingBit(var_1.c), ~u_input.d.x == (i32(-1i) * -20251i)), vec4<i32>(var_3.d.x, var_1.d.x, 2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.c.x, var_3.d.x), var_1.d.wx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(237f)), var_3.b.x), _wgslsmith_mult_i32(var_3.d.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(-643f)), _wgslsmith_f_op_f32(max(-1301f, var_1.b.x)), -1548f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b.xxy), vec3<f32>(var_3.b.x, var_3.b.x, 957f))))));
}

