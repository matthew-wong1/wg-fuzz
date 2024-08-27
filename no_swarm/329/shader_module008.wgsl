struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.d.x;
    let var_1 = ~(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(21026i, 1i, u_input.d.x)), reverseBits(vec3<i32>(2147483647i, var_0, 0i))), abs(u_input.b.wyy)) >> (u_input.a.wwx % vec3<u32>(32u)));
    global0 = !(u_input.b.x < ~0i);
    var var_2 = Struct_1(_wgslsmith_mod_u32(~u_input.c, arg_0.x) | arg_3.a);
    global0 = arg_1.x;
    return ~(~(u_input.e.x ^ reverseBits(min(var_2.a, arg_3.a))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_1(1u | ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 39307u), u_input.e.x));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(select(~(~u_input.e), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, var_0.a), u_input.a.x), false), u_input.a.wy, vec2<u32>(_wgslsmith_mult_u32(4294967295u, func_2(vec2<u32>(1u, 107160u), vec3<bool>(false, true, arg_0), u_input.b.x, Struct_1(4294967295u))), var_0.a));
    global0 = !arg_0;
    let var_2 = Struct_1(~_wgslsmith_add_u32(67009u, _wgslsmith_dot_vec2_u32(~u_input.a.yz, ~vec2<u32>(0u, 46477u))));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(-1754f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(283f, -246f)) - 2143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec4<i32> {
    global0 = 3724i >= u_input.d.x;
    global0 = true;
    let var_0 = ~firstTrailingBit(~(~u_input.d.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-970f, 518f))))), -981f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, var_1.x, 184f, var_1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1019f, var_1.x, var_1.x, var_1.x))), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1728f, 499f, var_1.x, var_1.x))), vec4<f32>(var_1.x, 284f, -1504f, -125f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(936f - var_1.x), var_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x)));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(u_input.b) ^ select(u_input.b, u_input.b, vec4<bool>(true, true, true, true)), u_input.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1883f, -1071f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, -1000f, 664f) - vec3<f32>(-877f, 849f, -1358f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(400f + -1000f), -343f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1481f, 795f, 640f), vec3<f32>(-1345f, 610f, 2628f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, 628f, -2071f) * vec3<f32>(-1640f, -863f, 812f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1620f + -443f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-212f + -524f), _wgslsmith_div_f32(-369f, -1010f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_1(false)), -1000f, _wgslsmith_f_op_f32(select(-462f, 1630f, true))))))));
    let var_1 = 1i;
    global0 = !((~abs(u_input.e.x) ^ _wgslsmith_div_u32(50614u, 4294967295u)) >= u_input.c);
    var var_2 = Struct_1(u_input.e.x);
    var var_3 = Struct_1(var_2.a);
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1, 1i, _wgslsmith_add_i32(-46504i, u_input.b.x), 20681i), vec4<i32>(~2147483647i, u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-1i, 1i, var_1, 1i))), abs(func_3(Struct_2(Struct_1(u_input.a.x)), vec2<u32>(u_input.c, var_3.a), u_input.b.x))), 26361i));
}

