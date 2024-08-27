struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = true;
    var var_1 = u_input.a.x;
    var_1 = u_input.b.x;
    var var_2 = Struct_1(false, arg_2.b);
    let var_3 = Struct_1(!(!(var_2.a != false)), !vec4<bool>(~u_input.b.x != _wgslsmith_dot_vec2_u32(vec2<u32>(71834u, 32486u), arg_3.wx), true, !any(vec3<bool>(true, false, var_0)), false));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2225f), _wgslsmith_f_op_f32(-arg_0)), -961f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<i32> {
    return vec3<i32>(~min(_wgslsmith_clamp_i32(-23683i, 1i, -1i >> (0u % 32u)), 2147483647i), -_wgslsmith_clamp_i32(-1i, -_wgslsmith_clamp_i32(52842i, -7184i, -38833i), 1i), -2437i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = ~abs(func_4(vec2<f32>(-1518f, -1370f), Struct_1(arg_1.a, var_1.b), _wgslsmith_f_op_f32(func_3(1343f, arg_0, var_1, vec4<u32>(5086u, u_input.b.x, u_input.b.x, u_input.b.x))), ~0u) << (~vec3<u32>(u_input.b.x, 1u, u_input.a.x) % vec3<u32>(32u)));
    var var_3 = abs(select((vec4<u32>(1u, 90076u, u_input.a.x, 32009u) >> (~vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) & ~(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 17168u, 107267u, u_input.b.x) % vec4<u32>(32u))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(0u, 4294967295u, 69702u, 1u)), max(vec4<u32>(4294967295u, u_input.b.x, 7745u, u_input.a.x), vec4<u32>(22577u, 0u, u_input.b.x, u_input.b.x)))), vec4<bool>(select(any(var_0.b), false, true), select(!var_1.a, true, true | arg_1.b.x), false, arg_0.b.x)));
    var_2 = firstLeadingBit(vec3<i32>(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_2.x), var_2.x, var_2.x & -2147483647i, 1i), (vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) & vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x)) ^ -vec4<i32>(var_2.x, -2147483647i, -1i, var_2.x)), _wgslsmith_div_i32(11145i, ~0i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -345f))), arg_0, Struct_1(true, !vec4<bool>(false, var_0.a, true, false)), ~select(vec4<u32>(u_input.a.x, var_3.x, 4294967295u, var_3.x) ^ vec4<u32>(var_3.x, var_3.x, 69414u, u_input.b.x), vec4<u32>(var_3.x, 0u, 0u, var_3.x), true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(true, arg_0.b))) * -286f);
    let var_1 = firstLeadingBit(_wgslsmith_clamp_i32(~(-23806i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(39143i >> (u_input.a.x % 32u), _wgslsmith_sub_i32(-13567i, 24725i)), -2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(31065i, -2147483647i, 0i), vec3<i32>(34788i, 2147483647i, 36720i)), 30714i)), 0i));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1531f), _wgslsmith_f_op_f32(1130f * -1181f), arg_1.a));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1520f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1594f + _wgslsmith_f_op_f32(f32(-1f) * -584f)) - _wgslsmith_f_op_f32(f32(-1f) * -886f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_1(Struct_1(any(vec3<bool>(true, true, true)), vec4<bool>(all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), any(vec2<bool>(false, false)), true)), Struct_1(true, vec4<bool>(true, false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(i32(-1i) * -46964i, -34711i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-907f)) - _wgslsmith_f_op_f32(1000f * -1196f))) * _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(1u, 48152u) >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u)), _wgslsmith_div_u32(u_input.a.x, u_input.b.x)), 0u);
}

