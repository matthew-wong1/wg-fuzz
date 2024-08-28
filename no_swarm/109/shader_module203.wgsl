struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    var var_0 = false;
    var var_1 = Struct_2(!all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false))), 7272i);
    return min(~77516u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 12092u, 1u)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(42109u, 22406u, 24226u, 65789u), countOneBits(vec4<u32>(3436u, 17952u, 1u, 0u))), 4294967295u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = countOneBits(~10092u >> (0u % 32u));
    global0 = array<vec3<bool>, 22>();
    var var_1 = countOneBits(min(vec4<u32>(arg_1.c, ~_wgslsmith_mult_u32(arg_1.e, 1u), 49687u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, 0u, arg_1.e), vec3<u32>(arg_1.e, arg_0.d, 104395u))), ~(vec4<u32>(4294967295u, 0u, arg_1.d, arg_1.e) & ~vec4<u32>(arg_0.c, 5186u, 1289u, arg_0.c))));
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.x, 32803u), var_1.xw) ^ var_1.xw, var_1.xy);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a), arg_1.b, arg_0.c, var_1.x, select(arg_1.d, _wgslsmith_div_u32(firstLeadingBit(select(17573u, 10060u, arg_2.a)), 1u), arg_2.a));
    return select(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_2.e), ~_wgslsmith_div_u32(0u, var_1.x), _wgslsmith_div_u32(arg_0.c, reverseBits(4294967295u))), var_1.wxy | var_1.wzw), vec3<u32>(((17460u << (arg_0.d % 32u)) & (var_1.x | arg_1.d)) & 1u, abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(39704u, var_2.c), vec2<u32>(var_2.d, arg_1.c), false), firstLeadingBit(vec2<u32>(1u, arg_0.e)))), func_3()), select(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.wz), vec2<u32>(arg_0.e, arg_0.e) >> (vec2<u32>(var_1.x, var_2.e) % vec2<u32>(32u))), 22u)], select(select(select(vec3<bool>(arg_2.a, arg_2.a, false), global0[_wgslsmith_index_u32(0u, 22u)], vec3<bool>(true, false, arg_2.a)), global0[_wgslsmith_index_u32(abs(arg_1.e), 22u)], !vec3<bool>(true, arg_2.a, arg_2.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.ywy, vec3<u32>(var_2.c, var_2.c, 42228u)) >> (abs(0u) % 32u), 22u)], select(select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), select(vec3<bool>(false, arg_2.a, true), global0[_wgslsmith_index_u32(1u, 22u)], false), 40445u >= var_2.e)), false));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = arg_1.x;
    global0 = array<vec3<bool>, 22>();
    var var_1 = true;
    var var_2 = ~firstLeadingBit(arg_0.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1378f, 527f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(801f, 982f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-799f, -241f), vec2<f32>(-212f, 1951f))))), _wgslsmith_mult_vec2_i32(select(u_input.a.wx, vec2<i32>(u_input.a.x, 7745i), true), u_input.a.yz), arg_1.x, _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 0u) >> (~arg_0 % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_1.x, 4294967295u), ~arg_0)), ~(~_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_0.x))), ~(~arg_0.x));
    return vec4<i32>(max(firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(var_3.b.x, -(~8430i))), var_3.b.x, _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.a.x, 66134i, var_3.b.x) << (~vec3<u32>(69712u, 59778u, 56897u) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.xwz), var_3.b.x, u_input.a.x), vec3<i32>(-1i, -10579i, firstTrailingBit(reverseBits(var_3.b.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~_wgslsmith_mod_i32(-4830i, u_input.a.x)), var_3.b));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    var var_0 = -14454i;
    global0 = array<vec3<bool>, 22>();
    var_0 = -1729i & u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2114f), _wgslsmith_f_op_f32(select(1660f, -707f, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, -820f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(515f, -446f) * vec2<f32>(1000f, -2122f)) * _wgslsmith_div_vec2_f32(vec2<f32>(781f, 481f), vec2<f32>(-103f, -1972f))))), vec2<i32>(_wgslsmith_dot_vec4_i32(func_4(func_2(Struct_1(vec2<f32>(654f, 623f), u_input.a.yy, 13797u, 1u, 4294967295u), Struct_1(vec2<f32>(175f, -223f), vec2<i32>(u_input.a.x, u_input.a.x), 1u, 17463u, 30307u), Struct_2(false, -2147483647i), u_input.a), vec2<u32>(1u, 1u)), -firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x), 4294967295u, 0u, countOneBits(~(~(~4294967295u))));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global0 = array<vec3<bool>, 22>();
    let var_0 = global0[_wgslsmith_index_u32(arg_2.c, 22u)];
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(abs(arg_1.x), 12500u, ~6745u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, reverseBits(arg_2.d)), ~1u)), ~(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_1.x, arg_2.e, arg_1.x, 37707u)), ~vec4<u32>(1u, arg_1.x, arg_2.c, arg_1.x))));
    let var_2 = select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b.x, 2147483647i), vec2<i32>(1i, u_input.a.x)), reverseBits(arg_2.b)), _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, arg_0), u_input.a.wy)), -arg_2.b), -1i, false);
    var var_3 = _wgslsmith_div_u32(1u, ~0u) & _wgslsmith_div_u32(var_1.x, ~9745u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1151f))));
    let var_1 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(41708u, 42079u, 96289u), vec3<u32>(16476u, 26670u, 0u)) ^ 1u) ^ ~1u, firstTrailingBit(_wgslsmith_div_u32(1u, 42737u)), ~(~(firstTrailingBit(38392u) >> (1u % 32u))));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_5(-2147483647i, vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(60413u, 1u, 31900u, 4294967295u), vec4<u32>(var_1, 39074u, 4294967295u, var_1)), ~1u), func_1()), 1u), 22u)];
    var_2 = !vec3<bool>(all(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)) || all(select(vec2<bool>(var_2.x, var_2.x), var_2.zz, true)), 919f > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2118f, -1000f), -1000f, u_input.a.x != u_input.a.x)), false || (any(vec4<bool>(true, var_2.x, true, var_2.x)) && any(vec4<bool>(false, var_2.x, false, false))));
    var_0 = _wgslsmith_f_op_f32(177f - -1341f);
    var var_3 = var_2.x;
    var_0 = -1153f;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f * 628f) * _wgslsmith_div_f32(938f, -159f))), -409f)), u_input.a.zw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(558f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(781f)))), func_1().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-873f + 1732f), _wgslsmith_f_op_f32(1347f * 802f))), 772f))), var_1);
}

