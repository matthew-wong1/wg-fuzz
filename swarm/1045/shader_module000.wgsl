struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(457f))))));
    return all(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, var_0 > -815f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = select(!(!vec4<bool>(arg_0.b.x > 88529u, func_1(), all(vec4<bool>(false, false, true, false)), false)), !vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)))), select(vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true), select(vec4<bool>(true, select(false, true, false), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, false))));
    var var_2 = select(!var_1.zx, var_1.xx, select(!select(select(var_1.yz, var_1.zx, vec2<bool>(true, var_1.x)), var_1.xy, true), var_1.zx, select(vec2<bool>(func_1(), select(false, false, true)), vec2<bool>(true, false), !select(vec2<bool>(var_1.x, var_1.x), var_1.xy, var_1.x))));
    var_2 = vec2<bool>(!(!(!var_1.x)), false);
    let var_3 = vec4<f32>(-542f, -410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1079f)), -232f, true))) - 501f), -1788f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(829f)), _wgslsmith_f_op_f32(-var_3.x)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a), ~(~(~u_input.a)))));
    var var_1 = Struct_3((-_wgslsmith_sub_i32(2147483647i, 0i) >= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(25837i, 2147483647i, 46057i), vec3<i32>(-2147483647i, 2147483647i, 37707i)), ~vec3<i32>(-42526i, 1i, -14274i))) | (~1i > (min(3322i, 0i) << (_wgslsmith_mod_u32(1u, arg_0.a) % 32u))), all(arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1070f, -1452f))) + _wgslsmith_f_op_f32(f32(-1f) * -100f))), !select(!select(arg_1, arg_1, arg_1.x), vec4<bool>(false, true, true, arg_1.x), !select(vec4<bool>(arg_0.b, true, arg_1.x, true), arg_1, arg_0.b)), all(arg_1.yx));
    let var_2 = vec4<i32>(i32(-1i) * -(i32(-1i) * -1i), max(-1i, ~(~45323i)), -1i, -(~1i)) & -vec4<i32>(12551i, (-2147483647i << (u_input.b % 32u)) >> (~4294967295u % 32u), 2861i, (i32(-1i) * -10643i) << (u_input.b % 32u));
    return Struct_2(Struct_1(vec4<u32>(~_wgslsmith_clamp_u32(arg_0.a, arg_0.c, 54857u), ~arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0.c, 67359u, u_input.a.x), min(vec4<u32>(46997u, 57293u, arg_0.a, arg_0.c), vec4<u32>(42556u, 23926u, 0u, 28188u))), u_input.b)), abs(reverseBits(~vec4<u32>(arg_0.a, 38573u, u_input.b, u_input.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(abs(min(0i, 1i)), 2147483647i), ~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -71152i, 4051i, 54130i), vec4<i32>(0i, -18310i, -46940i, 0i)) >> ((20667u << (arg_0.a.a.x % 32u)) % 32u)), i32(-1i) * -2147483647i, -2147483647i);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(arg_1.c, 1935u) | abs(37692u), ~arg_3.a.x), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.b.x, 4294967295u), vec2<u32>(24633u >> (arg_3.a.x % 32u), abs(92682u)))), ~0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(37683u, u_input.b), min(5417u, 0u)), 12171u), u_input.b, _wgslsmith_clamp_u32(arg_3.a.x, 8336u, u_input.b)), abs(~(~firstTrailingBit(12899u))));
    var var_2 = Struct_3(var_0.x != _wgslsmith_mult_i32(-41124i, _wgslsmith_div_i32(-var_0.x, var_0.x)), false, 737f, vec4<bool>(true | !(!arg_2.x), !(!all(vec4<bool>(false, false, false, true))), true & !(!arg_2.x), true), arg_2.x);
    let var_3 = vec2<bool>(true, -((var_0.x | 26668i) | var_0.x) <= max(31636i, -27972i));
    var var_4 = 24555u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u ^ u_input.b;
    var var_1 = func_4(func_2(Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1944u), select(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a.xww, vec3<bool>(false, false, false))), true, u_input.a.x & u_input.a.x), select(vec4<bool>(func_1(), any(vec4<bool>(true, true, true, true)), select(true, true, false), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), select(2147483647i, -21301i, false) != ~(-29440i))), Struct_4(u_input.b, false, ~u_input.b), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true)), vec3<bool>(true, false, any(vec2<bool>(false, true))), true | ((u_input.b >> (u_input.a.x % 32u)) > func_2(Struct_4(u_input.a.x, false, 686u), vec4<bool>(true, true, false, false)).a.a.x)), func_2(Struct_4(u_input.a.x, select(true, true, select(false, false, true)), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u)), vec4<bool>(true, true, true, true)).a);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_4(select(22051u, ~u_input.b, all(vec2<bool>(true, false))), any(vec2<bool>(true, true)), _wgslsmith_add_u32(73166u ^ var_1.b.x, 1u)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), true))).a.a.yy, _wgslsmith_div_vec3_f32(vec3<f32>(-259f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1111f))), _wgslsmith_f_op_f32(-551f - -343f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-289f + -1454f), -475f), -1042f, -981f)));
}

