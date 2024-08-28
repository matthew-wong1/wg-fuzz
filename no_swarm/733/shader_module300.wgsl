struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, true, -63870i, Struct_1(vec2<bool>(true, false), 318f, vec3<u32>(32683u, 0u, 1u), 4294967295u, vec3<u32>(0u, 1u, 1u)), 1u);

var<private> global1: vec4<f32> = vec4<f32>(2342f, 276f, 339f, 1020f);

var<private> global2: array<vec3<bool>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = true;
    var var_1 = global0.d;
    var_1 = Struct_1(select(global0.d.a, !vec2<bool>(global0.d.a.x, any(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x))), vec2<bool>(var_1.a.x, true)), var_1.b, global0.d.e, select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global0.d.e.x, global0.d.c.x) | var_1.c, vec3<u32>(9878u, 15331u, 4294967295u)), ~var_1.c ^ _wgslsmith_sub_vec3_u32(var_1.e, vec3<u32>(1u, 0u, 4294967295u))), firstTrailingBit(u_input.a), var_1.a.x), ~var_1.c);
    let var_2 = global2[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.e.x, _wgslsmith_add_u32(min(1540u, 23726u), select(var_1.d, 84237u, var_1.a.x)), _wgslsmith_clamp_u32(global0.d.d, ~u_input.b.x, ~43984u), ~global0.e ^ 4294967295u), u_input.b), 32u)];
    var var_3 = u_input.b.x;
    return Struct_3(any(!(!vec4<bool>(true, false, var_2.x, true))), true, 43665i, global0.d, ~95900u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    global0 = Struct_3(true, true, 2147483647i, Struct_1(!(!select(vec2<bool>(global0.d.a.x, true), vec2<bool>(true, true), global0.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.b), _wgslsmith_f_op_f32(f32(-1f) * -1092f), any(global0.d.a))) - _wgslsmith_f_op_f32(-880f * _wgslsmith_f_op_f32(-global0.d.b))), u_input.b.xyw | global0.d.c, global0.d.d, _wgslsmith_mult_vec3_u32(select(u_input.b.zxz, vec3<u32>(1u, global0.d.d, 27593u), global2[_wgslsmith_index_u32(global0.e << (21091u % 32u), 32u)]), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.e, arg_0.d), arg_0.e))), ~4294967295u);
    let var_0 = 1u;
    global0 = func_2(_wgslsmith_mod_i32(arg_1.x, u_input.c.x >> (var_0 % 32u)));
    let var_1 = func_2(-(~global0.c));
    var var_2 = _wgslsmith_f_op_f32(-var_1.d.b);
    return Struct_3(false, false, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, 1i), vec3<i32>(arg_1.x, global0.c, arg_1.x)), 1i), ~max(u_input.d, u_input.c)), var_1.d, u_input.b.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>) -> u32 {
    global2 = array<vec3<bool>, 32>();
    let var_0 = func_2(-2606i).d;
    global0 = func_1(global0.d, vec2<i32>(min(_wgslsmith_mod_i32(-29509i, 16191i), ~func_2(54644i).c), u_input.e));
    let var_1 = var_0;
    global1 = arg_1;
    return ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(var_1.c.x, var_0.d)), _wgslsmith_div_u32(var_1.c.x, var_1.d)), var_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    var var_1 = 1959f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -548f)));
    global2 = array<vec3<bool>, 32>();
    global0 = func_1(Struct_1(var_0.a, var_0.b, ~global0.d.e, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, global0.d.c.x | global0.e, _wgslsmith_dot_vec3_u32(global0.d.c, vec3<u32>(u_input.b.x, var_0.d, var_0.d))), u_input.b.yyz), vec3<u32>(_wgslsmith_mult_u32(global0.e, 4294967295u), 39510u, 4294967295u)), -u_input.c);
    var_1 = -1000f;
    var var_2 = ~_wgslsmith_dot_vec3_u32(global0.d.c, vec3<u32>(_wgslsmith_add_u32(func_3(global2[_wgslsmith_index_u32(4294967295u, 32u)], vec4<f32>(144f, global0.d.b, 1092f, global1.x)), 1u), _wgslsmith_dot_vec2_u32(reverseBits(global0.d.c.xz), vec2<u32>(u_input.b.x, 20063u) & vec2<u32>(73945u, global0.d.c.x)), var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.e, 1u, ~(_wgslsmith_mult_u32(u_input.b.x, 77044u) | 1u)), min(~1i, -(select(33701i, u_input.d.x, true) << (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u))));
}

