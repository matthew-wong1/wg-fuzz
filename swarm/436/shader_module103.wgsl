struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = ~(i32(-1i) * -_wgslsmith_mult_i32(u_input.b, u_input.b >> (arg_1.a % 32u)));
    let var_1 = _wgslsmith_add_i32(-u_input.b, u_input.b);
    let var_2 = u_input.c;
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return i32(-1i) * -2147483647i;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = array<bool, 25>();
    let var_0 = Struct_1(~u_input.c.x, u_input.c.x);
    return vec4<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(35077u, 25u)]), global0[_wgslsmith_index_u32(var_0.a, 25u)]))), global0[_wgslsmith_index_u32(~29866u, 25u)], false), global0[_wgslsmith_index_u32(~u_input.c.x, 25u)], false, false);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = all(!func_3(_wgslsmith_sub_i32(select(2147483647i, u_input.b, global0[_wgslsmith_index_u32(arg_0, 25u)]), func_2(global0[_wgslsmith_index_u32(4294967295u, 25u)], Struct_1(u_input.a.x, u_input.c.x), Struct_1(0u, arg_0))), -firstTrailingBit(vec4<i32>(43446i, u_input.b, 0i, u_input.b)), vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), -u_input.b)));
    return -u_input.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = u_input.b ^ arg_0.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(-2417f * 2159f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-257f)), 1f));
    let var_2 = var_1.x;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(-1i);
    var_0 = abs(-firstTrailingBit(u_input.b));
    var_0 = i32(-1i) * -(u_input.b ^ ~max(-2147483647i, 26235i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), 890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1269f, -1070f)) - 553f), 365f));
    var_0 = ~func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(u_input.b), 1i), abs(vec2<i32>(u_input.b, 0i))), ~func_1(abs(u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-209f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1752f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))))), countOneBits(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -2147483647i, -1i)) & (vec3<i32>(0i, u_input.b, -u_input.b) | vec3<i32>(-u_input.b, u_input.b, func_2(true, Struct_1(0u, u_input.a.x), Struct_1(u_input.a.x, u_input.c.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1496f))))))), u_input.b >> (~u_input.a.x % 32u));
}

