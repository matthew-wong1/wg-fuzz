struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<bool, 2>();
    var var_0 = vec2<u32>(u_input.b.x, 8675u);
    let var_1 = Struct_2(-69210i << (var_0.x % 32u));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    return Struct_2(u_input.c.x << (~_wgslsmith_clamp_u32(21885u, firstLeadingBit(var_0.x), 1u) % 32u));
}

fn func_1(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = func_2(0i);
    global0 = array<bool, 2>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), -1000f);
    global0 = array<bool, 2>();
    let var_2 = Struct_1(4294967295u);
    return vec4<f32>(var_1, 1f, -784f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(~reverseBits(~(vec3<u32>(18058u, u_input.b.x, u_input.b.x) >> (u_input.b % vec3<u32>(32u)))), u_input.b);
    var var_1 = _wgslsmith_clamp_u32(max(~(~43062u), 1u), 21121u >> (~(_wgslsmith_mod_u32(arg_1.a, var_0.x) >> (abs(u_input.b.x) % 32u)) % 32u), 123u);
    var var_2 = reverseBits(~0i);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, 1109f, false)), 656f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-589f, arg_0), vec2<f32>(617f, arg_0))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -458f), vec2<f32>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(361f, 1908f)))));
    global0 = array<bool, 2>();
    return u_input.a.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = !global0[_wgslsmith_index_u32(1u, 2u)];
    global0 = array<bool, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -1912f);
    let var_3 = arg_3;
    return ~firstLeadingBit(100417u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, 1i, u_input.c.x), vec4<i32>(1i, 4141i, -1i, u_input.a.x)) | ~vec4<i32>(19734i, u_input.c.x, u_input.c.x, -8741i)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, 205f, 901f, -1112f) + vec4<f32>(2210f, -362f, -413f, 202f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, -819f, -1062f, -575f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, -134f, -618f, -890f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -746f, 2252f, -1036f))))))));
    let var_1 = func_2(firstLeadingBit(~u_input.c.x | (0i | u_input.c.x)) << (u_input.b.x % 32u));
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false)), global0[_wgslsmith_index_u32(u_input.b.x, 2u)] == true), true), vec2<bool>(u_input.b.x > ~36309u, true), true);
    let var_4 = vec2<f32>(-499f, _wgslsmith_f_op_f32(exp2(var_0.x)));
    let var_5 = Struct_1((u_input.b.x << (0u % 32u)) >> (func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-470f, -1000f) + vec2<f32>(-347f, var_4.x)) + var_4), func_2(func_3(var_4.x, Struct_1(1449u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1041f, -442f, -1000f) - vec4<f32>(-828f, 167f, var_4.x, 833f)), Struct_1(0u & u_input.b.x)) % 32u));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-527f, -1015f, -min(-reverseBits(-2147483647i), -957i));
}

