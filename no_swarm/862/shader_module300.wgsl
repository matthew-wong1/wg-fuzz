struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -743f;

var<private> global2: u32 = 46174u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f * 161f)));
    global0 = 533f;
    global2 = 47316u;
    global0 = 1000f;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * -657f)))));
    return 1000f;
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(true, all(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(func_3()), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))));
    var var_1 = firstTrailingBit(-vec3<i32>(~select(u_input.b.x, u_input.b.x, false), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)));
    let var_2 = vec2<bool>(false && (4294967295u > u_input.c), all(vec3<bool>(any(!vec4<bool>(var_0.x, var_0.x, true, false)), any(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, true, var_0.x, true), var_0.x)), true)));
    var var_3 = vec3<i32>(~var_1.x, -24613i, var_1.x);
    global2 = u_input.a;
    return ~firstTrailingBit(81013u);
}

fn func_1() -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1120f + _wgslsmith_f_op_f32(1000f + -987f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1423f, -435f)))))), -853f);
    let var_1 = _wgslsmith_mod_u32(4219u ^ u_input.c, _wgslsmith_add_u32(func_2(), ~u_input.c));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 280f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -972f))))), ~reverseBits(abs(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(0u, u_input.a, u_input.c, u_input.a) % vec4<u32>(32u))), 1000f, true, firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(1u, 1u), reverseBits(u_input.c)) | (vec2<u32>(1u, 4294967295u) >> (~vec2<u32>(u_input.a, 3154u) % vec2<u32>(32u)))));
    global2 = 69868u;
    global2 = ~_wgslsmith_mult_u32(u_input.c, ~96614u);
    return var_2.d;
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(674f * _wgslsmith_f_op_f32(f32(-1f) * -1670f))));
    global2 = 11761u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1262f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-899f)) + -625f)) * 126f);
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1057f, 968f), _wgslsmith_div_f32(-406f, -192f), _wgslsmith_f_op_f32(283f * -339f), 1f))), vec4<f32>(-1462f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(371f * -920f) - -692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(325f + 461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f * 1061f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(844f, 520f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-733f, -355f))), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    var var_1 = select(!(!select(arg_0.yy, vec2<bool>(true, arg_0.x), arg_0.x && arg_0.x)), !select(arg_0.zz, select(arg_0.zy, select(arg_0.zz, arg_0.yz, vec2<bool>(true, true)), true), arg_0.x), true);
    return Struct_3(select(select(arg_0.xz, arg_0.zx, arg_0.zy), arg_0.zz, vec2<bool>(true, true)), -u_input.b.x << (95661u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(round(var_0.x))))), func_1(), var_0);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    global0 = arg_1.e.x;
    let var_0 = arg_1.e.x;
    var var_1 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(-arg_0, vec4<i32>(2147483647i, countOneBits(u_input.b.x ^ arg_0.x), ~(arg_2 ^ arg_2), -firstTrailingBit(arg_2))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -246f);
    let var_3 = arg_1.a.x;
    return Struct_1(vec2<f32>(-363f, _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 1000f))), min(firstTrailingBit(_wgslsmith_clamp_vec4_i32(arg_0, arg_0, vec4<i32>(-1i, 2147483647i, arg_1.b, arg_2))), ~arg_0), 1000f, arg_1.a.x, select(countOneBits(~vec2<u32>(u_input.c, 15443u)) << (vec2<u32>(~u_input.c, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a))), vec2<bool>(arg_1.d, func_4(vec3<bool>(false, false, true)).d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -446f;
    global2 = _wgslsmith_mod_u32(4294967295u, ~0u);
    global1 = -167f;
    var var_0 = func_5(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.b.x), _wgslsmith_div_i32(-u_input.b.x, -u_input.b.x), -4120i), u_input.b.x, ~u_input.b.x | (select(u_input.b.x, u_input.b.x, true) << (abs(4294967295u) % 32u)), ~0i), func_4(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), func_1())), -2147483647i);
    global2 = _wgslsmith_div_u32(var_0.e.x, 9307u);
    global0 = 1280f;
    let var_1 = func_5(vec4<i32>(-46828i, func_5(-var_0.b, Struct_3(vec2<bool>(var_0.d, var_0.d), firstLeadingBit(2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.a.x, 674f)), func_5(vec4<i32>(var_0.b.x, -9895i, -1i, u_input.b.x), Struct_3(vec2<bool>(var_0.d, true), -2147483647i, vec3<f32>(-285f, var_0.a.x, -1023f), false, vec4<f32>(var_0.a.x, 573f, -635f, var_0.a.x)), u_input.b.x).d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1223f, var_0.a.x, 827f, -1214f)))), -u_input.b.x).b.x, abs(-var_0.b.x), max(-1i, var_0.b.x) << ((_wgslsmith_dot_vec2_u32(var_0.e, vec2<u32>(1u, 21213u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, u_input.a), vec4<u32>(1u, 0u, var_0.e.x, var_0.e.x))) % 32u)), Struct_3(select(vec2<bool>(!var_0.d, func_4(vec3<bool>(var_0.d, var_0.d, true)).a.x), vec2<bool>(!var_0.d, var_0.d), 1028f == var_0.c), -2147483647i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(var_0.c, -1000f), var_0.c), _wgslsmith_f_op_vec3_f32(trunc(func_4(vec3<bool>(false, true, false)).e.wxx)))), var_0.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -856f, 1000f, var_0.a.x) * vec4<f32>(var_0.a.x, var_0.c, var_0.c, 1000f))))), ~_wgslsmith_clamp_i32(var_0.b.x >> (46235u % 32u), 1i >> (var_0.e.x % 32u), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) | (u_input.b.x >> (~(u_input.c >> (var_0.e.x % 32u)) % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(~vec4<i32>(var_0.b.x, u_input.b.x, -1i, 2147483647i), func_4(vec3<bool>(false, var_1.d, var_1.d)), _wgslsmith_mult_i32(var_1.b.x, var_0.b.x)).a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a, var_0.a, !vec2<bool>(var_0.d, var_0.d))))) * func_5(_wgslsmith_div_vec4_i32(vec4<i32>(6567i, 23191i, -u_input.b.x, u_input.b.x), vec4<i32>(min(14886i, -58705i), i32(-1i) * -2147483647i, 1i, ~14955i)), Struct_3(!vec2<bool>(false, var_0.d), -18756i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1104f, -617f, -232f) - vec3<f32>(-190f, var_1.c, 1163f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 1955f, 1427f), vec3<f32>(2030f, var_1.a.x, var_1.a.x)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0.a.x, var_0.a.x, var_1.c)))), func_5(min(func_5(var_1.b, Struct_3(vec2<bool>(var_0.d, var_1.d), var_0.b.x, vec3<f32>(var_1.c, var_1.a.x, 194f), var_0.d, vec4<f32>(177f, var_0.c, var_0.c, -773f)), var_0.b.x).b, var_1.b), func_4(select(vec3<bool>(true, false, false), vec3<bool>(var_0.d, false, false), var_1.d)), max(0i, countOneBits(var_1.b.x))).b.x).a);
    let var_3 = func_4(select(vec3<bool>(all(vec2<bool>(var_0.d, true)), var_1.d, any(vec4<bool>(var_1.d, var_1.d, true, true))), select(vec3<bool>(true, !var_1.d, true), !(!vec3<bool>(var_0.d, var_0.d, var_0.d)), !(!vec3<bool>(var_1.d, false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~vec3<u32>(~var_0.e.x, _wgslsmith_mod_u32(var_1.e.x, u_input.c), func_5(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -9183i), var_3, -38623i).e.x), ~(~vec3<u32>(var_1.e.x, u_input.a, var_1.e.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.c), vec3<u32>(4294967295u, var_1.e.x, 56659u)) % vec3<u32>(32u)))), vec4<u32>(0u, func_2(), 4294967295u, u_input.a), vec2<u32>(_wgslsmith_mult_u32(1u, reverseBits(12004u)), ~max(~1u, _wgslsmith_add_u32(1u, u_input.a))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-961f - var_3.e.x), -1430f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(621f))))))));
}

