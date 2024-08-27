struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = -4318i;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = var_0;
    return 4294967295u & u_input.a.x;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1000f));
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(4294967295u, u_input.a.x)), 18u)];
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 18u)];
    var var_3 = _wgslsmith_div_i32(_wgslsmith_mult_i32(var_2.d.x, ~select(max(var_2.d.x, 0i), ~65728i, false)), var_2.d.x);
    global0 = array<Struct_1, 18>();
    return var_1.d.x;
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(vec3<bool>(select(arg_0.a.x, arg_0.a.x, false), 333f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1799f))), false), -func_3(vec4<bool>(all(arg_0.a), true, true, arg_0.a.x)), u_input.a, select(-_wgslsmith_div_vec3_i32(max(arg_0.d, arg_0.d), arg_0.d), vec3<i32>(-arg_0.d.x, arg_0.b, -abs(0i)), !(!arg_0.a)));
    var var_1 = arg_0.c.x;
    global0 = array<Struct_1, 18>();
    let var_2 = global0[_wgslsmith_index_u32(abs(0u), 18u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1009f, 1567f) + vec2<f32>(-589f, 151f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1092f, -1543f), _wgslsmith_div_vec2_f32(vec2<f32>(-947f, 729f), vec2<f32>(1622f, 223f)), select(vec2<bool>(var_0.a.x, var_2.a.x), var_2.a.yy, false))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(744f - _wgslsmith_f_op_f32(1000f + -973f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1353f, -2047f)))))));
    return StorageBuffer(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_1 = -2147483647i;
    let var_2 = 1u < _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.c.x ^ 35337u, func_1()), u_input.a.x);
    let x = u_input.a;
    s_output = func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.x & u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, var_0.c.x, var_0.c.x)), 18u)]);
}

