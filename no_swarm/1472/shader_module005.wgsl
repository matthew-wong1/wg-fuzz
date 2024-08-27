struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<i32> = vec2<i32>(-27510i, 1i);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1464f, 1741f, 659f), vec3<f32>(1844f, 834f, -720f), vec3<f32>(341f, -1036f, -1230f), vec3<f32>(-1745f, 875f, 550f), vec3<f32>(-465f, -661f, 2755f), vec3<f32>(436f, -1216f, 1111f), vec3<f32>(-197f, 948f, 1411f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1028f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -947f))))));
    var_0 = _wgslsmith_f_op_f32(ceil(global0.x));
    var var_1 = ~reverseBits(_wgslsmith_mult_i32(global1.x, max(global1.x, -1i)));
    var var_2 = abs(u_input.b.x);
    var_2 = u_input.b.x;
    return _wgslsmith_mod_u32(min(abs(20623u), max(~select(u_input.c.x, 1u, false), reverseBits(16703u) | (u_input.c.x & 21880u))), 25961u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * 1795f)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, -1098f, global0.x, -1988f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, global0.x, -932f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 430f, 181f, 329f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-510f, global0.x, 823f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(1271f, global0.x, global0.x, global0.x), vec4<f32>(1830f, global0.x, 736f, global0.x))))))));
    global1 = vec2<i32>(global1.x, global1.x);
    var var_1 = _wgslsmith_f_op_f32(-148f - 735f);
    var var_2 = max(abs(u_input.e.x) ^ 1u, func_1(global0.x, select(!vec4<bool>(false, true, true, global2.x), vec4<bool>(true, !global2.x, true, false), !vec4<bool>(global2.x, true, global2.x, global2.x))));
    var var_3 = global0.zxw;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~u_input.b.x, ~(~u_input.c.x), 63926u), global0.wwy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, -541f, global0.x, 905f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(step(var_3.x, global0.x)), 540f, var_3.x))), u_input.e.x);
}

