struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-30528i, 11382i, 1i, -41219i, 2147483647i, i32(-2147483648), 3708i, 1i, 1i, -1i, 1i, 1i, -11034i, 1i, -1i, -4901i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<u32>(0u, 4294967295u, 41103u, 16687u), vec3<u32>(0u, 93459u, 27938u)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 76365u, 4294967295u), vec3<u32>(2895u, 4294967295u, 0u)), Struct_3(vec4<u32>(7238u, 0u, 4294967295u, 1u), vec3<u32>(94805u, 4294967295u, 55790u)), Struct_3(vec4<u32>(4294967295u, 75734u, 38513u, 22413u), vec3<u32>(25841u, 14994u, 1u)), Struct_3(vec4<u32>(4294967295u, 34783u, 3447u, 22931u), vec3<u32>(0u, 1u, 16331u)), Struct_3(vec4<u32>(3977u, 29009u, 0u, 0u), vec3<u32>(40957u, 8325u, 1u)), Struct_3(vec4<u32>(0u, 4294967295u, 204u, 5059u), vec3<u32>(0u, 0u, 4294967295u)), Struct_3(vec4<u32>(4294967295u, 26029u, 4294967295u, 4294967295u), vec3<u32>(1u, 16518u, 0u)), Struct_3(vec4<u32>(670u, 1u, 4294967295u, 4294967295u), vec3<u32>(71207u, 1u, 0u)), Struct_3(vec4<u32>(1u, 4294967295u, 46226u, 4294967295u), vec3<u32>(1u, 46970u, 60439u)), Struct_3(vec4<u32>(0u, 21202u, 0u, 71427u), vec3<u32>(1u, 17159u, 1u)), Struct_3(vec4<u32>(26759u, 0u, 17252u, 1u), vec3<u32>(9794u, 105u, 1u)), Struct_3(vec4<u32>(91876u, 8188u, 26777u, 21599u), vec3<u32>(26634u, 1u, 105687u)), Struct_3(vec4<u32>(0u, 0u, 1u, 4294967295u), vec3<u32>(71260u, 16680u, 15783u)), Struct_3(vec4<u32>(0u, 53318u, 1u, 4294967295u), vec3<u32>(0u, 8633u, 0u)), Struct_3(vec4<u32>(46627u, 1u, 1339u, 0u), vec3<u32>(65838u, 0u, 4294967295u)), Struct_3(vec4<u32>(60445u, 4294967295u, 50142u, 1u), vec3<u32>(15351u, 61385u, 22569u)), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 89801u), vec3<u32>(65247u, 4294967295u, 69355u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(0u, arg_0.x, 39173u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 43637u, 22116u), select(vec3<u32>(4294967295u, 51271u, 41789u), vec3<u32>(5500u, 23702u, 83198u), vec3<bool>(true, false, false)))), arg_0);
    global1 = arg_1;
    global2 = array<Struct_3, 18>();
    let var_1 = global1.a.x;
    global1 = Struct_1(global1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(select(arg_1.a.x, -1306f, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))))) + arg_1.a.x);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = true;
    let var_1 = false;
    let var_2 = u_input.b >> (~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u)) | vec4<u32>(4294967295u, 0u, 0u, u_input.a.x), ~u_input.b) % vec4<u32>(32u));
    global0 = array<i32, 16>();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1154f, 2375f, arg_2, -320f) - vec4<f32>(-419f, global1.a.x, 534f, arg_2)))) - vec4<f32>(953f, -943f, _wgslsmith_f_op_f32(-687f + -300f), _wgslsmith_f_op_f32(f32(-1f) * -2375f))));
    return _wgslsmith_f_op_f32(select(1772f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.wwy, Struct_1(global1.a))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1602f, global1.a.x) + _wgslsmith_f_op_f32(-arg_2))))), !any(select(select(vec4<bool>(false, true, var_1, true), vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1, false, var_1, var_1), true), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1))))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = global1.a.x;
    let var_1 = Struct_5(~arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - -609f) - _wgslsmith_f_op_f32(global1.a.x - global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 16u)], 39360i, global0[_wgslsmith_index_u32(arg_0.b.x, 16u)]), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 16u)], 54940i, global0[_wgslsmith_index_u32(10611u, 16u)])), vec4<i32>(69996i, 0i, -41099i, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1000f, -183f, global1.a.x))))));
    let var_2 = global2[_wgslsmith_index_u32(~countOneBits(~countOneBits(1u)), 18u)];
    let var_3 = arg_0;
    let var_4 = _wgslsmith_div_vec4_u32(max(var_3.a, vec4<u32>(_wgslsmith_add_u32(1u, var_3.a.x), 0u, max(var_3.a.x, 65984u), 1u)) >> (var_2.a % vec4<u32>(32u)), u_input.b);
    return _wgslsmith_add_u32(firstLeadingBit(var_4.x << (_wgslsmith_div_u32(abs(u_input.a.x), abs(arg_0.b.x)) % 32u)), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-166f, -575f)))))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(Struct_3(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.b.x), ~vec3<u32>(4294967295u, 68520u, u_input.a.x))), 40206u), 16u)], vec3<u32>(~50509u, ~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), u_input.b.x), ~(4294967295u | ~u_input.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -340f), global1.a.x)));
}

