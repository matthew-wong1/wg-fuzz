struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = true;
    let var_1 = !vec4<bool>(var_0, all(!select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, var_0, false, var_0), var_0)), false, any(vec3<bool>(true, any(vec3<bool>(false, false, var_0)), false & var_0)));
    let var_2 = -_wgslsmith_div_vec4_i32(-((vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b) ^ vec4<i32>(-22710i, u_input.b, 6850i, -7710i)) & min(vec4<i32>(0i, u_input.b, -41116i, 2147483647i), vec4<i32>(u_input.b, u_input.b, 7976i, u_input.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(19063i, u_input.b), u_input.b ^ -1i, _wgslsmith_add_i32(-17292i, u_input.b), _wgslsmith_mod_i32(1i, u_input.b)), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, 10278i, -12733i), vec4<i32>(u_input.b, 10169i, u_input.b, -2147483647i)), vec4<i32>(u_input.b, -15250i, u_input.b, -2147483647i) | vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))));
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(max(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(79045u, 4294967295u))) ^ min(firstTrailingBit(vec2<u32>(2687u, 98958u)), abs(vec2<u32>(u_input.a, 11662u))), vec2<u32>(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(15399u, 28438u, 0u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), u_input.a)), max(_wgslsmith_div_vec2_u32(~(~vec2<u32>(60660u, u_input.a)), ~(~vec2<u32>(38699u, u_input.c))), firstTrailingBit(~select(vec2<u32>(24729u, 1u), vec2<u32>(913u, 0u), var_1.x))), Struct_2(1i, vec2<i32>(u_input.b, 16650i), 1u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(var_2, var_2), u_input.b, countOneBits(-54305i), -9033i), var_2), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1343f, 1803f), vec2<f32>(-1000f, -1000f))), vec2<f32>(-1000f, 402f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1220f, -393f))), ~(~vec2<u32>(u_input.a, u_input.a) | select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 47205u), false)), select(vec2<bool>(-49950i > u_input.b, any(var_1.wy)), vec2<bool>(true, true), !var_1.yz)));
    var var_4 = i32(-1i) * -23398i;
    return vec3<f32>(var_3.d.c.x, var_3.d.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1316f))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1920f), arg_3, -1000f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(149f, arg_3, -1000f)))), _wgslsmith_f_op_vec3_f32(func_3()), !vec3<bool>(any(vec2<bool>(false, true)), true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 109f, 993f) - vec3<f32>(471f, -1000f, arg_3)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, arg_3, -947f), vec3<f32>(arg_3, 1222f, -384f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-492f, arg_3, arg_3), vec3<f32>(arg_3, 1261f, arg_3))), _wgslsmith_f_op_vec3_f32(vec3<f32>(686f, arg_3, 1623f) * vec3<f32>(arg_3, -473f, arg_3))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, var_0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_3 - arg_3), _wgslsmith_f_op_f32(-210f * arg_3), _wgslsmith_f_op_f32(-var_0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -879f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-arg_3))))));
    var var_1 = 886f;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, _wgslsmith_f_op_f32(f32(-1f) * -1039f), 1153f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 200f), vec3<f32>(var_0.x, var_0.x, -1265f), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(623f, var_0.x, var_0.x) + vec3<f32>(239f, var_0.x, 1083f))), (3219u >= arg_0) == (arg_2.a.x > arg_1.a))))));
    var var_2 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 42190i, arg_1.b.x, 8602i), vec4<i32>(arg_1.b.x, arg_1.b.x, arg_2.c.x, arg_2.a.x)), 0i), _wgslsmith_clamp_i32(min(arg_1.a, -1i), -8445i, -48015i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(_wgslsmith_add_i32(1i, arg_1.b.x), arg_2.a.x)));
    return arg_1;
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(func_2(~(~46685u), arg_0.a, Struct_4(vec4<i32>(-6696i, firstLeadingBit(u_input.b), ~arg_0.c.a, arg_0.c.b.x), arg_0.a.b.x, ~vec4<i32>(arg_0.c.b.x, arg_0.a.b.x, 13917i, 26124i)), _wgslsmith_f_op_vec3_f32(func_3()).x), false, func_2(arg_0.a.c, Struct_2(_wgslsmith_add_i32(select(arg_0.a.a, 28929i, true), arg_0.a.b.x), -_wgslsmith_div_vec2_i32(arg_0.c.b, vec2<i32>(arg_0.a.b.x, -15368i)), 81950u), Struct_4(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, arg_0.a.a), vec4<i32>(u_input.b, -3090i, u_input.b, u_input.b))), arg_0.c.a, vec4<i32>(57940i, arg_0.a.b.x, _wgslsmith_add_i32(0i, u_input.b), abs(u_input.b))), arg_0.d.x), vec4<f32>(_wgslsmith_f_op_f32(-1022f * arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-193f)), arg_0.d.x) * 156f)));
    var var_1 = Struct_3(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(max(27656u, 38710u), _wgslsmith_sub_u32(arg_0.a.c, 58310u))), ~_wgslsmith_add_u32(~arg_0.a.c, u_input.c)), select(select(abs(vec2<u32>(u_input.c, var_0.c.c)), _wgslsmith_add_vec2_u32(vec2<u32>(4661u, 72403u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c)), true == arg_0.b), vec2<u32>(abs(firstLeadingBit(u_input.c)), countOneBits(var_0.c.c)), vec2<bool>(var_0.b, false)), func_2(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.c.c, 0u, arg_0.c.c)), vec3<u32>(~40679u, ~var_0.a.c, var_0.a.c | 0u)), arg_0.c, Struct_4(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0.a.b.x, 0i), ~var_0.a.a, 15688i, -var_0.c.b.x), -13156i, _wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, var_0.c.b.x, 5339i, -2147483647i), vec4<i32>(-386i, -1i, -16854i, 1i))), 405f), Struct_1(var_0.d.x, -(~(-vec4<i32>(var_0.c.a, 16923i, var_0.c.b.x, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.yy + arg_0.d.xw)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.wx - arg_0.d.yx), _wgslsmith_f_op_vec3_f32(func_3()).yx)), firstTrailingBit(firstLeadingBit(abs(vec2<u32>(1u, arg_0.a.c)))), select(select(select(vec2<bool>(false, false), vec2<bool>(arg_0.b, false), vec2<bool>(false, var_0.b)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(arg_0.b, var_0.b), vec2<bool>(true, arg_0.b))), vec2<bool>(var_0.d.x < var_0.d.x, any(vec3<bool>(false, arg_0.b, arg_0.b))), false)));
    var_0 = arg_0;
    var var_2 = 60402i;
    return var_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.d.e.x;
    var var_1 = Struct_5(arg_2.c, -367f >= arg_2.d.a, arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-185f - arg_0.c.x))), -422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1035f * -1376f) + _wgslsmith_div_f32(arg_2.d.c.x, _wgslsmith_f_op_f32(-1000f - 411f))), _wgslsmith_f_op_vec3_f32(func_3()).x));
    let var_2 = arg_2.d.e.x;
    var_1 = arg_1;
    let var_3 = select(arg_0.e, !vec2<bool>(true, arg_2.d.e.x), arg_2.d.e);
    return var_1.a;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_mult_i32(~u_input.b, -1i) << (~u_input.c % 32u), -vec2<i32>(1i, arg_0.b.x), u_input.a), true, func_5(func_4(Struct_5(func_2(1u, Struct_2(-24890i, vec2<i32>(1i, -1i), 20778u), Struct_4(arg_0.b, arg_0.b.x, arg_0.b), -547f), !arg_0.e.x, Struct_2(29992i, arg_0.b.yy, 15731u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.x, -1337f, 1554f, arg_0.a))))), Struct_5(Struct_2(-u_input.b, arg_0.b.yw, ~53915u), false, func_2(_wgslsmith_sub_u32(0u, arg_0.d.x), func_2(18932u, Struct_2(0i, arg_0.b.zz, arg_0.d.x), Struct_4(vec4<i32>(-32234i, arg_0.b.x, 17808i, -31959i), 17811i, arg_0.b), 485f), Struct_4(arg_0.b, 0i, vec4<i32>(0i, arg_0.b.x, 32463i, -1i)), _wgslsmith_div_f32(-1000f, -200f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c.x, 203f, arg_0.a, arg_0.c.x), vec4<f32>(arg_0.c.x, arg_0.a, 2169f, -917f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(147f, arg_0.a, -1038f, 318f))))), Struct_3(abs(~vec2<u32>(83634u, 15552u)), vec2<u32>(u_input.c, 62384u), Struct_2(-arg_0.b.x, _wgslsmith_add_vec2_i32(arg_0.b.ww, arg_0.b.xx), 0u), Struct_1(-1611f, -vec4<i32>(u_input.b, -1i, 27204i, 12156i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2386f, 1927f), arg_0.c)), arg_0.d, !vec2<bool>(arg_0.e.x, arg_0.e.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.a, arg_0.a, arg_0.a) - vec4<f32>(arg_0.a, arg_0.c.x, 1484f, -875f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 1043f, arg_0.c.x, -2200f) * vec4<f32>(-931f, 1018f, 363f, 628f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-748f, arg_0.c.x, arg_0.c.x, arg_0.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, arg_0.c.x, 936f, arg_0.c.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-294f, arg_0.a, arg_0.c.x, arg_0.a), vec4<f32>(arg_0.c.x, -712f, -1223f, arg_0.a))))))));
    var_0 = Struct_5(func_5(Struct_1(var_0.d.x, arg_0.b, _wgslsmith_f_op_vec2_f32(arg_0.c + arg_0.c), _wgslsmith_add_vec2_u32(~vec2<u32>(16762u, 46937u), _wgslsmith_clamp_vec2_u32(arg_0.d, vec2<u32>(u_input.c, 0u), vec2<u32>(1u, 0u))), arg_0.e), Struct_5(var_0.c, arg_0.e.x, var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, var_0.d.x, -1164f, arg_0.c.x))), Struct_3(firstLeadingBit(arg_0.d), arg_0.d, var_0.a, arg_0)), true, Struct_2(arg_0.b.x, arg_0.b.zw, arg_0.d.x), vec4<f32>(-1033f, 924f, _wgslsmith_f_op_f32(step(var_0.d.x, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -424f)));
    var var_1 = Struct_5(var_0.c, arg_0.e.x, func_2(arg_0.d.x, func_2(21133u, Struct_2(2147483647i, -vec2<i32>(-2147483647i, 0i), ~1u), Struct_4(abs(vec4<i32>(-38687i, u_input.b, -7085i, arg_0.b.x)), var_0.c.b.x, abs(arg_0.b)), -181f), Struct_4(reverseBits(arg_0.b), _wgslsmith_div_i32(arg_0.b.x, 1i), _wgslsmith_mult_vec4_i32(arg_0.b, ~arg_0.b)), 1507f), var_0.d);
    let var_2 = var_1.a.b.x;
    var_1 = Struct_5(Struct_2(~(-20640i) & ((i32(-1i) * -2147483647i) | var_0.c.a), vec2<i32>(~var_0.c.a, u_input.b), _wgslsmith_mod_u32(min(u_input.a, var_0.a.c), 4294967295u << (firstTrailingBit(3391u) % 32u))), !all(select(!vec2<bool>(false, var_1.b), !vec2<bool>(var_0.b, false), func_4(Struct_5(Struct_2(var_0.c.a, arg_0.b.xx, 1u), var_0.b, Struct_2(arg_0.b.x, vec2<i32>(arg_0.b.x, -6090i), 4294967295u), var_1.d)).e.x)), func_2(u_input.a, var_0.a, Struct_4(~(~arg_0.b), -36583i, vec4<i32>(func_2(var_1.c.c, Struct_2(var_0.a.b.x, var_1.a.b, var_1.c.c), Struct_4(vec4<i32>(var_1.a.a, -1i, u_input.b, var_0.c.a), -54251i, arg_0.b), -1473f).b.x, arg_0.b.x >> (u_input.c % 32u), ~(-9973i), ~arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -512f)), var_1.d);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 927f;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-453f, 1513f, var_0) - vec3<f32>(202f, 357f, 260f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 801f)), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, var_0, var_0)) + vec3<f32>(-1251f, -570f, var_0)))));
    var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, var_2.x, -1061f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1176f)))), vec3<bool>(33865u == u_input.c, true, true))) - vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-982f)) - _wgslsmith_div_f32(-1377f, 769f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_2.x, vec4<i32>(-29474i, u_input.b, u_input.b, 15905i), vec2<f32>(-1142f, 371f), vec2<u32>(u_input.c, 13474u), vec2<bool>(true, true)))) * -458f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 952f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, 923f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, 776f, 622f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2755f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_0), _wgslsmith_f_op_f32(-430f - var_0)), ~func_2(13922u, func_5(Struct_1(-2455f, vec4<i32>(u_input.b, 5372i, u_input.b, u_input.b), var_2.yz, vec2<u32>(u_input.c, 4294967295u), vec2<bool>(true, true)), Struct_5(Struct_2(u_input.b, vec2<i32>(u_input.b, u_input.b), u_input.c), true, Struct_2(u_input.b, vec2<i32>(42315i, u_input.b), u_input.c), vec4<f32>(var_2.x, -2226f, var_0, 759f)), Struct_3(vec2<u32>(21259u, 4294967295u), vec2<u32>(15248u, u_input.c), Struct_2(-1i, vec2<i32>(-11784i, -1i), u_input.a), Struct_1(var_2.x, vec4<i32>(u_input.b, 1i, -2147483647i, u_input.b), vec2<f32>(458f, var_2.x), vec2<u32>(1u, 70568u), vec2<bool>(false, true)))), Struct_4(vec4<i32>(1i, 1i, 1i, 37061i) >> (vec4<u32>(u_input.c, u_input.a, 81588u, 4294967295u) % vec4<u32>(32u)), i32(-1i) * -5183i, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 24957i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, var_2.x))).b);
}

