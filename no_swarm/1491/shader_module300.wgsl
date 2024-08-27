struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(40183u, 13784u), vec2<u32>(33299u, 0u), vec2<u32>(35882u, 48871u), vec2<u32>(88033u, 31900u), vec2<u32>(1u, 116474u), vec2<u32>(4294967295u, 31830u), vec2<u32>(4294967295u, 7247u), vec2<u32>(0u, 0u), vec2<u32>(19442u, 4294967295u), vec2<u32>(2967u, 525u), vec2<u32>(4294967295u, 29462u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(5234u, 38347u), vec2<u32>(4294967295u, 1u), vec2<u32>(22539u, 46731u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 6653u));

var<private> global1: u32 = 9014u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = true;
    let var_1 = min(reverseBits(u_input.a.x), ~u_input.b);
    var var_2 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(2147483647i << (u_input.b % 32u), i32(-1i) * -27903i) | ~(~0i));
    var var_3 = Struct_1(arg_0.x);
    let var_4 = arg_0.x >= var_3.a;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~85332u), ~(~countOneBits(~u_input.a)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = ~(countOneBits(vec3<u32>(firstLeadingBit(4294967295u), arg_0.a, arg_0.d.x)) | ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 22162u, arg_2), vec3<u32>(0u, 1u, 0u)));
    var var_1 = ~(~var_0.x) | 1u;
    global1 = u_input.b;
    global1 = arg_2;
    let var_2 = true;
    return arg_1 ^ 12703i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = -_wgslsmith_div_i32(func_4(Struct_3(func_3(vec3<f32>(604f, 512f, -612f), arg_0.a, vec3<f32>(834f, arg_0.a, arg_0.a)), arg_0, vec3<i32>(-14856i, 2147483647i, 9883i), vec2<u32>(52684u, u_input.b)), -12502i, ~u_input.b), min(func_4(Struct_3(u_input.b, arg_0, vec3<i32>(-2147483647i, -1i, -6172i), vec2<u32>(1043u, 4294967295u)), _wgslsmith_clamp_i32(-1i, 43710i, 2147483647i), reverseBits(1u)), 1i));
    var var_1 = vec3<bool>(false, all(select(arg_1.xy, select(select(vec2<bool>(false, arg_1.x), arg_1.zx, arg_1.x), select(arg_1.zx, vec2<bool>(arg_1.x, false), false), true), arg_1.yz)), arg_1.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, arg_0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-351f, -651f)))))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))))), Struct_1(1f), Struct_1(-1221f));
    var var_4 = all(arg_1.zz);
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1036f)), _wgslsmith_f_op_f32(ceil(arg_0.a)), all(!select(vec4<bool>(arg_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(arg_1.x, false, true, true), arg_1.x)))), var_3.b, var_3.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    global1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~(1044u | u_input.b), min(72678u, u_input.b) ^ ~9592u, 46375u), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 44134u, 1u) << (max(vec3<u32>(u_input.b, u_input.a.x, 15322u), vec3<u32>(38456u, u_input.b, u_input.b)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 15885u), vec3<u32>(0u, 0u, 0u)), firstTrailingBit(vec3<u32>(u_input.a.x, 40612u, 0u)))));
    var var_0 = ~vec3<u32>(u_input.b, _wgslsmith_mod_u32(31817u, reverseBits(~u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, ~u_input.a.x), u_input.a.x));
    var var_1 = i32(-1i) * -max(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -2147483647i), vec3<i32>(20731i, 4180i, -2147483647i)), -1733i);
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-213f, _wgslsmith_div_f32(arg_1.b.a, -1088f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> StorageBuffer {
    let var_0 = ~1u;
    global0 = array<vec2<u32>, 17>();
    global1 = var_0;
    return func_5(func_2(Struct_1(-871f), vec3<bool>(all(vec3<bool>(true, false, false)), true, -1730f > _wgslsmith_f_op_f32(ceil(1008f)))), func_2(Struct_1(_wgslsmith_f_op_f32(step(-112f, _wgslsmith_f_op_f32(-243f + 1000f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(4294967295u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1059u)), u_input.a.x), u_input.a.x, 1u), 1i);
}

