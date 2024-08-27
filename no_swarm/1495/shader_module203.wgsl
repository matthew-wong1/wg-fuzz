struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> Struct_2 {
    let var_0 = !(reverseBits(u_input.b) >= _wgslsmith_sub_i32(u_input.a.x, -20536i));
    let var_1 = Struct_1(vec3<u32>(63215u, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(~8261u, u_input.c), select(u_input.c & 85816u, 4294967295u, var_0))), 651f, -1i);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(~(~var_1.a.yz) & ~vec2<u32>(u_input.c, 4294967295u), vec2<u32>(18030u, countOneBits(~24506u))));
    let var_3 = u_input.a;
    var var_4 = Struct_2(~0u << (u_input.c % 32u), var_2);
    return Struct_2(~abs(_wgslsmith_add_u32(var_2.x & 83024u, ~4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~var_4.b, _wgslsmith_div_vec2_u32(vec2<u32>(18176u, 12116u), var_1.a.zx)), vec2<u32>(_wgslsmith_mult_u32(0u, 35841u), _wgslsmith_sub_u32(u_input.c, 4294967295u))), max(vec2<u32>(~var_4.b.x, ~0u), abs(vec2<u32>(var_4.b.x, var_1.a.x)) << (abs(var_2) % vec2<u32>(32u)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    return min(arg_1.a, u_input.c);
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_2(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, 0u), ~vec4<u32>(u_input.c, 84306u, u_input.c, 1u))), ~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, u_input.c))));
    let var_1 = vec3<bool>(true, true, all(!vec4<bool>(true, u_input.b >= u_input.b, true, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xxy * _wgslsmith_f_op_vec3_f32(-arg_0.yyz)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, 399f, 1967f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, -321f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1246f, arg_0.x, -281f))))) - _wgslsmith_f_op_vec3_f32(round(arg_0.yzy)));
    var var_3 = vec2<u32>(~_wgslsmith_add_u32(firstLeadingBit(2001u), var_0.b.x), 0u) ^ firstLeadingBit(var_0.b);
    var_3 = var_0.b;
    return ~(~(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, u_input.c, var_3.x), vec3<u32>(63404u, 32538u, 58760u)), select(vec3<u32>(var_0.b.x, 21035u, 92610u), vec3<u32>(1u, var_3.x, 46425u), vec3<bool>(var_1.x, var_1.x, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<u32>(u_input.c, func_2(Struct_2(u_input.c, vec2<u32>(93186u, u_input.c)), func_1()), u_input.c), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1537f, 1000f, 206f, -1029f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1511f, 1000f, -787f, -1000f) + vec4<f32>(1146f, 1899f, 189f, 864f)))), false), -130f, 2387i);
    var var_1 = Struct_1(firstLeadingBit(~var_0.a & var_0.a), -143f, var_0.c);
    var var_2 = !(!all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(-303f - 262f)) * _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(519f, 156f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(-var_0.b), false))));
    var_2 = !(true || !all(vec2<bool>(false, true)));
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -801f)));
    var_0 = Struct_1(var_0.a, var_0.b, var_1.c);
    var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1790f, _wgslsmith_f_op_f32(min(1141f, var_1.b)), true))), 0i);
    var_0 = Struct_1(~vec3<u32>(countOneBits(u_input.c), 0u, 1u), _wgslsmith_f_op_f32(-var_0.b), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-min(var_1.c, var_1.c), _wgslsmith_clamp_i32(0i, 2147483647i, 1i) & -var_1.c, u_input.a.x), vec3<i32>(var_0.c << (var_1.a.x % 32u), var_0.c | u_input.d.x, var_0.c & var_1.c)), vec3<i32>(firstLeadingBit(-1i), 7451i, countOneBits(0i)));
}

