struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    var_0 = Struct_1(-1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(19869i, u_input.a, -1i), vec3<i32>(arg_0.a.a, -1i, var_0.d))), 2147483647i), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.c))))), arg_1.a);
    var_0 = Struct_1(arg_3.a.d, arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(550f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(123f + -642f), _wgslsmith_f_op_f32(602f + 730f)))), _wgslsmith_f_op_f32(round(arg_2.c.x)), _wgslsmith_f_op_f32(arg_2.c.x * arg_0.c.x), _wgslsmith_f_op_f32(1515f + _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(sign(-615f))))), 20704i);
    var_0 = arg_2.b;
    return vec4<bool>(false, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true))), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, -492f) + -1156f) != 2136f), true);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(-25690i, -_wgslsmith_div_i32(max(2147483647i, -32078i | arg_0.x), 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, arg_1.x, 505f, 580f)))) - vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1.x)))), 10374i);
    let var_1 = arg_3.yz;
    let var_2 = Struct_2(var_0, Struct_1(1i, -u_input.d, var_0.c, arg_0.x), var_0.c);
    var var_3 = arg_3;
    var_3 = ~countOneBits(~(~arg_3)) ^ vec3<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_3.x, u_input.c), min(4294967295u, ~25414u)), firstLeadingBit(68245u));
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_3(select(vec4<i32>(abs(-9228i), ~1i, 1i, ~(-15420i)), -vec4<i32>(-6443i, 32122i, 1i, _wgslsmith_mod_i32(11578i, u_input.d)), select(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, true))), !func_2(Struct_2(Struct_1(u_input.b.x, u_input.d, arg_0.c, arg_0.a), Struct_1(2147483647i, arg_0.b, vec4<f32>(arg_0.c.x, arg_0.c.x, -389f, arg_0.c.x), 1i), vec4<f32>(arg_0.c.x, 255f, -1605f, arg_0.c.x)), Struct_1(-10162i, u_input.b.x, vec4<f32>(-1523f, 712f, arg_0.c.x, arg_0.c.x), 15782i), Struct_2(Struct_1(u_input.a, arg_0.a, arg_0.c, 0i), arg_0, arg_0.c), Struct_2(Struct_1(u_input.b.x, -1i, arg_0.c, 3588i), arg_0, vec4<f32>(arg_0.c.x, 1418f, -1000f, arg_0.c.x))), vec4<bool>(u_input.c < 106134u, true, true, true))), arg_0.c.zyz, _wgslsmith_f_op_f32(f32(-1f) * -1256f), select(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 1u) ^ vec3<u32>(u_input.c, u_input.c, 34065u)) ^ ~(~vec3<u32>(6861u, 66573u, 31410u)), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 30066u), vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(1u, u_input.c, 987u))), all(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(Struct_1(-countOneBits(arg_0.b), _wgslsmith_div_i32(arg_0.d, 2147483647i), var_0.c, -2147483647i), arg_0, _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x, -444f, var_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -2150f, func_3(vec4<i32>(-8794i, 2147483647i, arg_0.b, u_input.d), vec3<f32>(var_0.c.x, -718f, -946f), -1630f, vec3<u32>(u_input.c, 4294967295u, u_input.c)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -859f)), !select(false, true, false)))));
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_f32(-var_1.a.c.x);
    let var_4 = func_3(vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(arg_0.b, -24789i), -arg_1.x, func_3(-max(vec4<i32>(44226i, arg_1.x, var_2, arg_1.x), vec4<i32>(arg_1.x, u_input.d, 47864i, var_0.b)), vec3<f32>(var_3, func_3(vec4<i32>(arg_0.a, var_1.b.b, u_input.b.x, arg_1.x), vec3<f32>(-1259f, var_1.c.x, var_3), var_0.c.x, vec3<u32>(12661u, u_input.c, 0u)).c.x, var_0.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.c.x, var_3, false)))), abs(vec3<u32>(1u, u_input.c, u_input.c) << (vec3<u32>(58444u, 70660u, 4294967295u) % vec3<u32>(32u)))).d, i32(-1i) * -1i), var_1.c.xwx, -428f, vec3<u32>(u_input.c >> (u_input.c % 32u), u_input.c, _wgslsmith_mult_u32(~(~u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 12691u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 25705u)) << (~4294967295u % 32u))));
    return var_4;
}

fn func_4(arg_0: Struct_1) -> bool {
    return any(func_2(Struct_2(func_3(abs(vec4<i32>(u_input.b.x, 20783i, arg_0.a, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -426f, -1065f)), _wgslsmith_f_op_f32(ceil(arg_0.c.x)), vec3<u32>(0u, u_input.c, 4294967295u) << (vec3<u32>(85295u, 54927u, u_input.c) % vec3<u32>(32u))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2778f, arg_0.c.x, arg_0.c.x, -768f) + arg_0.c))), func_1(func_3(-vec4<i32>(2147483647i, arg_0.a, arg_0.b, u_input.a), _wgslsmith_f_op_vec3_f32(-arg_0.c.xxz), arg_0.c.x, ~vec3<u32>(1u, u_input.c, u_input.c)), vec2<i32>(0i, ~u_input.d)), Struct_2(Struct_1(_wgslsmith_sub_i32(16068i, -8306i), arg_0.b, _wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(arg_0.c.x, arg_0.c.x, -1918f, -1076f)), _wgslsmith_add_i32(46880i, 1i)), func_1(arg_0, vec2<i32>(arg_0.d, u_input.d) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.c)))), Struct_2(Struct_1(abs(55480i), 0i, vec4<f32>(arg_0.c.x, arg_0.c.x, -1000f, -883f), u_input.a), Struct_1(u_input.d, ~u_input.a, _wgslsmith_f_op_vec4_f32(trunc(arg_0.c)), -5416i), arg_0.c)).wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, 1i, -1i, 45679i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d, 22960i, 2497i), vec4<i32>(16726i, -37254i, u_input.d, u_input.b.x))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-22930i, 24107i), _wgslsmith_sub_i32(1i, 1i), ~u_input.d), 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(select(u_input.b.x, u_input.d, false) | -40777i, abs(abs(1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.d), select(u_input.d, 1i, true))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 67195i, u_input.d) | (vec3<i32>(u_input.b.x, -6430i, 21344i) | vec3<i32>(-15296i, u_input.b.x, -23157i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(-1i, 66097i, 46185i), vec3<i32>(-18248i, 1i, 31570i)) & max(vec3<i32>(-1i, u_input.b.x, -45142i), vec3<i32>(u_input.a, u_input.a, -32869i)))), all(vec2<bool>(func_4(func_1(Struct_1(u_input.d, -2147483647i, vec4<f32>(871f, -1228f, -2548f, -801f), u_input.b.x), vec2<i32>(-5683i, 15814i))), true)));
    var var_1 = !vec2<bool>(false, all(vec3<bool>(true, true, true)) & func_2(Struct_2(Struct_1(-4654i, 13629i, vec4<f32>(331f, 1000f, -227f, 1638f), u_input.b.x), Struct_1(var_0.x, var_0.x, vec4<f32>(329f, 997f, 1892f, -1687f), u_input.a), vec4<f32>(391f, -241f, 715f, -849f)), func_1(Struct_1(-29451i, 1i, vec4<f32>(769f, 1177f, -243f, -1523f), 0i), var_0.zy), Struct_2(Struct_1(u_input.a, u_input.b.x, vec4<f32>(-195f, -1714f, -904f, -566f), -8737i), Struct_1(u_input.b.x, -35298i, vec4<f32>(1141f, -484f, -1391f, 239f), -1i), vec4<f32>(1466f, 845f, -749f, -1377f)), Struct_2(Struct_1(u_input.a, 45002i, vec4<f32>(-884f, -2391f, 129f, 452f), 1670i), Struct_1(u_input.d, 2147483647i, vec4<f32>(1501f, -1000f, 331f, -948f), -2147483647i), vec4<f32>(1000f, 1671f, 1629f, -1304f))).x);
    var var_2 = true & var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(-23312i, u_input.a), (_wgslsmith_mod_i32(var_0.x, var_0.x) >> (u_input.c % 32u)) ^ abs(u_input.d), abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d, var_0.x), 2147483647i)), abs(_wgslsmith_mod_i32(var_0.x, 14016i))), ~(-vec3<i32>(abs(1i), firstLeadingBit(var_0.x), 0i)));
}

