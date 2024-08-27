struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    return -1509f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = select(select(vec4<bool>(_wgslsmith_f_op_f32(848f + arg_3) <= -2193f, true, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))), vec4<bool>(true, (arg_2 >= arg_0.a) && true, any(vec2<bool>(false, false)), all(vec3<bool>(true, false, true))), all(vec4<bool>(false, true, false, false)) & select(true, all(vec3<bool>(true, false, false)), true)), !vec4<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), _wgslsmith_sub_i32(u_input.c, -53433i) < _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.c), vec3<i32>(u_input.a.x, u_input.d, u_input.a.x)), true), select(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, true, true))), -817f == _wgslsmith_f_op_f32(-arg_0.b)), all(vec3<bool>(true, true, true))));
    var_0 = vec4<bool>(true, all(vec3<bool>(true, _wgslsmith_f_op_f32(-arg_2) == _wgslsmith_f_op_f32(-arg_0.a), true)), true, true);
    var_0 = !(!(!vec4<bool>(any(vec2<bool>(false, var_0.x)), all(vec2<bool>(true, true)), var_0.x, var_0.x)));
    let var_1 = (0u << (0u % 32u)) <= (firstLeadingBit(max(_wgslsmith_mod_u32(0u, 8505u), _wgslsmith_mult_u32(u_input.b, 0u))) ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, arg_1.x, _wgslsmith_mod_u32(14285u, arg_1.x)), ~u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, 714f))) * vec2<f32>(-1918f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_0.b) - _wgslsmith_f_op_f32(-arg_3)))));
    return -2687f;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(sign(-229f)), _wgslsmith_f_op_f32(func_3(Struct_1(-1000f, 1143f), vec2<i32>(arg_1, u_input.c)))), vec4<u32>(u_input.b, u_input.b, var_0 << (var_0 % 32u), u_input.b), _wgslsmith_f_op_f32(-1f), -1903f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1926f, 208f), _wgslsmith_f_op_f32(trunc(-1906f)), !arg_0)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(192f, 662f))))));
    let var_2 = vec3<u32>(34931u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 51589u), ~1u), ~u_input.b) ^ ~((_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0, u_input.b), vec3<u32>(128510u, 4294967295u, u_input.b)) & vec3<u32>(74200u, var_0, 1u)) << (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(77755u, u_input.b, 27899u)), vec3<u32>(1u, var_0, 42355u)) % vec3<u32>(32u)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(401f + -2948f)))));
    var_1 = Struct_1(-612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) * -1363f)) * 1316f));
    return Struct_1(_wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(-var_1.b))), var_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), arg_0.b, _wgslsmith_dot_vec4_i32(u_input.a << (vec4<u32>(1u, u_input.b, 33335u, u_input.b) % vec4<u32>(32u)), -u_input.a) >= 1i)));
    var var_1 = u_input.a.x;
    let var_2 = -vec4<i32>(select(-40043i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, arg_2, u_input.c, arg_2)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false))), ~(~(-arg_2)), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, u_input.c), _wgslsmith_div_i32(arg_2, u_input.c))), -26775i);
    var var_3 = vec2<bool>(false, all(select(vec2<bool>(true, select(true, false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), var_2.x <= arg_2), false)));
    var var_4 = ~vec2<i32>(var_2.x, -(_wgslsmith_dot_vec3_i32(var_2.wzx, var_2.zwx) & 4986i));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    var var_0 = !vec2<bool>(arg_1.x, !(!all(vec3<bool>(arg_1.x, true, arg_1.x))));
    var var_1 = func_5(func_2(true, ~abs(-2147483647i), i32(-1i) * -29453i), func_2(!(arg_1.x && arg_1.x), -44770i, -15900i), u_input.c);
    var var_2 = ~firstTrailingBit(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a, arg_0))), _wgslsmith_f_op_f32(-var_1.a)) - 593f), arg_0);
    var_0 = select(vec2<bool>((true || (false && var_0.x)) || all(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, arg_1.x, var_0.x, false), var_0.x)), false), select(vec2<bool>(true, arg_1.x), vec2<bool>(true, false && (var_2.x <= u_input.b)), arg_1.yx), !arg_1.zy);
    return var_1.b;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    return StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -490f), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), 1000f)), firstTrailingBit(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(93759u, 21397u, 62439u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), ~57241u)), 33895i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(u_input.d, Struct_1(-540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(2319f, vec3<bool>(true, true, false))))))));
}

