struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = 4294967295u;
    var var_1 = ~(abs(vec4<i32>(u_input.b.x & u_input.b.x, -31093i, arg_1.b, abs(19788i))) >> (select(arg_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(121231u, 22569u, 77469u, 95648u) >> (vec4<u32>(arg_3.a.x, 20553u, arg_2, u_input.a.x) % vec4<u32>(32u)), arg_3.a), vec4<bool>(!arg_0.x, true, true, false)) % vec4<u32>(32u)));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(8673i, max(var_1.x, 0i), arg_1.b), _wgslsmith_clamp_vec3_i32(u_input.b, var_1.zzz, vec3<i32>(u_input.b.x, -33748i, 2147483647i)) << (abs(arg_3.a.wxw) % vec3<u32>(32u)), max(vec3<i32>(var_1.x, var_1.x, var_1.x), u_input.b) | vec3<i32>(arg_3.b, arg_1.b, arg_1.b)), ~var_1.wyy), ~(-firstLeadingBit(_wgslsmith_mult_i32(-69874i, arg_3.b))));
    var_0 = 4294967295u;
    global0 = array<f32, 30>();
    return any(vec3<bool>(all(select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, true, arg_0.x), global0[_wgslsmith_index_u32(arg_2, 30u)] > global0[_wgslsmith_index_u32(0u, 30u)])), !all(!arg_0), !any(vec2<bool>(false, false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<bool>) -> bool {
    let var_0 = ~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, ~arg_0.x, arg_0.x), arg_0.zwx));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(883f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(47925u, 30u)]) - -2057f)))));
    let var_2 = Struct_1(~(~reverseBits(select(vec4<u32>(4294967295u, u_input.a.x, 58361u, arg_0.x), vec4<u32>(arg_0.x, 59768u, 30793u, 48348u), vec4<bool>(arg_2.x, false, true, false)))), -14709i);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(var_0.x), 30u)])), global0[_wgslsmith_index_u32(~1u, 30u)]), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-206f, -623f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2487u, 30u)] + _wgslsmith_f_op_f32(1000f + -1002f)))), -1766f));
    let var_4 = var_1;
    return true;
}

fn func_2() -> u32 {
    let var_0 = abs(_wgslsmith_add_u32(4294967295u, u_input.a.x));
    var var_1 = !func_4(~vec4<u32>(_wgslsmith_mult_u32(var_0, var_0), var_0, u_input.a.x, ~3853u), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(func_3(vec2<bool>(false, false), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 79059u), u_input.b.x), u_input.a.x, Struct_1(vec4<u32>(7775u, 94707u, var_0, var_0), -4272i)), func_3(vec2<bool>(false, false), Struct_1(vec4<u32>(var_0, var_0, 3919u, 14036u), -1i), 1u, Struct_1(vec4<u32>(var_0, u_input.a.x, u_input.a.x, var_0), u_input.b.x)), any(vec2<bool>(false, false)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), true));
    var var_2 = -select(vec2<i32>(~_wgslsmith_mod_i32(-14485i, u_input.b.x), u_input.b.x >> ((1u ^ u_input.a.x) % 32u)), firstTrailingBit(-vec2<i32>(u_input.b.x, -15388i)), true);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -1814f, 219f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1544f, global0[_wgslsmith_index_u32(var_0, 30u)], -991f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(var_0, 30u)], global0[_wgslsmith_index_u32(72911u, 30u)]))))) + vec3<f32>(global0[_wgslsmith_index_u32(38097u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0, 30u)]))), 166f)));
    var var_4 = ~u_input.a.x & u_input.a.x;
    return var_0 | (1u ^ (1u << (var_0 % 32u)));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    let var_0 = Struct_1(vec4<u32>(~18674u, abs(func_2()), ~u_input.a.x, ~(~0u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -27693i, 28516i), (select(vec3<i32>(-4183i, -21817i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i), true) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 16841u, 56667u), u_input.a) % vec3<u32>(32u))) & -(~u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1913f, -869f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f * global0[_wgslsmith_index_u32(4294967295u, 30u)]) - 530f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -893f)))))));
    let var_2 = var_0;
    return var_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(max(4294967295u, 62992u), arg_0.a.x << (4294967295u % 32u), ~9816u, _wgslsmith_clamp_u32(4500u, 4294967295u, 0u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(7577u, u_input.a.x, 40384u, u_input.a.x), arg_0.a), vec4<u32>(4294967295u, arg_0.a.x, 1u, 1u)), arg_0.a), (arg_0.a ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 11121u, 22193u), arg_0.a)) | ~_wgslsmith_sub_vec4_u32(arg_0.a, arg_0.a)), u_input.b.x);
    return Struct_1(min(firstTrailingBit(min(vec4<u32>(var_0.a.x, 57250u, arg_0.a.x, u_input.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.a.x, u_input.a.x))) << ((~vec4<u32>(u_input.a.x, var_0.a.x, arg_0.a.x, 105407u) ^ var_0.a) % vec4<u32>(32u)), arg_0.a), _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(13262i), ~(~0i)), ~(~_wgslsmith_add_i32(19199i, var_0.b))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<f32, 30>();
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = reverseBits(var_1.a.xw);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    var var_0 = vec4<u32>(4294967295u, ~60256u & u_input.a.x, select(_wgslsmith_add_u32(4294967295u, abs(u_input.a.x)), u_input.a.x, false), u_input.a.x);
    let var_1 = Struct_1(~firstLeadingBit(min(vec4<u32>(u_input.a.x, u_input.a.x, 48745u, u_input.a.x), ~vec4<u32>(var_0.x, var_0.x, u_input.a.x, u_input.a.x))), u_input.b.x);
    global0 = array<f32, 30>();
    let var_2 = Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(1u), ~u_input.a.x, 0u, ~var_1.a.x), vec4<u32>(~u_input.a.x, 3941u, u_input.a.x, 1u)), var_1.b);
    let var_3 = func_6(select(vec3<bool>(false, true, !any(vec4<bool>(false, true, true, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true), true), !(196f > global0[_wgslsmith_index_u32(0u, 30u)])), func_5(func_1()));
    global0 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, 1088f, global0[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(16733u, 30u)], 1726f)), 16147i > var_1.b))))), vec4<i32>(0i, 2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_2.b) & -1i, -(~var_2.b)), u_input.b.x), ~(0u >> (min(~var_3.a.x, 1u) % 32u)));
}

