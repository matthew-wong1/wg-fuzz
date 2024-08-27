struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> i32 {
    global0 = ~u_input.c.x;
    let var_0 = Struct_2(~u_input.b);
    let var_1 = _wgslsmith_dot_vec4_i32(arg_1, arg_1);
    var var_2 = ~var_0.a;
    var_2 = 58299u << (~var_0.a % 32u);
    return arg_1.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<i32>(select(~(-26463i), abs(i32(-1i) * -16484i), _wgslsmith_f_op_f32(f32(-1f) * -701f) != _wgslsmith_f_op_f32(sign(-1514f))), -_wgslsmith_div_i32(func_3(vec2<bool>(false, false), vec4<i32>(-20322i, 1i, -1i, 28832i)), -36095i)), min(u_input.c.yxy, ~countOneBits(vec3<u32>(u_input.c.x, 48362u, 16837u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) * _wgslsmith_f_op_f32(1000f - -1804f)))), 155f)), vec3<i32>(abs(44993i) << (abs(u_input.b ^ 4294967295u) % 32u), 0i, 2147483647i));
    var var_1 = _wgslsmith_mult_vec2_u32(var_0.b.zz, countOneBits(~vec2<u32>(13407u >> (u_input.b % 32u), ~u_input.c.x)));
    global0 = var_1.x;
    let var_2 = Struct_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(min(1u, 44750u), var_0.b.x << (86040u % 32u), 1u, 0u), u_input.c, true), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, var_1.x, 4107u, u_input.b), u_input.c, reverseBits(vec4<u32>(var_0.b.x, 11585u, 1u, var_0.b.x)))));
    var_1 = var_0.b.xz;
    return ((reverseBits(var_1.x) << (~(26443u | var_0.b.x) % 32u)) | (4294967295u << (max(u_input.a, ~76833u) % 32u))) | var_0.b.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = _wgslsmith_mod_u32(0u ^ u_input.b, _wgslsmith_sub_u32(13974u & u_input.b, _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(40827u, 37442u)), ~func_2())));
    global0 = 4294967295u;
    let var_0 = Struct_2(u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(733f * 2406f) - _wgslsmith_f_op_f32(-304f - 555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1644f))), -1688f)))));
    global0 = max(reverseBits(61098u), _wgslsmith_clamp_u32(func_2(), 1u, ~firstLeadingBit(~4294967295u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(0i);
    var var_1 = select(true, ((abs(u_input.c.x) < u_input.b) | false) & true, true);
    var var_2 = func_1(38325i);
    let var_3 = u_input.c.wx;
    let var_4 = -240f;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0), vec3<i32>(var_0, 7435i, -2147483647i))), select(vec3<i32>(-var_0, var_0, ~var_0), vec3<i32>(var_0, _wgslsmith_mod_i32(-2147483647i, -46706i), 22139i), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(0i, var_0)) << (vec2<u32>(30621u, _wgslsmith_sub_u32(7023u, func_1(37191i).a)) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.a, 0u, 27594u, var_2.a)) | (vec4<u32>(u_input.a, 0u, var_2.a, var_2.a) & ~u_input.c)), 0u & max(~1u, var_2.a ^ var_2.a));
}

