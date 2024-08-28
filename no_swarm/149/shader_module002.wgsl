struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<f32>(-123f, 1428f, -734f), 0i), Struct_3(vec3<f32>(613f, -116f, 583f), 2147483647i), Struct_3(vec3<f32>(283f, 1497f, 357f), 21687i), Struct_3(vec3<f32>(-262f, -484f, 389f), -28636i), Struct_3(vec3<f32>(-360f, 921f, 399f), 6570i), Struct_3(vec3<f32>(1107f, -474f, 1000f), -1i), Struct_3(vec3<f32>(801f, -1797f, 634f), 41193i), Struct_3(vec3<f32>(-439f, -380f, -1000f), -66364i), Struct_3(vec3<f32>(1000f, 1000f, -1047f), 11453i), Struct_3(vec3<f32>(-1374f, -309f, -1000f), 42251i), Struct_3(vec3<f32>(-860f, 1176f, 902f), -12714i), Struct_3(vec3<f32>(698f, -2522f, 167f), -1i), Struct_3(vec3<f32>(1229f, -1833f, -1241f), 13875i), Struct_3(vec3<f32>(1318f, -1137f, 352f), 0i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(step(536f, _wgslsmith_f_op_f32(-2193f + -619f)))), 106f, _wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(f32(-1f) * -103f));
    var var_1 = ~(~(~2147483647i));
    var var_2 = Struct_2(~(-13115i), -1000f, ~_wgslsmith_mult_i32(20850i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, -37088i), -21144i << (u_input.a % 32u))), firstTrailingBit(reverseBits(48935i)));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(1613f, _wgslsmith_f_op_f32(select(var_0.x, -821f, false))))), select(var_2.c, countOneBits(var_2.d), any(vec2<bool>(true, true))) ^ -3717i);
    global0 = array<Struct_3, 14>();
    return vec2<i32>(0i, var_2.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = max(~_wgslsmith_mult_vec2_i32(max(~vec2<i32>(arg_2, arg_2), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, -33071i), vec2<i32>(-1i, 5519i))), ~vec2<i32>(arg_2, 0i)), _wgslsmith_div_vec2_i32(abs(func_3()), vec2<i32>(~arg_2, countOneBits(-1i)) | abs(vec2<i32>(arg_2, 32477i))));
    let var_1 = Struct_3(vec3<f32>(758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2087f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(118f))) - _wgslsmith_f_op_f32(f32(-1f) * -1504f))), arg_2);
    let var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a - var_1.a), var_2, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u) << (select(countOneBits(vec3<u32>(1u, 52957u, u_input.a)), vec3<u32>(8128u, 5365u, 1u), true) % vec3<u32>(32u)), vec3<u32>(0u, _wgslsmith_mult_u32(arg_0.x, u_input.a), ~61719u) | ~vec3<u32>(arg_0.x, arg_0.x, 0u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(4294967295u, 18236u, 22273u, 93550u), _wgslsmith_div_vec4_u32(vec4<u32>(35814u, 32047u, arg_0.x, 1u), vec4<u32>(u_input.a, arg_0.x, 10410u, 4294967295u))), arg_0.x, ~_wgslsmith_add_u32(36565u, 4750u)) ^ vec3<u32>(abs(1u), firstTrailingBit(u_input.a), 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.a.x))))), var_1.a.x));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(~0i, var_0.x)), var_0.x);
    return all(vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(all(vec4<bool>(arg_1, false, arg_3, false)), arg_1 || var_2, any(vec4<bool>(var_3.b, true, var_2, arg_3)), true)), var_1.b >= ~(-1i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> vec3<bool> {
    return vec3<bool>(false, true, func_2(vec2<u32>(u_input.a, ~_wgslsmith_div_u32(1u, u_input.a)), all(vec3<bool>(true, true, true)) | all(vec2<bool>(true, false)), -2147483647i, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(any(vec3<bool>(true, true, true)), true || any(vec3<bool>(true, false, true))));
    var_0 = !vec2<bool>(all(func_1(countOneBits(vec3<i32>(-1i, -2147483647i, 2147483647i)), 1i)), all(!func_1(vec3<i32>(-1i, 33272i, -2147483647i), -12212i)));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(abs(~1u), 14u)], Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-777f, -115f, -538f), vec3<f32>(-935f, -689f, -216f), !vec3<bool>(var_0.x, var_0.x, var_0.x))))), !func_2(vec2<u32>(u_input.a, u_input.a), true, -16736i, var_0.x), ~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(12420u, 4294967295u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(62633u, u_input.a, u_input.a)), abs(vec3<u32>(4294967295u, u_input.a, u_input.a))), ~(~(~vec3<u32>(0u, u_input.a, 0u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f * 250f)), _wgslsmith_f_op_f32(-257f + _wgslsmith_f_op_f32(f32(-1f) * -714f)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(573f)), 1f)))));
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-196f, var_1.a.a.x, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 609f)) * _wgslsmith_f_op_f32(var_2 + -2235f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2503f, _wgslsmith_f_op_f32(-var_2)))), 569f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1077f, _wgslsmith_f_op_f32(-var_1.b.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(488f, -872f) + var_2)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.a.a.x, -182f, _wgslsmith_f_op_f32(-var_1.b.e.x)));
}

