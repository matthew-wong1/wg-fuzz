struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<i32>, 1>;

var<private> global2: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(u_input.b), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), false), select(vec2<bool>(true, true), vec2<bool>(u_input.c < 0u, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true)))), !any(vec3<bool>(true, true, false))), Struct_1(true == any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), any(vec4<bool>(u_input.a <= u_input.a, false, select(true, true, false), true)) & true);
    global0 = ~vec3<u32>(_wgslsmith_div_u32(68515u, var_0.a.a), ~1u, _wgslsmith_sub_u32(var_0.a.a, reverseBits(35761u)));
    var var_1 = !vec3<bool>(!all(var_0.b), var_0.c.a, any(vec3<bool>(true, var_0.b.x, all(vec2<bool>(var_0.b.x, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)));
    return var_0.b;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = Struct_3(Struct_2(~global0.x), func_3(), Struct_1(false), true);
    let var_1 = Struct_1(any(!select(select(vec4<bool>(true, var_0.c.a, false, false), vec4<bool>(var_0.b.x, var_0.c.a, true, true), vec4<bool>(var_0.d, true, var_0.d, var_0.c.a)), !vec4<bool>(var_0.c.a, true, var_0.c.a, true), !vec4<bool>(true, var_0.c.a, true, false))));
    global2 = true;
    global0 = ~(vec3<u32>(~arg_0, ~arg_0, var_0.a.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(~20565u, ~1803u, global0.x), (vec3<u32>(u_input.b, arg_0, 34835u) << (vec3<u32>(11642u, var_0.a.a, 49123u) % vec3<u32>(32u))) << (vec3<u32>(97315u, 4294967295u, 17838u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global2 = any(var_0.b);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u & (~global0.x ^ ~26778u), _wgslsmith_sub_u32(~1u, 93183u), 55047u, 10829u), min(~(~(~vec4<u32>(55201u, arg_0, 22804u, 1u))), vec4<u32>(64091u, 37051u, _wgslsmith_div_u32(~global0.x, _wgslsmith_clamp_u32(arg_0, arg_0, 0u)), countOneBits(u_input.b) ^ min(39434u, 86177u))));
}

fn func_1() -> bool {
    global2 = func_2(~6920u, global0.x, vec3<f32>(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2151f))))) >= ~firstTrailingBit(~firstLeadingBit(4294967295u));
    let var_0 = Struct_1(true);
    var var_1 = Struct_3(Struct_2(firstLeadingBit(u_input.b)), select(vec2<bool>(true & !var_0.a, !(!var_0.a)), !func_3(), true), Struct_1(var_0.a || true), func_3().x);
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global0.xy) << (~(~global0.x) % 32u)), var_1.b, var_1.c, all(!var_1.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-841f, 589f, 327f) + vec3<f32>(1487f, -1696f, -915f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1879f, 714f, -443f) * vec3<f32>(112f, 240f, 1368f)))))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    let var_1 = !(!vec2<bool>(func_1(), all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(select(vec4<u32>(u_input.b, 39738u, u_input.c, u_input.b), vec4<u32>(global0.x, u_input.b, u_input.b, global0.x), var_1.x), select(vec4<u32>(4294967295u, u_input.c, global0.x, global0.x), vec4<u32>(u_input.b, global0.x, u_input.c, 4294967295u), var_1.x))), ~32861i);
}

