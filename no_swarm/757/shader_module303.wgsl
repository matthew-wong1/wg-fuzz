struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> vec4<u32> {
    var var_0 = -vec2<i32>(~arg_2 & arg_2, _wgslsmith_div_i32(-21947i, firstTrailingBit(u_input.a << (arg_0 % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -603f, 752f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)), -1697f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-378f, 246f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_2 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 228f, -630f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1008f, var_1.x, var_1.x), vec3<f32>(1240f, var_1.x, -356f))))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -682f);
    let var_4 = !(arg_0 == abs(arg_0));
    return _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(arg_0, ~0u, _wgslsmith_sub_u32(arg_0, 4294967295u), arg_0)), ~select(vec4<u32>(arg_0, arg_0, 4294967295u, 0u ^ arg_0), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0), vec3<u32>(0u, 4294967295u, arg_0)), 74632u, ~arg_0, ~arg_0), !vec4<bool>(var_4, var_4, var_4, true)));
}

fn func_1() -> i32 {
    var var_0 = 5021u >> (reverseBits(_wgslsmith_dot_vec4_u32(func_2(_wgslsmith_mult_u32(4294967295u, 0u), u_input.a, _wgslsmith_sub_i32(3015i, u_input.a)), vec4<u32>(~24014u, 0u << (0u % 32u), 4294967295u, 4294967295u))) % 32u);
    let var_1 = Struct_1(u_input.a, true, -u_input.a, 0u);
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-352f - 1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -424f), var_1.b)), -793f);
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, var_2.a, u_input.a, var_1.c)), -vec4<i32>(1i, var_1.a, var_2.c, 1i))) << (~abs(1u) % 32u), -1i);
}

fn func_3() -> u32 {
    let var_0 = false;
    var var_1 = 1u;
    var_1 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 78713u), 4294967295u, _wgslsmith_div_u32(7922u, 10399u)), abs(~660u), ~4294967295u), func_2(~1u, u_input.a, -7578i).x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f), -1968f);
    var_2 = -1843f;
    return ~(~abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-4010i, false, func_1(), func_3());
    var var_1 = vec4<u32>(33861u, var_0.d, var_0.d, 44608u);
    var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(func_3()), ~var_0.d, var_1.x & 1u, firstTrailingBit(var_0.d)), ~select(vec4<u32>(61199u, var_0.d, 4294967295u, var_1.x) ^ vec4<u32>(var_0.d, 0u, var_0.d, 1u), firstTrailingBit(vec4<u32>(var_1.x, 36284u, 35518u, 1u)), !vec4<bool>(true, var_0.b, var_0.b, false))), ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(483u, var_1.x), _wgslsmith_clamp_u32(var_0.d, 31494u, 0u), max(25299u, 69264u), reverseBits(0u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_0.d, var_0.d, var_1.x), vec4<u32>(var_0.d, 0u, var_0.d, var_1.x)) | ~vec4<u32>(var_0.d, var_0.d, 15525u, 1u)));
    var_0 = Struct_1(-36711i, var_0.b, var_0.a, _wgslsmith_mod_u32(var_0.d, var_0.d));
    var_0 = Struct_1(u_input.a, any(select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, true, false), var_0.b)) != var_0.b, ~u_input.a, 76123u);
    var var_2 = _wgslsmith_add_vec3_i32(~(~vec3<i32>(372i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, var_0.c, 1473i, -41226i), vec4<i32>(-2147483647i, 2147483647i, -1i, -1i)), 23552i)), reverseBits(abs(vec3<i32>(u_input.a, var_0.a, -3705i))) ^ (~(vec3<i32>(u_input.a, 0i, u_input.a) & vec3<i32>(0i, u_input.a, u_input.a)) ^ vec3<i32>(var_0.a, _wgslsmith_mult_i32(var_0.c, 0i), firstTrailingBit(var_0.c))));
    var var_3 = 41522u;
    let var_4 = all(!select(vec2<bool>(any(vec4<bool>(var_0.b, false, var_0.b, var_0.b)), var_0.b || true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, var_0.b)), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(-1800i, countOneBits(var_2.yz));
}

