struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: f32 = -365f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    return firstLeadingBit(_wgslsmith_mod_u32(arg_0.x, ~(~(~arg_0.x))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = -604f;
    var var_1 = arg_0 || !(~4294967295u <= ~func_2(vec4<u32>(97154u, 4294967295u, 86437u, 11012u), 561f, Struct_1(vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(38782u, 6u)]), vec4<f32>(var_0, var_0, var_0, 788f), vec4<i32>(u_input.d, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], -3369i))));
    var var_2 = Struct_2(~(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(71869u, 4294967295u, 1u), vec3<u32>(1u, 17491u, 64196u), vec3<bool>(true, false, false)), ~vec3<u32>(0u, 4294967295u, 57u))), Struct_1(u_input.a.xz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1341f, 925f, 296f, 468f) + vec4<f32>(1000f, 1044f, -2014f, var_0)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 910f, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -483f)) - vec4<f32>(704f, var_0, -783f, var_0))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(31277i, 21572i), i32(-1i) * -1926i), 1i, ~max(1i, 73683i), i32(-1i) * -49638i)), all(!(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, arg_0, true, arg_0)))));
    var var_3 = 17279i;
    var_1 = false;
    return Struct_2(_wgslsmith_sub_u32(~abs(var_2.a), var_2.a), Struct_1(var_2.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(559f * var_2.b.b.x), var_2.b.b.x, -1000f, var_0)), u_input.a | _wgslsmith_mod_vec4_i32(var_2.b.c, var_2.b.c)), _wgslsmith_clamp_i32(-u_input.b.x, -1i, var_2.b.a.x) != 2147483647i);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = 1u;
    var var_1 = _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.a.x, _wgslsmith_add_u32(arg_1.a.x, _wgslsmith_clamp_u32(4803u, arg_1.b.a, 4294967295u)))), arg_1.a.yz);
    let var_2 = Struct_3(arg_1.a, func_1(true), true, vec4<f32>(-978f, arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(func_1(false).b.b.x)))), arg_0));
    var_0 = 0u;
    let var_3 = u_input.a;
    return StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(79173u, var_2.a.x, 4294967295u, var_1.x), ~countOneBits(vec4<u32>(29707u, arg_1.a.x, arg_1.a.x, 28587u))), vec4<u32>(40948u, countOneBits(~1u), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.a.x, 4963u), 1u))), -16058i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(680f)), _wgslsmith_f_op_f32(1313f * _wgslsmith_f_op_f32(f32(-1f) * -511f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f - -1443f) - _wgslsmith_f_op_f32(step(-1000f, -1000f)))))));
    let var_0 = countOneBits(-37755i);
    var var_1 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~55538u, 0u), 28468u)), _wgslsmith_sub_u32(reverseBits(54845u), ~1u | _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u)))));
    let var_2 = Struct_2(var_1.x, Struct_1(u_input.a.ww, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(462f, _wgslsmith_f_op_f32(f32(-1f) * -676f), -239f, -1435f), vec4<f32>(_wgslsmith_div_f32(-1000f, 1009f), -348f, 334f, -522f), !all(vec3<bool>(true, true, true)))), -u_input.a), !(!(u_input.d != (global0[_wgslsmith_index_u32(var_1.x, 6u)] >> (var_1.x % 32u)))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.b.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(329f - var_2.b.b.x), _wgslsmith_f_op_f32(-var_2.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<i32, 6>();
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = func_3(-949f, Struct_3(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.a, 4294967295u, 0u), firstLeadingBit(vec3<u32>(50296u, var_2.a, 9227u))), func_1(true), var_2.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.b.x - 751f), func_1(true).b.b.x, -1898f, var_2.b.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.b)))));
}

