struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = vec3<u32>(arg_2, u_input.b, _wgslsmith_mod_u32(~(~u_input.b), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(~80198u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zx)))));
    var var_2 = !(max(_wgslsmith_sub_i32(u_input.c, 6124i), ~(-48663i)) <= -(u_input.c ^ u_input.c)) && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-253f + arg_0.a)) + _wgslsmith_f_op_f32(778f * _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)))) < _wgslsmith_f_op_f32(f32(-1f) * -1141f));
    var var_3 = arg_0;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(135f, 202f))) - -2109f)));
    return global0.a;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
    global1 = ~(vec4<i32>(~26355i, 0i, global1.x, -34255i) ^ vec4<i32>(-14992i, _wgslsmith_div_i32(-global1.x, u_input.c << (u_input.b % 32u)), -5235i, -1i));
    global1 = countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-31414i, u_input.c, -2147483647i, 0i) ^ vec4<i32>(global1.x, 22749i, u_input.c, u_input.c), max(~vec4<i32>(7398i, global1.x, 0i, u_input.c), vec4<i32>(-33621i, 0i, u_input.c, 1i))));
    let var_1 = Struct_1(-276f);
    var var_2 = var_1;
    return -972f;
}

fn func_1() -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(1760f), Struct_1(global0.a), u_input.a.x, vec3<f32>(global0.a, -1019f, -1181f))))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    var var_0 = vec2<i32>(u_input.c | global1.x, u_input.c);
    var var_1 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(~var_0.x), 0i >> ((19838u & u_input.a.x) % 32u)), global1.wy);
    var var_2 = vec2<bool>((false == any(vec2<bool>(true, true))) && true, all(vec2<bool>(true, true)));
    return vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(17627u >> (u_input.a.x % 32u)), u_input.b, firstTrailingBit(~u_input.b)), abs(_wgslsmith_mod_u32(select(5356u, 50640u, var_2.x), 11447u)), _wgslsmith_clamp_u32(1u, 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 45111u, u_input.b), vec4<u32>(30682u, 10844u, 155287u, 18009u)) % 32u), 30722u)), u_input.b, countOneBits(firstTrailingBit(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, i32(-1i) * -global1.x, -654f, ~func_1());
}

