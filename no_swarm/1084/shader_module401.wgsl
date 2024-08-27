struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0.a.b.x);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-1765f + -815f), select(!vec3<bool>(false, true, arg_0), !(!vec3<bool>(arg_0, arg_0, arg_0)), false), !(u_input.b.x != u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(546f, -1000f, 1077f, -568f), vec4<f32>(-553f, -623f, -2581f, -1175f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -882f, -284f, -457f) - vec4<f32>(547f, 389f, -598f, 1178f)))))), Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-429f, -1356f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(arg_0, -874f, vec3<bool>(true, false, arg_0), false), vec4<f32>(-389f, -1859f, 313f, 1349f), Struct_1(arg_0, -638f, vec3<bool>(arg_0, false, arg_0), arg_0), vec4<i32>(17631i, u_input.c, u_input.c, 1i)), Struct_1(arg_0, -937f, vec3<bool>(false, false, false), false), -43975i, false, Struct_2(Struct_1(false, 360f, vec3<bool>(arg_0, true, arg_0), arg_0), vec4<f32>(536f, 1000f, 1321f, 1082f), Struct_1(arg_0, -1404f, vec3<bool>(arg_0, true, true), arg_0), vec4<i32>(0i, u_input.c, 42127i, u_input.c)))))), vec3<bool>(true, !(!arg_0), arg_0), any(vec3<bool>(true, true, arg_0))), reverseBits(reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 19575i, -2147483647i), ~vec4<i32>(0i, -2147483647i, 0i, u_input.c)))));
    var var_1 = var_0.a;
    var_1 = Struct_1(all(vec4<bool>(all(!vec4<bool>(var_0.c.a, false, true, true)), true, any(vec4<bool>(var_0.a.c.x, var_1.d, true, false)), true)), 588f, var_1.c, true & (true | select(any(vec2<bool>(false, var_0.a.c.x)), var_0.c.d, var_1.c.x || false)));
    var var_2 = 13770u;
    var_2 = 19262u;
    return _wgslsmith_f_op_f32(floor(950f));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(!(!(!(u_input.c >= u_input.c))), _wgslsmith_f_op_f32(func_2(false & all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0)))), vec3<bool>(false, _wgslsmith_f_op_f32(-arg_2) > arg_2, arg_0), 0i <= -(firstLeadingBit(0i) | arg_1));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_2 + -446f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) - _wgslsmith_f_op_f32(-var_0.b)))), var_0.c, var_0.c.x);
    var_0 = Struct_1(true, var_0.b, var_0.c, true);
    var_0 = Struct_1(any(!(!vec4<bool>(var_1.c.x, arg_0, var_1.c.x, true))), -168f, vec3<bool>(true, true, !(arg_0 & true)), _wgslsmith_sub_u32(38423u, _wgslsmith_mult_u32(u_input.b.x << (1u % 32u), 9839u)) < u_input.b.x);
    var var_2 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-_wgslsmith_clamp_i32(arg_1, 1i, -1i), -47248i, _wgslsmith_sub_i32(-2147483647i, abs(u_input.c)), 1i)), _wgslsmith_clamp_vec4_i32(~(-(vec4<i32>(u_input.c, u_input.c, u_input.c, 3718i) | vec4<i32>(u_input.c, 0i, 11855i, 0i))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, 1i, 0i, u_input.c), min(vec4<i32>(arg_1, arg_1, u_input.c, 61984i), vec4<i32>(-2147483647i, -39470i, arg_3, 57976i)) << (~vec4<u32>(48491u, u_input.b.x, u_input.a.x, 1u) % vec4<u32>(32u))), abs(vec4<i32>(u_input.c, min(-19956i, -14223i), -arg_1, -arg_3))));
    return Struct_1(false, _wgslsmith_f_op_f32(-781f + -272f), vec3<bool>(!arg_0, true, var_1.c.x), !arg_0);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = any(arg_0.c.yx) && !arg_0.d;
    var_0 = true | any(!select(select(vec4<bool>(arg_0.a, false, arg_0.c.x, arg_0.d), vec4<bool>(arg_0.a, arg_0.c.x, arg_0.d, arg_0.c.x), arg_0.a), !vec4<bool>(arg_0.c.x, false, true, true), !vec4<bool>(arg_0.c.x, false, false, true)));
    var_0 = arg_0.c.x;
    var_0 = !(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.c), 13134i), ~(-vec2<i32>(u_input.c, 55371i))) == _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(13165i, u_input.c, u_input.c), vec3<i32>(-1i, 20637i, -27114i), vec3<i32>(u_input.c, u_input.c, -20495i)), vec3<i32>(61983i, u_input.c, 0i) | vec3<i32>(u_input.c, -1566i, -41660i)), select(u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), !arg_0.c.x)));
    let var_1 = false;
    return Struct_3(Struct_2(Struct_1(arg_0.a, arg_0.b, func_1(var_1, u_input.c, -688f, abs(u_input.c)).c, !arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -645f), arg_0.b, _wgslsmith_f_op_f32(-arg_0.b))), Struct_1(select(!arg_0.d, var_1, true), arg_0.b, !select(vec3<bool>(arg_0.a, arg_0.c.x, true), vec3<bool>(false, true, var_1), true), all(vec2<bool>(true, false))), reverseBits(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, 11121i))) & -(~vec4<i32>(u_input.c, u_input.c, -1i, 0i))), Struct_1(all(!vec4<bool>(arg_0.d, false, true, arg_0.a)) || (arg_0.b > _wgslsmith_f_op_f32(step(arg_0.b, -371f))), 1000f, vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(80525u, u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 3814u, 9969u, 0u)) < ~u_input.a.x, any(func_1(true, u_input.c, arg_0.b, u_input.c).c.zz), (u_input.c & u_input.c) < (1i >> (u_input.a.x % 32u))), var_1), u_input.c, arg_0.a, Struct_2(func_1(true, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))), max(u_input.c >> (u_input.b.x % 32u), countOneBits(u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1282f, arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1324f, arg_0.b, -934f, arg_0.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -408f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, 1051f, 972f, -204f))))), arg_0, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 1i, u_input.c, 32716i), -vec4<i32>(u_input.c, -2147483647i, -14499i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 1i, 36264i) ^ vec4<i32>(u_input.c, u_input.c, -17319i, -23700i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, -43012i, -2147483647i, u_input.c), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = Struct_3(func_4(func_1(true, -3135i, var_0.b.b, arg_0.e.d.x)).a, arg_0.e.a, arg_0.e.d.x, !func_4(Struct_1(var_0.d, -2103f, arg_0.e.a.c, true)).e.c.c.x, var_0.a);
    let var_1 = false;
    let var_2 = !(!func_1(_wgslsmith_f_op_f32(arg_0.b.b + arg_0.e.b.x) == 1018f, -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1358f) - _wgslsmith_f_op_f32(step(1000f, arg_0.b.b))), _wgslsmith_div_i32(arg_0.a.d.x, firstLeadingBit(arg_0.e.d.x))).c.zx);
    let var_3 = arg_0.a;
    return Struct_3(Struct_2(Struct_1(!(false && var_3.a.c.x), _wgslsmith_f_op_f32(func_3(Struct_3(arg_0.e, var_3.a, u_input.c, var_1, var_0.e))), vec3<bool>(arg_0.a.a.c.x | var_1, false, var_0.d && true), var_1), func_4(arg_0.e.c).a.b, var_3.c, ~(arg_1 & var_3.d)), var_3.a, u_input.c, var_3.a.d | false, Struct_2(Struct_1(true, _wgslsmith_f_op_f32(func_3(func_4(arg_0.a.a))), arg_0.b.c, arg_0.a.c.a), vec4<f32>(397f, -375f, -1363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.b.x - arg_0.b.b), -887f)), func_1(all(select(arg_0.a.a.c, vec3<bool>(var_0.a.c.c.x, false, true), vec3<bool>(true, var_2.x, false))), 37829i, _wgslsmith_f_op_f32(func_2(var_3.c.c.x)), -u_input.c), vec4<i32>(var_0.c | -59915i, _wgslsmith_sub_i32(-var_0.e.d.x, countOneBits(2147483647i)), (i32(-1i) * -24221i) << (~u_input.a.x % 32u), ~(-21914i) >> (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(true, -_wgslsmith_clamp_i32(u_input.c, 54597i, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1714f), 0i)), vec4<i32>(u_input.c, (u_input.c ^ ~(-1i)) >> ((_wgslsmith_clamp_u32(u_input.a.x, 0u, 0u) << (~u_input.a.x % 32u)) % 32u), firstLeadingBit(-1i), 79254i));
    var var_1 = func_4(var_0.e.c);
    var var_2 = _wgslsmith_sub_i32(-1i, 1i);
    let var_3 = countOneBits(-max(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(25139i, -8455i, var_0.a.d.x, 2147483647i), var_1.a.d), _wgslsmith_add_vec4_i32(var_0.e.d, var_0.a.d)), vec4<i32>(abs(var_1.c), func_5(var_0, vec4<i32>(var_0.c, 8298i, var_0.e.d.x, u_input.c)).c, -2147483647i, 18624i & var_0.a.d.x)));
    var var_4 = u_input.b.x;
    let var_5 = u_input.b.x;
    let var_6 = ((vec3<i32>(-var_1.a.d.x, 32228i, 0i) | vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.e.d.zwy, vec3<i32>(var_0.c, -44349i, -37115i)), firstLeadingBit(var_3.x), -u_input.c)) ^ (vec3<i32>(min(-1i, var_1.a.d.x), _wgslsmith_sub_i32(1i, var_3.x), var_3.x) << (vec3<u32>(~20204u, var_5, _wgslsmith_sub_u32(var_5, 4294967295u)) % vec3<u32>(32u)))) << (vec3<u32>(max(~countOneBits(u_input.a.x), _wgslsmith_mult_u32(~4294967295u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_5, var_5, u_input.b.x, u_input.a.x), firstLeadingBit(vec4<u32>(var_5, u_input.b.x, 0u, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, var_5, 44817u) & vec4<u32>(4294967295u, 1u, 28432u, u_input.a.x), select(vec4<u32>(var_5, 77590u, var_5, u_input.b.x), vec4<u32>(u_input.a.x, var_5, 1u, 1u), true)) << (4294967295u % 32u)) % vec3<u32>(32u));
    var_2 = ~var_0.c;
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_5 != _wgslsmith_clamp_u32(select(32865u, var_5, var_0.d), ~1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(28251i, _wgslsmith_clamp_u32(abs(min(~u_input.b.x, 4294967295u & u_input.a.x)), ~(~(u_input.a.x ^ 73688u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(14128u, var_5, var_5, 0u), vec4<u32>(~u_input.a.x, abs(var_5), ~101938u, abs(u_input.b.x)))));
}

