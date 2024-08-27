struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(25574u), Struct_3(7181u), Struct_3(1u), Struct_3(85573u), Struct_3(1u), Struct_3(24668u), Struct_3(65989u), Struct_3(88531u), Struct_3(8716u), Struct_3(10228u), Struct_3(146239u), Struct_3(4294967295u), Struct_3(20288u), Struct_3(0u), Struct_3(47112u), Struct_3(4294967295u), Struct_3(25432u), Struct_3(12299u), Struct_3(7574u), Struct_3(4294967295u), Struct_3(100864u), Struct_3(4294967295u), Struct_3(0u), Struct_3(4294967295u), Struct_3(44066u), Struct_3(60291u));

var<private> global3: array<vec3<bool>, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = vec3<u32>(42923u, 1u, ~(~min(arg_0.b.d, 4294967295u)) ^ global1.a);
    global0 = array<i32, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1208f, arg_0.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.e.x * arg_0.b.e.x) - _wgslsmith_f_op_f32(floor(812f))) - arg_0.b.e.x), 223f, arg_0.b.c));
    global2 = array<Struct_3, 26>();
    let var_2 = arg_0.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2270f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f))) * _wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(-arg_0.b.c))));
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = vec2<u32>(0u, _wgslsmith_div_u32(5419u, global1.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-455f, -604f), _wgslsmith_f_op_f32(func_2(Struct_2(false, Struct_1(u_input.d.zz, -2147483647i, 114f, 26640u, vec2<f32>(1848f, 1269f))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(-348f)))));
    let var_2 = Struct_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 48131u, 4294967295u, 88270u) ^ vec4<u32>(arg_0.a, 4294967295u, global1.a, u_input.c), vec4<u32>(89418u, 4294967295u, 9135u, arg_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.b, 1u), ~vec3<u32>(arg_0.a, global1.a, arg_0.a))), ~(max(22107i, global0[_wgslsmith_index_u32(global1.a, 30u)]) & global0[_wgslsmith_index_u32(24790u, 30u)]) | -2147483647i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3053f + var_1.x)))))), global1.a, var_1.zy);
    var var_3 = var_2;
    var var_4 = Struct_3(select(0u, max(1u, 0u) >> (_wgslsmith_sub_u32(0u, u_input.a) % 32u), true));
    return vec3<i32>(~var_3.b, ~0i, var_3.b);
}

fn func_3(arg_0: vec3<i32>) -> StorageBuffer {
    global2 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, _wgslsmith_f_op_f32(-122f * 1343f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-974f)))), 1174f)));
    global2 = array<Struct_3, 26>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-167f, var_0.x, -718f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 266f, var_0.x, -775f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, -749f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, var_0.x, var_0.x, -196f) - vec4<f32>(-2185f, var_0.x, -286f, 165f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1125f, _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(select(-1030f, -931f, false)), _wgslsmith_f_op_f32(-var_0.x), -679f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -295f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 499f, 601f, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1009f, var_0.x, 1046f)))))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.xw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-683f))), var_1.x))), 780f, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 26>();
    global0 = array<i32, 30>();
    var var_0 = ~u_input.d.x;
    global2 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = func_3(countOneBits(abs(~vec3<i32>(global0[_wgslsmith_index_u32(global1.a, 30u)], global0[_wgslsmith_index_u32(global1.a, 30u)], -1i))) & _wgslsmith_sub_vec3_i32(func_1(Struct_3(global1.a)), min(max(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<i32>(global0[_wgslsmith_index_u32(1979u, 30u)], 16743i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -27866i, global0[_wgslsmith_index_u32(global1.a, 30u)]), vec3<i32>(0i, 35769i, 0i)))));
}

