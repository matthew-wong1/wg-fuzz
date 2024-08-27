struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec4<bool>, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    return Struct_1(242f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(369f, 742f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-614f, -866f, 227f), vec3<f32>(1586f, 803f, 299f))) + vec3<f32>(-387f, -174f, -1210f))))));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    return !select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, all(vec2<bool>(false, true)) | true));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    let var_0 = false;
    return func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-func_1().c.xx), 2724i));
}

fn func_4(arg_0: vec3<bool>) -> Struct_5 {
    let var_0 = Struct_2(Struct_1(119f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(126f, -117f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-280f)) - 1943f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1450f, -1644f, -1000f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(789f, -942f, 670f) * vec3<f32>(2022f, -1104f, -835f)))))), -select(min(u_input.a.x, 22347i), -(u_input.a.x ^ 24611i), any(vec2<bool>(true, arg_0.x))));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.a * var_0.a.b))), _wgslsmith_f_op_f32(abs(-1495f)), var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.c.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, -1210f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x), !(false && arg_0.x))))));
    return Struct_5(global1[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(326f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(840f, var_2.x) - _wgslsmith_f_op_f32(-var_2.x))))), vec2<f32>(392f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1f, var_2.x, !arg_0.x)), var_1.x))), (abs(1253u) << ((_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b) ^ ~u_input.b) % 32u)) | ~(~1u >> (_wgslsmith_add_u32(0u, 0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global1 = array<vec4<bool>, 9>();
    var var_1 = -14656i >= _wgslsmith_div_i32(-1i, u_input.a.x >> (~4294967295u % 32u));
    let var_2 = ~(~u_input.a.zy);
    let var_3 = Struct_2(func_1(), i32(-1i) * -21612i);
    global0 = array<u32, 16>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a.c) + var_3.a.c);
    var var_5 = func_4(!(!select(func_2(4294967295u, var_3, -52706i), func_3(Struct_4(vec2<f32>(882f, 1201f), -1i)), vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1890f, u_input.a.x ^ var_3.b, u_input.a.x & (37873i ^ -(~var_2.x)), -(~abs(0i)));
}

