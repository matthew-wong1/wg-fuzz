struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = !any(arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1), 1206f);
    var var_3 = Struct_1(_wgslsmith_div_i32(-global1.a, -(-global1.a | -1857i)), _wgslsmith_sub_u32(4294967295u, ~(~global1.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global1.b) ^ arg_0.a, arg_0.a)), true, 10700u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1), -154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) * _wgslsmith_f_op_f32(1547f + global1.e.x))), global1.e)));
    let var_4 = var_3.e.x;
    return !(true || !select(true, global1.c || true, var_0));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_u32(select(reverseBits(vec3<u32>(63882u, 78025u, 1u)) & (vec3<u32>(55387u, 0u, 38691u) ^ vec3<u32>(global1.b, u_input.a.x, global1.b)), _wgslsmith_mod_vec3_u32(~vec3<u32>(28040u, global1.d, global1.b), ~vec3<u32>(99757u, 3698u, 0u)), vec3<bool>(global1.c, true, true)), firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) ^ ((vec3<u32>(global1.b, global1.d, 23071u) ^ vec3<u32>(4294967295u, global1.b, global1.b)) >> (vec3<u32>(0u, global1.b, u_input.a.x) % vec3<u32>(32u)))), !select(vec3<bool>(any(vec4<bool>(global1.c, global1.c, false, global1.c)), true, global1.c), vec3<bool>(true, true, true), !(!vec3<bool>(global1.c, global1.c, false))), vec4<bool>(false, global1.c, true, (_wgslsmith_f_op_f32(-global1.e.x) != -1754f) || all(vec2<bool>(false, global1.c))), vec4<bool>(func_3(Struct_2(vec3<u32>(global1.b, u_input.a.x, u_input.a.x), vec3<bool>(true, true, global1.c), select(vec4<bool>(true, global1.c, global1.c, true), vec4<bool>(global1.c, global1.c, false, false), vec4<bool>(true, global1.c, global1.c, false)), vec4<bool>(global1.c, global1.c, global1.c, global1.c))), false, func_3(Struct_2(firstTrailingBit(vec3<u32>(260u, 35887u, u_input.a.x)), vec3<bool>(true, global1.c, global1.c), select(vec4<bool>(false, false, global1.c, false), vec4<bool>(false, false, true, false), vec4<bool>(global1.c, false, global1.c, false)), select(vec4<bool>(global1.c, false, global1.c, false), vec4<bool>(global1.c, global1.c, false, false), true))), true));
    return global1.a;
}

fn func_1() -> Struct_1 {
    let var_0 = global1.b;
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, abs(firstLeadingBit(-34624i)), -2147483647i), firstTrailingBit(vec3<i32>(abs(-16004i), _wgslsmith_mult_i32(global1.a, global1.a), func_2()))), firstTrailingBit(_wgslsmith_mult_u32(~global1.d >> (0u % 32u), global1.b)), true, global1.b, _wgslsmith_f_op_vec3_f32(-global1.e));
    global1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(~global1.a, 0i), _wgslsmith_mod_i32(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -767i, global1.a, global1.a), vec4<i32>(global1.a, global1.a, 1i, -39749i)))), ~(-max(1i, global1.a))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(select(u_input.a.x, u_input.a.x, global1.c), ~u_input.a.x, global1.b), 4294967295u, ~(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) >> (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u))), ~(~266u | (4294967295u ^ global1.d)) == _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(100732u, 18054u, global1.d, global1.b)), reverseBits(vec4<u32>(14615u, 1u, global1.b, 1u))), vec4<u32>(global1.d, ~global1.d, 1u << (0u % 32u), firstTrailingBit(1u))), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) + _wgslsmith_f_op_f32(global1.e.x * global1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x * -321f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(160f, 581f, -1375f), global1.e), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.e.x, global1.e.x, global1.e.x))), select(vec3<bool>(false, true, global1.c), vec3<bool>(global1.c, false, true), vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(428f, 1623f, global1.e.x) + vec3<f32>(global1.e.x, -494f, global1.e.x))))));
    let var_1 = ~(~vec3<i32>(global1.a, ~(-global1.a), reverseBits(global1.a & -2866i)));
    global1 = Struct_1(_wgslsmith_dot_vec4_i32(select(min(vec4<i32>(var_1.x, 0i, 18173i, 10453i), vec4<i32>(1i, 2774i, -3852i, 63554i)) & max(vec4<i32>(27515i, global1.a, global1.a, 0i), vec4<i32>(var_1.x, global1.a, var_1.x, var_1.x)), ~(~vec4<i32>(global1.a, global1.a, var_1.x, var_1.x)), global1.d >= 4294967295u), vec4<i32>(global1.a, var_1.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-15989i, 13800i), min(-56536i, var_1.x), _wgslsmith_sub_i32(1i, 34597i)), (0i >> (global1.b % 32u)) | (-1i << (global1.d % 32u)))), global1.d, all(!select(vec2<bool>(global1.c, global1.c), !global0[_wgslsmith_index_u32(global1.d, 28u)], global0[_wgslsmith_index_u32(~14360u, 28u)])), 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(global1.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.e.x, global1.e.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, 1930f, global1.e.x))))));
    return Struct_1(abs(_wgslsmith_add_i32(abs(global1.a), global1.a)), 4573u, any(vec2<bool>(true, !global1.c)), ~12106u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(168f, -1000f)))), -544f, 1286f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global1.e, global1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.e.x, global1.e.x)))), !select(vec3<bool>(false, global1.c, global1.c), vec3<bool>(true, global1.c, global1.c), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = Struct_1(func_1().a, 1u, true, ~global1.d, vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(global1.e.x + -488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.e.x * global1.e.x))))));
    let var_0 = _wgslsmith_clamp_u32(9604u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(global1.b, u_input.a.x, global1.b), vec3<u32>(2155u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, global1.b, 1u)), ~vec3<u32>(max(u_input.a.x, 1u), u_input.a.x, ~1u)), ~u_input.a.x);
    let var_1 = _wgslsmith_clamp_i32(0i, ~_wgslsmith_mult_i32(-global1.a, 28646i), global1.a) >> (1u % 32u);
    global1 = func_1();
    var var_2 = !any(vec3<bool>(true, global1.c, global1.c)) && !all(select(vec3<bool>(false, false, global1.c), !vec3<bool>(global1.c, false, true), global1.c));
    var var_3 = Struct_1(global1.a, 15830u, any(select(vec4<bool>(true, true, all(vec3<bool>(global1.c, true, global1.c)), true), !vec4<bool>(true, true, global1.c, global1.c), any(vec3<bool>(true, false, global1.c)))), _wgslsmith_div_u32(abs(firstLeadingBit(var_0)), _wgslsmith_dot_vec2_u32(u_input.a, ~_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(52931u, var_0)))), vec3<f32>(1f, 769f, -230f));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), ~79602u);
}

