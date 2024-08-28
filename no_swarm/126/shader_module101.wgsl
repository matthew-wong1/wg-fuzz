struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<vec4<f32>, 24>();
    var var_0 = vec2<bool>(all(vec3<bool>(any(select(vec3<bool>(arg_2.a.b, true, false), vec3<bool>(false, false, false), true)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), arg_2.c.b)), all(vec3<bool>(arg_2.a.b, true, arg_2.a.b)))), arg_2.c.b);
    let var_1 = vec3<u32>(~(~(~arg_0.x)), 64207u, 28956u);
    var var_2 = u_input.e;
    global0 = array<vec4<f32>, 24>();
    return select(!select(select(!vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(true, arg_2.c.b, arg_2.a.b, arg_2.c.b), vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, true, var_0.x)), arg_2.a.b), vec4<bool>(true, any(vec3<bool>(true, var_0.x, false)), true, true), select(select(vec4<bool>(var_0.x, false, arg_2.c.b, false), vec4<bool>(arg_2.c.b, arg_2.c.b, arg_2.c.b, true), vec4<bool>(true, false, false, var_0.x)), vec4<bool>(true, arg_2.c.b, true, true), vec4<bool>(true, var_0.x, var_0.x, arg_2.a.b))), !vec4<bool>(!select(false, arg_2.c.b, false), !select(var_0.x, false, var_0.x), arg_2.c.b, true), select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), select(select(vec4<bool>(false, true, true, arg_2.c.b), select(vec4<bool>(arg_2.a.b, true, arg_2.a.b, var_0.x), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, arg_2.a.b, arg_2.c.b, arg_2.a.b)), select(vec4<bool>(var_0.x, arg_2.c.b, true, arg_2.c.b), vec4<bool>(arg_2.a.b, arg_2.c.b, false, var_0.x), var_0.x)), select(!vec4<bool>(var_0.x, true, arg_2.c.b, arg_2.c.b), vec4<bool>(arg_2.c.b, false, false, var_0.x), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, false, arg_2.a.b, arg_2.c.b), vec4<bool>(arg_2.a.b, arg_2.c.b, false, var_0.x))), select(vec4<bool>(false, false, arg_2.c.b, false), vec4<bool>(false, false, true, false), select(vec4<bool>(arg_2.a.b, arg_2.a.b, true, var_0.x), vec4<bool>(var_0.x, false, arg_2.c.b, false), vec4<bool>(false, var_0.x, true, arg_2.a.b)))), var_0.x));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 24>();
    var var_0 = ~reverseBits(4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1309f, -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -696f))))), true);
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(-735f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1077f), var_1.a))), !any(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)) || (var_1.a > _wgslsmith_f_op_f32(var_1.a + var_1.a))), !(!select(func_3(vec3<u32>(u_input.a, 1u, u_input.c), -40077i, Struct_2(Struct_1(791f, var_1.b), -296f, Struct_1(var_1.a, var_1.b))), vec4<bool>(var_1.b, var_1.b, true, var_1.b), all(vec2<bool>(var_1.b, true)))));
    var_0 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(abs(var_2.a.a)), select(var_1.b, false, false));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(vec2<u32>(firstTrailingBit(abs(1u)), 4294967295u));
    var var_1 = Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1515f)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-199f, -2384f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f - -293f) - _wgslsmith_f_op_f32(f32(-1f) * -132f))), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_2 = true;
    var_1 = Struct_2(func_2(), var_1.b, func_2());
    let var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(3858u, 0u, var_0.x), vec3<u32>(38051u, 4294967295u, 25305u)), vec3<u32>(0u, var_0.x, u_input.a)), var_0.x, 13550u), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, var_0.x, 17306u, u_input.c), vec4<u32>(var_0.x, u_input.a, 40202u, 4294967295u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(-1094f, func_2().b);
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    let var_2 = var_1;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -943f))), true), select(!vec4<bool>(func_2().b, func_2().b, all(vec3<bool>(var_2.b, var_1.b, true)), 0u >= u_input.a), select(!func_3(vec3<u32>(u_input.a, u_input.c, 1u), u_input.b.x, Struct_2(var_2, -613f, Struct_1(756f, true))), select(!vec4<bool>(var_0.b, false, var_1.b, true), vec4<bool>(var_0.b, false, var_0.b, false), u_input.d.x != 0i), select(!vec4<bool>(var_1.b, true, true, false), select(vec4<bool>(var_1.b, false, false, var_2.b), vec4<bool>(var_2.b, true, false, true), vec4<bool>(false, false, var_2.b, true)), 606i != u_input.b.x)), vec4<bool>(var_1.b, var_0.b, !all(vec4<bool>(false, var_0.b, var_2.b, var_2.b)), u_input.a > 31126u)));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))), all(var_3.b.zzx)), vec4<bool>(!var_3.b.x | !(var_2.b && false), true, var_2.b || func_1().b, func_3((vec3<u32>(1u, u_input.a, 20836u) >> (vec3<u32>(u_input.c, 0u, 76758u) % vec3<u32>(32u))) | abs(vec3<u32>(u_input.c, u_input.c, u_input.a)), reverseBits(u_input.e.x << (u_input.c % 32u)), Struct_2(Struct_1(187f, var_0.b), _wgslsmith_f_op_f32(-var_3.a.a), func_2())).x));
    var var_5 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(2279u, u_input.a))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.a)))), ~((4294967295u >> (min(1u, u_input.c) % 32u)) | _wgslsmith_sub_u32(~67401u, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), var_2.a), var_5.xy, vec4<i32>(2147483647i, -_wgslsmith_sub_i32(u_input.b.x ^ 33279i, -42289i), (u_input.d.x ^ (u_input.b.x | 43339i)) | -1i, u_input.e.x));
}

