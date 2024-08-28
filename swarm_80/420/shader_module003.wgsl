struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_2))), arg_1);
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-5394i, 49932i << (u_input.a.x % 32u), -1i, firstLeadingBit(-34518i)) ^ firstLeadingBit(vec4<i32>(-1i, arg_1.a, var_0.b.a, 1i) & vec4<i32>(u_input.b, arg_1.a, u_input.b, arg_1.a)), vec4<i32>(firstTrailingBit(var_0.b.a), max(var_0.b.a, arg_1.a), 1i, u_input.b) ^ -(vec4<i32>(22856i, 3565i, -1i, u_input.b) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), -vec4<i32>(var_0.b.a, 1i, 2147483647i, arg_1.a));
    var var_2 = Struct_2(149f, var_0.b);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(305f, -955f))), var_2.b);
    var var_4 = Struct_2(var_0.a, Struct_1(countOneBits(firstLeadingBit(0i))));
    return -1000f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = Struct_1(-1i);
    var_0 = arg_1;
    var var_1 = -1i <= -arg_1.a;
    var var_2 = max(_wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.a.x))), u_input.a.x), ~firstTrailingBit(0u));
    let var_3 = Struct_1(var_0.a);
    return 39821u;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_clamp_u32(~(~(~arg_0.x)), 104729u, arg_0.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x))), Struct_1(u_input.b)));
    let var_1 = vec3<u32>(4294967295u, 0u & func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.yxw))), var_0.b.b, _wgslsmith_f_op_f32(func_2(arg_2.zxw, Struct_1(u_input.b), _wgslsmith_f_op_f32(arg_2.x - var_0.b.a)))), 42932u);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_2.x), Struct_1(-1i));
    var var_3 = _wgslsmith_f_op_f32(322f * var_2.a);
    var var_4 = arg_2.x;
    return _wgslsmith_mult_u32(u_input.a.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, func_1(u_input.a.zz, false, vec4<f32>(-414f, -1000f, -204f, 1000f))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(102491u, 32377u), u_input.a.wx, u_input.a.yz) >> (vec2<u32>(~u_input.a.x, 1u) % vec2<u32>(32u)));
    var var_1 = ~(u_input.b ^ -1i);
    var var_2 = Struct_3(_wgslsmith_mult_u32(73003u, 43711u), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -330f))), Struct_1(_wgslsmith_div_i32(u_input.b, u_input.b) >> (~23587u % 32u))));
    var_2 = Struct_3(firstLeadingBit(44619u), var_2.b);
    var_0 = vec2<u32>(19759u, (6584u | firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))) & ~_wgslsmith_sub_u32(52170u, u_input.a.x));
    let var_3 = !vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), ~u_input.a.x < var_2.a, all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), false);
    var var_4 = _wgslsmith_sub_u32(4294967295u, 1u);
    var_1 = 3419i;
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(161f, -395f, var_2.b.a) * vec3<f32>(var_2.b.a, 558f, 1769f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, var_2.b.a, var_2.b.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(func_2(vec3<f32>(var_2.b.a, var_2.b.a, -126f), Struct_1(var_2.b.b.a), 299f)), 2015f))));
    let x = u_input.a;
    s_output = StorageBuffer(133f, 4294967295u, 2147483647i);
}

