struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(-13515i, 699i, -30232i, i32(-2147483648)), vec2<u32>(1u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 1>();
    var var_0 = ~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-(~vec2<i32>(u_input.c, 0i)), ~firstTrailingBit(vec2<i32>(-1i, u_input.c))), min(vec2<i32>(u_input.c, -36043i | u_input.c), vec2<i32>(min(-2147483647i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, -2147483647i, 2147483647i), vec4<i32>(49255i, u_input.c, u_input.c, u_input.c)))));
    var var_1 = 1i << (u_input.d.x % 32u);
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return reverseBits(1i);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32) -> vec4<i32> {
    var var_0 = 734f;
    let var_1 = Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, ~u_input.c, abs(6084i), 1i), firstLeadingBit(vec4<i32>(arg_1, 1i, u_input.c, 2147483647i)))), ~(~u_input.d.wx));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1140f, -1000f))))), -490f)));
    var var_3 = Struct_1(vec4<i32>(abs(func_2()), 2147483647i, _wgslsmith_clamp_i32(-var_1.a.x, abs(firstTrailingBit(arg_1)), -2147483647i), ~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, arg_1), u_input.c)), ~(~var_1.b >> (firstTrailingBit(vec2<u32>(895u, u_input.a) << (vec2<u32>(27565u, 28918u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_4 = any(select(!vec3<bool>(all(vec4<bool>(arg_0, false, false, true)), false, true), vec3<bool>(!(arg_0 & false), true, true), arg_0));
    return ~var_1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    return _wgslsmith_dot_vec3_u32(u_input.d.yyz, u_input.d.zxz << (u_input.d.xwx % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_1 = Struct_1(func_1(true, 2147483647i, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_add_u32(45478u, 0u)) ^ 81149u), vec2<u32>(u_input.a, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-345f, -1307f, 1000f, -1749f), vec4<f32>(-1586f, 967f, 405f, -289f)), _wgslsmith_f_op_f32(f32(-1f) * -744f))) | var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

