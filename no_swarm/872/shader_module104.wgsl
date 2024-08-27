struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_5) -> f32 {
    let var_0 = ~_wgslsmith_div_i32(0i, abs(u_input.a.x) | abs(abs(arg_2.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.b.c.a)) - -819f), 1000f));
    var var_2 = arg_3;
    var var_3 = all(select(vec3<bool>(arg_1.x, arg_1.x, select(!arg_0.c.x, arg_0.b.x, any(arg_1))), !arg_1.wwz, _wgslsmith_sub_u32(arg_3.b.a.d.x, 44236u) < arg_0.d.x));
    let var_4 = vec2<i32>(var_2.b.d.a, ~u_input.c.x >> (_wgslsmith_sub_u32(15531u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.c.d.x, 1u, 4955u, 50006u), vec4<u32>(var_2.b.c.d.x, arg_3.b.c.d.x, u_input.b, arg_0.d.x)) % 32u), ~1u) % 32u));
    return 325f;
}

fn func_4(arg_0: f32) -> vec2<bool> {
    let var_0 = ~vec2<u32>(~(~u_input.b), _wgslsmith_clamp_u32(max(u_input.b, 55996u), ~0u, ~49717u) >> (~_wgslsmith_add_u32(102775u, u_input.b) % 32u));
    let var_1 = Struct_5(u_input.a.x, Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec4<u32>(var_0.x, 1u, u_input.b, 18504u), ~vec4<u32>(u_input.b, 11972u, u_input.b, var_0.x), vec4<bool>(false, true, false, true)), !(var_0.x > 4294967295u)), u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0) * _wgslsmith_f_op_f32(arg_0 + -368f)), vec2<bool>(any(vec3<bool>(false, true, false)), arg_0 == -824f), vec2<bool>(arg_0 >= arg_0, any(vec3<bool>(true, true, true))), min(vec4<u32>(4294967295u, 106156u, u_input.b, 1u), firstLeadingBit(vec4<u32>(83178u, var_0.x, var_0.x, 4294967295u))), all(vec3<bool>(false, false, true))), Struct_2(57114i)));
    var var_2 = var_1.b;
    let var_3 = var_1.b.a.a;
    let var_4 = 1u;
    return var_2.a.b;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = ~min(min(-6634i, -2147483647i), u_input.c.x ^ -22329i);
    var var_1 = Struct_3(Struct_1(-555f, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(-661f, vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u), arg_0), vec4<bool>(arg_0, true, false, false), Struct_2(u_input.a.x), Struct_5(u_input.a.x, Struct_3(Struct_1(108f, vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u), true), 4294967295u, Struct_1(1519f, vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec4<u32>(u_input.b, u_input.b, 1u, 1u), arg_0), Struct_2(u_input.c.x)))))))), vec2<bool>(!arg_0, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0, false)))), ~(~(~vec4<u32>(4294967295u, 35750u, u_input.b, 0u))), arg_0), countOneBits(4294967295u) >> (u_input.b % 32u), Struct_1(-501f, vec2<bool>(false, arg_0 & false), vec2<bool>(true, arg_0), ~(~(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), false), Struct_2(1i));
    let var_2 = ~(~(abs(1u) & (~var_1.c.d.x >> (var_1.c.d.x % 32u))));
    var_1 = Struct_3(Struct_1(var_1.c.a, !vec2<bool>(arg_0, any(vec2<bool>(arg_0, true))), vec2<bool>(var_1.c.e, arg_0), vec4<u32>(~(1988u << (var_2 % 32u)), firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 2273u)), var_1.b, 1u), var_1.c.b.x), ~8635u, var_1.c, Struct_2(-2147483647i));
    let var_3 = 1i;
    return var_1.c.d.wyw;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = ~select(~(~select(vec3<u32>(1u, 4294967295u, 90322u), vec3<u32>(21321u, 64829u, 0u), false)), ~max(~vec3<u32>(u_input.b, arg_0, 1u), func_2(true)), vec3<bool>(false, !all(vec3<bool>(true, true, false)), true));
    var_0 = vec3<u32>(arg_0, 13588u, ~abs(~(~0u)));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -416f);
    let var_3 = 6522u;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 * var_2)))), select(vec2<bool>(true, true), !func_4(var_2), true), vec2<bool>(true, true || any(vec3<bool>(false, false, true))), vec4<u32>(var_0.x, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(69458u, 1u, var_0.x), vec3<u32>(u_input.b, u_input.b, arg_1.x) ^ vec3<u32>(4294967295u, 993u, arg_1.x)), var_3), true), 110102u, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1464f), func_4(var_2), vec2<bool>(false, false), vec4<u32>(u_input.b, var_3, var_0.x, var_3), func_4(var_2).x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), Struct_2(abs(u_input.a.x)), Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, -23972i), vec3<i32>(u_input.a.x, -1i, 2147483647i)), Struct_3(Struct_1(-1000f, vec2<bool>(true, true), vec2<bool>(true, false), vec4<u32>(arg_1.x, 30127u, 27180u, u_input.b), true), arg_1.x, Struct_1(601f, vec2<bool>(false, true), vec2<bool>(false, true), vec4<u32>(arg_0, 92387u, 0u, arg_1.x), true), Struct_2(u_input.c.x))))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), vec2<bool>(max(-1i, u_input.c.x) != -13143i, true), vec4<u32>(var_3, (var_0.x ^ 4294967295u) & 69695u, 1u, 134264u), _wgslsmith_f_op_f32(-var_2) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2)))), Struct_2(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = func_1(firstTrailingBit(~_wgslsmith_clamp_u32(u_input.b ^ u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 33055u, 4294967295u)), 46287u)), ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(41202u, 4294967295u), vec2<u32>(22125u, u_input.b)))));
    var var_2 = _wgslsmith_mult_vec2_u32(select(var_1.a.d.xw, var_1.c.d.yy, !var_1.a.b), ~(~vec2<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.b, 4294967295u, u_input.b), var_1.a.d))));
    var_2 = var_1.c.d.wy;
    var var_3 = var_1.c.a;
    var_3 = 558f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, ~firstLeadingBit(~var_2.x));
}

