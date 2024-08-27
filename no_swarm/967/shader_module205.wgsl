struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -946f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f * -283f) + _wgslsmith_f_op_f32(floor(-427f))) + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(574f + -186f)))))));
    let var_1 = arg_0.a;
    var_0 = -1983f;
    var_0 = _wgslsmith_f_op_f32(step(-1584f, 648f));
    return abs(vec3<i32>(-2147483647i, ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a | u_input.a), 29144i));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_i32(firstTrailingBit(abs(u_input.a.x | -20939i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(u_input.a), func_3(Struct_3(Struct_1(2147483647i), u_input.a.x, 4294967295u), Struct_1(u_input.a.x), 4294967295u, arg_1)), -35132i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, -825f, 1863f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(arg_0)))), arg_1.x < arg_1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(911f, arg_0.x, arg_2)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-542f * -1325f))))));
    var var_2 = Struct_3(var_0, 0i, reverseBits(firstLeadingBit(~arg_1.x << (~49507u % 32u))));
    let var_3 = select(arg_2, all(!(!select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), false))), arg_2);
    var var_4 = Struct_3(var_0, _wgslsmith_mod_i32(min(1i, -select(2147483647i, var_0.a, true)), (i32(-1i) * -u_input.a.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(29883u, 0u, 20268u, arg_1.x), vec4<u32>(var_2.c, 1u, 2336u, var_2.c)) % 32u)), firstTrailingBit(~arg_1.x));
    return 2147483647i;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~vec4<i32>(firstLeadingBit(~func_2(vec3<f32>(arg_1, -1135f, arg_1), vec3<u32>(7178u, 30102u, 4294967295u), true)), select(func_3(arg_0, arg_0.a, _wgslsmith_div_u32(arg_0.c, 56232u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, 0u, arg_0.c), vec3<u32>(1u, arg_0.c, arg_0.c))).x, abs(arg_0.b), !any(vec4<bool>(false, false, true, true))), ~arg_2.a.x, firstTrailingBit(i32(-1i) * -2147483647i));
    let var_1 = abs(~(~(vec4<u32>(67393u, arg_0.c, 4294967295u, arg_0.c) >> (~vec4<u32>(49317u, 1u, arg_0.c, arg_0.c) % vec4<u32>(32u)))));
    let var_2 = arg_0.a;
    var var_3 = any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), all(vec4<bool>(true, false, true, true)))) || (!any(vec4<bool>(true, true, false, true)) && (firstLeadingBit(0u) != (var_1.x << (~arg_0.c % 32u))));
    var_3 = false;
    return Struct_2(select(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(29845i, u_input.a.x, arg_2.a.x), var_0.yxx), arg_2.a ^ max(vec3<i32>(57939i, 49433i, 1i), u_input.a)), arg_2.a.x, select(true, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1279f, arg_1, 2014f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 2369f, arg_1))), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = ~vec4<i32>(_wgslsmith_mult_i32(~0i, _wgslsmith_sub_i32(u_input.a.x, arg_2.a) | u_input.a.x), -48269i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.a.x, arg_2.a, -1i), -vec4<i32>(arg_2.a, u_input.a.x, arg_2.a, u_input.a.x) << (select(vec4<u32>(4294967295u, 61513u, 1u, 1u), vec4<u32>(91285u, 47193u, 48161u, 0u), vec4<bool>(arg_1.x, false, true, arg_1.x)) % vec4<u32>(32u))), -8433i);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~32031u) << (1u % 32u), 4294967295u, ~15828u, 1u), vec4<u32>(~(~1u), ~abs(13127u), 40696u, ~1u));
    let var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, 2147483647i, 41090i, arg_2.a)), ~vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, -30034i)) << (1u % 32u), abs(~var_0.x) << (1u % 32u), ~(-select(11379i, var_0.x, arg_0.x))));
    var_1 = _wgslsmith_mod_u32(~(~min(59569u, 23896u)) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(0u, 6947u, 59789u))), _wgslsmith_clamp_u32(~27582u, 4294967295u, 67554u)) % 32u), ~4294967295u);
    let var_3 = Struct_1(~func_2(_wgslsmith_f_op_vec3_f32(sign(arg_2.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 1u, 23619u)), var_0.x <= (61362i >> (0u % 32u))));
    return i32(-1i) * -29481i;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = abs(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_add_u32(1u, ~(~8750u))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(select(u_input.a.x << (16424u % 32u), ~arg_2.a, arg_1.x), -26578i), -31613i, arg_0, u_input.a.x) << (_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(21922u, 703u, 46586u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 5631u, 15281u, 37874u), vec4<u32>(33783u, 0u, 34331u, 1u), vec4<u32>(36639u, 51945u, 24852u, 9743u))), vec4<u32>(~(~4294967295u), _wgslsmith_mult_u32(1u, 1u), 1u, 0u)) % vec4<u32>(32u));
    var var_2 = ~(~vec3<u32>(~(~47363u), ~min(0u, 29145u), reverseBits(1u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 459f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1354f, 530f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(869f, -114f))), _wgslsmith_f_op_f32(-486f - -1089f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1879f, _wgslsmith_div_f32(-1527f, -155f))), 1187f) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1255f)), 775f), _wgslsmith_f_op_vec2_f32(vec2<f32>(882f, 312f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1812f) + vec2<f32>(1172f, -727f))))));
    var var_4 = var_3.x;
    return select(!select(!select(vec2<bool>(false, arg_1.x), arg_1.yx, arg_1.x), select(vec2<bool>(true, true), !vec2<bool>(arg_1.x, false), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), arg_1.xx)), arg_1.x), !vec2<bool>(true || (true == arg_1.x), true), vec2<bool>(var_2.x < 13073u, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(u_input.a.x & func_4(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), func_1(Struct_3(Struct_1(11738i), -2147483647i, 17490u), -522f, Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), select(vec3<bool>(true, select(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), Struct_1(1i), Struct_1(u_input.a.x | _wgslsmith_sub_i32(-18545i, -18011i))), !vec2<bool>(func_5(~u_input.a.x, vec3<bool>(true, true, true), Struct_1(u_input.a.x), Struct_1(-12232i)).x, true), any(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))))));
    var_0 = vec2<bool>(true, true);
    var var_1 = !select(select(vec3<bool>(true, any(vec3<bool>(true, true, var_0.x)), true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(u_input.a.x < u_input.a.x, true, true)), select(!(!vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, func_5(-1i, vec3<bool>(true, true, var_0.x), Struct_1(2147483647i), Struct_1(u_input.a.x)).x, true || var_0.x)), vec3<bool>(select(all(vec2<bool>(true, false)), true, var_0.x), any(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x)), !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var var_2 = abs(_wgslsmith_add_u32(~(~_wgslsmith_add_u32(8155u, 74763u)), select(31079u, ~4294967295u, any(vec4<bool>(true, var_0.x, true, var_1.x))) ^ _wgslsmith_div_u32(abs(50086u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(18907u, 1u, 65267u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1626f, 321f, -816f, 1154f))))), vec4<f32>(_wgslsmith_div_f32(-2339f, _wgslsmith_f_op_f32(ceil(-603f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1500f, -1268f) - 1f), 765f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1026f, -846f), -699f)))));
}

