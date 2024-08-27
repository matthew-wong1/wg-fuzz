struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: array<vec3<bool>, 1>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    global1 = array<vec3<bool>, 1>();
    let var_0 = vec2<i32>(-16473i, u_input.b);
    global0 = array<vec4<bool>, 1>();
    let var_1 = Struct_2(~_wgslsmith_mod_i32(var_0.x | u_input.b, 1i) >> (~(53347u << (~u_input.a % 32u)) % 32u), Struct_1(0i > _wgslsmith_div_i32(i32(-1i) * -27798i, u_input.b), -226f), Struct_1(!(~3335u < (u_input.a ^ 69519u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-660f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2092f + -684f) + 541f))), Struct_1(!(_wgslsmith_f_op_f32(ceil(-682f)) > _wgslsmith_f_op_f32(f32(-1f) * -1243f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f - -616f) - _wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(step(765f, -954f)))));
    let var_2 = vec2<i32>(0i, u_input.b);
    return ~1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<f32>(arg_1.x, 1663f);
    var var_1 = abs(max(reverseBits(func_3()), ~_wgslsmith_sub_u32(17387u, u_input.a << (0u % 32u))));
    global1 = array<vec3<bool>, 1>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1451f)));
    global1 = array<vec3<bool>, 1>();
    return Struct_1(_wgslsmith_f_op_f32(-var_2) >= 1239f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + arg_1.x) - _wgslsmith_div_f32(arg_1.x, 1440f))))));
}

fn func_1() -> i32 {
    global1 = array<vec3<bool>, 1>();
    global1 = array<vec3<bool>, 1>();
    let var_0 = _wgslsmith_sub_u32(123435u, u_input.a);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, -308f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2922f, 1096f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-118f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -302f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(910f, 452f))))));
    var var_2 = func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(26896i, 1i, -2147483647i, u_input.b), false), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, u_input.b, -2022i))), ~(vec4<i32>(7362i, u_input.b, u_input.b, 0i) ^ vec4<i32>(u_input.b, 2147483647i, 1i, 1i))), firstLeadingBit(reverseBits(vec4<i32>(-1230i, -1i, 16554i, u_input.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.a)))), var_1.a));
    return _wgslsmith_mod_i32(1i, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -797f), vec2<f32>(2238f, -1618f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(164f, 1321f) + vec2<f32>(-1177f, 740f))), vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2082f + -1203f), var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), 586f))));
    var var_3 = -1i;
    var var_4 = Struct_2(i32(-1i) * -(~(i32(-1i) * -39657i)), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) + 762f))), Struct_1(any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1000f)))), Struct_1(select(true, true || all(global1[_wgslsmith_index_u32(u_input.a, 1u)]), true), _wgslsmith_f_op_f32(f32(-1f) * -526f)));
    var var_5 = _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(func_2(~vec4<i32>(1i, var_4.a, 13364i, var_4.a), _wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_1.x, var_1.x))).b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2983f - var_4.d.b)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_1.x, 1f, _wgslsmith_f_op_f32(-854f + 1143f))))));
    var var_6 = _wgslsmith_f_op_f32(-var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))), 145f), ~_wgslsmith_dot_vec2_u32(min(~vec2<u32>(58382u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.a, ~11467u)));
}

