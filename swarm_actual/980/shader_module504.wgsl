struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(42661u, 9002u, 1u), vec3<u32>(41686u, 4294967295u, 17374u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(8120u, 0u, 1u), vec3<u32>(9499u, 0u, 28552u), vec3<u32>(2571u, 25346u, 4294967295u), vec3<u32>(4294967295u, 47877u, 71435u), vec3<u32>(4294967295u, 1u, 54589u), vec3<u32>(0u, 1u, 4294967295u));

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = vec2<i32>(1i, countOneBits(_wgslsmith_add_i32(-reverseBits(2147483647i), firstTrailingBit(-2147483647i))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 136f), _wgslsmith_div_f32(arg_0, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_div_f32(-2484f, arg_0), 1588f), vec3<bool>(true, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f - -1000f)), 231f, -879f))), Struct_1(u_input.b.xx), max(u_input.b.x, 0u), Struct_1(max(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zx) & u_input.b.yy));
    var var_2 = !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1229f))));
    global1 = any(select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), vec4<bool>(false, !all(vec4<bool>(true, true, false, false)), false, select(true, all(vec4<bool>(false, false, false, false)), -61616i != arg_1)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)))));
    return true;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    global1 = arg_1;
    return !select(vec4<bool>(arg_3, true, arg_2.x, all(vec3<bool>(arg_2.x, true, arg_2.x))), !vec4<bool>(arg_2.x && arg_1, arg_3, u_input.b.x != 1u, true), vec4<bool>(all(arg_2), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_dot_vec3_i32(u_input.d.wwy, vec3<i32>(2147483647i, 1i, 13450i)), 31198i), true, func_3(-1125f, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.d.x, -30731i)), 40389i >> (u_input.b.x % 32u))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global1 = arg_1.x;
    let var_0 = true;
    global1 = arg_0 & arg_0;
    var var_1 = -1116f;
    var_1 = -802f;
    return -u_input.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = 1u;
    global1 = arg_1;
    let var_1 = Struct_1(abs(_wgslsmith_div_vec2_u32(u_input.b.yz ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(67973u, u_input.b.x), vec2<u32>(var_0, u_input.b.x), u_input.b.zz), reverseBits(_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.xz)))));
    global0 = array<vec3<u32>, 9>();
    var var_2 = vec4<u32>(4269u, min(_wgslsmith_mult_u32(var_0, 2279u << (~var_0 % 32u)), var_0), ~min(abs(44340u), 1u), 4294967295u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(141f, -667f, -2118f))) - vec3<f32>(-253f, -470f, 1052f)))), var_1, var_2.x, Struct_1((~vec2<u32>(var_2.x, var_1.a.x) << (~vec2<u32>(1u, 35447u) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), var_2.wx, var_2.yw)));
}

fn func_1() -> Struct_2 {
    return func_5(vec3<i32>(func_4(true, func_2(u_input.b.x, 15010u <= u_input.b.x, vec3<bool>(true, true, true), true)), u_input.c, 1i), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<bool> {
    return vec3<bool>(true, -135f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.x * -1454f))), !(!func_3(arg_0.a.x, -1i, u_input.a.x) && (select(true, false, false) && false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), vec2<u32>(firstLeadingBit(32277u), ~(u_input.b.x & 0u)), func_5(u_input.d.zyw, any(func_2(0u, true, vec3<bool>(true, true, true), true)), !(!all(vec4<bool>(true, false, true, false)))).d);
    let var_1 = ~firstLeadingBit(~vec3<u32>(~u_input.b.x, ~1u, 4294967295u));
    var_0 = vec3<bool>(var_0.x, true, select(var_0.x, var_0.x, func_2(53086u, false, select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), any(vec4<bool>(true, true, var_0.x, true))).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1035f, -888f, -363f), vec3<f32>(1000f, 314f, 971f)))) - vec3<f32>(1f, 1f, 1f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~38653u), ~max(vec2<u32>(u_input.b.x, 0u), vec2<u32>(0u, u_input.b.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(var_1.x), ~(~4294967295u), ~(~51557u)), vec3<u32>(var_1.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 115649u, u_input.b.x, 0u) | vec4<u32>(var_1.x, 45762u, 1u, var_1.x), vec4<u32>(0u, 56677u, var_1.x, u_input.b.x)))));
}

