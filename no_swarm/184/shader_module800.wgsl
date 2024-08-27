struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1289f, 393f, -1050f), 52243u, vec2<u32>(1u, 96211u));

var<private> global1: vec2<f32>;

var<private> global2: bool;

var<private> global3: array<i32, 20>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, 2543i), u_input.b);
    var var_1 = -u_input.b;
    var var_2 = arg_0.a.x;
    var_1 = vec3<i32>(24015i, var_0.x, -54023i);
    global1 = arg_0.a.zx;
    return ~global0.b <= u_input.c.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    global3 = array<i32, 20>();
    var var_0 = Struct_3(global0.a.x, ~u_input.c | ~(~vec4<u32>(4294967295u, 0u, 0u, 1u)));
    var var_1 = -1382f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2216f, 930f, global1.x)))), _wgslsmith_mod_u32(global0.b, _wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(68452u, 41675u, global0.c.x, 1u)))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.c.x, var_0.b.x) >> (vec2<u32>(27625u, var_0.b.x) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 38858u))));
    let var_3 = 18466u;
    return ~abs(~_wgslsmith_mod_u32(~var_3, ~var_2.a.b));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> bool {
    global3 = array<i32, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-898f)), _wgslsmith_f_op_f32(ceil(arg_1.a)), _wgslsmith_f_op_f32(-global1.x))), ~(_wgslsmith_mod_u32(27482u, 72361u) >> (arg_1.b.x % 32u)), u_input.c.xz);
    global2 = true;
    var var_1 = ~(~func_3(global0.a.zy, false));
    var_1 = func_3(vec2<f32>(arg_1.a, -830f), global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(4294967295u, arg_1.b.x) & (global0.c.x ^ 1u)), 20u)] >= arg_0);
    return true == !func_1(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, -1246f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(408f + 571f), _wgslsmith_f_op_f32(step(-1379f, 574f))))));
    let var_2 = global0.a.x;
    var var_3 = vec3<bool>(!(select(select(true, false, false), all(vec2<bool>(true, false)), select(false, true, true)) | ((u_input.b.x <= global3[_wgslsmith_index_u32(var_0.x, 20u)]) | true)), all(vec3<bool>(true, true, func_1(Struct_1(vec3<f32>(-964f, var_1.x, global0.a.x), 1u, var_0.zx)))), (false || all(vec4<bool>(true, true, true, true))) | all(vec4<bool>(true, true, func_2(u_input.b.x, Struct_3(717f, vec4<u32>(global0.b, u_input.a, 1u, 1u))), global0.b >= 11059u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(83214u << (~u_input.c.x % 32u), 20u)] ^ abs(20218i), ~(-45848i)), ~(~var_0.www), 7491i, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global0.a.x)))), global1.x));
}

