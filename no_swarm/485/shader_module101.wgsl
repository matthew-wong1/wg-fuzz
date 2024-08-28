struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(select(select(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, !global0.x), all(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(false, global0.x, global0.x, false)))), vec3<bool>(false, global0.x, any(select(vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, global0.x), global0.x))), select(!(!vec3<bool>(false, global0.x, global0.x)), !select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, global0.x), -2602i > u_input.a.x))), ~1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(297f, 349f)) * -455f), _wgslsmith_f_op_f32(865f - -215f)), -506f), !vec2<bool>(true || global0.x, false), firstTrailingBit(abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & ~vec3<i32>(-2147483647i, 75774i, -4131i))));
    global0 = var_0.a;
    var var_1 = Struct_2(var_0, Struct_1(!(!(!vec3<bool>(global0.x, global0.x, global0.x))), select(~countOneBits(4294967295u), 43235u, any(select(var_0.d, vec2<bool>(global0.x, true), vec2<bool>(var_0.d.x, global0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.c.x, -688f, 1000f))))), !select(vec2<bool>(global0.x, false), select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), var_0.d.x), any(vec4<bool>(false, false, global0.x, global0.x))), ~var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)));
    global0 = select(select(!(!select(var_1.b.a, var_1.a.a, vec3<bool>(true, true, true))), vec3<bool>(var_0.d.x, all(var_1.a.a), true), !global0.x), var_0.a, !any(select(vec4<bool>(var_0.d.x, var_1.a.d.x, true, var_0.d.x), vec4<bool>(true, true, var_0.a.x, true), false)) && (firstLeadingBit(select(var_0.e.x, u_input.a.x, false)) <= (i32(-1i) * -1i)));
    var var_2 = Struct_1(!var_1.a.a, firstTrailingBit(u_input.b.x), var_1.b.c, select(vec2<bool>(all(vec3<bool>(var_1.b.d.x, true, true)), false), var_0.d, vec2<bool>(any(!vec4<bool>(global0.x, var_1.a.a.x, true, true)), !(var_1.a.a.x | var_0.d.x))), min(vec3<i32>(var_1.b.e.x | _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.e.x, u_input.a.x, var_1.a.e.x), var_0.e), var_1.b.e.x, 2147483647i), min(var_1.a.e, abs(var_0.e))));
    return ~_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, 28882u, var_0.b, 1u)), vec4<u32>(0u, var_2.b, var_1.b.b, 1u) & vec4<u32>(var_1.a.b, 18298u, 15173u, u_input.b.x)), vec4<u32>(~(~18744u), var_1.b.b, var_1.a.b, countOneBits(56265u)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(~func_3(), vec4<u32>(~_wgslsmith_sub_u32(~39092u, ~arg_0), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, 10133u), arg_2), 11367u, 63647u));
    var var_1 = !select(vec3<bool>(!(!arg_1.b.d.x), global0.x, !global0.x), !(!(!vec3<bool>(global0.x, global0.x, true))), vec3<bool>(arg_1.a.d.x, global0.x, arg_1.a.a.x));
    var_1 = select(arg_1.a.a, select(!arg_1.a.a, arg_1.b.a, global0.x), select(any(arg_1.a.d), true, var_1.x));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1765f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1015f, arg_3) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x + 1406f))))));
    return arg_1.a.c.x;
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(~u_input.b.x, ~u_input.b.x));
    var_0 = _wgslsmith_clamp_u32(62841u, u_input.b.x, u_input.b.x);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1661f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4294967295u, Struct_2(Struct_1(vec3<bool>(false, global0.x, global0.x), 1u, vec3<f32>(arg_0.x, 134f, arg_0.x), vec2<bool>(true, global0.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec3<bool>(global0.x, global0.x, true), 4294967295u, vec3<f32>(arg_0.x, -1000f, arg_0.x), global0.xx, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), -899f), u_input.b.x, arg_0.x))))), max(~(select(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 35745u, u_input.b.x), vec4<bool>(global0.x, true, global0.x, true)) & max(vec4<u32>(u_input.b.x, 4294967295u, 40374u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, 81139u))), firstTrailingBit(vec4<u32>(u_input.b.x, abs(u_input.b.x), ~4294967295u, ~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(true, all(!(!vec4<bool>(true, global0.x, true, global0.x))), false);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1004f, -2733f) * vec2<f32>(-510f, -1852f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(421f, -261f), vec2<f32>(1366f, -659f))))));
}

