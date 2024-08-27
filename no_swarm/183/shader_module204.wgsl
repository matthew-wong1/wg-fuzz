struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_3(max(-u_input.c, u_input.c));
    let var_1 = arg_0.a;
    var_0 = Struct_3(vec4<i32>(6152i, -12708i, ~0i, 0i));
    let var_2 = Struct_4(max(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(35317u, 14493u), countOneBits(vec2<u32>(4294967295u, u_input.b.x)))), (_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(1u, 4294967295u)) | firstTrailingBit(u_input.b)) & _wgslsmith_sub_vec2_u32(u_input.b ^ u_input.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 21131u), u_input.b, vec2<u32>(6006u, 4294967295u)))), Struct_1(select(!vec2<bool>(true, arg_0.a.a.x), select(select(var_1.a, arg_0.a.a, var_1.a), var_1.a, arg_0.a.a.x), !(!var_1.a)), vec4<f32>(-393f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f - arg_2.x) * _wgslsmith_f_op_f32(sign(1021f))), _wgslsmith_div_f32(274f, _wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x)))));
    var var_3 = arg_0.a.a.x & false;
    return _wgslsmith_mod_vec3_u32(~vec3<u32>(40913u, 67183u, arg_1 ^ (3937u ^ u_input.a)), abs(vec3<u32>(abs(~arg_1), ~u_input.a, 0u)));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> f32 {
    global1 = arg_1.b.a.x;
    var var_0 = Struct_2(arg_1.b);
    var var_1 = Struct_2(var_0.a);
    let var_2 = reverseBits(~func_3(Struct_2(Struct_1(vec2<bool>(true, true), var_1.a.b)), _wgslsmith_add_u32(39379u, arg_1.a.x), var_0.a.b));
    let var_3 = arg_1.b.b.x;
    return var_1.a.b.x;
}

fn func_1() -> Struct_2 {
    global1 = !(false & !((2147483647i ^ u_input.c.x) >= abs(u_input.d)));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(805f, -993f)), -2058f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-191f, 338f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2541f, 435f) + vec2<f32>(1241f, -2106f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-165f, -592f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, 273f))))) - vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(1243f, 751f), Struct_4(vec2<u32>(u_input.b.x, 0u), Struct_1(vec2<bool>(false, true), vec4<f32>(-985f, 2072f, 842f, -2266f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 112f), _wgslsmith_f_op_f32(step(1123f, 581f)))))));
    global1 = any(vec4<bool>(true, true, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 2147483647i), global0[_wgslsmith_index_u32(u_input.b.x, 11u)]) >= 1i) & select(true, true, true), true));
    var var_1 = Struct_2(Struct_1(vec2<bool>(true | all(vec4<bool>(false, false, true, true)), true), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1128f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x)))));
    var var_2 = var_1.a;
    return Struct_2(Struct_1(var_2.a, var_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(!(!vec4<bool>(var_0.a.a.x, false, false, true)));
    global1 = !var_0.a.a.x;
    let var_2 = u_input.d;
    let var_3 = Struct_2(var_0.a);
    let var_4 = Struct_1(!(!vec2<bool>(u_input.a >= u_input.a, any(vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false)))), vec4<f32>(var_3.a.b.x, 1f, var_0.a.b.x, _wgslsmith_f_op_f32(ceil(func_1().a.b.x))));
    var_1 = var_4.a.x || var_0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 1u, u_input.d & 1i);
}

