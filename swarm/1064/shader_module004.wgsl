struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> i32 {
    let var_0 = ~u_input.a == 16440u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 2075f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1183f - 964f))))), 1785f);
    var var_2 = max(countOneBits(~vec3<u32>(4294967295u, ~4294967295u, u_input.a << (23517u % 32u))), u_input.e.wyz);
    let var_3 = -1i;
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, _wgslsmith_f_op_f32(-899f - var_1.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, -111f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, var_1.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2126f, var_1.x)))))));
    return -(i32(-1i) * -(-34531i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, 1i), vec4<i32>(u_input.d.x, 21331i, u_input.b.x, -1i))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = any(select(!vec3<bool>(!arg_0.d.x, arg_0.c.a, all(vec3<bool>(true, true, arg_0.a))), select(select(arg_0.d, vec3<bool>(true, arg_0.b.x, false), !arg_0.c.a), !select(arg_0.b, vec3<bool>(arg_0.d.x, arg_0.c.a, arg_0.b.x), arg_0.d.x), vec3<bool>(!arg_0.a, true, false)), !select(!vec3<bool>(arg_0.a, true, true), !vec3<bool>(arg_0.c.a, true, true), vec3<bool>(arg_0.d.x, arg_0.a, true))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.b.x + arg_0.c.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.c.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -884f))))))));
    let var_2 = arg_0.c;
    var var_3 = max(vec2<i32>(0i, -abs(-u_input.d.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~abs(u_input.d.wzx)), _wgslsmith_mult_i32(0i, reverseBits(min(12308i, -2147483647i)))));
    let var_4 = select(!(!(!(!vec4<bool>(var_2.a, var_2.a, var_2.a, true)))), !vec4<bool>(arg_0.d.x, !all(vec4<bool>(var_2.a, true, true, var_2.a)), false, true), all(!(!(!vec4<bool>(var_2.a, var_2.a, true, var_2.a)))));
    return u_input.e.x;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = reverseBits(firstTrailingBit(func_2()));
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mod_i32(select(max(-40233i, u_input.d.x >> (u_input.a % 32u)), func_2(), all(vec3<bool>(true, true, true))), u_input.d.x);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(Struct_2(true, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_1(false, vec3<f32>(772f, 1221f, 929f), arg_0.zx), vec3<bool>(false, false, false))), ~1u, u_input.e.x, u_input.a), vec4<u32>(~firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 18906u)), 25396u, ~0u, 1u));
    var_0 = firstLeadingBit(-_wgslsmith_div_i32(0i, -2147483647i));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(14084u, ~func_1(u_input.d.yzy)), ~(~(~_wgslsmith_sub_u32(u_input.e.x, 86548u))));
    let x = u_input.a;
    s_output = StorageBuffer(5028i, var_0.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x & (var_0.x >> (0u % 32u)), u_input.e.x), ~countOneBits(_wgslsmith_div_u32(1u, 8257u))));
}

