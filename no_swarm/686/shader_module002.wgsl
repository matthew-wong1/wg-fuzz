struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = -177f;
    let var_1 = true;
    let var_2 = select(vec4<bool>(false, !any(select(vec3<bool>(var_1, var_1, true), vec3<bool>(true, true, true), var_1)), !(!var_1 & all(vec4<bool>(false, var_1, true, true))), true), vec4<bool>(true & !any(vec3<bool>(var_1, false, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-588f, var_0) - _wgslsmith_f_op_f32(max(var_0, 500f))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * -1547f), -613f, true)), any(select(vec4<bool>(false, false, false, var_1), !vec4<bool>(var_1, false, var_1, false), true)), true), select(var_1, _wgslsmith_f_op_f32(trunc(var_0)) <= _wgslsmith_f_op_f32(-var_0), any(!select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(var_1, true, false, var_1), vec4<bool>(var_1, false, var_1, true)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0)) - var_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(702f, var_0)), _wgslsmith_f_op_f32(-var_0))) - 607f)));
    let var_4 = select(var_2.xyz, var_2.wxz, var_2.x == select(all(select(vec4<bool>(false, false, true, var_1), vec4<bool>(var_1, true, true, var_1), false)), !(!var_2.x), !var_1 & false));
    return select(vec3<u32>(_wgslsmith_dot_vec2_u32(~select(u_input.a.yw, u_input.a.zz, vec2<bool>(var_1, var_4.x)), vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~u_input.a.x)), u_input.a.x, 62940u), vec3<u32>(13255u | min(_wgslsmith_div_u32(u_input.c, 53823u), u_input.a.x << (4294967295u % 32u)), u_input.a.x, u_input.a.x), any(vec3<bool>(true, var_2.x, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(~_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.a.yww, vec3<u32>(u_input.a.x, 0u, 22565u)), vec3<u32>(select(u_input.a.x, 4294967295u, false), 44316u, ~u_input.c)));
    var var_1 = Struct_1(~((~u_input.c << (~4294967295u % 32u)) >> (22075u % 32u)), ~u_input.a.x, _wgslsmith_f_op_f32(-210f * -393f), ~func_3(_wgslsmith_div_i32(u_input.b, -40023i) >> ((var_0.x >> (var_0.x % 32u)) % 32u)), select(select(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(~u_input.b, 42295i, reverseBits(6392i)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-24658i, -38047i, 1i), vec3<i32>(-20699i, 0i, u_input.b)), -vec3<i32>(u_input.b, -17873i, u_input.b))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_2 = Struct_1(abs(~1u), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1325f))) - var_1.c), var_0, vec3<i32>(0i, 0i, ~23988i));
    let var_3 = all(!vec2<bool>(any(vec3<bool>(true, true, true)), var_1.d.x <= ~0u));
    var var_4 = Struct_1(78366u, 9617u, -144f, ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), var_2.d)) >> (var_0 % vec3<u32>(32u)), max(vec3<i32>(-_wgslsmith_dot_vec2_i32(var_1.e.zz, vec2<i32>(var_1.e.x, -1i)), var_1.e.x << ((var_1.b | 8373u) % 32u), ~(~u_input.b)), -vec3<i32>(~u_input.b, -1i, abs(var_1.e.x))));
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1633f), -445f, !(false & (false & all(vec4<bool>(true, true, true, false))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, arg_0.c, -285f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, var_0, arg_0.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1853f, arg_0.c) - vec3<f32>(1000f, arg_0.c, 1040f)), vec3<f32>(var_0, arg_0.c, -1633f)))))));
    var var_2 = u_input.a;
    var_2 = vec4<u32>(4294967295u, ~29616u, u_input.c, select(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(0u, u_input.c, var_2.x, arg_0.b)), 1u, false) << (32182u % 32u));
    var_2 = _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>((~arg_0.d.x >> (1u % 32u)) << (~4294967295u % 32u), _wgslsmith_div_u32(4294967295u, ~var_2.x) << (countOneBits(firstTrailingBit(var_2.x)) % 32u), countOneBits(44212u), var_2.x));
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = arg_1;
    var_0 = func_4(func_4(Struct_1(~reverseBits(21031u), 4294967295u, -555f, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b, 1u, 63511u), u_input.a.xyz)), -var_0.e ^ var_0.e)));
    var_0 = Struct_1(_wgslsmith_mod_u32(~96520u ^ (~4294967295u << (~arg_0 % 32u)), 40433u), ~(~28436u), _wgslsmith_f_op_f32(-var_0.c), ~_wgslsmith_div_vec3_u32(firstTrailingBit(max(arg_1.d, var_0.d)), min(vec3<u32>(4278u, arg_0, var_0.a) & arg_1.d, vec3<u32>(24343u, arg_1.b, var_0.b))), -vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, -36633i, -8572i, arg_1.e.x), vec4<i32>(-1i, -20382i, var_0.e.x, 1i)), 39341i, all(vec3<bool>(false, true, false))), arg_2, ~arg_2));
    var var_1 = Struct_1(firstTrailingBit(var_0.b), arg_0, _wgslsmith_f_op_f32(sign(-393f)), arg_1.d, func_4(func_2()).e);
    var_1 = arg_1;
    return ~var_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(-1i << (1u % 32u), -1i), -27846i);
    let var_1 = select(~vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2.d.zy, vec2<u32>(arg_1.x, arg_2.d.x)), arg_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, arg_0.d.x), arg_0.d), 20726u), ~u_input.a, select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(var_0.x == var_0.x, any(vec3<bool>(true, true, true)), true, arg_0.c != arg_2.c))) & abs(u_input.a);
    let var_2 = Struct_1(~1u, ~67077u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - func_2().c)), ~arg_2.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(func_2().e.x, _wgslsmith_div_i32(-1i, arg_0.e.x), ~5060i) >> (arg_2.d % vec3<u32>(32u)), -arg_2.e, arg_3.e));
    var_0 = vec2<i32>(_wgslsmith_mod_i32(arg_3.e.x, 24415i), ~max(-3747i, u_input.b));
    let var_3 = func_2();
    return func_4(var_3);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    let var_0 = func_6(arg_0, abs(vec2<u32>(max(~0u, _wgslsmith_mod_u32(arg_0.d.x, u_input.a.x)), 5107u & reverseBits(u_input.a.x))), Struct_1(43940u, func_5(5668u, func_4(func_2()), 1i ^ arg_0.e.x), arg_0.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(18979u, arg_0.a, 8567u), ~1318u, 4294967295u), u_input.a.zxy, ~(~vec3<u32>(40750u, 4294967295u, u_input.c))), arg_0.e), Struct_1(u_input.a.x, func_3(~(-14119i)).x, 376f, vec3<u32>(~arg_0.a | 49521u, ~(~u_input.c), u_input.c), arg_0.e));
    let var_1 = _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.d.zy), max(arg_0.d.zy, vec2<u32>(arg_0.d.x, 4294967295u))), _wgslsmith_sub_u32(arg_0.a, ~49582u), var_0.b, 0u), vec4<u32>(arg_0.b, reverseBits(_wgslsmith_add_u32(68684u, 60743u) << (_wgslsmith_mult_u32(arg_0.b, arg_0.a) % 32u)), ~7780u, u_input.c));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - var_0.c) + -412f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(1084f * 112f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1586f)))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-957f, var_3.c, 1641f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-292f, var_3.c, -587f))) - vec3<f32>(arg_0.c, var_0.c, -918f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_3.c, -861f, arg_1.x)), _wgslsmith_f_op_f32(-arg_0.c), 1870f) + _wgslsmith_div_vec3_f32(vec3<f32>(-947f, 1041f, var_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -504f, 546f) - vec3<f32>(arg_0.c, -1498f, arg_0.c))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -655f, arg_0.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, 438f, 1309f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(442f)), 166f, _wgslsmith_f_op_f32(-var_3.c))), !arg_1))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(select(true, true, true), false, !all(vec2<bool>(true, false)), false), select(vec4<bool>(u_input.c >= u_input.c, any(vec4<bool>(false, false, true, true)), true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), any(vec4<bool>(false, false, true, false)))), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(34467u, u_input.c, u_input.c), 23974u, 68855u, ~func_1(Struct_1(u_input.a.x, 4294967295u, 415f, vec3<u32>(8938u, 4294967295u, 35343u), vec3<i32>(u_input.b, 20316i, 20487i)), vec3<bool>(var_0, true, false), true)), u_input.a), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 36725u), ~u_input.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(459f))), 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(-353f, _wgslsmith_div_f32(2280f, -846f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-405f * -512f), _wgslsmith_div_f32(-244f, -160f))))), u_input.a.xyz, reverseBits(_wgslsmith_sub_vec3_i32(max(vec3<i32>(905i, -5022i, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_2 = Struct_1(firstLeadingBit(var_1.b), ~countOneBits(~var_1.a), -736f, ~vec3<u32>(abs(1u >> (var_1.b % 32u)), ~0u, 4294967295u), _wgslsmith_sub_vec3_i32(~abs(var_1.e), abs(vec3<i32>(u_input.b, -2147483647i, var_1.e.x)) << (var_1.d % vec3<u32>(32u))));
    var_1 = Struct_1(58003u, 100715u, _wgslsmith_f_op_f32(floor(360f)), var_1.d >> (var_2.d % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-11883i, -1i, -5096i), vec3<i32>(-31456i, var_1.e.x, var_2.e.x)) & var_2.e, _wgslsmith_sub_vec3_i32(var_2.e, _wgslsmith_clamp_vec3_i32(select(var_1.e, vec3<i32>(8139i, 2147483647i, 0i), vec3<bool>(true, var_0, var_0)), vec3<i32>(var_2.e.x, var_1.e.x, 35783i), abs(var_2.e)))));
    var_1 = Struct_1(~_wgslsmith_add_u32(79564u, 64289u), firstTrailingBit(func_2().d.x), _wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_sub_vec3_u32(func_6(func_6(Struct_1(u_input.c, 0u, -110f, var_1.d, vec3<i32>(10945i, var_1.e.x, -28612i)), vec2<u32>(var_1.b, 68222u), Struct_1(var_2.d.x, 48435u, var_2.c, var_1.d, vec3<i32>(-18962i, u_input.b, var_1.e.x)), Struct_1(41036u, var_2.b, -880f, vec3<u32>(1937u, 1u, u_input.a.x), vec3<i32>(1i, var_2.e.x, u_input.b))), ~vec2<u32>(63284u, u_input.a.x), func_2(), Struct_1(1u, 8628u, var_2.c, vec3<u32>(var_1.d.x, 4294967295u, 4294967295u), var_1.e)).d & vec3<u32>(64451u, ~var_1.a, func_5(u_input.a.x, Struct_1(1u, 0u, var_2.c, vec3<u32>(u_input.c, 56243u, 1u), var_1.e), u_input.b)), func_4(func_4(func_2())).d), -(_wgslsmith_mult_vec3_i32(-var_1.e, vec3<i32>(u_input.b, u_input.b, -19422i)) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 5670i, var_2.e.x), vec3<i32>(u_input.b, -40998i, u_input.b))));
    var var_3 = ~0u;
    let var_4 = !vec4<bool>(false, false, all(vec4<bool>(true, var_0 | true, !var_0, u_input.b != var_1.e.x)), -_wgslsmith_dot_vec2_i32(var_1.e.xx, vec2<i32>(var_1.e.x, -4616i)) > _wgslsmith_clamp_i32(var_2.e.x, abs(var_2.e.x), ~(-21639i)));
    var_1 = Struct_1((~func_3(-1i).x | 1u) ^ var_1.d.x, _wgslsmith_dot_vec2_u32(~select(~var_1.d.zy, vec2<u32>(u_input.a.x, 39933u), true), ~(countOneBits(u_input.a.yy) ^ ~vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_f_op_f32(-207f * _wgslsmith_f_op_f32(floor(var_2.c))), min(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, 41857u, var_2.b)), vec3<u32>(13101u, 1u, u_input.a.x) << (vec3<u32>(65533u, 2477u, 18556u) % vec3<u32>(32u))), select(vec3<u32>(4294967295u >> (u_input.a.x % 32u), _wgslsmith_mult_u32(1u, 42525u), var_1.d.x), ~vec3<u32>(1u, 4294967295u, 51158u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(16813u, 27387u, 93501u), vec3<u32>(var_2.d.x, 85936u, 22807u)) % vec3<u32>(32u)), var_4.yxy)), var_2.e);
    var_1 = func_6(Struct_1(~firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 1u, _wgslsmith_f_op_f32(exp2(var_2.c)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.d.x, u_input.c, 1u), var_1.d)), -var_2.e & var_2.e), _wgslsmith_clamp_vec2_u32(~u_input.a.wz, vec2<u32>(1u, var_1.a) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(60670u, var_2.b), vec2<u32>(var_1.a, 34051u)), func_6(Struct_1(4294967295u, 1u, var_1.c, vec3<u32>(var_1.b, 1u, u_input.a.x), vec3<i32>(0i, var_1.e.x, var_2.e.x)), vec2<u32>(var_1.a, 29755u), Struct_1(var_1.d.x, 29237u, -1119f, vec3<u32>(79145u, 1u, var_1.b), var_2.e), Struct_1(var_2.b, var_1.d.x, -1372f, var_1.d, vec3<i32>(u_input.b, var_1.e.x, u_input.b))).d.zy) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.a.x & u_input.a.x, reverseBits(var_2.b)))), Struct_1(func_1(func_2(), !var_4.zwz, true), var_2.a, -297f, ~reverseBits(vec3<u32>(u_input.a.x, 42369u, var_2.a) ^ vec3<u32>(0u, var_1.d.x, 0u)), var_2.e), func_6(func_6(func_6(func_2(), countOneBits(u_input.a.wy), Struct_1(0u, var_2.a, 442f, vec3<u32>(u_input.c, 50996u, 1u), var_2.e), func_6(Struct_1(var_1.a, u_input.c, -1490f, vec3<u32>(u_input.a.x, 68328u, var_2.a), var_2.e), u_input.a.xw, Struct_1(4294967295u, var_2.a, var_1.c, vec3<u32>(4294967295u, var_2.d.x, var_2.b), var_2.e), Struct_1(0u, 42709u, -282f, vec3<u32>(36405u, var_1.b, var_2.b), var_1.e))), abs(var_1.d.yy), Struct_1(_wgslsmith_sub_u32(var_1.b, 1u), _wgslsmith_clamp_u32(37177u, u_input.c, 4294967295u), _wgslsmith_f_op_f32(-var_1.c), func_3(var_2.e.x), ~var_2.e), func_6(func_2(), vec2<u32>(0u, var_1.a) & var_1.d.yy, Struct_1(u_input.a.x, var_1.d.x, var_1.c, var_2.d, var_2.e), Struct_1(0u, var_2.b, var_1.c, vec3<u32>(65300u, u_input.c, 1u), var_1.e))), vec2<u32>(~(~var_2.d.x), u_input.c), func_4(Struct_1(max(1u, 0u), _wgslsmith_sub_u32(45680u, var_1.a), 1524f, vec3<u32>(var_2.a, 4294967295u, 16701u) << (var_1.d % vec3<u32>(32u)), vec3<i32>(var_1.e.x, 1i, u_input.b))), Struct_1(_wgslsmith_clamp_u32(abs(0u), ~106523u, 0u), 0u | _wgslsmith_mult_u32(var_1.b, 17451u), -546f, vec3<u32>(abs(36054u), _wgslsmith_mult_u32(28220u, var_2.b), var_2.b), var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(434f)), _wgslsmith_f_op_f32(sign(-1306f)));
}

