struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: array<f32, 14> = array<f32, 14>(937f, 1200f, -121f, 1479f, 1285f, 291f, -1000f, -1227f, -799f, -334f, 1938f, -673f, 576f, 723f);

var<private> global2: f32 = 660f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) & ~u_input.c.yzx, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c.x, 18944u), 0u, u_input.c.x), 18760u, ~u_input.c.x)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zxw, u_input.c.zxw), _wgslsmith_sub_vec3_u32(~u_input.c.wyy, u_input.c.wyx));
    var var_1 = 3996u;
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    let var_2 = arg_1;
    return 0i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global1 = array<f32, 14>();
    let var_0 = -vec3<i32>(u_input.d, 2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -35114i, 2147483647i, u_input.b.x), -vec4<i32>(0i, u_input.b.x, 2147483647i, -52495i)) & (u_input.b.x >> (firstLeadingBit(u_input.c.x) % 32u)));
    global0 = array<vec2<bool>, 23>();
    var var_1 = Struct_1(_wgslsmith_clamp_i32(u_input.a >> (~0u % 32u), _wgslsmith_sub_i32(var_0.x, (i32(-1i) * -29109i) | func_2(31706i, Struct_1(2147483647i), vec2<bool>(true, false))), -reverseBits(1i)));
    var var_2 = _wgslsmith_mod_i32(-firstTrailingBit(0i), func_2(max(_wgslsmith_mod_i32(firstTrailingBit(var_0.x), ~1i), var_1.a), Struct_1(~var_0.x >> (_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u)), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)] == global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return Struct_1(abs(var_1.a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 23>();
    var var_0 = -760f;
    var var_1 = u_input.c;
    let var_2 = ~var_1.x;
    var var_3 = 4737u;
    return Struct_1(firstTrailingBit(_wgslsmith_mod_i32(-(~(-2325i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-64743i, u_input.d, arg_1.a)), firstLeadingBit(vec3<i32>(arg_1.a, -1i, u_input.d))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.c | vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~(~(u_input.c.x | 6000u)), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 12829u, u_input.c.x), u_input.c.xzx), 4294967295u), 4294967295u);
    global1 = array<f32, 14>();
    let var_1 = all(!vec4<bool>(all(vec3<bool>(true, false, false)) || true, false, select(false, true, all(vec3<bool>(false, false, true))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    var var_2 = ~(~var_0.x);
    var var_3 = func_1(abs(_wgslsmith_dot_vec3_u32(u_input.c.zxx & _wgslsmith_add_vec3_u32(u_input.c.ywx, vec3<u32>(var_0.x, 15284u, var_0.x)), min(vec3<u32>(35659u, u_input.c.x, 75431u), vec3<u32>(var_0.x, var_0.x, var_0.x)))));
    return Struct_1(arg_0.a);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global1 = array<f32, 14>();
    let var_0 = arg_1;
    let var_1 = true;
    global0 = array<vec2<bool>, 23>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))) - arg_2.x);
    return _wgslsmith_sub_i32(1i, reverseBits(max(firstTrailingBit(firstTrailingBit(-26433i)), _wgslsmith_clamp_i32(reverseBits(u_input.d), 64958i, -31102i | u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(1f, func_4(func_3(true, func_1(u_input.c.x), false), u_input.d & (u_input.d << (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global1[_wgslsmith_index_u32(28548u, 14u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], -1013f)))))));
    global1 = array<f32, 14>();
    let var_1 = 963f;
    var var_2 = func_3(true, Struct_1(-abs(abs(-1i))), true != !(!all(vec3<bool>(true, false, true))));
    global1 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(u_input.c.x << (4294967295u % 32u)), u_input.c.x), _wgslsmith_clamp_vec2_u32(u_input.c.xz, u_input.c.yx, ~u_input.c.wz)), 1i, _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - 1637f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))), -545f, _wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 27509i, var_2.a, var_0.a), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, -1i, u_input.a), vec4<i32>(u_input.a, 0i, -2147483647i, 1i)))), vec4<i32>(var_2.a, i32(-1i) * -13237i, _wgslsmith_mod_i32(countOneBits(var_2.a), u_input.b.x & u_input.a), -1i)));
}

