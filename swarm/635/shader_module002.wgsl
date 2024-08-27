struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = arg_0;
    var var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 18127u), vec3<u32>(77626u, u_input.b, 90649u) | vec3<u32>(4294967295u, 1u, u_input.b)) | ~select(select(vec3<u32>(4294967295u, 2615u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u), false), vec3<u32>(0u, 121502u, u_input.b) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)), vec3<bool>(arg_1.a, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + 1415f));
    var var_1 = 350f;
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(~var_0.a, var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1080f)))))));
    let var_2 = !select(vec4<bool>(arg_1.a, arg_1.a, any(!vec3<bool>(false, arg_1.a, true)), arg_1.a), vec4<bool>(false, false, arg_1.a, all(!vec2<bool>(arg_1.a, arg_1.a))), !arg_1.a);
    return -(~(-u_input.a.x) >> (_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, 0u), ~u_input.b, u_input.b) % 32u));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = -func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(true), -959f);
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_1(vec3<u32>(4294967295u, ~31028u, ~arg_1), -594f);
    global0 = _wgslsmith_f_op_f32(abs(-1179f));
    let var_2 = -2591i & var_0;
    return Struct_2(true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(any(select(vec4<bool>(select(true, false, true), arg_0 >= arg_0, any(vec2<bool>(false, false)), false), vec4<bool>(true, true, false, true), vec4<bool>(false, all(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)), true))));
    let var_1 = -vec3<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a.x, 1i, -29799i, -24370i) & vec4<i32>(u_input.a.x, -1i, arg_0, arg_0)) | vec4<i32>(u_input.a.x, 2147483647i, arg_0, 18192i), -vec4<i32>(u_input.a.x, u_input.a.x, arg_0, 1i)), _wgslsmith_div_i32(arg_0, 54223i), ~(~(-arg_0)));
    var_0 = Struct_2(true);
    let var_2 = ~u_input.a.x;
    var var_3 = ~(vec2<u32>(~abs(u_input.b), u_input.b) & vec2<u32>(~countOneBits(8322u), 50318u));
    return func_2(~(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 1u, u_input.b), vec4<u32>(var_3.x, 0u, 35776u, 0u)) & ~abs(vec4<u32>(1u, 1u, 25241u, u_input.b))), var_3.x, ~countOneBits((vec4<u32>(var_3.x, var_3.x, 34119u, u_input.b) | vec4<u32>(var_3.x, 36169u, 1u, 39833u)) << (vec4<u32>(u_input.b, u_input.b, 1u, var_3.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    let var_0 = func_1(~_wgslsmith_clamp_i32(-1i, 0i, -84529i));
    var var_1 = !(false & (var_0.a || true));
    var var_2 = -1269f;
    var var_3 = firstLeadingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~4294967295u, 1u, _wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), 14100u)), 5006u, _wgslsmith_f_op_f32(2152f - _wgslsmith_div_f32(735f, 760f)), ~(-22491i));
}

