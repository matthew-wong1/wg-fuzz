struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_3, 7>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(1f, -2142f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(522f, -2029f, -1293f, 2119f) - vec4<f32>(1561f, 145f, 377f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1612f, 306f)), 540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)), _wgslsmith_f_op_f32(floor(-151f)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = arg_1.a.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-988f, arg_2.x, _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))) + vec3<f32>(-986f, 1000f, 1665f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, -1000f, arg_1.a.b.b.c) - vec3<f32>(var_0.b.c, 1316f, -695f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(961f, arg_2.x, 798f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1758f, 192f, arg_2.x) * vec3<f32>(var_0.a.c, arg_2.x, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1223f, arg_2.x) * vec3<f32>(arg_2.x, 742f, arg_1.a.b.b.c)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, -159f, arg_1.a.b.c.x)))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1415f), _wgslsmith_f_op_f32(-arg_1.a.b.a.c), _wgslsmith_div_f32(105f, 550f)), vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(min(-163f, -938f)), _wgslsmith_div_f32(arg_2.x, var_0.c.x)))));
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u) & _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x), 31667u), arg_0.x, u_input.b.x, arg_0.x), _wgslsmith_add_vec4_u32(~vec4<u32>(~4294967295u, ~1u, 52478u, _wgslsmith_sub_u32(arg_0.x, 142187u)), vec4<u32>(max(~1u, _wgslsmith_sub_u32(arg_0.x, u_input.b.x)), u_input.b.x, 17525u, ~arg_0.x)));
    var var_3 = arg_1.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1));
    return arg_1.a.b.d.d;
}

fn func_2() -> i32 {
    var var_0 = Struct_4(Struct_3(!select(vec2<bool>(false, true), vec2<bool>(true, true), func_3(u_input.b.yz, Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(global0[_wgslsmith_index_u32(97662u, 30u)], Struct_1(vec2<i32>(-1i, -2147483647i), vec2<bool>(true, true), 1789f, vec2<bool>(false, true)), vec2<f32>(2170f, 572f), global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), vec2<f32>(513f, -259f))), Struct_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false), -1382f, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(364f, 495f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, 393f))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_add_u32(70615u, u_input.b.x), max(4294967295u, 1u)), 30u)])));
    var var_1 = var_0.a.b.b.b.x;
    let var_2 = 1f;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    return ~(-(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1017f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), -101f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, -768f))), var_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f * -332f));
    var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, var_0, var_1.x, var_2) - vec4<f32>(-926f, 2274f, var_2, var_0))))), _wgslsmith_f_op_vec4_f32(func_1(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.b.x))));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(u_input.b, ~_wgslsmith_sub_vec3_u32(vec3<u32>(38580u, 62820u, u_input.b.x), u_input.b), vec3<u32>(~u_input.b.x, 0u, 20799u)), vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1984f + 347f))))), func_2(), u_input.a.yy);
}

