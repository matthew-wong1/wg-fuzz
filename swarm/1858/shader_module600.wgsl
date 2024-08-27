struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    global2 = array<vec4<f32>, 15>();
    global1 = Struct_2(global1.a);
    global0 = array<bool, 27>();
    var var_0 = firstTrailingBit(u_input.a.x);
    global0 = array<bool, 27>();
    return global1.a.a.x;
}

fn func_2() -> i32 {
    global1 = Struct_2(global1.a);
    global1 = Struct_2(Struct_1(global1.a.a, 4294967295u, _wgslsmith_mod_i32(abs(17693i), global1.a.c) << (~(u_input.a.x ^ 34348u) % 32u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2078f, -374f)))))), min(~global1.a.e, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.b, 0u, u_input.a.x, u_input.a.x), global1.a.e), ~global1.a.b, reverseBits(global1.a.b), u_input.b.x << (4294967295u % 32u)))));
    let var_0 = 441f;
    var var_1 = vec4<f32>(-2814f, _wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(func_3()), 947f);
    global1 = Struct_2(global1.a);
    return global1.a.c ^ -1i;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> i32 {
    global2 = array<vec4<f32>, 15>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(~global1.a.c, func_1(global1.a, 1143f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, -783f, _wgslsmith_f_op_f32(global1.a.d.x * global1.a.d.x), _wgslsmith_f_op_f32(max(1000f, -1050f)))), global1.a.b, global1.a.c, vec2<f32>(_wgslsmith_f_op_f32(-176f - _wgslsmith_f_op_f32(-global1.a.d.x)), -759f), ~(~global1.a.e)));
    var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) * _wgslsmith_div_f32(global1.a.a.x, -1000f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a.a.x, global1.a.d.x)), _wgslsmith_f_op_f32(trunc(var_1.a.a.x))), 709f), max(var_1.a.b, 1u), -(_wgslsmith_dot_vec2_i32(vec2<i32>(-89469i, -2147483647i), vec2<i32>(var_1.a.c, var_1.a.c)) & global1.a.c), var_1.a.a.yz, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_1.a.b, global1.a.e.x), global1.a.e)));
    let var_2 = vec2<bool>(global0[_wgslsmith_index_u32(30453u, 27u)], 1558f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x * 806f) * global1.a.d.x) + _wgslsmith_f_op_f32(ceil(-2837f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_mult_u32(~(~(~u_input.b.x)), 0u), global1.a.c, var_1.a.a.zy, vec4<u32>(global1.a.b, 114860u, 50322u, select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50563u, 4294967295u, 4294967295u, global1.a.b), var_1.a.e), u_input.a.x), 4294967295u, false)));
    let var_4 = Struct_2(global1.a);
    var var_5 = var_1.a;
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.a.a.x))))), -584f)), _wgslsmith_f_op_f32(sign(801f)), 1140f);
    var var_7 = global1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(~(vec3<u32>(4294967295u, global1.a.e.x, 32481u) | var_1.a.e.yzz), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_4.a.e.x, 22940u), var_4.a.e.zyy))));
}

