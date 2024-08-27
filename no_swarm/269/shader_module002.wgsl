struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2;
    let var_1 = var_0;
    var var_2 = Struct_1(~u_input.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(round(2417f))), 842f), _wgslsmith_f_op_f32(977f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.b, -898f)) * _wgslsmith_f_op_f32(exp2(arg_2.b))))), !(!var_0.c), reverseBits(-select(var_0.d, -25477i, 93055u <= arg_1.x)));
    var var_3 = arg_3;
    var_2 = Struct_1(_wgslsmith_mult_u32(1u, reverseBits(min(17622u, ~var_3.a))), var_0.b, var_1.c, -36682i);
    return 0i;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(0u ^ max(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(4828u, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(60839u, u_input.b.x, 0u, u_input.b.x), ~u_input.b)), _wgslsmith_f_op_f32(1426f - -780f), vec4<bool>(-func_3(1u, u_input.b, Struct_1(u_input.b.x, 265f, vec4<bool>(false, true, true, false), u_input.c), Struct_1(u_input.b.x, 199f, vec4<bool>(false, false, false, true), u_input.c)) < _wgslsmith_dot_vec3_i32(u_input.a.www, ~vec3<i32>(-2147483647i, u_input.c, 0i)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, all(vec4<bool>(true, true, true, true))), min(1i >> (1u % 32u), -1i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, var_0.b);
    let var_2 = abs(24941u);
    let var_3 = var_0.b;
    var var_4 = var_0;
    return firstLeadingBit(u_input.b.x ^ u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b + arg_3.b))) * _wgslsmith_f_op_f32(-arg_3.b))), arg_0.c, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.a, max(u_input.a, vec4<i32>(arg_0.d, arg_3.d, arg_3.d, -1i)), abs(vec4<i32>(4806i, arg_3.d, arg_3.d, arg_3.d))), u_input.a, -(~vec4<i32>(arg_3.d, -25692i, u_input.d, u_input.a.x))), u_input.a));
    var var_1 = firstLeadingBit(~arg_0.a) | 6190u;
    var_1 = arg_0.a | (u_input.b.x | 4294967295u);
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.b.yw, ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.xw, vec2<u32>(var_0.a, arg_0.a)), ~vec2<u32>(arg_3.a, 4294967295u))) >> (68950u % 32u);
    let var_3 = firstTrailingBit(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 37880u, 32384u), vec3<u32>(arg_3.a, arg_2, u_input.b.x)), 0u, 1u, _wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.wz))));
    return 4294967295u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = arg_1;
    var var_2 = var_1.d;
    let var_3 = Struct_1(func_4(Struct_1(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - -646f) - _wgslsmith_f_op_f32(-arg_1.b)), arg_1.c, select(var_1.d, arg_1.d, arg_1.c.x && arg_1.c.x)), Struct_1(34128u | ~arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, var_1.b)) - arg_1.b), vec4<bool>(all(vec2<bool>(var_1.c.x, true)), all(arg_1.c), any(vec4<bool>(false, arg_0.x, var_1.c.x, true)), arg_0.x), ~max(arg_1.d, u_input.c)), ~u_input.b.x, Struct_1(41259u | reverseBits(arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -2102f), var_1.c, _wgslsmith_div_i32(0i, -2147483647i ^ arg_1.d))), arg_1.b, !vec4<bool>(func_3(4294967295u, u_input.b, Struct_1(27506u, var_1.b, arg_1.c, -1786i), Struct_1(52280u, 327f, vec4<bool>(true, true, var_1.c.x, arg_1.c.x), var_1.d)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), u_input.a.yxz), arg_0.x, (var_1.d >> (4294967295u % 32u)) > abs(20447i), false), 7423i);
    let var_4 = -15356i;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(-(~u_input.a) ^ u_input.a, vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, u_input.a.x), -u_input.a.xw), u_input.d, -2147483647i));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~abs(_wgslsmith_add_u32(12992u, u_input.b.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.b.x ^ u_input.b.x), 1u)), -410f, !select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), func_1(vec2<bool>(true, true), Struct_1(4294967295u, 293f, vec4<bool>(true, false, true, false), -1033i)), vec4<bool>(true, 1u <= u_input.b.x, false, any(vec2<bool>(true, true)))), var_0.x);
    var_0 = -u_input.a;
    var_1 = Struct_1(min(~29037u, 1u), 1000f, vec4<bool>(select(false, abs(var_0.x) < 1i, func_2() <= _wgslsmith_clamp_u32(19025u, 0u, 4294967295u)), !var_1.c.x, true, var_1.c.x), select(_wgslsmith_add_i32(3977i, -28568i), reverseBits(1i), _wgslsmith_div_u32(~0u, u_input.b.x | 27019u) < _wgslsmith_dot_vec4_u32(countOneBits(u_input.b), u_input.b)));
    var var_2 = Struct_1(~(23312u >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(2473u, 4321u, var_1.a), 1u) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b)), -345f), !select(!select(var_1.c, var_1.c, false), !(!var_1.c), true), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(u_input.d << (var_1.a % 32u), -31274i), 0i, 1i));
    var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -551f), func_1(select(select(!vec2<bool>(var_2.c.x, false), func_1(vec2<bool>(var_1.c.x, false), Struct_1(var_1.a, -1000f, vec4<bool>(false, false, true, var_2.c.x), 26888i)).xz, select(vec2<bool>(var_1.c.x, var_1.c.x), var_2.c.wz, vec2<bool>(true, var_2.c.x))), var_2.c.zw, !var_1.c.ww), Struct_1(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), var_2.b, var_2.c, _wgslsmith_mod_i32(-1i, max(-10310i, 2795i)))), -var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~(~(~min(vec2<u32>(u_input.b.x, 1u), vec2<u32>(54786u, 1u)))), ~(-_wgslsmith_div_i32(-4049i, i32(-1i) * -2147483647i)), var_2.a);
}

