struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(~u_input.d.x)), 4u)], global0[_wgslsmith_index_u32(52409u, 4u)], vec4<bool>(any(vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), any(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true)), select(true, all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), select(true, true, any(vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1323f, -1648f)), var_0.a.c, -1749f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x) - 670f))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(-117f)), var_0.a.c, var_0.b.c, 875f);
    var var_2 = var_0;
    return select(!vec3<bool>(true, var_2.c.x, !var_2.c.x), !(!(!vec3<bool>(var_2.c.x, var_2.c.x, true))), var_2.c.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> f32 {
    global0 = array<Struct_1, 4>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c * -1232f) + _wgslsmith_f_op_f32(floor(arg_0.b.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1675f), 1049f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c * arg_0.b.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)) + _wgslsmith_f_op_f32(-708f * _wgslsmith_f_op_f32(select(440f, arg_0.b.b.x, true))))), arg_0.b.b.x);
    var var_1 = vec3<bool>(true, false, select(firstLeadingBit(~u_input.d.x) > max(~4294967295u, u_input.a), false, any(!(!arg_0.c.ww))));
    let var_2 = arg_0.a;
    var_1 = func_3(_wgslsmith_mult_u32(1u, ~22117u));
    return var_2.b.x;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = firstTrailingBit(~_wgslsmith_clamp_vec2_i32(min(~vec2<i32>(u_input.b, -9279i), arg_1.xy), ~vec2<i32>(arg_1.x, u_input.e.x), vec2<i32>(u_input.e.x, u_input.b)));
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_0, 4u)], Struct_1(vec4<i32>(~54608i & var_0.x, var_0.x, arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), _wgslsmith_sub_vec2_i32(var_0, vec2<i32>(-16599i, 54002i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<i32>(19628i, arg_1.x, u_input.b, 44564i), vec4<f32>(-1000f, 343f, 383f, 1180f), 856f, -14910i), global0[_wgslsmith_index_u32(0u, 4u)], vec4<bool>(true, true, false, true)), -2147483647i)) * _wgslsmith_f_op_f32(max(907f, 1048f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-101f + 339f), 121f), -2193f, _wgslsmith_f_op_f32(abs(-1734f))), 365f, 0i), vec4<bool>(any(vec2<bool>(true, true)) & any(vec4<bool>(true, true, true, true)), true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, false))), false));
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(vec4<i32>(-17205i, ~arg_1.x, 2147483647i, arg_1.x), vec4<f32>(1692f, _wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.b.c))))), 1692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_1.a.a, var_1.b.b, var_1.b.b.x, 1i), Struct_1(vec4<i32>(var_0.x, -68084i, -2147483647i, var_1.a.a.x), vec4<f32>(var_1.b.c, 193f, var_1.b.b.x, var_1.a.b.x), var_1.a.c, -1i), var_1.c), min(-2147483647i, 16624i))))), var_1.b.b.x, 0i);
    return vec4<i32>(_wgslsmith_mod_i32(-arg_1.x, arg_1.x), -16294i, -55367i, -(i32(-1i) * -var_1.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = 2026f;
    var var_1 = Struct_2(Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 53741i, u_input.b), vec4<i32>(u_input.b, u_input.e.x, u_input.b, u_input.b)) ^ func_1(u_input.a, vec3<i32>(33991i, u_input.e.x, u_input.e.x))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1822f, -341f))), u_input.e.x), global0[_wgslsmith_index_u32(u_input.d.x, 4u)], !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), false)));
    let var_2 = -501f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_1.a.b, vec4<f32>(var_1.a.b.x, var_1.a.c, var_2, var_2))))), var_1.b.b, var_1.c))), var_2, ~(~(~vec3<u32>(u_input.a, 0u, u_input.c.x)) & _wgslsmith_div_vec3_u32(min(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(15740u, u_input.d.x, u_input.c.x)), select(vec3<u32>(52648u, u_input.a, 30197u), vec3<u32>(u_input.c.x, u_input.d.x, u_input.a), vec3<bool>(false, false, true)))), var_1.a.b, abs(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x) >> (u_input.c % vec2<u32>(32u)), u_input.c))));
}

