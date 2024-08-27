struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(4294967295u, 24397u, 1u, 83903u, 0u, 39380u, 4294967295u, 4294967295u, 1u, 51937u, 0u, 59232u, 6268u, 4294967295u, 4294967295u, 60875u, 17655u, 4294967295u, 1u, 4294967295u, 20129u, 70177u, 4294967295u, 0u, 1u);

var<private> global1: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = all(global1.b);
    var var_1 = Struct_2(false, _wgslsmith_div_i32(_wgslsmith_mult_i32(-abs(u_input.d), 2147483647i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0, -2147483647i, -6657i, u_input.d), -vec4<i32>(23329i, 9494i, u_input.d, -4767i)), vec4<i32>(61317i, 0i, ~37071i, -2147483647i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 25u)] % 32u)))));
    global0 = array<u32, 25>();
    var_1 = Struct_2(false, _wgslsmith_mod_i32(-u_input.d, -1i));
    let var_2 = Struct_4(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 4294967295u & (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 48933u), u_input.a) | ~global1.a.x)), global1.b);
    return Struct_5(Struct_2(true, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 5411i), vec2<i32>(73474i, 1i)) | _wgslsmith_add_vec2_i32(vec2<i32>(27850i, -22131i), vec2<i32>(arg_0, -52611i)), -vec2<i32>(arg_0, 1i))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec3<f32> {
    global0 = array<u32, 25>();
    var var_0 = func_2(2147483647i);
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), var_0.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(global1.b), u_input.d > 46043i, true);
    var var_1 = abs(27407u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, global0[_wgslsmith_index_u32(global1.a.x, 25u)], u_input.a.x, 13778u), vec4<u32>(0u, u_input.c.x, global0[_wgslsmith_index_u32(101314u, 25u)], 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 4294967295u, 0u), max(vec4<u32>(global0[_wgslsmith_index_u32(24724u, 25u)], 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(global1.a.x, 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(45104u, 25u)])))) ^ vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.a, global1.a), 0u), ~global1.a.x | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.x), u_input.c.xy), global1.a.x, 1u), select(u_input.a.x, ~reverseBits(_wgslsmith_sub_u32(global1.a.x, 0u)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1133f, -806f) + vec2<f32>(861f, 268f)), var_0.x)))));
}

