struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_4,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: f32) -> bool {
    var var_0 = Struct_3(arg_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(max(arg_0.b.x, arg_2)))), vec4<u32>(4743u, ~abs(~arg_0.e.d.c), 0u, 14084u), arg_0.e.d, min(countOneBits(firstLeadingBit(~vec2<u32>(0u, arg_0.a))), u_input.b.zz));
    let var_1 = vec2<f32>(-2020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.b + -897f)));
    let var_2 = vec3<f32>(-1000f, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, arg_0.c.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))));
    var var_3 = arg_0.e.d.a;
    var var_4 = u_input.c.x;
    return true;
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = !(!any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true))));
    var var_1 = Struct_3(select(vec4<bool>(false, true, true, false), vec4<bool>(any(!vec3<bool>(true, var_0, false)), all(vec2<bool>(true, true)), true, true), select(!(!vec4<bool>(var_0, var_0, true, false)), vec4<bool>(!var_0, var_0, true, var_0 | var_0), vec4<bool>(all(vec2<bool>(true, var_0)), var_0 | true, true, any(vec3<bool>(var_0, true, var_0))))), _wgslsmith_f_op_f32(1270f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + -1447f))))), _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 0u, 38539u, 11303u), min(min(arg_0, vec4<u32>(arg_0.x, 4294967295u, 1u, u_input.b.x)), ~arg_0), select(select(vec4<bool>(false, var_0, false, true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, false, true)), select(vec4<bool>(false, false, var_0, true), vec4<bool>(true, var_0, false, false), vec4<bool>(var_0, false, var_0, false)), vec4<bool>(false, false, false, false))), arg_0), Struct_1(false, firstTrailingBit(u_input.a.x), arg_0.x), vec2<u32>(arg_0.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, arg_0.zzy), u_input.c.x)));
    var_1 = Struct_3(vec4<bool>(any(vec3<bool>(var_0, any(vec4<bool>(var_1.a.x, var_1.d.a, false, var_0)), false)), -2147483647i != _wgslsmith_add_i32(u_input.a.x, var_1.d.b), false, any(vec2<bool>(select(false, false, var_0), true))), var_1.b, vec4<u32>(abs(u_input.b.x), u_input.c.x, firstTrailingBit(58621u), 35295u), Struct_1(u_input.a.x > max(_wgslsmith_dot_vec3_i32(vec3<i32>(-41097i, -2147483647i, 27898i), vec3<i32>(u_input.a.x, 0i, 45932i)), 2147483647i), var_1.d.b, arg_0.x), ~vec2<u32>(var_1.c.x, u_input.b.x) ^ ~(~var_1.c.xw));
    let var_2 = any(select(select(!(!var_1.a.zx), !var_1.a.yz, select(select(vec2<bool>(var_1.a.x, true), vec2<bool>(true, false), var_1.a.xy), select(vec2<bool>(var_0, true), vec2<bool>(var_1.d.a, var_1.d.a), vec2<bool>(var_0, true)), !vec2<bool>(var_1.d.a, true))), !var_1.a.xz, true));
    var var_3 = abs(_wgslsmith_sub_vec2_i32(u_input.a.wy, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-33310i, 52712i, var_1.d.b, var_1.d.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -50963i, u_input.a.x), u_input.a)), var_1.d.b)));
    return select((var_2 || false) | true, true, !any(vec3<bool>(true, all(vec3<bool>(true, true, false)), var_0 && false)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_5 {
    var var_0 = ~4294967295u;
    var_0 = 4294967295u;
    let var_1 = Struct_2(_wgslsmith_sub_vec3_i32(u_input.a.xww, u_input.a.xxw), min(vec2<i32>(u_input.a.x, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), u_input.a.yz), u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), -1034f, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(-var_1.d));
    let var_3 = Struct_5(~0u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_2.ww, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.d.xw, arg_0.zz))), !arg_1.x)))), Struct_4(var_1.d), Struct_3(!select(arg_1, select(arg_1, arg_1, arg_1), u_input.b.x != u_input.c.x), 469f, vec4<u32>(min(select(u_input.c.x, u_input.b.x, true), ~u_input.b.x), ~(u_input.c.x & 4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53547u, u_input.b.x), vec3<u32>(1u, u_input.b.x, 12637u)), 50867u), ~u_input.b.x), Struct_1(arg_1.x, ~countOneBits(u_input.a.x), u_input.c.x), ~(~vec2<u32>(u_input.b.x, u_input.c.x))), Struct_3(select(arg_1, select(arg_1, !arg_1, arg_1), true && any(vec3<bool>(arg_1.x, arg_1.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_1.d.x)))), vec4<u32>(u_input.b.x, ~(~u_input.c.x), u_input.c.x, ~u_input.c.x), Struct_1(true, ~(-2147483647i), 11811u), vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 0u) | _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 42878u)));
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> bool {
    let var_0 = func_4(arg_0.d.wyw, select(select(vec4<bool>(true, true, func_2(Struct_5(u_input.c.x, vec2<f32>(-567f, arg_0.d.x), Struct_4(vec4<f32>(673f, arg_0.d.x, 1247f, 1557f)), Struct_3(vec4<bool>(false, true, false, true), 183f, vec4<u32>(arg_1, arg_1, arg_2.x, arg_2.x), Struct_1(false, u_input.a.x, u_input.c.x), u_input.c), Struct_3(vec4<bool>(false, true, true, false), arg_0.d.x, vec4<u32>(u_input.c.x, arg_1, 46932u, arg_2.x), Struct_1(true, 0i, arg_1), vec2<u32>(u_input.b.x, u_input.c.x))), u_input.a, arg_0.d.x), false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, func_3(vec4<u32>(0u, 1u, u_input.b.x, arg_2.x)), true, select(false, false, true)), vec4<bool>(true, true, true, true), true), arg_0.b.x <= arg_0.a.x));
    let var_1 = -1002f;
    let var_2 = select(vec2<bool>(func_2(func_4(vec3<f32>(var_1, arg_0.d.x, -323f), vec4<bool>(var_0.d.a.x, var_0.d.a.x, var_0.e.a.x, false)), vec4<i32>(var_0.d.d.b, arg_0.c, 2147483647i, arg_0.a.x) ^ vec4<i32>(arg_0.a.x, 90927i, arg_0.c, -2189i), var_0.c.a.x) && false, var_0.e.a.x), var_0.d.a.yy, var_0.e.d.a);
    let var_3 = -var_0.d.d.b == -53509i;
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(vec3<i32>(countOneBits(0i), -457i, -11011i), u_input.a.yz, countOneBits(2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(arg_0.b * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(arg_0.b - -665f)), _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(154f + -990f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-558f, 227f)))))));
    let var_1 = var_0;
    var var_2 = func_4(var_0.d.wyx, !vec4<bool>(all(arg_0.a.wyx), all(vec2<bool>(arg_0.a.x, true)) | true, arg_0.d.a || false, arg_0.a.x));
    var_2 = Struct_5(_wgslsmith_div_u32(~(arg_0.e.x | ~8047u), _wgslsmith_div_u32(~1u, ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x), var_2.b))), func_4(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - 1279f), arg_0.b, var_2.c.a.x), vec4<bool>(any(select(vec4<bool>(true, var_2.e.a.x, false, true), var_2.e.a, vec4<bool>(arg_0.a.x, true, false, var_2.e.d.a))), any(arg_0.a), !func_3(arg_0.c), false)).c, Struct_3(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), var_2.e.c, Struct_1(arg_0.d.a, _wgslsmith_div_i32(13656i, max(u_input.a.x, var_0.b.x)), abs(3401u)), arg_0.e >> (~vec2<u32>(u_input.b.x, arg_1.x) % vec2<u32>(32u))), Struct_3(!(!vec4<bool>(var_2.d.a.x, false, false, var_2.e.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + var_0.d.x)), _wgslsmith_div_vec4_u32(vec4<u32>(10574u, u_input.b.x, 0u, 27910u) | arg_0.c, vec4<u32>(8980u, var_2.e.e.x, 1u, 1u)) >> (var_2.e.c % vec4<u32>(32u)), Struct_1(false, _wgslsmith_dot_vec2_i32(var_0.b, select(var_0.a.zy, var_1.a.xz, vec2<bool>(false, false))), ~(~1u)), ~arg_0.c.xx));
    var_2 = func_4(vec3<f32>(var_2.b.x, var_2.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-252f))) - arg_0.b)), !select(!vec4<bool>(arg_0.a.x, false, true, var_2.e.d.a), !var_2.d.a, var_2.e.a));
    return func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.c.a.xyz), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 2501f))), var_2.b.x, var_2.d.b), var_2.d.d.a)), select(arg_0.a, arg_0.a, select(vec4<bool>(func_2(Struct_5(arg_0.d.c, vec2<f32>(-184f, -1000f), Struct_4(vec4<f32>(169f, arg_0.b, -1648f, 403f)), arg_0, Struct_3(vec4<bool>(var_2.d.d.a, false, var_2.e.a.x, arg_0.d.a), var_2.b.x, vec4<u32>(arg_0.d.c, arg_0.e.x, 1u, 0u), arg_0.d, arg_1.yz)), vec4<i32>(var_0.a.x, -2247i, -2147483647i, var_2.e.d.b), 1756f), true & arg_0.d.a, true, true), arg_0.a, vec4<bool>(all(arg_0.a.yzy), var_2.e.d.a | var_2.d.d.a, !var_2.e.d.a, u_input.b.x != u_input.c.x)))).e;
}

fn func_6(arg_0: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_add_u32(u_input.c.x, 1u);
    var var_1 = 1f;
    let var_2 = (false && arg_0.d.a) & select(true, func_5(func_5(arg_0, vec3<u32>(u_input.b.x, var_0, 35757u)), arg_0.c.xyy).a.x, any(!(!arg_0.a)));
    let var_3 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 1794f, _wgslsmith_f_op_f32(arg_0.b * arg_0.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, arg_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(sign(880f)), _wgslsmith_f_op_f32(f32(-1f) * -122f), -1281f)), func_5(Struct_3(!(!arg_0.a), _wgslsmith_f_op_f32(-arg_0.b), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, arg_0.c.x), 4294967295u, var_0, _wgslsmith_div_u32(52327u, u_input.c.x)), func_4(vec3<f32>(arg_0.b, arg_0.b, -862f), vec4<bool>(var_2, false, var_2, false)).e.d, vec2<u32>(var_0, ~var_0)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.c.zwx, vec3<u32>(arg_0.e.x, arg_0.c.x, arg_0.d.c)), u_input.b)).a).e.e.x;
    var var_4 = arg_0.d;
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574f, -1358f, arg_0.b))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1155f, arg_0.b, arg_0.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -1310f, arg_0.b))))), func_5(Struct_3(select(func_5(Struct_3(arg_0.a, 478f, vec4<u32>(1u, var_4.c, 59793u, 0u), arg_0.d, vec2<u32>(var_4.c, var_3)), vec3<u32>(62220u, u_input.b.x, 20872u)).a, arg_0.a, vec4<bool>(true, var_4.a, true, var_2)), arg_0.b, ~arg_0.c, Struct_1(var_2 || var_4.a, _wgslsmith_dot_vec3_i32(u_input.a.yyx, u_input.a.xwz), _wgslsmith_mult_u32(5357u, 1u)), u_input.c), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(arg_0.c.yzz, u_input.b, vec3<u32>(0u, 5893u, 25173u)))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_3(vec4<bool>(false, true, func_1(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.a.xw, 1i, vec4<f32>(244f, 251f, -1465f, 877f)), 16812u, vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1688f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x), vec4<u32>(1u, u_input.c.x, 9590u, u_input.c.x), vec4<u32>(2254u, 1u, 1u, 23406u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 109900u, 15884u, 1u), vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.b.x)), func_4(vec3<f32>(-726f, -961f, -479f), func_4(vec3<f32>(318f, 329f, -789f), vec4<bool>(false, true, false, false)).d.a).d.d, vec2<u32>(u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, max(_wgslsmith_add_u32(u_input.c.x, 17055u), firstTrailingBit(u_input.b.x)), 8457u)));
    var var_1 = var_0.e.c;
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.a.xxz, var_0.c.a.xwy)), vec3<f32>(_wgslsmith_f_op_f32(var_0.e.b - var_0.e.b), _wgslsmith_f_op_f32(step(var_0.b.x, -583f)), _wgslsmith_f_op_f32(var_0.e.b * var_0.b.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.c.a.xzw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -870f, -920f) * vec3<f32>(778f, var_0.e.b, -1561f)))), !vec4<bool>(func_3(var_0.e.c), true, false, func_1(Struct_2(vec3<i32>(-2147483647i, var_0.d.d.b, u_input.a.x), u_input.a.zy, var_0.d.d.b, vec4<f32>(-581f, -167f, 1070f, 163f)), u_input.c.x, vec3<u32>(u_input.b.x, u_input.c.x, var_0.e.c.x))));
    var var_3 = Struct_2(reverseBits(u_input.a.wzw), _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.a.zx), select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.e.d.b, var_0.d.d.b), var_0.e.a.x)), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, var_2.d.d.b), _wgslsmith_mult_vec2_i32(u_input.a.yz, u_input.a.wz))), var_0.d.d.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c.a)));
    var var_4 = var_2.c.a.zz;
    var var_5 = all(var_2.e.a.xy);
    var var_6 = func_4(_wgslsmith_f_op_vec3_f32(max(var_2.c.a.yzy, var_3.d.wyx)), var_0.e.a).d;
    var var_7 = var_2;
    var var_8 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1065f, var_4.x, 1133f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_3.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(20438u, ~(~var_7.d.c.x), 12103u));
}

