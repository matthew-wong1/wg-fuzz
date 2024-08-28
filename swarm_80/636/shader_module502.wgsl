struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 398f;

var<private> global1: array<f32, 1> = array<f32, 1>(-2503f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> Struct_1 {
    let var_0 = -738f;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(min(-1210f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(304f, 829f, false)), _wgslsmith_f_op_f32(var_0 * -112f)))))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))));
    var var_1 = 3340i;
    global1 = array<f32, 1>();
    var_1 = -_wgslsmith_sub_i32(u_input.a.x, -select(select(u_input.a.x, 0i, false), abs(u_input.a.x), any(vec2<bool>(false, true))));
    return Struct_1(_wgslsmith_mod_vec2_i32(u_input.a.xy, -firstLeadingBit(reverseBits(u_input.a.yz))), 1u, ~vec3<u32>(1u, 1u, 1u));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = vec2<f32>(global1[_wgslsmith_index_u32(~(~1u), 1u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 1u)])))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(507f, 246f))))));
    let var_1 = select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(37678u, 11669u) >> (firstLeadingBit(vec2<u32>(66054u, 4294967295u)) % vec2<u32>(32u)), max(~vec2<u32>(8156u, 45953u), ~vec2<u32>(0u, 69347u)), vec2<u32>(9917u, 1u)) << (vec2<u32>(firstLeadingBit(~13064u), 1u) % vec2<u32>(32u)), max(vec2<u32>(_wgslsmith_sub_u32(~33685u, firstTrailingBit(5442u)), ~(~27972u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u))), !vec2<bool>(u_input.a.x != -6751i, true));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 4294967295u), vec3<u32>(110891u, 0u, var_1.x))), 1u)])))));
    let var_4 = vec3<bool>(true, any(vec2<bool>(!all(vec2<bool>(false, true)), true)), select(-29723i != ~abs(u_input.a.x), true, true));
    return ~var_1;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(150f)))) * -702f)));
    global1 = array<f32, 1>();
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(57779u, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c.xz, vec2<u32>(arg_0.c.x, 4294967295u)), func_3(-155f)), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.c.x >> (4294967295u % 32u), 1u)])))));
    global0 = global1[_wgslsmith_index_u32(select(abs(_wgslsmith_mod_u32(min(~arg_0.b, reverseBits(14833u)), 3826u)), firstLeadingBit(~arg_0.c.x), select(false, true, all(vec4<bool>(true, true, true, true))) & all(vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, true)), true))), 1u)];
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_1().c.x, 1u)] + _wgslsmith_f_op_f32(387f + -649f));
    return arg_0.c;
}

fn func_4(arg_0: Struct_4) -> bool {
    global1 = array<f32, 1>();
    global0 = -919f;
    global0 = 996f;
    var var_0 = Struct_3(-123f, arg_0.a.x ^ firstTrailingBit(1u), ~vec3<u32>(arg_0.d.x, 26765u | arg_0.a.x, min(4294967295u, arg_0.e.x & arg_0.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec2<bool>(false, false))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(!all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(13198u, 0u), vec2<u32>(4294967295u, 0u)), 1u) >= _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(67100u, 39640u)), ~4294967295u), func_4(Struct_4(func_2(func_1()), abs(abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, u_input.a.x))), select(select(vec4<i32>(u_input.a.x, -2147483647i, 1i, 10899i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), true), ~vec4<i32>(-2147483647i, 25982i, u_input.a.x, -7915i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), vec2<u32>(~4294967295u, ~33969u), vec2<u32>(1u, 1u))), true);
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    var var_1 = u_input.a.x;
    var_1 = firstLeadingBit(~max(u_input.a.x, firstTrailingBit(u_input.a.x)) << (4294967295u % 32u));
    var var_2 = Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), 39190u, vec3<u32>(~(~0u), _wgslsmith_mod_u32(71832u, 12584u), 0u));
    global1 = array<f32, 1>();
    let var_3 = Struct_1(u_input.a.xx, 1u, vec3<u32>(~var_2.b, 4294967295u, _wgslsmith_sub_u32(~firstLeadingBit(var_2.c.x), ~(~var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_3.c.x, 1u)])), _wgslsmith_f_op_f32(-830f * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_3.c.x, 1u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 1u)], 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(366f, global1[_wgslsmith_index_u32(1u, 1u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1568f, 299f)))))), u_input.a.x, u_input.a, vec2<i32>(i32(-1i) * -1i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, u_input.a.x, 37604i), ~u_input.a))));
}

