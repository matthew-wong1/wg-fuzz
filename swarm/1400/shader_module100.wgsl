struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 1u, 42860u, 0u, 0u);

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_3(u_input.b, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-761f)), _wgslsmith_f_op_f32(ceil(-1606f)), _wgslsmith_f_op_f32(414f - -1045f), _wgslsmith_f_op_f32(f32(-1f) * -281f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2885f, -2147f, -1533f, -1421f)))), Struct_1(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_mod_u32(7898u, global0[_wgslsmith_index_u32(61552u, 5u)])), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -876f))))), vec3<u32>(u_input.c.x, 34366u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(60313u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], 5u)], 5u)], 1u), vec4<u32>(u_input.c.x, 1657u, global0[_wgslsmith_index_u32(68387u, 5u)], arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, 440f, 1217f, -1165f))))));
    global1 = u_input.b;
    var var_1 = var_0;
    var var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(var_0.c.c.x >> (~global0[_wgslsmith_index_u32(select(1u, ~var_1.c.c.x, true), 5u)] % 32u), 5u)];
    return _wgslsmith_f_op_f32(-var_0.b.a.x);
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = i32(-1i) * -_wgslsmith_add_i32(-_wgslsmith_clamp_i32(u_input.b, -2147483647i, 2147483647i), 1i);
    global0 = array<u32, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(235f, 1481f, -685f, arg_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.c.x)), arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), 928f))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(277f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) - 2612f)), -257f);
    return !vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), 53486i > var_0)), all(vec2<bool>(true, select(false, false, false))), true);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d.x) <= -1000f;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.x)) + arg_1.d.x), _wgslsmith_f_op_f32(sign(803f))) - _wgslsmith_f_op_f32(f32(-1f) * -547f))));
    let var_2 = !select(select(select(func_2(Struct_2(vec4<f32>(-1054f, 295f, var_1, -398f))), vec3<bool>(false, arg_0, true), true), select(vec3<bool>(true, true, arg_0), func_2(Struct_2(arg_1.d)), true), any(vec3<bool>(true, arg_0, false))), !(!(!vec3<bool>(var_0, true, true))), !(!vec3<bool>(false, false, arg_0)));
    var var_3 = var_2;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(1094f)), 688f, 988f, _wgslsmith_f_op_f32(f32(-1f) * -309f))))));
    return _wgslsmith_mult_vec2_u32(~u_input.a << (~vec2<u32>(u_input.a.x, 33880u) % vec2<u32>(32u)), u_input.c.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstLeadingBit(select(vec4<i32>(-2147483647i, -2147483647i, -16472i, 32516i), abs(vec4<i32>(-21161i, u_input.b, 2147483647i, 2147483647i)), 1u != global0[_wgslsmith_index_u32(56801u, 5u)]) ^ abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2712i), vec4<i32>(-2147483647i, 39829i, u_input.b, -5284i), vec4<i32>(u_input.b, u_input.b, -1i, -1i)))));
    global0 = array<u32, 5>();
    var var_1 = ~firstLeadingBit(~firstTrailingBit(max(vec3<i32>(2147483647i, var_0.x, -1i), vec3<i32>(2147483647i, u_input.b, -26891i))));
    let var_2 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1063f), 156f))));
    var var_3 = var_0;
    let var_4 = Struct_1(select(_wgslsmith_sub_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7713u, 5u)], 5u)], ~20149u), ~func_1(true, Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 19961u), vec2<f32>(var_2, -1627f), vec3<u32>(u_input.a.x, 1u, u_input.c.x), vec4<f32>(var_2, var_2, var_2, 358f)), 5574u)), ~vec2<u32>(~4294967295u, _wgslsmith_div_u32(u_input.a.x, 4294967295u)), true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1104f - var_2), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, var_2), -116f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(4294967295u)), _wgslsmith_div_f32(var_2, 1088f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 440f) * vec2<f32>(-744f, var_2))))))), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2, 1000f, 434f), vec4<f32>(var_2, -785f, var_2, var_2)))) - vec4<f32>(-648f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2))), -2058f)));
    var var_5 = Struct_3(-1i, Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_2 + var_2), var_4.b.x, -375f, _wgslsmith_f_op_f32(func_3(u_input.c.x))), vec4<f32>(396f, -424f, _wgslsmith_div_f32(var_2, -1896f), var_4.b.x)))), Struct_1(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x), vec2<f32>(-303f, _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_4.b.x * var_4.d.x))), firstTrailingBit(vec3<u32>(1u, firstLeadingBit(14778u), func_1(true, var_4, var_4.c.x).x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_4.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, var_2, var_4.d.x, -1146f), var_4.d, true)), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 250f, var_2) - _wgslsmith_f_op_vec4_f32(var_4.d + var_4.d)))));
    var_1 = -(~(_wgslsmith_sub_vec3_i32(var_0.xwy, _wgslsmith_clamp_vec3_i32(var_3.xyw, var_3.yxy, vec3<i32>(u_input.b, 0i, var_5.a))) & vec3<i32>(~0i, -39651i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_i32(15644i << (u_input.c.x % 32u), firstLeadingBit(var_0.x)) << (38742u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_5.b.a.wz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4.b.x, var_2))))), _wgslsmith_clamp_vec2_i32(abs(-vec2<i32>(-1i, 1i)) ^ vec2<i32>(1i, _wgslsmith_clamp_i32(2147483647i, var_5.a, -1i)), var_3.xw, max(vec2<i32>(0i, 0i), _wgslsmith_sub_vec2_i32(select(var_1.zy, vec2<i32>(var_1.x, 0i), vec2<bool>(true, true)), var_3.wx))), var_4.b);
}

