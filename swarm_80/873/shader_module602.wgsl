struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: f32 = 287f;

var<private> global3: array<vec4<u32>, 24>;

var<private> global4: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    return 0u;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(abs(-323f));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b, _wgslsmith_mult_u32(global1.b, 0u), _wgslsmith_div_u32(global0.a.d, 42609u), global1.b), vec4<u32>(0u, u_input.d.x, 1u, 4294967295u) & global3[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec4<u32>(1u, 47375u, arg_2.b, arg_2.b)), ~(~arg_0.a.b));
    var var_3 = arg_0.b.x;
    let var_4 = select(!(!arg_2.d.yx), vec2<bool>(false, false), true);
    return -countOneBits(vec3<i32>(_wgslsmith_mult_i32(2147483647i, var_0), -(arg_2.a.x ^ 0i), 27133i));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    var var_0 = max(~_wgslsmith_clamp_vec3_i32(-func_3(Struct_3(Struct_2(-1364f, 108450u, 354f, u_input.d.x, arg_0.d), global0.b, arg_1.x), Struct_3(arg_0, global0.b, arg_1.x), Struct_1(vec3<i32>(arg_2, 24418i, 1i), global0.a.b, global1.d, global1.d, global1.e)), vec3<i32>(-16634i, reverseBits(global1.a.x), global1.a.x), vec3<i32>(arg_2, arg_2 << (u_input.b % 32u), i32(-1i) * -2147483647i)), global1.a);
    let var_1 = abs(var_0.x);
    var var_2 = 884f;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 653f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.x)) - _wgslsmith_f_op_f32(731f - global0.a.c))))), _wgslsmith_f_op_f32(trunc(1067f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(880f))))) * _wgslsmith_f_op_f32(-arg_0.c)));
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + -822f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1u, arg_0.c, arg_0.e, ~14831u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.b))), true);
    return reverseBits(u_input.d.x);
}

fn func_4(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = -global1.a.x ^ ~(global1.a.x | global1.a.x);
    var var_1 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(340f)), _wgslsmith_f_op_f32(849f + -3803f), 1308f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(1000f * global0.b.x), _wgslsmith_f_op_f32(abs(966f))))), any(global1.d.yyx));
    let var_2 = any(select(!(!vec2<bool>(var_1.c, true)), !select(!global1.d.wy, select(global1.c.xw, global1.d.wz, true), var_1.c), select(!vec2<bool>(true, global1.c.x), !(!vec2<bool>(global0.c, var_1.c)), global0.c)));
    let var_3 = Struct_1(global1.a, u_input.c.x, select(global1.d, global1.d, all(vec4<bool>(false, select(var_2, false, global1.d.x), var_2, true))), select(select(global1.c, global1.d, !vec4<bool>(false, var_2, false, false)), global1.d, !global0.c), vec3<bool>(any(global1.d), true, true));
    var var_4 = var_3;
    return StorageBuffer(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec2<u32>(func_1(vec2<u32>(~global1.b, global0.a.b)), func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -410f), 13527u, _wgslsmith_f_op_f32(select(global0.a.a, -2756f, false)), global1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(2463u, 31612u, global0.a.b), vec3<u32>(22809u, global0.a.b, global1.b))), !vec4<bool>(global0.c, true, global1.c.x, false), global1.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-995f, global0.b.x))))));
}

