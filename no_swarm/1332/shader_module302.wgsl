struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<Struct_1, 24>();
    return abs(u_input.e);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> bool {
    let var_0 = countOneBits(func_3(Struct_1(arg_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1305f, arg_1.x, arg_1.x, -1131f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, arg_1.x, arg_1.x, -538f) + vec4<f32>(-603f, arg_1.x, 666f, 1000f))), vec4<bool>(false, false, true, true), abs(vec2<i32>(-2147483647i, 2147483647i))), 4294967295u));
    let var_1 = u_input.b.x;
    var var_2 = 416f;
    let var_3 = vec3<u32>(124047u, var_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1 ^ 0u, 1u, ~49875u, ~29042u), ~vec4<u32>(4294967295u, 16263u, 0u, var_1)));
    let var_4 = vec3<f32>(-324f, arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - 212f), _wgslsmith_f_op_f32(exp2(arg_1.x)), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(round(-1540f))))));
    return any(vec2<bool>(1u != var_1, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(1625f, -371f);
    let var_1 = countOneBits(vec2<u32>(~_wgslsmith_div_u32(u_input.c.x, 4294967295u) & ~19478u, abs(72451u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.x + 297f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) * arg_3.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, 367f, -1446f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.c.x, arg_2.a.b.x, -1000f, -1300f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-361f)), _wgslsmith_f_op_f32(-arg_2.a.a), _wgslsmith_div_f32(502f, arg_3.x), _wgslsmith_f_op_f32(-arg_3.x))), select(arg_2.a.c, !vec4<bool>(arg_2.c.b.c.x, false, true, arg_0.x), !vec4<bool>(arg_2.c.b.c.x, true, true, arg_0.x)))));
    let var_3 = ~(~_wgslsmith_add_vec4_u32(select(~u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 29054u, 0u), !arg_2.c.b.c), countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 48417u, var_1.x))));
    return ~abs(vec3<i32>(arg_2.a.d.x, u_input.e, arg_2.c.b.d.x));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = ~vec3<i32>(i32(-1i) * -22817i, _wgslsmith_clamp_i32(27953i & u_input.d, -36866i, u_input.e), countOneBits(~58827i));
    global0 = array<Struct_1, 24>();
    var_0 = func_4(!select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0), vec3<bool>(arg_0, all(vec3<bool>(false, true, arg_0)), func_2(u_input.b.x, vec2<f32>(1448f, -559f))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-945f, _wgslsmith_f_op_f32(select(-286f, _wgslsmith_f_op_f32(select(-1175f, 863f, false)), all(vec2<bool>(arg_0, false))))))), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(23162u, reverseBits(u_input.c.x)), 24u)], u_input.b.x >= ~select(u_input.c.x, u_input.c.x, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1272f, -1087f)), Struct_1(_wgslsmith_f_op_f32(trunc(-212f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1244f, 1561f, 247f, -794f))), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)), _wgslsmith_sub_vec2_i32(var_0.xy, vec2<i32>(-2147483647i, -558i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, 1250f, -458f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, 295f, -547f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -345f))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -265f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -686f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1276f)), -404f))) >= 373f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(select(true, true, false)) || true);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(784f + 182f), _wgslsmith_f_op_f32(-958f * 327f))))));
    let var_2 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.x)))))), var_1.x));
    var var_3 = Struct_1(-1419f, vec4<f32>(636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) + _wgslsmith_div_f32(var_2.x, var_2.x)), var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_2.x)))), vec4<bool>(u_input.b.x <= select(0u, 1u, var_0), _wgslsmith_f_op_f32(round(1000f)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(403f, -1202f) * _wgslsmith_f_op_f32(ceil(324f))), false, true), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 22760i) << (~u_input.b.zw % vec2<u32>(32u)), (vec2<i32>(u_input.e, u_input.e) << (u_input.b.xy % vec2<u32>(32u))) & vec2<i32>(2147483647i, -1i)), func_4(!vec3<bool>(var_0, false, true), _wgslsmith_f_op_f32(-var_1.x), Struct_3(Struct_1(var_1.x, vec4<f32>(865f, var_1.x, -288f, var_1.x), vec4<bool>(true, var_0, var_0, true), vec2<i32>(1i, u_input.d)), func_2(u_input.b.x, vec2<f32>(-1148f, 823f)), Struct_2(168f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], var_2)), vec4<f32>(153f, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), -525f)).xy));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 978f))))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 220f))))));
    let var_5 = Struct_2(804f, Struct_1(var_3.a, _wgslsmith_f_op_vec4_f32(-var_3.b), select(select(!vec4<bool>(false, var_0, false, var_0), select(var_3.c, var_3.c, vec4<bool>(var_0, true, true, var_0)), any(vec2<bool>(var_3.c.x, true))), !vec4<bool>(false, true, true, var_0), var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(-17368i, u_input.d), _wgslsmith_add_vec2_i32(var_3.d, vec2<i32>(var_3.d.x, 0i))) & -vec2<i32>(var_3.d.x, -1i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(684f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(1000f, var_3.b.x)), _wgslsmith_f_op_f32(round(var_1.x))))));
    var var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-993f, var_4.x) - _wgslsmith_f_op_f32(-var_2.x)))) != -273f;
    let var_7 = true;
    var var_8 = _wgslsmith_div_f32(955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.b.x) - 1474f))));
    let x = u_input.a;
    s_output = StorageBuffer(-5840i);
}

