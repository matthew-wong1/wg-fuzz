struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = firstLeadingBit(~arg_0);
    let var_1 = arg_0;
    let var_2 = true;
    var var_3 = arg_0;
    var_3 = var_1 >> ((_wgslsmith_mult_u32(1u, max(u_input.c.x, u_input.c.x)) & ~reverseBits(4294967295u)) % 32u);
    return 1370f;
}

fn func_2() -> bool {
    global0 = Struct_2(global0.a);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1424f)))))), vec2<f32>(637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + -2637f)))));
    var var_1 = u_input.c.x;
    global0 = Struct_2(false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(func_3(u_input.a))))) * var_0.x);
    return _wgslsmith_mod_i32(abs(0i), u_input.d.x) == u_input.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = Struct_2(func_2());
    return Struct_2(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(countOneBits(_wgslsmith_mod_i32(-9585i, 1i)));
    var var_0 = global0.a;
    var_0 = false;
    var_0 = u_input.c.x < ~4294967295u;
    var var_1 = vec4<i32>(-1i) * -(~vec4<i32>(firstTrailingBit(52881i), 1i, -2147483647i, reverseBits(u_input.b)));
    var var_2 = Struct_1(true, ~(~4294967295u & (min(u_input.c.x, 13516u) | 1u)), firstTrailingBit(u_input.c.x & reverseBits(firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(770f + -121f), -1608f, -1346f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-737f, -2006f, 472f), vec3<f32>(-836f, 489f, 1617f), global0.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2319f, 2523f, -536f), vec3<f32>(-705f, 769f, -275f)) - vec3<f32>(-247f, 120f, 111f))), false)));
    var_1 = select(~vec4<i32>(-min(-1i, var_1.x), 1i, i32(-1i) * -1i, (var_1.x << (var_2.b % 32u)) << (firstLeadingBit(u_input.c.x) % 32u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(40032i, var_1.x, 0i, u_input.a), u_input.d, ~(~(-u_input.d))), any(select(!select(vec2<bool>(true, true), vec2<bool>(true, global0.a), true), select(!vec2<bool>(var_2.a, global0.a), !vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, global0.a)), !(!vec2<bool>(var_2.a, true)))));
    let var_3 = min(vec4<u32>(1u ^ countOneBits(~var_2.b), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 39158u, 1u), vec4<u32>(var_2.c, 67161u, 4294967295u, 13797u))), var_2.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.c.x, u_input.c.x, 7686u), vec4<u32>(79465u, var_2.c, 7354u, 1u)), vec4<u32>(1u, var_2.c, 0u, 3802u) | vec4<u32>(var_2.c, 0u, u_input.c.x, 4294967295u)), _wgslsmith_mod_u32(u_input.c.x, 1u))), vec4<u32>(~reverseBits(~u_input.c.x), ~(~36714u), _wgslsmith_dot_vec2_u32(vec2<u32>(7795u, ~0u), abs(u_input.c.zy)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, _wgslsmith_add_vec2_i32(u_input.d.yy, firstTrailingBit(firstTrailingBit(u_input.d.zw))), max(~(~(~var_2.c)), var_2.b | max(var_2.b, max(var_3.x, u_input.c.x))));
}

