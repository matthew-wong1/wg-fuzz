struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_u32(min(abs(36946u), ~u_input.a), _wgslsmith_sub_u32(~u_input.a, 4294967295u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1416f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1557f))), 785f)));
    var var_2 = 1000f;
    return firstTrailingBit(~max(max(42876u, var_0), u_input.b.x));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = countOneBits(~(~_wgslsmith_mult_u32(~u_input.d, 1u)));
    var_0 = abs(_wgslsmith_mod_u32(min(~u_input.e, u_input.e & func_3(1i, u_input.b)), ~(~22371u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1103f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + -681f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(104f, -219f))), -119f)), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))), arg_1), Struct_1(_wgslsmith_f_op_f32(abs(arg_1)), arg_1));
    var_0 = ~4504u;
    var_0 = abs(func_3(var_1.b, ~vec3<u32>(_wgslsmith_add_u32(u_input.e, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(17414u, 8265u, 22147u, 4294967295u), vec4<u32>(13038u, 14831u, 4294967295u, 45229u)), u_input.b.x)));
    return _wgslsmith_f_op_f32(trunc(arg_1)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(-420f - var_1.c.b), true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2439f), arg_1, all(vec3<bool>(true, arg_0, arg_0))))) - arg_1);
}

fn func_1() -> i32 {
    let var_0 = !any(vec4<bool>(false, true, select(true, any(vec3<bool>(false, false, true)), true), func_2(true, _wgslsmith_f_op_f32(1347f * 853f), 1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2524f + 811f)))), 1f);
    let var_2 = select(max(vec3<u32>(firstLeadingBit(~u_input.d), 1u, 1u), max(vec3<u32>(u_input.d, u_input.e, u_input.d), u_input.b & u_input.b) ^ _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.d)), ~vec3<u32>(24688u, u_input.d, u_input.b.x))), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xx) << (~_wgslsmith_clamp_u32(0u, 63614u, 4294967295u) % 32u), countOneBits(_wgslsmith_clamp_u32(u_input.e, 1u, u_input.b.x & 5465u))), select(!select(select(vec3<bool>(var_0, false, true), vec3<bool>(true, false, var_0), var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, var_0)), select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, select(var_0, false, var_0)), false | all(vec3<bool>(var_0, true, true))), vec3<bool>(select(var_0, true, true), (1u > u_input.a) & var_0, var_0)));
    let var_3 = vec4<u32>(~(~(~4294967295u >> (~4294967295u % 32u))), func_3(u_input.c.x, ~_wgslsmith_mult_vec3_u32(var_2 & vec3<u32>(u_input.b.x, 13345u, 1u), ~vec3<u32>(u_input.b.x, u_input.e, 4294967295u))), _wgslsmith_div_u32(var_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, u_input.e), var_2.zx)), _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(_wgslsmith_div_u32(10913u, var_2.x)), ~(~u_input.e)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 0u, var_2.x), min(var_2, vec3<u32>(11075u, var_2.x, 37635u))), min(138u, 23984u))));
    var var_4 = _wgslsmith_f_op_f32(-1f);
    return -(i32(-1i) * -5427i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, ~(u_input.c.x << (u_input.d % 32u)), abs(u_input.c.x) ^ func_1()), -31102i, 12181i & u_input.c.x, u_input.c.x) & -abs(vec4<i32>(35985i, -64144i, u_input.c.x, -2147483647i));
    let var_1 = Struct_1(144f, 1f);
    var var_2 = false;
    var var_3 = ~9975i;
    let var_4 = vec3<bool>(~(-35813i) <= u_input.c.x, true, any(vec3<bool>(true, true, true)));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.a, -467f, false)))))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.yx | _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(64266u, u_input.d)), abs(vec2<u32>(1u, 27842u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -337f)), -2630f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.b, var_5.a) + _wgslsmith_f_op_f32(-var_1.b)), !var_4.x)), var_5.a));
}

