struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(all(!vec4<bool>(any(arg_2), true, any(vec4<bool>(arg_2.x, false, true, true)), 66999u < u_input.d.x)), Struct_1(vec3<bool>(!arg_2.x || any(vec4<bool>(false, false, arg_2.x, arg_1)), true, all(arg_2.zy)), u_input.e.x, u_input.c == (u_input.b << (_wgslsmith_mod_u32(u_input.d.x, u_input.e.x) % 32u)), _wgslsmith_mod_vec3_i32(u_input.a.wwx, firstLeadingBit(u_input.a.xzx))), select(select(!arg_2.xz, !vec2<bool>(arg_2.x, arg_1), all(vec4<bool>(arg_1, arg_2.x, arg_2.x, arg_1)) == (u_input.b != arg_0)), vec2<bool>(true, any(select(arg_2, vec3<bool>(false, arg_1, false), arg_1))), true), _wgslsmith_sub_vec3_i32(u_input.a.zxw, firstTrailingBit(vec3<i32>(arg_0, -2147483647i, arg_0)) & select(vec3<i32>(u_input.b, arg_0, -21496i), u_input.a.wwy, vec3<bool>(false, arg_2.x, false))), vec3<bool>(arg_2.x, false, select(any(!arg_2), true, !any(vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-178f, 229f)), -926f, var_0.b.b == 21722u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(219f - 1342f)))))));
    var var_2 = var_0.b;
    let var_3 = var_2.d.zx;
    var_2 = Struct_1(vec3<bool>(true, !(true | arg_1), any(!(!vec4<bool>(false, arg_1, var_2.c, true)))), ~(~u_input.e.x ^ var_0.b.b), var_0.b.c, -(vec3<i32>(1i, ~arg_0, reverseBits(arg_0)) << (vec3<u32>(16718u, ~u_input.d.x, ~var_2.b) % vec3<u32>(32u))));
    return var_3.x;
}

fn func_4(arg_0: f32, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_2(true, Struct_1(vec3<bool>(true, false, true), u_input.e.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec2<bool>(true, false)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, arg_1), vec4<i32>(53483i, 1i, arg_1, arg_1)), ~u_input.b, arg_1), ~(~vec3<i32>(u_input.b, 1321i, 65521i)))), vec2<bool>(true, true), vec3<i32>(u_input.a.x, func_3(arg_1, true, select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), func_3(arg_1, true & any(vec4<bool>(false, false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<bool>(~1u != ~_wgslsmith_mult_u32(u_input.d.x, 4294967295u), any(vec2<bool>(true, true)), true));
    var var_1 = firstTrailingBit(vec3<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(var_0.d.x, arg_1, var_0.d.x)), _wgslsmith_mult_i32(var_0.d.x, arg_1)), u_input.b));
    var var_2 = select(!var_0.e.yy, vec2<bool>(var_0.c.x, var_0.c.x), false);
    var_1 = vec3<i32>(-1i) * -max(var_0.d, vec3<i32>(_wgslsmith_mult_i32(var_0.b.d.x, 21539i), ~0i, _wgslsmith_sub_i32(1i, -4986i)));
    return var_0.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)))) - _wgslsmith_f_op_f32(-1000f * -1305f));
    var var_1 = max(~17896u, ~max(firstLeadingBit(reverseBits(arg_1.b)), 1u));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 15936u), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.e, abs(vec3<u32>(4294967295u, 20680u, 4294967295u))), 1u));
    var var_2 = Struct_2(!select(select(arg_1.c, true, false), all(arg_0.a.yy), _wgslsmith_f_op_f32(ceil(var_0)) <= _wgslsmith_f_op_f32(var_0 * var_0)), arg_0, vec2<bool>(arg_0.c, arg_0.a.x), vec3<i32>(_wgslsmith_mult_i32(arg_0.d.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.xxx), vec3<i32>(2147483647i, u_input.c, -33324i))), _wgslsmith_mod_i32(arg_0.d.x, firstTrailingBit(arg_1.d.x)), -2147483647i), select(arg_1.a, arg_1.a, arg_1.a.x));
    let var_3 = Struct_2(false, arg_1, !select(arg_1.a.xy, vec2<bool>(true, !arg_0.c), !arg_1.a.yy), ~(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1i, 29997i, u_input.b)), vec3<i32>(var_2.b.d.x, arg_1.d.x, -2147483647i))), select(arg_1.a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -724f)), _wgslsmith_mod_i32(func_3(2083i, false, vec3<bool>(var_2.b.a.x, false, true)), reverseBits(-2147483647i))), false));
    return Struct_1(!var_2.b.a, firstLeadingBit(~var_3.b.b), var_2.c.x, vec3<i32>(firstTrailingBit(~arg_1.d.x) << (arg_1.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, u_input.c, u_input.a.x), var_3.b.d) ^ reverseBits(0i), countOneBits(countOneBits(arg_0.d.x) | (arg_1.d.x & var_3.b.d.x))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = arg_0;
    var var_1 = ~firstLeadingBit(94269i);
    var_1 = u_input.a.x;
    var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32((i32(-1i) * -1i) >> (arg_0.b.b % 32u), u_input.b | reverseBits(arg_0.d.x)) & ((arg_0.d.x & -arg_0.b.d.x) >> (abs(arg_1) % 32u)), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(-14643i), ~arg_0.d.x), 2147483647i)));
    var var_2 = vec2<f32>(arg_2.x, 169f);
    return -var_0.b.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(400f, -689f)), _wgslsmith_f_op_f32(select(-3021f, -328f, arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) * _wgslsmith_f_op_f32(f32(-1f) * -164f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, 642f, -2007f, 318f) + vec4<f32>(1000f, 956f, -446f, 832f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, -1791f, 1401f, 1533f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, 484f, 1395f, 829f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 596f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, var_0.x, -1000f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1292f, var_0.x, var_0.x, -1295f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-502f, 480f, 1436f, -511f), vec4<f32>(var_0.x, var_0.x, var_0.x, 663f)) * vec4<f32>(var_0.x, -595f, -640f, var_0.x))) * vec4<f32>(-1623f, _wgslsmith_f_op_f32(1447f - _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1846f))))));
    let var_1 = ~(~(~u_input.e));
    var var_2 = Struct_2(true, arg_1, arg_2.a.zz, func_5(Struct_2(true, func_2(Struct_1(vec3<bool>(arg_2.c, arg_2.c, true), var_1.x, arg_2.a.x, vec3<i32>(u_input.c, -32317i, -1i)), Struct_1(arg_1.a, 0u, arg_2.c, arg_0), arg_1.b == 0u), vec2<bool>(arg_2.c, true), ~(-vec3<i32>(-31130i, arg_0.x, -2539i)), !(!arg_1.a)), max(~_wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(u_input.e.x, 0u)), arg_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(var_0.x))))), func_4(-613f, ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, -16754i), arg_1.d))));
    var var_3 = max(arg_1.b, 35348u);
    return Struct_2(var_2.c.x, Struct_1(func_4(511f, 2147483647i), 4294967295u, _wgslsmith_f_op_f32(-699f + _wgslsmith_f_op_f32(select(657f, var_0.x, true))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 607f), _wgslsmith_f_op_f32(-var_0.x)), var_2.d), select(!func_4(-468f, func_5(Struct_2(arg_2.c, Struct_1(arg_1.a, 50394u, true, vec3<i32>(0i, -43641i, 2147483647i)), arg_1.a.yy, arg_1.d, vec3<bool>(false, false, true)), arg_2.b, var_0.wy).x).zx, var_2.e.zz, vec2<bool>(true, !(false & var_2.c.x))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-arg_0.x, arg_2.d.x, i32(-1i) * -2147483647i)), _wgslsmith_add_vec3_i32(var_2.b.d, _wgslsmith_add_vec3_i32(arg_0, var_2.d)) ^ _wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(arg_0.x, arg_2.d.x, 0i) | arg_1.d), arg_2.d), !vec3<bool>(true, var_2.b.c, all(arg_2.a) | true));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_2(true, arg_0.b, vec2<bool>(false, arg_0.a), arg_0.d, arg_0.e);
    var_0 = arg_0;
    let var_1 = _wgslsmith_sub_i32(-reverseBits(~var_0.b.d.x), abs(-26751i));
    let var_2 = vec2<bool>(all(vec4<bool>(select(true, var_0.a, var_0.e.x == false), true, true, true)), false);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f * -1628f)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(f32(-1f) * -412f))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -661f), 1000f, _wgslsmith_f_op_f32(select(499f, 142f, true))) - _wgslsmith_f_op_vec3_f32(func_6(func_1(vec3<i32>(u_input.c, u_input.b, u_input.a.x), Struct_1(vec3<bool>(false, true, false), u_input.d.x, true, vec3<i32>(u_input.a.x, u_input.a.x, -65117i)), Struct_1(vec3<bool>(true, true, true), 46277u, false, vec3<i32>(u_input.b, u_input.c, u_input.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(44177u, 83508u, 4294967295u, 0u), vec4<u32>(u_input.d.x, 0u, 1u, u_input.d.x)), u_input.a.wy, true))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -430f, 1194f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-420f, -473f, -865f), vec3<f32>(-1232f, 849f, 495f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-708f, -620f, 2028f), vec3<f32>(987f, 979f, 236f), true)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1721f, -2424f, 959f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-439f, 529f, -1431f), vec3<f32>(-1414f, -120f, -1231f))))))));
    let var_1 = vec4<f32>(1897f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, -227f);
    var var_2 = vec2<bool>(any(func_4(var_0.x, 1i).yz), !(!func_2(func_2(Struct_1(vec3<bool>(true, true, true), u_input.d.x, false, vec3<i32>(u_input.b, 2147483647i, u_input.c)), Struct_1(vec3<bool>(false, false, true), 1u, true, u_input.a.wxz), false), Struct_1(vec3<bool>(false, false, false), u_input.e.x, true, u_input.a.yzw), all(vec2<bool>(false, false))).c));
    var var_3 = var_0.x;
    let var_4 = func_2(func_2(func_2(Struct_1(vec3<bool>(true, var_2.x, true), ~4294967295u, true, vec3<i32>(1i, u_input.a.x, 20258i)), Struct_1(func_1(u_input.a.xzw, Struct_1(vec3<bool>(var_2.x, false, true), u_input.e.x, false, u_input.a.ywz), Struct_1(vec3<bool>(var_2.x, false, var_2.x), u_input.e.x, false, vec3<i32>(u_input.a.x, 1i, u_input.b))).e, 31008u & u_input.d.x, var_1.x == var_0.x, _wgslsmith_add_vec3_i32(vec3<i32>(54436i, 2078i, u_input.c), u_input.a.xwx)), !(var_0.x <= var_1.x)), Struct_1(!(!vec3<bool>(false, var_2.x, var_2.x)), ~u_input.d.x, var_2.x, u_input.a.xwx), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-807f, var_1.x), _wgslsmith_f_op_f32(-1153f + -134f))), _wgslsmith_div_i32(-539i, u_input.a.x)).x), Struct_1(vec3<bool>(false, func_2(func_2(Struct_1(vec3<bool>(true, false, true), u_input.d.x, var_2.x, u_input.a.zww), Struct_1(vec3<bool>(var_2.x, false, var_2.x), 1u, false, u_input.a.zyx), false), func_2(Struct_1(vec3<bool>(var_2.x, var_2.x, var_2.x), u_input.d.x, false, u_input.a.zyy), Struct_1(vec3<bool>(false, false, false), 9267u, false, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), false), all(vec3<bool>(true, false, false))).a.x, var_2.x), 0u, 1u > _wgslsmith_div_u32(u_input.e.x >> (7292u % 32u), ~0u), u_input.a.yyx << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, 1u), u_input.e, vec3<u32>(1u, 4294967295u, u_input.e.x)), u_input.e) % vec3<u32>(32u))), false);
    var var_5 = func_1(select(_wgslsmith_clamp_vec3_i32(u_input.a.xwx, vec3<i32>(u_input.c, 0i, -1i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13643u, 24794u), u_input.e, u_input.e) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_4.d.x), var_4.d, var_4.d))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_4.d, vec3<i32>(39399i, var_4.d.x, -11202i)), vec3<i32>(u_input.c, var_4.d.x, u_input.b)) | vec3<i32>(~23971i, var_4.d.x >> (0u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xw)), !func_1(_wgslsmith_sub_vec3_i32(u_input.a.xxw, vec3<i32>(0i, u_input.b, -2147483647i)), func_2(var_4, var_4, true), Struct_1(var_4.a, var_4.b, true, var_4.d)).b.a), var_4, var_4).b;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xwx + var_1.yzw)), _wgslsmith_f_op_vec3_f32(max(var_1.yzy, _wgslsmith_f_op_vec3_f32(-var_1.yzx))), var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(979f, var_1.x, var_1.x)))))), var_1.zww));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f))))), var_0.x));
    var var_7 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~u_input.e)), func_1(var_5.d, var_4, var_4).b.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(1625f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f * var_6)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -530f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.x, var_0.x, var_5.c || var_2.x)), _wgslsmith_f_op_f32(-var_0.x))), var_6), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1926f, var_6) + var_1.xz))))));
}

