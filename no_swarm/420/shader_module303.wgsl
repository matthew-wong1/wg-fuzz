struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-980f, 1000f, -703f, 1100f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), -1000f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 687f, 342f), vec4<f32>(var_0.x, var_0.x, var_0.x, -681f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, 945f, var_0.x, -1033f)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)))), vec4<bool>(true, ~u_input.b.x != 0u, true, false))) + vec4<f32>(var_0.x, -327f, var_0.x, _wgslsmith_f_op_f32(-864f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 157f, 2245f) + vec4<f32>(2365f, -868f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, -584f, -446f))))));
    let var_1 = ~u_input.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, 2534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))));
    return var_1.x;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.e.b.zww;
    var var_1 = ~(-_wgslsmith_mod_vec4_i32(min(firstLeadingBit(vec4<i32>(arg_2, u_input.c.x, -2147483647i, arg_2)), ~vec4<i32>(u_input.c.x, -23806i, arg_2, -42252i)), vec4<i32>(max(11973i, u_input.d.x), u_input.d.x, arg_3.c, 0i)));
    var_1 = ~(abs(reverseBits(abs(vec4<i32>(arg_2, var_1.x, var_1.x, u_input.d.x)))) & _wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(u_input.d.x, -1i, u_input.c.x, -56030i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-51429i, 1i, var_1.x, -59522i), vec4<i32>(21858i, arg_3.c, arg_3.c, 0i))));
    var_1 = ~(~(~vec4<i32>(18514i, _wgslsmith_div_i32(var_1.x, arg_2), 10339i, 60555i)));
    var_1 = ~select(countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, -11125i, arg_2), vec4<i32>(-19538i, var_1.x, u_input.c.x, -22799i)))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(arg_3.c, arg_2, -35365i)), min(~u_input.d.x, ~var_1.x), min(1i, _wgslsmith_dot_vec2_i32(var_1.yx, var_1.xy)), 0i), true);
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    var var_0 = firstLeadingBit(reverseBits(~countOneBits(u_input.a.yyx)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(1106f - _wgslsmith_f_op_f32(func_4(Struct_3(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -463f, arg_2.x, -1005f) - vec4<f32>(arg_2.x, arg_2.x, arg_0.x, -288f))), ~func_3(), ~_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), Struct_4(_wgslsmith_f_op_f32(-arg_0.x), true, arg_1 ^ u_input.d.x, select(arg_3, var_0.x, true), Struct_3(vec4<bool>(true, false, true, true), vec4<f32>(-1000f, -1803f, -1280f, arg_2.x)))))), any(!vec2<bool>(0u < var_0.x, true)), abs(reverseBits(_wgslsmith_mult_i32(-arg_1, 2147483647i))), ~(~u_input.a.x ^ ~var_0.x), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-318f, arg_0.x, -339f, -2537f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, arg_0.x, 1016f, 677f))))));
    var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), u_input.a.yyw), u_input.a.wxw, vec3<bool>(1u != ~var_1.d, !var_1.e.a.x, var_1.b));
    var_0 = vec3<u32>(var_0.x, 1u, _wgslsmith_mod_u32(var_0.x, 43240u));
    var_0 = u_input.a.xxw;
    return 39998u;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(-1339f, -275f), vec2<bool>(false, arg_0.a))) - arg_1.zy), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(arg_1.x, -1054f))))), _wgslsmith_f_op_vec2_f32(-arg_1.zx), arg_0.a));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u ^ arg_0.b, _wgslsmith_sub_u32(u_input.a.x, 39999u)), _wgslsmith_div_vec2_u32(u_input.b, arg_0.c.zz)), u_input.b);
    let var_2 = arg_0;
    var var_3 = Struct_3(vec4<bool>(!(_wgslsmith_sub_i32(0i, 33878i) <= u_input.d.x), !(!arg_0.a) & true, !all(select(vec4<bool>(var_2.a, false, arg_0.a, true), vec4<bool>(true, arg_0.a, false, true), vec4<bool>(var_2.a, false, arg_2.x, true))), true && (var_1.x >= _wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(var_1.x, 1u, 4294967295u, arg_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(var_0.x + arg_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * 419f))), 1510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -833f))) + var_0.x), -1177f));
    let var_4 = var_2.a;
    return Struct_4(var_3.b.x, !any(var_3.a.wyx), _wgslsmith_add_i32(u_input.d.x, -30481i), u_input.a.x, Struct_3(select(vec4<bool>(u_input.d.x < -1i, true, true, false), select(vec4<bool>(var_3.a.x, false, true, arg_2.x), vec4<bool>(arg_0.a, arg_2.x, false, true), false), var_2.a), var_3.b));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = func_5(Struct_1((true || (u_input.d.x > u_input.c.x)) & true, arg_0, vec4<u32>(_wgslsmith_add_u32(20366u, u_input.a.x), func_2(vec2<f32>(1458f, 1000f), u_input.c.x, vec2<f32>(209f, 1772f), 4294967295u) << (_wgslsmith_add_u32(1u, 1u) % 32u), 1u, arg_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -319f))), -1708f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), -134f, _wgslsmith_f_op_f32(select(1000f, -104f, true)))))), vec3<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), true, !(_wgslsmith_f_op_f32(round(-302f)) >= _wgslsmith_f_op_f32(-1610f + -1529f))));
    var var_1 = vec2<f32>(-562f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-550f, 2391f)) * _wgslsmith_div_f32(var_0.a, var_0.a)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -653f), var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(round(var_0.a)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-746f, _wgslsmith_div_f32(var_0.e.b.x, var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * _wgslsmith_f_op_f32(-var_0.e.b.x))), _wgslsmith_f_op_f32(max(var_0.e.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), 1405f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1106f, _wgslsmith_f_op_f32(var_1.x * var_1.x))))))));
    var_1 = vec2<f32>(var_1.x, var_0.a);
    return var_0.e;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_5 {
    var var_0 = vec2<bool>(all(!arg_1.a.zy), any(select(vec3<bool>(arg_1.a.x, 4294967295u != u_input.b.x, false), vec3<bool>(all(vec3<bool>(arg_1.a.x, true, true)), true & arg_0.x, true), arg_3.a.zww)));
    var var_1 = select(!vec4<bool>(arg_0.x, all(select(vec4<bool>(true, arg_0.x, arg_3.a.x, false), arg_1.a, true)), all(arg_1.a.wxx), any(vec3<bool>(false, false, arg_3.a.x))), arg_1.a, vec4<bool>(!func_5(Struct_1(arg_1.a.x, arg_2.x, u_input.a), _wgslsmith_f_op_vec3_f32(arg_3.b.wxx + vec3<f32>(arg_1.b.x, 1006f, -1326f)), select(vec3<bool>(true, arg_1.a.x, false), arg_1.a.xzz, vec3<bool>(false, arg_0.x, true))).b, arg_1.a.x, arg_1.a.x, true));
    var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, true, true, true), arg_1.a, var_0.x), arg_1.a, arg_3.a.x), vec4<bool>(arg_2.x >= arg_2.x, 0u != u_input.a.x, arg_0.x & arg_0.x, all(var_1.xx)), !arg_1.a.x)), all(arg_3.a.ww), false, any(func_1(_wgslsmith_mod_u32(1u, arg_2.x), abs(0u)).a));
    var_1 = func_5(Struct_1(true, ~arg_2.x, vec4<u32>(~0u, u_input.a.x, 1u, firstTrailingBit(1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.b.x)) - -1917f), -148f, arg_3.b.x)), select(select(vec3<bool>(true, arg_1.a.x, !arg_3.a.x), vec3<bool>(!var_0.x, any(vec4<bool>(arg_1.a.x, true, true, true)), arg_1.a.x & true), func_1(0u, _wgslsmith_add_u32(18501u, arg_2.x)).a.yww), select(vec3<bool>(false, arg_3.b.x <= 528f, arg_0.x | true), vec3<bool>(true, false, 1u == u_input.b.x), vec3<bool>(true, func_1(u_input.a.x, 13269u).a.x, true)), arg_1.a.ywy)).e.a;
    var_0 = !var_1.wx;
    return Struct_5(Struct_2(u_input.a.x, Struct_1(true, arg_2.x, vec4<u32>(countOneBits(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18880u), vec2<u32>(arg_2.x, 1u)), ~0u, u_input.b.x | 0u)), Struct_1(var_0.x, ~u_input.b.x, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u) ^ u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, arg_2.x, 67118u) << (u_input.a % vec4<u32>(32u))))), Struct_3(arg_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-200f * 994f), arg_1.b.x, _wgslsmith_f_op_f32(-1948f + 145f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec2<bool>(all(vec4<bool>(true, true, true, true)), !(~2034u >= _wgslsmith_dot_vec3_u32(u_input.a.yxw, u_input.a.xww))), func_1(~min(10854u, u_input.b.x) << (~4294967295u % 32u), ~(~10279u)), u_input.b << (~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(24764u, 1u)), ~vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)), func_5(Struct_1(true, 4294967295u, ~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, -606f, 698f) - vec3<f32>(460f, 639f, -1160f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(433f, 399f, 719f)))))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), func_5(Struct_1(true, 30900u, u_input.a), vec3<f32>(772f, -1083f, -1481f), vec3<bool>(true, true, false)).e.a.zzz, vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(false, true, true, false)), false, true))).e);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.b.b)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.b.x)), -955f, var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.b.b))))));
    var var_2 = u_input.d;
    var var_3 = func_6(var_0.b.a.ww, var_0.b, vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.a.b.c.zxy, var_0.a.c.c.xwz), ~abs(var_0.a.a)), Struct_3(func_6(func_1(0u, ~var_0.a.a).a.wy, var_0.b, ~vec2<u32>(4294967295u, var_0.a.c.b), var_0.b).b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, var_1.x, 710f, -388f) + var_0.b.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.b - var_0.b.b) * _wgslsmith_f_op_vec4_f32(-var_0.b.b)))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(22276u, var_3.a.a), _wgslsmith_mod_u32(81437u, u_input.a.x), var_2.x << (u_input.b.x % 32u), Struct_4(996f, false, -1i, var_3.a.c.b, var_3.b))), -551f, var_0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x + 2883f))))));
    var var_4 = var_0.a.c.c.zz & ~reverseBits(vec2<u32>(u_input.a.x, var_3.a.a));
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1484i, u_input.c.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.c.x, _wgslsmith_add_i32(-1i, var_2.x), -u_input.d.x, -2147483647i))));
}

