struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = -u_input.a.x;
    var_0 = -2147483647i;
    let var_1 = 75021u;
    var var_2 = global0.x && !(102583u <= _wgslsmith_mod_u32(_wgslsmith_sub_u32(58502u, var_1), 87675u));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.a));
    return !vec4<bool>(select(true, global0.x, true), !(!(!global0.x)), true, !select(global0.x, global0.x, global0.x) & global0.x);
}

fn func_3() -> vec3<bool> {
    global0 = vec3<bool>(false, global0.x, false);
    global0 = !vec3<bool>(all(!vec3<bool>(global0.x, global0.x, global0.x)), false, all(select(vec2<bool>(global0.x, global0.x), global0.xy, vec2<bool>(false, global0.x))) && !global0.x);
    let var_0 = global0.x & global0.x;
    var var_1 = Struct_3(u_input.a.x, u_input.a.x, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1977f, -1000f, 627f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1662f, 2215f, 316f))))))));
    global0 = select(func_1(var_1.c, ~(~(~vec4<u32>(u_input.b, 1u, 68962u, u_input.c)))).yzz, !select(func_1(Struct_2(var_1.c.a), select(vec4<u32>(u_input.b, 25747u, 4294967295u, u_input.b), vec4<u32>(31527u, u_input.b, 0u, u_input.c), vec4<bool>(true, global0.x, true, global0.x))).wxw, select(select(vec3<bool>(global0.x, true, var_0), vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, var_0)), vec3<bool>(var_0, global0.x, global0.x), !global0.x), func_1(Struct_2(var_1.c.a), vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b)).zyw), !vec3<bool>(any(vec3<bool>(global0.x, var_0, global0.x)), func_1(var_1.c, ~vec4<u32>(17783u, 1u, 0u, 37205u)).x, global0.x));
    return !select(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(abs(var_1.c.a))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(2507u, u_input.c, u_input.c, 4294967295u)), ~vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.b))).wyx, !select(vec3<bool>(var_0, global0.x, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !select(!vec3<bool>(true, var_0, false), func_1(var_1.c, vec4<u32>(39221u, 0u, 54026u, u_input.b)).xyx, !vec3<bool>(global0.x, global0.x, global0.x)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = !(!select(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, global0.x)), vec3<bool>(!global0.x, true, global0.x), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)));
    global0 = !func_3();
    global0 = select(vec3<bool>(any(func_3()), global0.x, global0.x), func_3(), !any(select(global0.zy, vec2<bool>(true, global0.x), !global0.x)));
    global0 = func_1(arg_2, ~vec4<u32>(~(~u_input.c), u_input.c, ~(u_input.b & 87731u), u_input.b)).zww;
    let var_0 = abs(max(-22214i, -u_input.a.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!(!select(vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, global0.x), false)), select(select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, true, true), !global0.x), !global0.x || all(func_1(Struct_2(vec3<f32>(-734f, 603f, -277f)), vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c)))), vec3<bool>(!global0.x, func_2(_wgslsmith_div_f32(-1487f, -1000f), Struct_2(vec3<f32>(904f, 485f, 185f)), Struct_2(vec3<f32>(-945f, -1000f, 937f))) | true, func_2(-800f, Struct_2(vec3<f32>(-2005f, 407f, -2970f)), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(963f, -527f, 874f), vec3<f32>(-2068f, 444f, 1000f)))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -313f, 786f)))))));
    global0 = !func_3();
    global0 = !(!vec3<bool>(!(u_input.a.x >= 35195i), func_1(Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, -520f)), ~vec4<u32>(u_input.c, 1u, u_input.c, 51606u)).x, true));
    let var_1 = u_input.a >> (~vec3<u32>(max(~0u, countOneBits(u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(20820u, 0u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c), vec3<u32>(u_input.b, 101578u, u_input.c), vec3<u32>(0u, u_input.b, u_input.b))), _wgslsmith_sub_u32(4294967295u, 1u)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xy) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), -488f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_1.x), var_0.a, 33020i);
}

