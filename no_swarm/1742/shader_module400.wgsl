struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: Struct_1 = Struct_1(34168u);

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~(~u_input.c);
    var var_1 = 18724i;
    var var_2 = Struct_1(45452u);
    var_1 = u_input.d;
    var_2 = Struct_1(1u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + -850f), -392f))), _wgslsmith_f_op_f32(round(-1185f)), true));
}

fn func_2() -> Struct_1 {
    global2 = vec3<f32>(1f, 736f, global2.x);
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(488f, 1000f), global2.x, -134f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1248f)), -151f, global2.x))));
    global0 = array<bool, 10>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_div_f32(var_1.x, -826f), _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(global2.x, var_1.x, var_1.x)), global2.x, vec2<u32>(29923u, var_0)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(200f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global2.x, var_1.x) - vec3<f32>(831f, -985f, global2.x))) * vec3<f32>(1276f, _wgslsmith_f_op_f32(global2.x - global2.x), global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, -977f, -142f))))));
    return Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 46957u, var_0, global1.a), ~vec4<u32>(global1.a, var_0, 4294967295u, var_0) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, 2837u), vec4<u32>(var_0, 1u, u_input.c, u_input.c), vec4<u32>(global1.a, 21889u, 8013u, 4294967295u))), vec4<u32>(~var_0, global1.a ^ _wgslsmith_div_u32(7013u, 10524u), ~u_input.c, 1u >> (var_0 % 32u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global3 = (global0[_wgslsmith_index_u32(72032u, 10u)] && (667f == global2.x)) || (true || global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20919u, u_input.c, 29218u), vec4<u32>(1u, global1.a, 4294967295u, 128286u)) << (u_input.c % 32u), 10u)]);
    var var_0 = -u_input.d;
    var var_1 = vec4<i32>(~_wgslsmith_mod_i32(u_input.a ^ u_input.d, -2147483647i), -54085i, u_input.a, firstLeadingBit(max(-1275i, 4360i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b, -27076i), vec4<i32>(-2147483647i, u_input.d, 1i, u_input.d)))));
    let var_2 = var_1.yyx;
    global3 = !global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.a), 10u)];
    return 632f;
}

fn func_1() -> Struct_2 {
    var var_0 = ~65504u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - -144f))), _wgslsmith_f_op_f32(abs(global2.x)), global2.x) - vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(func_4(func_2())))));
    global4 = 21416u;
    var var_2 = !global0[_wgslsmith_index_u32(39305u, 10u)];
    var var_3 = global1.a;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)) + var_1.a));
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = u_input.c;
    let var_1 = func_1();
    global1 = func_2();
    global4 = _wgslsmith_mod_u32(global1.a, u_input.c);
    var var_2 = func_2();
    return _wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(round(arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(reverseBits(~u_input.c), _wgslsmith_add_u32(~global1.a, abs(4294967295u))), ~_wgslsmith_add_u32(u_input.c, _wgslsmith_div_u32(5194u, 95625u)), 0u, 0u), ~firstLeadingBit(vec4<u32>(56730u, 4294967295u, 1u, 78949u) << ((vec4<u32>(u_input.c, global1.a, 1679u, u_input.c) | vec4<u32>(82388u, 53335u, u_input.c, 1u)) % vec4<u32>(32u))));
    global0 = array<bool, 10>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1()))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1893f, global2.x, -1066f), vec3<f32>(627f, global2.x, global2.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, 2768f))))))));
    global4 = u_input.c;
    global0 = array<bool, 10>();
    global4 = ~global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(max((~u_input.a ^ reverseBits(u_input.d)) | -47464i, abs(u_input.b)), -974f, 0i, ~u_input.b);
}

