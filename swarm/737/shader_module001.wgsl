struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    return u_input.b.x;
}

fn func_3() -> bool {
    let var_0 = ((vec2<u32>(func_2(Struct_3(vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u)), vec2<f32>(1000f, -426f), Struct_1(u_input.c.x)), 16149u) << (u_input.b.xz % vec2<u32>(32u))) ^ firstLeadingBit(~(~u_input.a.xz))) ^ u_input.a.zz;
    var var_1 = select(vec3<u32>(u_input.b.x, firstTrailingBit(firstLeadingBit(1u)), ~_wgslsmith_sub_u32(0u, 0u) & var_0.x), vec3<u32>(var_0.x, _wgslsmith_mult_u32(abs(~97450u), ~firstTrailingBit(25237u)), 0u), !vec3<bool>(false, u_input.b.x != ~var_0.x, all(vec4<bool>(true, true, false, false))));
    var var_2 = _wgslsmith_div_i32(-(_wgslsmith_div_i32(0i, u_input.c.x) ^ max(u_input.d, u_input.d)), 0i);
    var_1 = ~u_input.b;
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(~u_input.b.x, abs(var_0.x))), _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, var_1.x), vec2<u32>(u_input.a.x, 1u), u_input.d < -1i), abs(vec2<u32>(134475u, u_input.b.x)))), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(58438u, var_0.x, 24002u), u_input.a)), ~(var_0.x & var_1.x) & _wgslsmith_sub_u32(10317u, 1u)));
    return all(!select(vec3<bool>(any(vec3<bool>(true, true, false)), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec4<bool>(!((func_2(Struct_3(vec4<u32>(u_input.a.x, 1u, 4294967295u, 45783u)), vec2<f32>(722f, -1377f), Struct_1(u_input.d)) > (u_input.b.x & u_input.a.x)) | true), !(abs(u_input.c.x) >= _wgslsmith_dot_vec2_i32(select(u_input.c.wz, vec2<i32>(-74670i, u_input.d), vec2<bool>(true, false)), u_input.c.zw)), all(vec2<bool>(true, true)), all(vec2<bool>(true & func_3(), false)));
    var_0 = !select(select(vec4<bool>(false, any(vec3<bool>(var_0.x, false, var_0.x)), any(vec4<bool>(true, false, var_0.x, var_0.x)), true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), true), vec4<bool>(all(vec2<bool>(var_0.x, false)), true, true, true)), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, false, true, false));
    var var_1 = 1i;
    var var_2 = Struct_1(-(u_input.c.x ^ -40434i));
    var_1 = _wgslsmith_sub_i32(-7149i, _wgslsmith_clamp_i32(-1i, ~(-74347i), _wgslsmith_div_i32(u_input.d, -var_2.a))) ^ countOneBits(-17300i >> (~(69568u & u_input.b.x) % 32u));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1559f, 254f, -1113f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1721f, -1195f, 1000f)), var_0.wzz))) * vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -437f))), _wgslsmith_f_op_f32(max(-1000f, 1000f)), _wgslsmith_f_op_f32(1384f - -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_1 = -(u_input.d >> (~4294967295u % 32u)) >> (121014u % 32u);
    var var_2 = Struct_2(Struct_1(-1i));
    var var_3 = Struct_3(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(60640u, u_input.a.x, 0u, u_input.b.x)) << (vec4<u32>(1995u, u_input.a.x, u_input.b.x, 586u) % vec4<u32>(32u)), vec4<u32>(max(0u, u_input.b.x), ~u_input.a.x, ~u_input.b.x, ~u_input.a.x)));
    let var_4 = -1i;
    var_3 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_3.a.x), vec2<u32>(var_3.a.x, u_input.a.x)), countOneBits(reverseBits(0u & u_input.b.x)), var_3.a.x, ~0u));
    var_3 = Struct_3(firstTrailingBit(max(vec4<u32>(49104u, 4294967295u, var_3.a.x, 0u), abs(vec4<u32>(u_input.a.x, var_3.a.x, 9646u, 4294967295u)))) ^ ~abs(var_3.a));
    let var_5 = Struct_3(~(reverseBits(var_3.a >> (var_3.a % vec4<u32>(32u))) | vec4<u32>(firstTrailingBit(95u), ~u_input.b.x, abs(1u), _wgslsmith_add_u32(12909u, u_input.b.x))));
    var_3 = Struct_3(~(~vec4<u32>(var_5.a.x | var_3.a.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, 99208u, 55844u), vec3<u32>(var_3.a.x, 33737u, var_3.a.x)), min(28562u, var_5.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(reverseBits(var_5.a.x) >> (52447u % 32u))), var_0, 1i, ~var_5.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(var_3.a.x, 18789u), _wgslsmith_mult_u32(select(~5686u, select(27007u, u_input.a.x, true), var_3.a.x >= 1u), select(var_3.a.x, var_5.a.x, true))));
}

