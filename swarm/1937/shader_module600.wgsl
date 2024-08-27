struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2040f;

var<private> global1: Struct_1;

var<private> global2: array<i32, 11>;

var<private> global3: bool = true;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, global1.b, arg_0.x))))));
    let var_1 = -abs(abs(vec2<i32>(u_input.c.x, -2147483647i) << (u_input.e % vec2<u32>(32u))));
    var var_2 = Struct_1(select(u_input.e, global1.a, true), var_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f - 730f) * _wgslsmith_f_op_f32(ceil(var_0.x)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b), -823f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), var_0))), u_input.a.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2523f))) * _wgslsmith_f_op_f32(step(-1975f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1527f * var_0.x)))))));
    global3 = !(!(any(vec2<bool>(false, true)) | all(vec3<bool>(false, true, false))) | all(vec2<bool>(all(vec2<bool>(false, false)), false)));
    return -1067f;
}

fn func_2() -> u32 {
    global2 = array<i32, 11>();
    global1 = Struct_1(vec2<u32>(global1.a.x, reverseBits(~global1.a.x)) & ~(~min(global1.a, vec2<u32>(u_input.e.x, u_input.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f)))), global1.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.c, global1.d.x), _wgslsmith_div_f32(global1.c, global1.d.x), any(vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1897f)), _wgslsmith_f_op_f32(sign(global1.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(max(global1.d.x, global1.c)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - -206f))), _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(1u, 10u)])), -646f), ~global1.e);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, -603f) + global1.d.x), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true))));
    let var_1 = Struct_1(~(global1.a << (global1.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -552f), 793f, global4[_wgslsmith_index_u32(select(0u, ~u_input.b, true), 10u)], _wgslsmith_clamp_u32(u_input.e.x, abs(~(~global1.a.x)), ~_wgslsmith_mod_u32(~u_input.b, 48998u)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), var_1.c) - _wgslsmith_f_op_f32(f32(-1f) * -565f)))), all(vec3<bool>(var_0.b | false, false, var_0.b)));
    return var_1.e;
}

fn func_1() -> Struct_3 {
    var var_0 = -400f;
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(global1.e, 4294967295u) << (vec2<u32>(global1.a.x, u_input.a.x) % vec2<u32>(32u))), u_input.e) << (vec2<u32>(~(~0u), ~4294967295u | u_input.a.x) % vec2<u32>(32u)), -305f, 1510f, global4[_wgslsmith_index_u32(func_2(), 10u)], ~0u);
    var var_2 = ~35909u;
    global1 = Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(25220u, 1u, 24326u), var_1.e), global1.a ^ _wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(global1.a.x, u_input.b))), global1.c, _wgslsmith_f_op_f32(f32(-1f) * -905f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + global1.b))), _wgslsmith_f_op_f32(-var_1.c)), min(abs(57010u), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(var_1.e, global1.e), vec2<bool>(true, false)), vec2<u32>(global1.a.x, 1u) & vec2<u32>(41404u, var_1.e))));
    let var_3 = -vec2<i32>(i32(-1i) * -18202i, u_input.c.x);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-238f))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(943f, false);
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(-var_1.a));
    var var_3 = var_1;
    var_3 = func_1();
    global1 = Struct_1(~(vec2<u32>(_wgslsmith_add_u32(42885u, global1.a.x), ~19630u) >> (firstLeadingBit(vec2<u32>(global1.e, 15754u)) % vec2<u32>(32u))), -285f, _wgslsmith_f_op_f32(trunc(var_0.a)), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1878f + var_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 741f)), 267f)), 3241u);
    let var_4 = u_input.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(11332u, _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(100096u, 1u, u_input.b), vec3<u32>(global1.e, global1.a.x, 12172u))), ~(~1u))));
}

