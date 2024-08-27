struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    global1 = array<vec2<i32>, 1>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-713f, 1305f, -2134f, -911f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-252f, -955f, 153f, -222f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1235f)), -662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)), _wgslsmith_f_op_f32(-1f)))));
    global1 = array<vec2<i32>, 1>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return -787f;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    global1 = array<vec2<i32>, 1>();
    var var_0 = u_input.e.zxw;
    global0 = array<Struct_2, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(242f, _wgslsmith_f_op_f32(func_2())), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 992f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-230f, 458f))))))));
    var var_2 = vec2<bool>(any(vec2<bool>(any(vec3<bool>(true, true, true)) || true, u_input.a > (u_input.d.x ^ 32761i))), false);
    return var_1.x;
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(select(vec4<bool>(true, all(vec2<bool>(false, arg_0.d)) & true, true, true), vec4<bool>(arg_0.b.c > arg_0.b.c, arg_0.b.b.x, any(arg_0.a), !any(arg_0.a.zwx)), select(select(vec4<bool>(arg_0.d, true, true, false), !vec4<bool>(true, arg_0.d, arg_0.d, arg_0.b.b.x), !vec4<bool>(false, arg_0.a.x, true, true)), vec4<bool>(true, true, arg_0.a.x | arg_0.b.b.x, arg_0.b.b.x), arg_0.a)), arg_0.b, 17320u, false);
    var var_1 = select(vec2<bool>(true, arg_0.a.x), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), arg_0.b.b)), true), !var_0.d);
    var var_2 = Struct_1(u_input.a, select(vec2<bool>(true, arg_0.b.b.x), vec2<bool>(all(var_0.a), var_1.x), select(select(vec2<bool>(arg_0.d, true), arg_0.a.zw, var_0.a.xw), !select(vec2<bool>(arg_0.a.x, var_0.d), var_0.b.b, var_0.b.b), select(vec2<bool>(arg_0.d, true), arg_0.a.yz, all(var_0.a.zwz)))), arg_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d.x, 1075f, 390f)) * vec3<f32>(1373f, -1237f, 1568f)) + var_0.b.d)));
    var_1 = !(!vec2<bool>(var_0.a.x & !var_1.x, all(vec3<bool>(var_1.x, false, false))));
    let var_3 = -vec3<i32>(_wgslsmith_sub_i32(~arg_0.b.a, reverseBits(-37679i)) ^ _wgslsmith_clamp_i32(countOneBits(-2147483647i), _wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_mod_i32(var_0.b.a, arg_0.b.a)), arg_0.b.a, 20090i);
    return arg_0.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.d.x, 0i, 3504i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), ~vec4<i32>(-19364i, -8905i, 1i, -6444i))), vec2<bool>(true, true), _wgslsmith_f_op_f32(func_1(~abs(u_input.c.x), _wgslsmith_mult_u32(max(u_input.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 19783u, 53490u), u_input.e.xyy)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global0[_wgslsmith_index_u32(u_input.c.x, 25u)])) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(368f, 112f, 1000f)))))))));
    var var_1 = -443f;
    let var_2 = var_0;
    var var_3 = abs(u_input.e.wxw);
    let var_4 = var_2.b;
    var var_5 = 364f;
    var_1 = 615f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_2.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(331f, 1251f, var_2.d.x))), var_0.b.x & var_2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c, -2053f, var_4.x)), _wgslsmith_f_op_f32(floor(-280f)), 1722f), true))), var_3.x, ~(u_input.e.x ^ ~(~4294967295u)), vec3<i32>(-1i) * -vec3<i32>(var_0.a << (u_input.b.x % 32u), -2147483647i, 0i), 1u);
}

