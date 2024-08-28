struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    let var_0 = true;
    let var_1 = !arg_2;
    let var_2 = 0u;
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), ~select(vec2<u32>(u_input.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(var_2, u_input.a)), true)), 5780u);
    var var_4 = Struct_1(i32(-1i) * -3536i, select(select(!vec4<bool>(var_0, true, arg_2.x, false), select(!vec4<bool>(true, arg_2.x, false, arg_1), vec4<bool>(true, true, var_0, true), true), vec4<bool>(!arg_1, true, all(vec3<bool>(false, var_1.x, arg_2.x)), true)), !vec4<bool>(true, arg_2.x, true, arg_0 > arg_0), arg_1), true);
    return _wgslsmith_clamp_i32(var_4.a, _wgslsmith_clamp_i32(49231i, var_4.a, -(~_wgslsmith_dot_vec2_i32(u_input.b, u_input.b))), u_input.b.x);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_i32(max(i32(-1i) * -58001i, u_input.b.x), func_3(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-2061f * _wgslsmith_f_op_f32(min(-1401f, -348f)))), true, vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    let var_1 = u_input.a;
    var var_2 = 77238u;
    let var_3 = true;
    var var_4 = ~(-10573i);
    return Struct_2(Struct_1(-2147483647i, vec4<bool>(any(select(vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(var_3, var_3, var_3, true), var_3)), var_3, all(select(vec2<bool>(var_3, false), vec2<bool>(var_3, false), false)), _wgslsmith_clamp_i32(u_input.b.x, var_0, var_0) > _wgslsmith_sub_i32(-2147483647i, var_0)), !(!any(vec4<bool>(true, true, var_3, true)))), !select(!vec3<bool>(var_3, var_3, true), select(vec3<bool>(true, var_3, var_3), vec3<bool>(var_3, true, var_3), vec3<bool>(true, true, false)), select(vec3<bool>(var_3, true, var_3), !vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, false, false))), ~((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 46778u, var_1), vec3<u32>(var_1, 0u, 0u)) << (~u_input.a % 32u)) >> (_wgslsmith_sub_u32(4294967295u, abs(u_input.a)) % 32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = max(48238i, ~1i);
    var_0 = u_input.b.x;
    var var_1 = ~(countOneBits(~_wgslsmith_sub_u32(u_input.a, arg_2)) >> (4294967295u % 32u));
    var_0 = firstLeadingBit(~(~max(u_input.b.x, 1i)) << (u_input.a % 32u));
    var_1 = 23705u;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = Struct_4(~_wgslsmith_add_u32(_wgslsmith_div_u32(~48032u, u_input.a ^ 41594u), _wgslsmith_mod_u32(~arg_3.c, 1u)), Struct_3(arg_3.a, arg_3.a), arg_3, abs(vec4<u32>(~33858u >> ((4294967295u >> (u_input.a % 32u)) % 32u), 53709u, arg_0.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(36823u, arg_3.c, arg_0.c), vec3<u32>(arg_0.c, u_input.a, 4294967295u)) % 32u), 0u)), !arg_0.a.b.x);
    let var_1 = _wgslsmith_mod_i32(2147483647i, 2147483647i) ^ _wgslsmith_clamp_i32(abs(countOneBits(-21911i)), ~(~func_3(651f, var_0.e, vec2<bool>(arg_1.b.x, arg_1.b.x))), -_wgslsmith_sub_i32(u_input.b.x, 1i));
    var var_2 = var_0.a;
    var_2 = 78323u;
    var_2 = _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, 21973u, 4294967295u, 1u) & vec4<u32>(4294967295u, arg_0.c, 14200u, u_input.a), ~var_0.d, ~vec4<u32>(arg_0.c, 0u, var_0.c.c, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4059u, 1u, arg_3.c, 47761u), var_0.d, vec4<u32>(var_0.c.c, 0u, 672u, arg_3.c)))), ~(~u_input.a));
    return ~(~select(~min(var_0.d.yw, var_0.d.zx), var_0.d.wy, !(!arg_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 147f;
    var var_1 = var_0;
    var var_2 = u_input.b.x;
    var_1 = _wgslsmith_f_op_f32(floor(-1665f));
    var_1 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -472f)))));
    var var_3 = u_input.a << (countOneBits(abs(66915u >> (0u % 32u)) ^ ~u_input.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_4(Struct_2(Struct_1(u_input.b.x, vec4<bool>(true, false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), u_input.a), Struct_1(~u_input.b.x, vec4<bool>(true, true, false, true), true), var_0, func_1(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 694f), vec2<f32>(var_0, 700f))), u_input.a))), ~select(~(-vec2<i32>(u_input.b.x, -2147483647i)), ~u_input.b & -u_input.b, (u_input.b.x << (0u % 32u)) == max(-28032i, -38189i)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(473f, var_0, -1358f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 360f, var_0)))))));
}

