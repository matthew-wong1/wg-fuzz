struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -231f) * -617f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-493f)) + _wgslsmith_f_op_f32(326f - -1661f)))), 1053f, any(vec3<bool>(false, true, true)))), -2147483647i);
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_1 | ~1u, ~0u, arg_0.x), arg_0.x ^ abs(~52746u)), u_input.c);
    global0 = array<vec4<bool>, 29>();
    return Struct_1(~abs(firstTrailingBit(vec3<u32>(u_input.c, 93721u, 68514u))) << ((~vec3<u32>(1u, arg_1, 40304u) | vec3<u32>(1u, ~arg_1, arg_0.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(select(vec2<u32>(1u, _wgslsmith_mod_u32(1u, 1u)) & min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, arg_1)), vec2<u32>(64228u, 25018u) ^ vec2<u32>(arg_1, arg_1)), ~(~vec2<u32>(arg_1, arg_1) << (min(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, arg_1)) % vec2<u32>(32u))), arg_2.yx), 1u, u_input.b.xy);
    var var_1 = u_input.a;
    let var_2 = true;
    let var_3 = Struct_2(vec4<bool>(!(var_0.a.x > (33631u >> (1u % 32u))), ((41007i >> (arg_1 % 32u)) & ~0i) < firstLeadingBit(i32(-1i) * -1i), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(select(-1104f, 1000f, true)))) >= 433f, arg_2.x), var_0, 71712u, ~u_input.b.x);
    var var_4 = var_3;
    return var_3;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(abs(538f)), select(u_input.d, 1i, !(!arg_0.a.x)));
    let var_1 = !vec2<bool>(arg_0.a.x, arg_0.a.x);
    global0 = array<vec4<bool>, 29>();
    return -47104i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, ~(~_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz)), 1i, u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(19140i, 31144i, u_input.a, u_input.b.x), vec4<i32>(u_input.a, u_input.d, 2147483647i, u_input.b.x)), vec4<i32>(u_input.b.x, 1i, -2147483647i, u_input.a) | vec4<i32>(-2147483647i, -2147483647i, -39264i, -39841i)), func_3(func_1(192f, 79299u, vec3<bool>(false, true, false))), 0i ^ (u_input.b.x >> (u_input.c % 32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-16767i, -2147483647i, u_input.d, 2147483647i), max(vec4<i32>(-49741i, 9703i, u_input.a, u_input.a), vec4<i32>(u_input.d, 40706i, 25551i, u_input.d))), abs(~vec4<i32>(-26700i, -2147483647i, 0i, 547i)))));
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(555f, 467f, false)), -823f))) * _wgslsmith_f_op_f32(max(-100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(406f, -1000f, false)))))), _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(u_input.c, u_input.c)), u_input.c), vec3<bool>(true, false, !any(global0[_wgslsmith_index_u32(~4294967295u, 29u)])));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -214f))))));
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-2147483647i), ~var_1.b.a.x, ~(~var_1.b.a) & vec3<u32>(var_1.c, ~abs(u_input.c), var_1.c));
}

