struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-2839f, -1698f, -2746f), vec3<u32>(30407u, 57750u, 0u), 42689u, 1u, 1000f), Struct_1(vec3<f32>(-178f, 1042f, -936f), vec3<u32>(110178u, 4294967295u, 0u), 1u, 55577u, 765f), 1u, Struct_1(vec3<f32>(-936f, 843f, -2792f), vec3<u32>(1u, 40390u, 4294967295u), 0u, 1u, -1702f), Struct_1(vec3<f32>(226f, -765f, 989f), vec3<u32>(9187u, 6785u, 18624u), 4294967295u, 43095u, -2135f));

var<private> global1: vec2<i32> = vec2<i32>(-10476i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.b.a, _wgslsmith_div_vec3_f32(global0.e.a, _wgslsmith_f_op_vec3_f32(global0.b.a + vec3<f32>(global0.e.e, global0.a.e, global0.d.e))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), reverseBits(global0.a.b), _wgslsmith_add_u32(0u, abs(u_input.a) & _wgslsmith_mult_u32(4294967295u, global0.b.d)), abs(19894u | u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.e)) - _wgslsmith_f_op_f32(global0.e.a.x * global0.d.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -577f))))), Struct_1(global0.a.a, vec3<u32>(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a), vec4<u32>(2485u, 188u, u_input.a, global0.a.b.x))), reverseBits(_wgslsmith_clamp_u32(u_input.a, global0.a.c, u_input.a)), ~select(60366u, global0.a.b.x, true)), abs(111400u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), ~global0.b.b.x, u_input.a, 47254u | u_input.a), vec4<u32>(13314u >> (0u % 32u), global0.d.c, ~1u, global0.a.b.x & global0.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + global0.a.a.x) + 1f))), global0.c, global0.b, global0.e);
    var var_0 = global0.e;
    var var_1 = _wgslsmith_mult_u32(1u, firstTrailingBit(select(4294967295u, u_input.a, 36857i > arg_0.x)));
    let var_2 = -27068i;
    var var_3 = _wgslsmith_div_f32(-1195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.x) + 476f)) + -1358f));
    return 2147483647i;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(global0.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-505f, global0.e.e)), _wgslsmith_f_op_f32(global0.b.a.x - -654f), -370f), global0.d.b, _wgslsmith_clamp_u32(0u, 13890u, _wgslsmith_sub_u32(~global0.b.b.x, max(u_input.a, 5055u))), 0u, 2510f), global0.e.d, global0.a, global0.d);
    global1 = -(~u_input.b.yz) & -(abs(u_input.b.yz) & u_input.b.xy);
    global1 = vec2<i32>(2147483647i, ~(global1.x ^ (u_input.b.x | global1.x)));
    let var_1 = var_0;
    var var_2 = var_1;
    return -_wgslsmith_clamp_i32(func_3(u_input.b), _wgslsmith_add_i32(~39467i, func_3(u_input.b)), 1i);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    var var_0 = false;
    let var_1 = vec2<u32>(~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global0.a.c, global0.b.b.x), vec4<u32>(u_input.a, u_input.a, global0.b.c, u_input.a)), u_input.a >> (global0.a.c % 32u)) << (min(57410u, u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.c, 4294967295u, global0.a.c, 24067u), vec4<u32>(4294967295u, u_input.a, global0.b.b.x, global0.a.c)) % 32u)) % 32u), 4294967295u);
    var var_2 = select(vec2<bool>(true, !arg_0), !vec2<bool>(!arg_0, all(vec4<bool>(false, arg_0, arg_0, true))), true);
    let var_3 = global1.x;
    var var_4 = global1.x;
    return vec2<i32>((u_input.b.x & 1i) ^ abs(1i), _wgslsmith_clamp_i32(func_2(), 19069i, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(func_1(false), firstLeadingBit(abs(u_input.b.zz)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))));
    let var_0 = u_input.a;
    var var_1 = max(select(~vec3<u32>(13690u, ~u_input.a, ~u_input.a), global0.b.b, select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(all(vec2<bool>(true, true)), true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), true))), countOneBits(global0.d.b));
    let var_2 = global0.e;
    let var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, min(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_0), var_2.b.yz)), u_input.a | firstLeadingBit(~27888u)));
}

