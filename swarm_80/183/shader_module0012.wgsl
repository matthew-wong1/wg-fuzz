struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(vec2<bool>(!any(vec2<bool>(false, true)) == false, true), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1002f)))), -1000f, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))))), _wgslsmith_f_op_f32(1f - 1244f));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(var_0.b.a + var_0.b.a))), var_0.b.a, 139f, -714f))), !select(!(!var_0.a.x), var_0.a.x, var_0.a.x), true, select(vec2<bool>(any(vec3<bool>(false, var_0.a.x, var_0.a.x)), var_0.a.x), vec2<bool>(all(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)) == !var_0.a.x, false), all(vec4<bool>(!var_0.a.x, true, all(vec3<bool>(var_0.a.x, true, var_0.a.x)), true))));
    let var_2 = vec2<bool>(var_1.c, any(vec2<bool>(var_0.a.x, var_1.a.x != _wgslsmith_f_op_f32(-var_0.b.a))));
    let var_3 = Struct_5(~_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b, u_input.a.x)) ^ abs(vec2<i32>(1i, u_input.a.x)), abs(vec2<i32>(u_input.c.x, -11690i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.a.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.zz - var_1.a.wz)))))), Struct_3(vec2<bool>(true, any(!vec3<bool>(var_0.a.x, var_2.x, var_1.b))), Struct_1(1390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))), abs(vec3<u32>(1u, 1u, 1u)));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1255f, 1000f, 1611f, var_3.b.x)))))), var_3.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.a + -279f))), var_3.c.c) < -667f, select(var_2, select(vec2<bool>(true, var_2.x), vec2<bool>(all(vec4<bool>(true, var_2.x, var_2.x, var_3.c.a.x)), false), var_2.x), vec2<bool>(true, false)));
    return _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = vec2<bool>(true, false);
    let var_2 = vec3<f32>(var_0, 514f, _wgslsmith_f_op_f32(f32(-1f) * -1392f));
    var_1 = select(vec2<bool>(any(select(vec2<bool>(var_1.x, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(var_1.x, true))), false), vec2<bool>(var_1.x, all(select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), var_1.x))), !(!select(select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), var_1.x), !vec2<bool>(var_1.x, false), true)));
    let var_3 = select(vec2<i32>(max(1i, -u_input.d) >> (1u % 32u), ~arg_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(37915i, u_input.b)), arg_0.x << (0u % 32u)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, arg_0.x), ~(-1i)), -arg_0.x), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i) & vec2<i32>(arg_0.x, u_input.a.x), _wgslsmith_add_vec2_i32(arg_0.zy, vec2<i32>(-1i, 27108i)))), !any(vec4<bool>(true, true, true, true)));
    return Struct_1(_wgslsmith_f_op_f32(trunc(-1603f)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(-1470f));
    var var_1 = Struct_2(Struct_1(arg_2.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var_1 = Struct_2(func_2(abs(-vec3<i32>(-25163i, 65588i, u_input.a.x))));
    var var_3 = arg_1;
    return Struct_3(!vec2<bool>(arg_1.x, all(select(vec2<bool>(arg_1.x, var_3.x), vec2<bool>(true, arg_1.x), vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-946f - _wgslsmith_f_op_f32(var_2 * arg_2.a)))), -1051f);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-497f - arg_0.b.a), func_4(-166f, vec4<bool>(arg_0.a.x, false, true, true), Struct_1(-481f), arg_0.b).c, _wgslsmith_f_op_f32(select(arg_0.b.a, arg_0.c, arg_0.a.x)), _wgslsmith_f_op_f32(min(-779f, -553f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 841f, -854f, arg_0.b.a) - vec4<f32>(arg_0.c, -383f, arg_0.c, arg_0.c)))), arg_0.a.x, arg_0.a.x, arg_0.a);
    var var_1 = Struct_4(var_0.a, false, false, func_4(_wgslsmith_f_op_f32(func_3()), vec4<bool>(!select(arg_0.a.x, true, false), !(!var_0.d.x), any(var_0.d), !any(vec3<bool>(false, var_0.c, arg_0.a.x))), Struct_1(_wgslsmith_f_op_f32(-322f - _wgslsmith_f_op_f32(max(-439f, -1305f)))), arg_0.b).a);
    let var_2 = vec2<i32>(6777i, -u_input.d);
    let var_3 = var_1.a.wx;
    var var_4 = var_0.d;
    return func_2(countOneBits(~(abs(u_input.a.zwz) << (countOneBits(vec3<u32>(arg_1, arg_1, 51500u)) % vec3<u32>(32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_5 {
    let var_0 = min(1u, 1u);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, -1061f, 1000f, 1325f)) + vec4<f32>(345f, arg_1.a.a, arg_0.a.a, arg_0.a.a)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1727f, _wgslsmith_f_op_f32(1077f + 751f), 654f, _wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, arg_0.a.a, -1299f, arg_1.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(956f, -1701f, -577f, 1470f))))))), true, true, select(func_4(arg_0.a.a, select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), Struct_1(_wgslsmith_div_f32(arg_1.a.a, -221f)), arg_1.a).a, !func_4(arg_0.a.a, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), Struct_1(arg_1.a.a), Struct_1(arg_0.a.a)).a, func_4(-516f, vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec4<bool>(true, true, false, false)), false, true), arg_1.a, arg_1.a).a.x));
    var var_2 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(select(657f, 1343f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.a, 1124f)))))), select(select(select(vec4<bool>(true, false, var_1.b, false), vec4<bool>(true, var_1.b, true, var_1.c), !vec4<bool>(var_1.d.x, false, false, true)), select(select(vec4<bool>(var_1.b, var_1.d.x, true, false), vec4<bool>(var_1.d.x, false, true, true), vec4<bool>(var_1.b, var_1.d.x, false, var_1.d.x)), select(vec4<bool>(var_1.c, false, var_1.b, var_1.c), vec4<bool>(var_1.d.x, false, var_1.b, var_1.d.x), var_1.b), vec4<bool>(var_1.d.x, var_1.b, var_1.b, var_1.c)), var_1.d.x), vec4<bool>(any(var_1.d), var_1.d.x, false | all(var_1.d), (u_input.a.x & -1i) == u_input.c.x), !(!(!vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x)))), arg_0.a, Struct_1(var_1.a.x));
    let var_3 = min((min(_wgslsmith_clamp_i32(-2147483647i, u_input.d, 2442i), select(u_input.c.x, 0i, false)) >> (~(var_0 & var_0) % 32u)) | u_input.c.x, u_input.a.x);
    var_2 = func_4(-712f, select(select(vec4<bool>(any(vec4<bool>(true, var_1.d.x, false, false)), var_1.d.x, true, true), vec4<bool>(true, true, any(vec2<bool>(var_1.c, var_2.a.x)), any(vec4<bool>(var_1.c, true, var_2.a.x, true))), all(!var_2.a)), select(vec4<bool>(true, true, false, func_4(arg_0.a.a, vec4<bool>(true, var_2.a.x, var_1.d.x, var_2.a.x), arg_1.a, Struct_1(562f)).a.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, var_2.a.x, var_1.d.x), vec4<bool>(var_2.a.x, false, false, true)), !vec4<bool>(var_1.b, true, var_2.a.x, false), vec4<bool>(var_1.d.x, false, true, true)), !select(vec4<bool>(var_1.d.x, true, var_1.c, var_2.a.x), vec4<bool>(var_1.b, true, var_2.a.x, true), var_2.a.x)), func_4(465f, !vec4<bool>(var_1.c, var_2.a.x, var_1.b, false), arg_1.a, func_5(func_4(-831f, vec4<bool>(var_2.a.x, var_2.a.x, false, var_1.c), arg_1.a, Struct_1(-402f)), reverseBits(var_0))).a.x), Struct_1(var_2.c), arg_1.a);
    return Struct_5(vec2<i32>(~(-2147483647i), abs(24960i | var_3)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.a.xy))))), Struct_3(!var_2.a, func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a) - func_4(1060f, vec4<bool>(var_1.b, var_1.c, true, false), arg_0.a, arg_0.a).b.a), select(select(vec4<bool>(var_1.b, true, var_2.a.x, false), vec4<bool>(false, var_1.b, var_2.a.x, var_1.d.x), var_2.a.x), select(vec4<bool>(var_1.b, false, true, var_1.d.x), vec4<bool>(true, true, var_1.b, true), vec4<bool>(false, var_2.a.x, true, false)), var_2.a.x || false), Struct_1(arg_1.a.a), func_4(298f, select(vec4<bool>(false, true, var_2.a.x, true), vec4<bool>(false, false, var_2.a.x, true), vec4<bool>(var_2.a.x, var_1.d.x, false, var_1.b)), arg_1.a, arg_0.a).b).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.c + -886f), var_2.c)))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(0u), 34136u, _wgslsmith_add_u32(var_0, reverseBits(var_0))), ~select(vec3<u32>(var_0, 91647u, 1u), ~vec3<u32>(1u, var_0, var_0), vec3<bool>(var_2.a.x, false, true))));
}

fn func_1() -> Struct_5 {
    return func_6(Struct_2(func_5(func_4(_wgslsmith_f_op_f32(round(302f)), vec4<bool>(true, true, true, false), func_2(u_input.c), func_2(vec3<i32>(u_input.b, u_input.a.x, 36787i))), ~29096u)), Struct_2(Struct_1(-485f)));
}

fn func_7(arg_0: Struct_5, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = 1u;
    var var_1 = arg_0.b.x;
    return !(!select(!arg_0.c.a, arg_0.c.a, any(!vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-260f + -1335f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f - 779f) + _wgslsmith_f_op_f32(471f - -1092f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -548f)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-696f, 461f, 1384f, -2241f))) + vec4<f32>(-226f, 1450f, 862f, 1169f))))));
    var_0 = select(!func_7(func_6(Struct_2(Struct_1(-2614f)), Struct_2(Struct_1(-631f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, -1658f, 122f, -832f))), !func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, -151f)), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), func_4(_wgslsmith_f_op_f32(f32(-1f) * -628f), vec4<bool>(true, true, true, true), Struct_1(230f), Struct_1(196f)).b, Struct_1(-173f)).a, vec2<bool>(true, true));
    var var_1 = false;
    var_1 = !func_6(Struct_2(Struct_1(-438f)), Struct_2(Struct_1(-446f))).c.a.x && true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 363f)), -1444f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, -1291f, true)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_1().c.c, _wgslsmith_f_op_f32(-1039f + 804f))))), 235f, _wgslsmith_f_op_f32(-func_6(Struct_2(Struct_1(1532f)), Struct_2(Struct_1(-647f))).c.c));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(505f, _wgslsmith_f_op_f32(f32(-1f) * -394f)), -994f, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~(~0u)), _wgslsmith_div_u32(max(71150u << (1u % 32u), ~0u), _wgslsmith_add_u32(~1u, 1u))), _wgslsmith_f_op_f32(var_2.x + -1520f), vec3<u32>(firstTrailingBit(4294967295u), func_6(Struct_2(func_5(Struct_3(vec2<bool>(var_0.x, var_0.x), Struct_1(-1027f), 810f), 1u)), Struct_2(func_5(Struct_3(vec2<bool>(var_0.x, var_0.x), Struct_1(var_2.x), var_2.x), 0u))).d.x, abs(firstTrailingBit(55634u))), vec4<i32>(u_input.d, 0i, reverseBits(firstLeadingBit(-61523i)), u_input.a.x), 2147483647i);
}

