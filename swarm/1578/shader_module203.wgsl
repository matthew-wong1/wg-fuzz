struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<bool> {
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = Struct_1(-1000f);
    var_0 = Struct_1(-688f);
    return !(!vec3<bool>(true, !(arg_0.x | false), arg_0.x & arg_0.x));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))) * _wgslsmith_f_op_f32(arg_0 + arg_0));
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 27u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a, 438f)), _wgslsmith_f_op_f32(max(138f, -852f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1359f, 818f)), arg_0)))), var_1.b);
    return _wgslsmith_add_i32(u_input.a.x, u_input.a.x);
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(295f, -1490f)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(938f + -156f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-580f, -510f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1577f, -847f)), -1000f)), any(func_2(vec2<bool>(true, false), vec3<i32>(u_input.e.x, u_input.a.x, 9672i))))));
    let var_1 = -_wgslsmith_mod_i32(~abs(_wgslsmith_sub_i32(u_input.e.x, 48335i)), abs(firstTrailingBit(-u_input.a.x)));
    global0 = array<Struct_2, 27>();
    var var_2 = all(vec2<bool>(true, var_0));
    var var_3 = u_input.a.x;
    return abs(~vec4<i32>((u_input.a.x >> (4294967295u % 32u)) << (~0u % 32u), func_3(_wgslsmith_f_op_f32(sign(1000f))), var_1, ~reverseBits(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(vec4<u32>(u_input.c.x, 0u, 13821u, 48559u) >> (~(~u_input.c) % vec4<u32>(32u))));
    global0 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.d, var_0.x, 9130u), u_input.b, vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.d, 1u, u_input.b.x))), ~vec3<u32>(30421u, 0u, 31171u) >> (max(vec3<u32>(u_input.b.x, 44064u, u_input.b.x), vec3<u32>(62655u, 25994u, var_0.x)) % vec3<u32>(32u))) | _wgslsmith_clamp_u32(u_input.d, 4294967295u, var_0.x));
    let var_2 = ~_wgslsmith_add_vec2_u32(var_0.yx, var_0.yz) & u_input.b.zx;
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f)));
}

