struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, false, false));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: array<Struct_3, 3>;

var<private> global4: array<vec2<i32>, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = global0.a.x;
    global0 = Struct_2(vec4<bool>(!(!(u_input.c != 1i)), all(select(global0.a.wyy, vec3<bool>(global0.a.x, false, true), select(global0.a.wyy, vec3<bool>(true, true, true), global0.a.x))), any(!vec2<bool>(global0.a.x, global0.a.x)), global0.a.x));
    global4 = array<vec2<i32>, 6>();
    global2 = array<Struct_1, 25>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global1.x), u_input.b.x, 350f);
    return Struct_2(global0.a);
}

fn func_1() -> Struct_2 {
    let var_0 = global0.a.x;
    var var_1 = ~u_input.d.x;
    var var_2 = global1.xw;
    global4 = array<vec2<i32>, 6>();
    let var_3 = !global0.a.x;
    return func_2(u_input.a, min(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(26111i, u_input.d.x, 0i, u_input.d.x), ~vec4<i32>(u_input.d.x, -1i, u_input.c, u_input.d.x)), countOneBits(~vec4<i32>(u_input.c, 28088i, u_input.c, 2147483647i))), 1i));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    global0 = func_1();
    let var_0 = global0.a.xw;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + -807f)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(global1.x))), 927f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-419f - global1.x)));
    global0 = func_2(vec3<u32>(u_input.a.x, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(41893u, 1u, arg_1, arg_1), vec4<u32>(1u, 0u, arg_0, 4294967295u)), firstTrailingBit(u_input.a.x))), u_input.a.x), -2147483647i);
    let var_1 = func_2(~u_input.a, _wgslsmith_div_i32(1i ^ (_wgslsmith_div_i32(u_input.c, 0i) | _wgslsmith_add_i32(-1i, u_input.c)), -2147483647i));
    return 753f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1395f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, 9678u), u_input.a), _wgslsmith_mod_u32(63985u, 4294967295u)))), any(var_0.a))));
    var var_2 = _wgslsmith_clamp_i32(u_input.b.x >> (~u_input.a.x % 32u), min(1i, 2147483647i), u_input.b.x);
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 25u)];
    let var_4 = 16957u;
    var var_5 = func_1();
    let var_6 = 35631i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

