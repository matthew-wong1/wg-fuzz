struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_0.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -1443f, -920f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, -667f, 334f))))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, -840f, -1275f) + vec4<f32>(-499f, -782f, arg_0.c, -588f)) + vec4<f32>(-742f, 692f, -1390f, arg_0.c)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-329f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(771f - -603f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, 164f, arg_0.c))))), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-757f, arg_0.c, 1333f, -866f))))))), Struct_1(arg_0.c, vec3<f32>(802f, arg_0.c, -1000f), !(~u_input.a < _wgslsmith_add_u32(arg_0.a, arg_0.d)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(280f - -2155f), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.c + arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), vec4<f32>(arg_0.c, -365f, arg_0.c, -555f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-631f))) * -1734f));
    var var_1 = (~u_input.b >> (vec4<u32>(53189u, 6960u, ~arg_0.d, 1u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 0u, 1u, arg_0.a) % vec4<u32>(32u));
    var var_2 = var_0;
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(-var_2.a.d);
    return 1u;
}

fn func_3(arg_0: u32) -> Struct_3 {
    var var_0 = countOneBits(vec2<u32>(0u, 0u));
    var_0 = ~_wgslsmith_add_vec2_u32(select(u_input.b.yw, ~vec2<u32>(75978u, 0u), false), _wgslsmith_sub_vec2_u32(firstTrailingBit(abs(u_input.b.zz)), vec2<u32>(var_0.x, min(var_0.x, u_input.a))));
    let var_1 = Struct_4(99981u, vec4<i32>(18162i, -3124i, countOneBits(0i >> (u_input.a % 32u)) & _wgslsmith_div_i32(abs(-1i), -25658i), -_wgslsmith_mult_i32(-31892i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -581f))))), 134u);
    var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_div_u32(22433u, u_input.a), 0u), firstTrailingBit(abs(34655u))), _wgslsmith_add_vec2_u32(u_input.b.zw, vec2<u32>(16491u, _wgslsmith_add_u32(arg_0, 60081u))));
    let var_2 = -_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(25757i, -13353i, -1i, -10877i)), -firstTrailingBit(vec4<i32>(var_1.b.x, 12371i, 25727i, -2147483647i)) ^ var_1.b);
    return Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.c * var_1.c), _wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(round(var_1.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1724f, 840f, var_1.c), vec3<f32>(1774f, -689f, -677f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-699f, 1838f, 189f)), true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), -1075f, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2028f, 1461f, var_1.c)) + vec3<f32>(var_1.c, var_1.c, 1518f))))), ~reverseBits(u_input.b), ~select(vec3<u32>(~var_1.d, var_0.x, min(var_0.x, 3208u)), _wgslsmith_mod_vec3_u32(~u_input.b.wyy, vec3<u32>(u_input.b.x, u_input.b.x, 0u)), !all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1269f, arg_0.a.x, _wgslsmith_f_op_f32(-1503f * _wgslsmith_f_op_f32(arg_0.a.x + -357f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)) + -1919f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_0.a.x, 2033f, arg_0.a.x), vec4<f32>(arg_0.a.x, arg_0.a.x, 799f, -220f), vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, -913f, -279f, -356f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 483f, 1062f, 754f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, 865f, arg_0.a.x, arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, 1645f, arg_0.a.x, 498f)))))));
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true | (arg_0.a.x < -1000f), true, true), any(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, any(vec2<bool>(true, false)), true)));
    var var_2 = _wgslsmith_f_op_f32(abs(-835f));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1015f)), _wgslsmith_f_op_vec3_f32(max(var_0.yyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1852f, 700f, var_0.x))))), var_1.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 1406f), arg_0.a.x, 445f, _wgslsmith_f_op_f32(f32(-1f) * -892f))))), Struct_1(_wgslsmith_f_op_f32(floor(-509f)), _wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(var_0.www))))), var_1.x, _wgslsmith_div_vec4_f32(var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -1022f, var_0.x, -205f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.a.x, 314f, var_0.x))))), Struct_1(arg_0.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - arg_0.a), func_2(Struct_4(arg_0.b.x, vec4<i32>(-1i, 2147483647i, -1i, -2147483647i), var_0.x, arg_0.b.x)) > firstTrailingBit(_wgslsmith_mult_u32(4294967295u, arg_0.c.x)), vec4<f32>(124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2057f)))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-arg_0.a.x));
    var_3 = Struct_2(var_3.a, Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(arg_0.a.x, 405f, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.c.d.wwy + vec3<f32>(-1038f, arg_0.a.x, var_3.d)))), all(select(select(vec4<bool>(false, var_3.b.c, false, var_1.x), vec4<bool>(true, var_3.c.c, false, var_1.x), var_3.c.c), vec4<bool>(true, true, true, true), var_3.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b.d) + vec4<f32>(arg_0.a.x, var_0.x, 2020f, -130f)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(484f - -244f), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -201f), (var_3.a.c | var_3.c.c) || true)), func_3(reverseBits(~9610u)).a, max(39318i, -2147483647i) == _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -22950i)), vec2<i32>(-27682i, 1i) << (u_input.b.yz % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-314f + var_3.b.d.x))), 2461f, arg_0.a.x, var_3.d)), _wgslsmith_f_op_f32(-arg_0.a.x));
    return Struct_3(var_3.c.d.zwy, ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(54517u, 0u, u_input.a, arg_0.b.x) ^ vec4<u32>(4294967295u, arg_0.b.x, 0u, arg_0.b.x)), vec4<u32>(arg_0.b.x | 4932u, 6262u >> (arg_0.c.x % 32u), min(u_input.b.x, arg_0.c.x), arg_0.b.x ^ arg_0.b.x)), arg_0.b.xwy);
}

fn func_1() -> vec4<i32> {
    let var_0 = func_4(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, func_2(Struct_4(u_input.a, vec4<i32>(0i, -2147483647i, -1i, -4280i), -1033f, 4294967295u)), ~u_input.b.x, 1u), _wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(4294967295u, 5044u, 0u, u_input.a)))));
    var var_1 = vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(26910i, -40395i, -2147483647i, 1i)) << (abs(func_2(Struct_4(var_0.c.x, vec4<i32>(-23371i, 2147483647i, -54849i, -8649i), 1247f, var_0.c.x))) % 32u)), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, 1i, 1i)), ~(-countOneBits(vec3<i32>(-7016i, 35935i, -2594i)))));
    var_1 = -select(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 53075i), vec2<i32>(46251i, -2767i), vec2<i32>(-21378i, 87525i)), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(35758i, var_1.x, -43391i)), var_1.x), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false));
    var_1 = reverseBits(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, 0i)), ~vec2<i32>(var_1.x, -2147483647i)), vec2<i32>(var_1.x, firstLeadingBit(var_1.x))));
    return vec4<i32>(firstLeadingBit(firstTrailingBit(-var_1.x >> (~u_input.b.x % 32u))), ~_wgslsmith_div_i32(reverseBits(~var_1.x), var_1.x), i32(-1i) * -1i, _wgslsmith_clamp_i32(min(abs(var_1.x), 31155i), 2147483647i, ~(_wgslsmith_clamp_i32(var_1.x, var_1.x, 1i) << (~1u % 32u))));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_1.x;
    let var_1 = Struct_4(~_wgslsmith_mod_u32(func_4(func_4(Struct_3(vec3<f32>(-280f, -384f, arg_0), vec4<u32>(u_input.b.x, u_input.b.x, 8711u, 48206u), vec3<u32>(27904u, u_input.b.x, 6671u)))).c.x, select(u_input.a, 1u, true)), vec4<i32>(-13328i & -(arg_1.x | arg_1.x), -3056i, firstTrailingBit(-var_0) & -1i, ~(-(~17087i))), _wgslsmith_f_op_f32(arg_2.x * -643f), u_input.a);
    let var_2 = arg_3.x;
    var var_3 = arg_1.xzz;
    var_3 = abs(~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_1.b.x, 37125i), vec3<i32>(var_3.x, -2147483647i, arg_1.x)) >> (func_4(Struct_3(vec3<f32>(arg_0, -1494f, var_1.c), u_input.b, u_input.b.xwy)).c % vec3<u32>(32u)))));
    return _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(func_2(Struct_4(u_input.a, var_1.b, arg_2.x, var_1.d)), ~(~0u)), ~3682u), ~firstTrailingBit(~11755u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(u_input.b.x, func_5(984f, func_1(), vec2<f32>(-956f, 352f), vec4<bool>(true, true, true, true)), ~52735u >> (~u_input.b.x % 32u), ~(u_input.b.x >> (u_input.b.x % 32u))));
    var var_1 = 1174f;
    let var_2 = -(~vec4<i32>(~(~0i), firstTrailingBit(-39927i), abs(35355i), -57811i));
    let var_3 = Struct_4(~u_input.a, vec4<i32>(0i, var_2.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -49995i), var_2.ww), var_2.xw), var_2.wy & _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_2.x), var_2.yy)), var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1078f))))), select(_wgslsmith_mult_u32(1u ^ func_5(-1229f, var_2, vec2<f32>(-1310f, -604f), vec4<bool>(true, true, false, true)), func_3(4294967295u).b.x), _wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(select(u_input.a, u_input.a, false), var_0.x)), true));
    let var_4 = func_1().wxy;
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(221f, _wgslsmith_div_i32(var_5, var_4.x), 1u);
}

