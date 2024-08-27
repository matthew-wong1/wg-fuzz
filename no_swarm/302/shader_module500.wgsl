struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(2147483647i, -41081i, 0i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(0i, 1i, -23918i), vec3<i32>(15945i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 17845i, 24254i), vec3<i32>(8742i, 2147483647i, 23087i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(58907i, i32(-2147483648), 74624i), vec3<i32>(-1i, -26646i, i32(-2147483648)), vec3<i32>(0i, -1i, 1i), vec3<i32>(0i, -13562i, -5034i), vec3<i32>(18331i, -10596i, 9488i), vec3<i32>(-1i, 28264i, 0i), vec3<i32>(-62038i, -1i, -2014i), vec3<i32>(2147483647i, i32(-2147483648), -54775i), vec3<i32>(2147483647i, i32(-2147483648), 45203i), vec3<i32>(i32(-2147483648), 0i, 11527i), vec3<i32>(i32(-2147483648), 32879i, 1i), vec3<i32>(24488i, 1i, 0i), vec3<i32>(2147483647i, -49146i, 2147483647i), vec3<i32>(20796i, 1i, -37228i), vec3<i32>(1i, -11881i, -8223i), vec3<i32>(0i, 22445i, -47300i), vec3<i32>(i32(-2147483648), 40297i, 40829i), vec3<i32>(-24455i, 48265i, -2326i), vec3<i32>(0i, -1i, -2726i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> u32 {
    global1 = array<vec3<i32>, 27>();
    global0 = !arg_0;
    global0 = false;
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f * 1306f))))));
    return max(u_input.a, u_input.a);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 27>();
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.a, 23659u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 31179u)), 20980u), vec4<u32>(u_input.a, 4294967295u, ~0u, abs(~u_input.a))), func_3(4294967295u != u_input.a), false);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_f_op_f32(f32(-1f) * -2430f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f - 352f) * _wgslsmith_f_op_f32(906f - 1000f)), _wgslsmith_f_op_f32(802f - -1547f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1453f, 521f, true)), _wgslsmith_f_op_f32(select(-242f, 1843f, var_0.d)), false)))), any(vec2<bool>(all(vec3<bool>(true, true, true)), var_0.c >= 14024u)))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(591f, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_1.x, -1567f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(555f, 1025f, 1000f), vec3<f32>(var_1.x, var_1.x, var_1.x))))))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global0 = all(vec3<bool>(true, any(vec4<bool>(false, arg_2.d, true, false)), arg_2.d)) & arg_1.d;
    var var_0 = func_2();
    var var_1 = vec4<u32>(arg_2.b.x, 0u, 1u, abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.b.ww), firstTrailingBit(var_0.b.yx)) & ~57056u));
    var_1 = arg_1.b;
    var var_2 = vec3<i32>(~41658i, select(-34069i, _wgslsmith_clamp_i32(0i, arg_1.a, arg_1.a), var_0.d), _wgslsmith_mod_i32(u_input.b.x, ~u_input.b.x >> (~10451u % 32u)) >> (_wgslsmith_mult_u32(11102u, var_0.c) % 32u));
    return ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.b.x, 109690u)), ~arg_2.b.xw), vec2<u32>(~(~4294967295u), var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~func_1(-546f, Struct_1(u_input.b.x, vec4<u32>(60506u, u_input.a, 2906u, 1u), 1u, false), Struct_1(1i, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), u_input.a, true)) | ~vec2<u32>(3851u, 12012u), reverseBits(~vec2<u32>(u_input.a, u_input.a)), ~abs(abs(vec2<u32>(11763u, 70646u)))), _wgslsmith_mult_u32(~u_input.a, ~u_input.a));
}

