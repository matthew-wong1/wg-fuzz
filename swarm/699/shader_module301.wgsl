struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<bool> {
    global1 = array<Struct_1, 2>();
    global2 = array<vec4<u32>, 25>();
    global2 = array<vec4<u32>, 25>();
    let var_0 = 1u;
    return vec2<bool>(true, true);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true)), func_2()), true);
    global2 = array<vec4<u32>, 25>();
    var var_1 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, u_input.a.x), ~u_input.a) | _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~u_input.a.x, i32(-1i) * -1i), ~_wgslsmith_sub_i32(1i, u_input.a.x)), 0i);
    return true || var_0.x;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    global0 = array<Struct_1, 30>();
    let var_0 = 4294967295u;
    var var_1 = ~(~_wgslsmith_sub_u32(1u, var_0)) ^ arg_0.a.b.x;
    let var_2 = ~(~var_0);
    global1 = array<Struct_1, 2>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, false, false), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, false)), true)), true), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), any(vec3<bool>(false, true, func_1(~4294967295u))));
    let var_1 = vec4<u32>(1u, reverseBits(~(~1u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(13180u, 66261u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), vec2<u32>(1u, 7753u)), 1u);
    let var_2 = vec4<bool>(var_0.x, var_0.x, false, !(!any(!var_0.yx)));
    var_0 = var_2.zwx;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1109f, 180f)) - -898f), -1910f, _wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a.x, var_1.wyy, -1012f)), _wgslsmith_f_op_f32(trunc(-1764f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(select(vec3<i32>(-1i, 6983i, u_input.a.x), vec3<i32>(-2147483647i, 25855i, 38567i), var_2.wxw) | firstTrailingBit(vec3<i32>(38054i, -4048i, u_input.a.x))) ^ -min(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(48572i, u_input.a.x, u_input.a.x)), vec4<f32>(var_3.x, 683f, var_3.x, -998f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.a.x, vec3<u32>(var_1.x, var_1.x, var_1.x), var_3.x)), var_3.x)) + _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - _wgslsmith_f_op_f32(trunc(-1046f))), -850f, -965f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-953f, 446f, -150f, -655f)))));
}

