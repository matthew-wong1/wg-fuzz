struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: Struct_1 = Struct_1(12474u);

var<private> global3: array<u32, 3>;

var<private> global4: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> f32 {
    global1 = array<vec4<bool>, 25>();
    global3 = array<u32, 3>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(arg_0, 3u)], arg_2, 3697u), 0u) | 27515u));
    let var_1 = ~(-28404i) | abs(-(~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)));
    let var_2 = var_0.a;
    return -1103f;
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    global4 = 1u;
    return Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xyz, abs(u_input.b.xyz)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = -60650i;
    global3 = array<u32, 3>();
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(590f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-549f, 263f), _wgslsmith_f_op_f32(func_2(arg_1.x, vec4<f32>(745f, 1010f, -1325f, 1504f), 11733u, 106589u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f + 1384f)))));
    let var_2 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, 344f, 331f)), vec3<f32>(284f, 897f, 434f))), vec3<f32>(-688f, _wgslsmith_div_f32(863f, 1000f), _wgslsmith_f_op_f32(-1900f + 1000f))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 4294967295u;
    var var_0 = Struct_2(func_1(~_wgslsmith_mult_u32(40292u, global2.a), ~countOneBits(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(7039u, 3u)])) | ~vec2<u32>(global3[_wgslsmith_index_u32(1u, 3u)], 18497u), select(49680i & -u_input.d, u_input.c.x, all(global1[_wgslsmith_index_u32(5165u, 25u)])), u_input.d));
    var var_1 = Struct_2(var_0.a);
    var_0 = Struct_2(var_1.a);
    var_1 = Struct_2(var_1.a);
    global2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(-22825i, 3281i, u_input.d), max(vec3<i32>(-32053i, u_input.d, u_input.c.x), vec3<i32>(2147483647i, 26262i, u_input.c.x))))), vec2<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~4294967295u, global2.a), 103241u)));
}

