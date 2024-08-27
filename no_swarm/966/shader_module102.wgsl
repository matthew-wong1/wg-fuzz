struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -26080i;
    let var_1 = ~firstLeadingBit(u_input.a.x);
    let var_2 = 3647i;
    let var_3 = arg_0.b.b;
    var var_4 = 35892u;
    return arg_0.a;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = any(!select(arg_0.c.yx, arg_0.c.yz, arg_0.c.x || true));
    let var_1 = -2147483647i;
    var var_2 = arg_0;
    let var_3 = Struct_3(arg_0.d.d);
    var var_4 = var_3.a;
    return !(!var_0);
}

fn func_1() -> u32 {
    let var_0 = 967f;
    let var_1 = true;
    var var_2 = var_1;
    var_2 = true;
    var_2 = all(vec4<bool>(func_3(Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, 31141u, 25141u, 0u), vec2<f32>(440f, -726f), vec2<i32>(0i, -1i)), func_2(Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec2<f32>(var_0, -741f), vec2<i32>(12624i, -6931i)), Struct_1(u_input.a.x, vec4<u32>(35285u, 59618u, 0u, u_input.a.x), vec2<f32>(-555f, var_0), vec2<i32>(0i, 32800i)), vec3<bool>(var_1, var_1, false), Struct_1(u_input.a.x, vec4<u32>(1900u, 12941u, 47273u, u_input.a.x), vec2<f32>(var_0, -1480f), vec2<i32>(-61598i, -1i)), vec3<f32>(var_0, var_0, var_0))), vec3<bool>(var_1, true, true), func_2(Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4802u), vec2<f32>(-890f, var_0), vec2<i32>(32785i, 0i)), Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(var_0, var_0), vec2<i32>(49821i, 0i)), vec3<bool>(var_1, var_1, var_1), Struct_1(13356u, vec4<u32>(52454u, 105882u, 0u, u_input.a.x), vec2<f32>(var_0, var_0), vec2<i32>(2147483647i, -42684i)), vec3<f32>(-267f, var_0, -1045f))), vec3<f32>(var_0, var_0, var_0))), true, !(!(!var_1)), var_1));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))), ~vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, 92581u))), u_input.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = select(max(_wgslsmith_add_vec4_u32((vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u) >> (vec4<u32>(u_input.a.x, arg_0.x, 1u, 36096u) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_0.x) % vec4<u32>(32u)), vec4<u32>(arg_0.x, 1u, arg_0.x, 49210u) | abs(vec4<u32>(arg_0.x, u_input.a.x, 4294967295u, arg_0.x))), func_2(Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(-1000f, -751f), vec2<i32>(1i, -41242i)), Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(1000f, 356f), vec2<i32>(arg_1, arg_1)), vec3<bool>(arg_2, false, arg_2), Struct_1(3709u, vec4<u32>(u_input.a.x, 1324u, 0u, 4294967295u), vec2<f32>(911f, -900f), vec2<i32>(1i, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(1077f, -1690f, -265f), vec3<f32>(-1242f, 207f, -1565f)))).b), ~func_2(Struct_2(func_2(Struct_2(Struct_1(arg_0.x, vec4<u32>(arg_0.x, 46817u, 31969u, 4294967295u), vec2<f32>(584f, 305f), vec2<i32>(arg_1, 2147483647i)), Struct_1(1u, vec4<u32>(1u, 31482u, arg_0.x, 51327u), vec2<f32>(2479f, -1087f), vec2<i32>(arg_1, -41849i)), vec3<bool>(arg_2, true, false), Struct_1(arg_0.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec2<f32>(144f, -1316f), vec2<i32>(arg_1, 12145i)), vec3<f32>(207f, 1517f, -146f))), func_2(Struct_2(Struct_1(u_input.a.x, vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 82590u), vec2<f32>(-115f, -1400f), vec2<i32>(-2147483647i, arg_1)), Struct_1(arg_0.x, vec4<u32>(u_input.a.x, 1u, arg_0.x, 17106u), vec2<f32>(858f, 2127f), vec2<i32>(arg_1, arg_1)), vec3<bool>(arg_2, true, false), Struct_1(arg_0.x, vec4<u32>(0u, arg_0.x, u_input.a.x, u_input.a.x), vec2<f32>(726f, 508f), vec2<i32>(1i, arg_1)), vec3<f32>(-603f, -1310f, 236f))), !vec3<bool>(arg_2, false, arg_2), func_2(Struct_2(Struct_1(arg_0.x, vec4<u32>(u_input.a.x, 27642u, u_input.a.x, 4294967295u), vec2<f32>(547f, 960f), vec2<i32>(arg_1, 1i)), Struct_1(4294967295u, vec4<u32>(arg_0.x, 0u, 1u, 27166u), vec2<f32>(-227f, -946f), vec2<i32>(-7359i, 1i)), vec3<bool>(true, arg_2, arg_2), Struct_1(u_input.a.x, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x), vec2<f32>(-317f, 1000f), vec2<i32>(arg_1, arg_1)), vec3<f32>(-175f, 569f, -622f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(112f, 1783f, 564f) + vec3<f32>(1651f, 2268f, -927f)))).b, all(!select(vec4<bool>(arg_2, true, true, false), select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(arg_2, true, arg_2, true)), vec4<bool>(arg_2, arg_2, true, arg_2))));
    var var_1 = Struct_3(vec2<i32>(arg_1, -(~(-arg_1))));
    let var_2 = select(arg_2, all(vec3<bool>(true, arg_2, !arg_2 & false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x >= arg_1, arg_2, true, arg_2 & arg_2), vec4<bool>(all(vec4<bool>(false, arg_2, false, arg_2)), true, any(vec4<bool>(true, arg_2, false, arg_2)), select(arg_2, true, arg_2)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(545f)));
    var var_4 = Struct_3(_wgslsmith_clamp_vec2_i32(var_1.a, reverseBits(abs(var_1.a)) ^ vec2<i32>(-2147483647i, 1i), ~(-select(var_1.a, vec2<i32>(arg_1, var_1.a.x), true))));
    return Struct_1(4294967295u, _wgslsmith_sub_vec4_u32(reverseBits(~abs(var_0)), var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3 * 725f), -269f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(301f, var_3)))))), _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_4.a.x, var_4.a.x) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(var_4.a.x, var_1.a.x), var_4.a))), _wgslsmith_add_vec2_i32(var_1.a, firstTrailingBit(var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(select(~vec3<u32>(1u, 20378u, 0u), vec3<u32>(firstTrailingBit(60612u), ~u_input.a.x, func_1()), select(false, true, false) || true), -2147483647i, false), func_4(vec3<u32>((6677u & u_input.a.x) << ((u_input.a.x << (u_input.a.x % 32u)) % 32u), min(u_input.a.x, ~u_input.a.x), 77242u), 2147483647i, max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -6155i, 12304i, -2147483647i), vec4<i32>(18088i, 0i, 0i, 9118i))) <= _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~1i)), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(true, false, true), vec3<bool>(func_3(Struct_2(Struct_1(24505u, vec4<u32>(27497u, 29932u, 0u, 0u), vec2<f32>(598f, 1000f), vec2<i32>(-1i, -9256i)), Struct_1(0u, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u), vec2<f32>(-1313f, -1646f), vec2<i32>(2147483647i, -69496i)), vec3<bool>(false, false, false), Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, 32937u, u_input.a.x), vec2<f32>(-261f, -741f), vec2<i32>(-282i, 56382i)), vec3<f32>(-1177f, -141f, 1000f))), true, any(vec4<bool>(true, false, false, false)))), func_4(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 34790u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(4294967295u, 0u, u_input.a.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 17424i, 2147483647i, 1i), ~vec4<i32>(1i, 1i, 1i, 1i)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1269f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -230f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1486f - -1008f) * 563f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = var_0.a;
    var_1 = var_0.a;
    let var_2 = func_2(Struct_2(Struct_1(firstLeadingBit(u_input.a.x << (25562u % 32u)), ~(~vec4<u32>(var_0.d.a, u_input.a.x, 0u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(556f, var_0.d.c.x)) * var_0.d.c), vec2<i32>(var_1.d.x, -61831i)), var_0.b, var_0.c, func_2(Struct_2(func_4(var_1.b.zzx, var_1.d.x, true), func_4(vec3<u32>(47112u, u_input.a.x, var_1.a), var_1.d.x, var_0.c.x), vec3<bool>(var_0.c.x, var_0.c.x, true), Struct_1(var_0.b.a, vec4<u32>(24908u, var_1.b.x, var_1.b.x, var_0.d.a), var_1.c, vec2<i32>(1i, -2147483647i)), vec3<f32>(var_0.d.c.x, var_1.c.x, -1086f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.e, var_0.e)) * _wgslsmith_f_op_vec3_f32(abs(var_0.e))), var_0.e)))).c.x;
    var_1 = func_2(Struct_2(Struct_1(_wgslsmith_sub_u32(var_1.a, select(var_0.b.a, 4294967295u, true)), countOneBits(~vec4<u32>(u_input.a.x, 47465u, 1u, 0u)), vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x * -157f)), vec2<i32>(~var_0.a.d.x, 24042i)), func_4(~max(vec3<u32>(u_input.a.x, var_1.b.x, var_1.b.x), vec3<u32>(var_0.d.b.x, 81354u, var_0.a.b.x)), -select(0i, var_1.d.x, false), true | var_0.c.x), var_0.c, func_2(var_0), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_0.e.x, -499f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_0.e + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e), _wgslsmith_f_op_vec3_f32(-var_0.e)))));
    let var_4 = var_0;
    var_1 = Struct_1(var_0.a.b.x, ~vec4<u32>(1u, var_0.d.a, _wgslsmith_clamp_u32(57379u, 31396u, var_0.d.a) >> ((33649u & u_input.a.x) % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b.x, u_input.a.x), 72060u >> (var_1.a % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), vec2<i32>(-45511i, var_4.a.d.x << (_wgslsmith_mult_u32(countOneBits(1u), ~36362u) % 32u)));
    var var_5 = reverseBits(reverseBits(func_4(select(vec3<u32>(4294967295u, var_4.d.b.x, 4294967295u), vec3<u32>(var_1.b.x, 44456u, var_1.b.x), false), var_4.d.d.x, true).b.zz) & countOneBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(-(~vec3<i32>(8481i, var_1.d.x, -1i)), min(vec3<i32>(var_0.d.d.x, var_4.b.d.x, 1i), vec3<i32>(var_1.d.x, -10362i, 34638i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d.x, var_1.d.x, -1i), vec3<i32>(var_0.b.d.x, -19396i, -35072i))));
}

