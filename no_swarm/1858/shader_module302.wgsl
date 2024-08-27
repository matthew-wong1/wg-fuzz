struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    return Struct_1(arg_0, false, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1 ^ arg_1, 15319u, ~4294967295u, 4294967295u), firstLeadingBit(~(~vec4<u32>(44902u, 11253u, 1u, u_input.a.x)))), arg_2, arg_0 ^ (1i ^ arg_0));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = vec3<bool>(any(vec4<bool>((1u <= u_input.a.x) && select(false, false, false), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), false, !any(vec4<bool>(false, false, true, true)))), any(vec3<bool>(true, !(arg_0.x >= arg_0.x), !all(vec3<bool>(true, false, false)))), max(~arg_0.x, _wgslsmith_sub_i32(arg_0.x, reverseBits(-1i))) == select(arg_0.x >> (56601u % 32u), countOneBits(arg_0.x), true));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, _wgslsmith_div_f32(-1179f, -322f))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, 1000f)));
    var var_1 = select(-vec4<i32>(reverseBits(1i), max(2147483647i, arg_0.x), -arg_0.x, arg_0.x) | _wgslsmith_mult_vec4_i32(arg_0, arg_0), vec4<i32>(arg_0.x, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, arg_0.x))), 0i, countOneBits(~(-1i))), true);
    var_1 = vec4<i32>(abs(16287i), -34492i, _wgslsmith_dot_vec2_i32(abs(arg_0.yy) >> (_wgslsmith_add_vec2_u32(u_input.a | u_input.a, ~vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)), vec2<i32>(-max(arg_0.x, arg_0.x), -62605i)), var_1.x);
    return global0.x;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1641f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, 368f)) + -408f)) - vec2<f32>(-453f, global0.x))));
    let var_1 = func_2(8563i, u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2177f, -550f, var_0.x, -276f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-192f)), global0.x, global0.x, _wgslsmith_div_f32(var_0.x, var_0.x)))));
    var var_2 = _wgslsmith_sub_u32(~firstTrailingBit(~(~4294967295u)), var_1.c);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -947f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-37445i, 0i, 45208i, var_1.a))) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(step(arg_0, -2100f)))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1033f);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-573f - _wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -1179f))), !select(!any(vec3<bool>(false, true, true)), select(true, true, global0.x != -1459f), true)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -693f))), vec2<f32>(-1881f, -798f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2333f, global0.x)))), vec2<f32>(_wgslsmith_f_op_f32(global0.x + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -453f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1000f))) + 1054f), 1470f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(-207f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0.x) * -176f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(809f))))), -1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1848f, -477f) * _wgslsmith_f_op_f32(global0.x - global0.x)), u_input.a.x, 329f);
}

