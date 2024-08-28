struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, 2149i, -1i, 0i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: u32) -> vec4<bool> {
    global0 = array<i32, 5>();
    var var_0 = !(!vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), !any(vec4<bool>(false, false, true, true))));
    global0 = array<i32, 5>();
    let var_1 = !(!((arg_2 <= ~1u) != var_0.x));
    global0 = array<i32, 5>();
    return vec4<bool>(0i <= abs(arg_0.x), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) * -1596f)), false);
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_i32(u_input.a, reverseBits(u_input.a));
    global0 = array<i32, 5>();
    let var_1 = any(func_3(abs(~reverseBits(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(7158u, 5u)], global0[_wgslsmith_index_u32(29038u, 5u)], var_0))), -u_input.a, ~firstLeadingBit(0u & arg_0.a.x)));
    global0 = array<i32, 5>();
    var var_2 = arg_0;
    return arg_0.a.xz;
}

fn func_1() -> vec2<u32> {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_0 = 0u;
    global0 = array<i32, 5>();
    return reverseBits(_wgslsmith_clamp_vec2_u32(func_2(Struct_1(vec3<u32>(var_0, 0u, var_0))), select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(56265u, 32093u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(var_0, 1u), vec2<u32>(var_0, 4294967295u)), -18553i > u_input.a) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(0u, 53781u)), ~vec2<u32>(firstTrailingBit(4294967295u), ~var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<i32, 5>();
    let var_1 = func_1();
    let var_2 = !(!(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))) <= _wgslsmith_f_op_f32(sign(-271f))));
    var var_3 = Struct_1(vec3<u32>(func_1().x, var_1.x, ~(~var_1.x << (~0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~4294967295u)), _wgslsmith_div_u32(abs(3597u) >> ((49208u & var_3.a.x) % 32u), var_3.a.x), _wgslsmith_dot_vec2_u32(var_3.a.yx, _wgslsmith_mult_vec2_u32(~var_1, vec2<u32>(var_1.x, 21762u))), abs(abs(12827u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 652f) - _wgslsmith_f_op_f32(trunc(-756f))))), _wgslsmith_f_op_f32(abs(-609f)), vec2<i32>(-1i) * -(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a, 0i)) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u))), var_1.x);
}

