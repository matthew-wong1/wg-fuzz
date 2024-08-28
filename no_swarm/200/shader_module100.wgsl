struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<f32>(-231f, 1028f, 668f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(arg_0) & (u_input.a & (u_input.a ^ u_input.a)), 65363u), firstLeadingBit(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(arg_0, 4294967295u, 0u, 38490u) % vec4<u32>(32u)), ~vec4<u32>(arg_0, u_input.a, 1u, u_input.a)))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 66361u, arg_0), countOneBits(vec3<u32>(1u, 1u, 15801u) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a) % vec3<u32>(32u)))), 1u);
    let var_1 = 1008f;
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(arg_0, arg_0), 4294967295u), var_0.wzx);
    global0 = Struct_1(select(global0.a, global0.a, global0.a), global0.b);
    var_2 = ~(~(~reverseBits(vec3<u32>(arg_0, 0u, 4294967295u))));
    return ~(-select(u_input.b.x, ~19249i, global0.a.x || global0.a.x) >> (24938u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec2<bool>(!(!global0.a.x), arg_0.a.x), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - 305f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.b.x, 1098f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.a.x || false)))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1, u_input.b.x, arg_1, arg_1), u_input.b)), 1042i, ~reverseBits(arg_1), func_3(select(u_input.a << (1u % 32u), 45225u, !global0.a.x))), arg_0, Struct_1(!arg_0.a, arg_0.b));
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(var_0.c.b.x, -235f, arg_0.b.x)), global0.b, !vec3<bool>(true, var_0.a.a.x, arg_0.a.x)))))));
    var var_2 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), 563f, _wgslsmith_f_op_f32(817f - arg_0.b.x))), global0.b, vec3<bool>(arg_0.a.x & true, false, all(global0.a)))));
    var var_3 = Struct_1(!arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2019f, 912f, global0.b.x), vec3<f32>(473f, -657f, -1028f)) - _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(var_0.a.b.x, global0.b.x, var_1.b.x))), _wgslsmith_f_op_vec3_f32(var_1.b - var_0.a.b), !(!vec3<bool>(arg_0.a.x, true, arg_0.a.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(var_1.b)))))));
    return u_input.a;
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(!(!global0.a.x), global0.a.x), _wgslsmith_f_op_vec3_f32(-global0.b));
    let var_0 = Struct_1(vec2<bool>((4294967295u == min(arg_0, 27903u)) & all(vec3<bool>(false, global0.a.x, true)), true), _wgslsmith_f_op_vec3_f32(-global0.b));
    let var_1 = select(vec4<bool>(true, false, true, true), vec4<bool>(all(select(vec4<bool>(var_0.a.x, false, true, global0.a.x), vec4<bool>(false, false, var_0.a.x, false), vec4<bool>(var_0.a.x, true, global0.a.x, true))) && true, false, true, any(vec2<bool>(any(vec3<bool>(global0.a.x, true, false)), true))), all(vec4<bool>(all(vec4<bool>(false, true, global0.a.x, global0.a.x)), false, var_0.a.x, var_0.a.x)) & (global0.a.x && false));
    let var_2 = !select(select(var_0.a, var_1.yz, any(vec3<bool>(false, var_0.a.x, var_0.a.x))), select(global0.a, select(vec2<bool>(true, global0.a.x), select(vec2<bool>(var_1.x, false), vec2<bool>(true, false), vec2<bool>(false, var_0.a.x)), !var_0.a.x), false), vec2<bool>(!var_1.x & !global0.a.x, var_0.a.x));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(223f, 227f), 623f, -376f, -181f);
    return var_0;
}

fn func_1() -> vec2<bool> {
    let var_0 = -((abs(u_input.b) & abs(vec4<i32>(u_input.b.x, 24479i, u_input.b.x, -5426i))) >> (abs(select(countOneBits(vec4<u32>(42325u, 1494u, 104400u, u_input.a)), vec4<u32>(4294967295u, 70426u, u_input.a, u_input.a), false)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(step(-1159f, 624f))), _wgslsmith_f_op_f32(trunc(-1000f)), global0.a.x)) * global0.b.x));
    let var_2 = vec4<u32>(u_input.a, 5502u, u_input.a, _wgslsmith_div_u32(u_input.a, ~abs(1u))) >> (countOneBits(abs(~(~vec4<u32>(22615u, u_input.a, u_input.a, 59936u)))) % vec4<u32>(32u));
    global0 = func_4(select(func_2(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, var_1, global0.b.x))), 27314i), ~_wgslsmith_dot_vec3_u32(var_2.wxw | vec3<u32>(9874u, 46777u, var_2.x), var_2.xyw), false));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return vec2<bool>(_wgslsmith_div_u32(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(4294967295u, u_input.a)), 0u) > select(50533u, ~_wgslsmith_mod_u32(4294967295u, u_input.a), !global0.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(), global0.b);
    var var_0 = _wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, vec4<i32>(-1i) * -u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 996f, global0.b.x, global0.b.x) * vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 197f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -604f, global0.b.x, 629f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -128f, 1437f, global0.b.x) + vec4<f32>(global0.b.x, -121f, global0.b.x, global0.b.x))))), firstTrailingBit(1i), 1828f);
}

