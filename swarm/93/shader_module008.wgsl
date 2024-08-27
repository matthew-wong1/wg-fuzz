struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1u, 834f, vec4<bool>(true, true, true, false)));

var<private> global3: Struct_1 = Struct_1(43233u, -1844f, vec4<bool>(false, true, false, true));

var<private> global4: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-187f, -2023f, 1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global1 = arg_0.x;
    global2 = array<Struct_1, 1>();
    return _wgslsmith_div_u32(1u, ~(~15413u));
}

fn func_3() -> vec4<bool> {
    return global3.c;
}

fn func_1(arg_0: Struct_2) -> u32 {
    global3 = Struct_1(max(func_2(-_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(5048i, -83872i, 25113i, 13038i))), 1u), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(3532u, global3.a)), 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global3.a, 27u)], arg_0.c.b) * arg_0.c.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b))))), select(!func_3(), select(!(!vec4<bool>(arg_0.b, arg_0.c.c.x, false, global3.c.x)), !arg_0.c.c, !(!arg_0.c.c)), vec4<bool>(arg_0.c.c.x, global3.c.x, !global3.c.x, all(select(global3.c.zz, arg_0.c.c.ww, false)))));
    global0 = array<f32, 27>();
    var var_0 = vec3<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-13503i, u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.a.x), -u_input.a.x)) ^ u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(-(~u_input.a.x), u_input.a.x) >> (~_wgslsmith_dot_vec4_u32(max(vec4<u32>(30974u, 0u, global3.a, 51214u), vec4<u32>(arg_0.a, arg_0.a, 48305u, arg_0.c.a)), vec4<u32>(0u, global3.a, global3.a, arg_0.c.a)) % 32u));
    global0 = array<f32, 27>();
    let var_1 = Struct_2(_wgslsmith_clamp_u32(~arg_0.c.a, arg_0.a, ~_wgslsmith_sub_u32(global3.a, global3.a) | _wgslsmith_clamp_u32(global3.a, arg_0.c.a, 36481u)), global3.c.x, arg_0.c, global3.a);
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    global4 = array<vec3<f32>, 1>();
    let var_0 = ~4294967295u >> (global3.a % 32u);
    global2 = array<Struct_1, 1>();
    global1 = abs(12159i);
    var var_1 = Struct_2(~(~1u), select(any(vec4<bool>(global3.c.x, false, false, false)), !global3.c.x, all(vec2<bool>(false, global3.c.x))) && (true | global3.c.x), global2[_wgslsmith_index_u32(1u, 1u)], firstTrailingBit((func_1(Struct_2(15055u, true, global2[_wgslsmith_index_u32(60398u, 1u)], global3.a)) ^ 1u) << (var_0 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x << (~(~var_1.a) % 32u), -_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(-1i, u_input.a.x)), 0i));
}

