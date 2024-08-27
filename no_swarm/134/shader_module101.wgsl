struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 19>;

var<private> global3: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-884f, -1000f), vec2<f32>(623f, -901f), vec2<f32>(144f, 947f), vec2<f32>(-925f, -560f), vec2<f32>(-988f, -1174f), vec2<f32>(428f, 1416f), vec2<f32>(-530f, 275f), vec2<f32>(633f, -670f), vec2<f32>(-254f, 223f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    global3 = array<vec2<f32>, 9>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, ~(~0u)), firstTrailingBit(~max(4294967295u, 11147u)), 4294967295u, _wgslsmith_mod_u32(~abs(1u), 32813u)), ~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_1(!(!vec4<bool>(true, any(vec2<bool>(global0.x, global1.x)), true, false)), ~(~1u));
    let var_2 = Struct_1(var_1.a, 4294967295u);
    global2 = array<Struct_2, 19>();
    return Struct_2(var_1, Struct_1(vec4<bool>(all(vec3<bool>(global1.x, true, false)), !any(global1.xy), all(var_2.a.xyx), var_0.x == abs(1u)), var_1.b), var_2);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_2.c.a, vec4<bool>(all(func_2().a.a), arg_1, global0.x != false, !(!(arg_2.a.b < arg_2.a.b))), 1i);
    let var_1 = true;
    global2 = array<Struct_2, 19>();
    global1 = vec4<bool>(!all(!func_2().a.a.yw), true, var_1, any(!arg_2.c.a));
    var var_2 = var_0;
    return Struct_1(vec4<bool>(!(-955f >= arg_0), true, arg_2.b.a.x, global1.x), ~arg_2.b.b);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global3 = array<vec2<f32>, 9>();
    let var_0 = Struct_2(Struct_1(arg_1.a, 1u), Struct_1(!arg_1.a, ~(~0u)), Struct_1(!vec4<bool>(global0.x, all(vec3<bool>(true, global0.x, arg_1.a.x)), false, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_1.b) ^ vec2<u32>(arg_1.b, 81114u), vec2<u32>(7528u, arg_0))));
    var var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1241f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(917f)), -971f))), any(vec4<bool>(true, all(arg_1.a), global0.x && false, true)) | var_0.a.a.x, func_2());
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec4<i32>(1i, -16969i, u_input.a.x, u_input.a.x)) & vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, 0i), 0i, u_input.a.x);
    global1 = vec4<bool>(global1.x, global1.x, false, !(!global1.x));
    global2 = array<Struct_2, 19>();
    var var_1 = ~(~(~vec4<u32>(6986u, ~27330u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 101039u, 82914u), vec4<u32>(4294967295u, 0u, 81863u, 4294967295u)))));
    let var_2 = Struct_3(!(!(!(!vec4<bool>(true, global1.x, global1.x, global0.x)))), vec4<bool>(!(global0.x || global1.x), true, 2147483647i < max(~u_input.a.x, ~var_0.x), false || any(vec3<bool>(global0.x, false, true))), min(var_0.x, var_0.x));
    global0 = vec2<bool>(var_2.b.x, global0.x);
    let var_3 = func_1(9328u, Struct_1(!var_2.a, ~var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x >> (~22311u % 32u)), vec2<u32>(36637u, 4294967295u), countOneBits(~var_1.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, var_1.x, 0u), vec3<u32>(var_1.x, var_1.x, var_1.x)), 9u)] * vec2<f32>(-1355f, 650f)))) + vec2<f32>(973f, 317f)), countOneBits(~countOneBits(vec4<u32>(4294967295u, 16731u, 4294967295u, var_1.x))) & vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_3.b), ~var_1.x), _wgslsmith_sub_u32(4294967295u, var_3.b), 1u, 20762u | countOneBits(var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1000f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-616f, 1000f)), 1542f)))));
}

