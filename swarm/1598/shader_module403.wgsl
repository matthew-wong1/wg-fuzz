struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<f32, 15>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    return global1[_wgslsmith_index_u32(0u, 15u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(-2139f)), _wgslsmith_div_f32(-321f, arg_1.b), _wgslsmith_f_op_f32(arg_1.b - 1000f))))));
    global0 = !(!select(vec3<bool>(var_0.x < -523f, global0.x, true), vec3<bool>(global0.x, true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(!vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x))));
    var var_1 = Struct_4(arg_1.b, Struct_1(reverseBits(vec4<u32>(38367u, 1u, u_input.c.x, u_input.c.x) << ((u_input.c >> (vec4<u32>(u_input.b, 11551u, 16919u, 8747u) % vec4<u32>(32u))) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(65357u, 15u)], arg_1.c), var_0.x, !(!(!select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, false, global0.x)))));
    global0 = !(!(!vec3<bool>(true, any(vec2<bool>(true, global0.x)), false)));
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(exp2(var_1.b.b));
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = ~(u_input.c.xx & u_input.e.zx);
    var var_1 = Struct_2(Struct_1(u_input.c, 999f, -2147483647i), !(!vec4<bool>(!arg_0.x, !arg_0.x, var_0.x != 24891u, select(false, global0.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-325f, Struct_1(~vec4<u32>(u_input.c.x, var_0.x, 1u, var_0.x), _wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(false, false, arg_0.x, true)))), -u_input.d))), 749f), 8216u, vec4<u32>(_wgslsmith_add_u32(min(~u_input.c.x, max(0u, 1u)), 0u), _wgslsmith_mult_u32(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 13770u), ~u_input.e.xy)), _wgslsmith_div_u32(u_input.e.x, ~(~u_input.e.x)), countOneBits(u_input.e.x)));
    let var_2 = Struct_5(vec4<bool>(arg_0.x, !global0.x, !all(vec2<bool>(global0.x, var_1.b.x)), var_1.b.x));
    var var_3 = -(~(~vec4<i32>(-13590i, reverseBits(0i), 1i, min(1i, var_1.a.c))));
    let var_4 = vec4<f32>(663f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20104u, 15u)]), _wgslsmith_f_op_f32(var_1.a.b + global1[_wgslsmith_index_u32(92413u, 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.b)))));
    return vec3<bool>(var_2.a.x, var_1.b.x, any(var_2.a));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec3<i32> {
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    global0 = !func_2(select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, true), vec3<bool>(global0.x, false, false)), select(!vec3<bool>(true, false, global0.x), !vec3<bool>(global0.x, true, global0.x), !global0.x), 1u >= arg_0));
    global1 = array<f32, 15>();
    global0 = vec3<bool>(false, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1030f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 15u)]) + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(482f))))));
    return vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(select(-2147483647i, -18213i, false), -46950i, u_input.a & 0i, ~0i), (vec4<i32>(arg_1.x, 9804i, arg_1.x, arg_1.x) ^ vec4<i32>(u_input.a, u_input.d, -1i, -53248i)) ^ ~vec4<i32>(2147483647i, u_input.d, -1i, 0i)), u_input.d, _wgslsmith_clamp_i32(min(2147483647i, ~1i), abs(_wgslsmith_clamp_i32(9382i, arg_1.x, -791i)) | ~_wgslsmith_mod_i32(-59414i, -9603i), -41827i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 15u)])));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(func_1(1u, -vec3<i32>(u_input.d, u_input.a, u_input.d)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)) & (~vec3<i32>(28058i, u_input.a, -2147483647i) & ~vec3<i32>(-21090i, u_input.d, 25004i)), -(max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, -4053i, u_input.a)) << (max(u_input.c.yyx, vec3<u32>(u_input.e.x, 37508u, 1u)) % vec3<u32>(32u)))), ~vec3<i32>(9733i, _wgslsmith_mod_i32(~(-1i), ~1i), u_input.a));
    var var_2 = -973f;
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-2714i), i32(-1i) * -2147483647i, var_1.x, min(_wgslsmith_mod_i32(func_1(u_input.e.x, vec3<i32>(var_1.x, 49244i, var_1.x)).x, -var_1.x), -31772i)), ~(~(firstTrailingBit(vec4<i32>(5214i, 2147483647i, var_1.x, var_1.x)) | vec4<i32>(6052i, u_input.d, 27817i, u_input.a))));
    var var_4 = Struct_5(!vec4<bool>(global0.x, global0.x || true, global0.x, true));
    global1 = array<f32, 15>();
    var_3 = vec4<i32>(-firstLeadingBit(-45842i), _wgslsmith_mult_i32(-1i, var_1.x), _wgslsmith_div_i32(~0i, -(u_input.d | _wgslsmith_mult_i32(var_1.x, u_input.a))), _wgslsmith_sub_i32(31893i, ~var_1.x));
    var var_5 = vec2<u32>(527u, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(u_input.e.x, u_input.e.x)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.e.x, 4294967295u), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 15u)] - global1[_wgslsmith_index_u32(1u, 15u)]), 759f))));
}

