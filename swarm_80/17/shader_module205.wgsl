struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-862f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.b, _wgslsmith_add_vec4_i32(~u_input.b, vec4<i32>(u_input.b.x, -1i, 0i, 2147483647i)), select(true & all(select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.c, 2u)], vec2<bool>(false, false))), true, true && (-6026i > (u_input.a.x & u_input.a.x))));
    global1 = array<vec2<bool>, 2>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1515f)))))));
    var var_2 = abs(~abs(~vec3<u32>(88994u, 60793u, u_input.c)));
    var var_3 = -296f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b.x, -12948i, var_0.x), firstLeadingBit(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -2272i))), _wgslsmith_f_op_f32(select(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2.xy, vec4<bool>(true, true, false, true), u_input.b.x)) * _wgslsmith_f_op_f32(-938f * 505f))), true != (min(2147483647i, u_input.b.x) > _wgslsmith_mod_i32(u_input.b.x, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1570f)), _wgslsmith_f_op_f32(f32(-1f) * -1364f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f - -599f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2059f, 1000f), -723f, true)) + _wgslsmith_f_op_f32(-460f - _wgslsmith_div_f32(855f, -310f))), _wgslsmith_f_op_f32(-2195f * 455f)), _wgslsmith_dot_vec4_i32(u_input.b, ~abs(abs(u_input.b))));
}

