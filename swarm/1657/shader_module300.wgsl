struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -962f;

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-42409i, -63679i, -1i), vec3<i32>(i32(-2147483648), -38786i, -1i), vec3<i32>(-34039i, -34325i, -84425i), vec3<i32>(1i, 2147483647i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(-arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, 396f, -477f, -657f) - vec4<f32>(-2501f, -1292f, 1000f, 647f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, 416f, 922f, 1231f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 327f, 868f, -882f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2187f, 552f, 788f, -1354f)), vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1519f, 1474f, -121f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 273f, -2572f, 147f))), true)), select(vec4<bool>(all(vec2<bool>(false, false)), true, false, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, 139f, -991f, 1181f)))));
    let var_2 = 8058i;
    let var_3 = _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(26356u, u_input.a.x, ~1u, u_input.a.x ^ u_input.a.x));
    global0 = -1000f;
    return 1165f;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    var var_0 = vec3<bool>(true, true, select(_wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, 46529i, arg_0, 1i))), true, false));
    let var_1 = arg_1.ywy;
    let var_2 = arg_1.x;
    var var_3 = Struct_1(reverseBits(vec4<i32>(_wgslsmith_add_i32(arg_0, arg_0), arg_0, arg_0, 1i | arg_0) & vec4<i32>(-arg_0, arg_0, 6340i, -2147483647i)));
    let var_4 = Struct_1(reverseBits(var_3.a));
    return max(-1i, var_3.a.x | -abs(0i));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = func_2(_wgslsmith_sub_i32(17531i, min(var_0.a.x, i32(-1i) * -arg_0.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(258f - 479f), -1266f, 150f, _wgslsmith_f_op_f32(f32(-1f) * -245f)), vec4<f32>(-894f, _wgslsmith_f_op_f32(-329f + -990f), _wgslsmith_f_op_f32(-274f - 303f), _wgslsmith_f_op_f32(max(-229f, -402f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(round(-539f)))), _wgslsmith_f_op_f32(1527f * -2484f), -537f), vec4<bool>(true, true, any(vec2<bool>(true, true)) & any(vec2<bool>(false, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)))))), ~1u);
    var var_3 = vec3<bool>(all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), false)), true, true);
    global1 = array<vec3<i32>, 4>();
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~30438u, 19043u), countOneBits(vec3<u32>(reverseBits(1u), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    var var_1 = arg_0;
    let var_2 = Struct_1(arg_2.a);
    var_1 = select(arg_0, !select(!arg_0, arg_0, !vec3<bool>(arg_0.x, arg_0.x, false)), select(select(arg_0, vec3<bool>(!arg_0.x, true, true), vec3<bool>(select(var_1.x, var_1.x, true), true, arg_0.x)), !arg_0, !select(select(vec3<bool>(arg_0.x, var_1.x, true), vec3<bool>(arg_0.x, var_1.x, true), arg_0), !vec3<bool>(false, var_1.x, true), !var_1.x)));
    var_0 = u_input.a.yxx & vec3<u32>(8523u, firstTrailingBit(0u), 167224u);
    return _wgslsmith_div_u32(29258u << (u_input.a.x % 32u), ~firstLeadingBit(~(~var_0.x)));
}

fn func_5(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, 0i), vec4<i32>(-2147483647i, 12117i, -39871i, -32377i), vec4<i32>(1i, 31069i, -28394i, 0i))), abs(vec4<i32>(-1i, -12648i, -12687i, -1i) >> (u_input.a % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.x, 37064u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_0.x)), vec4<u32>(u_input.a.x, 1u, arg_0.x, 7920u)) % vec4<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f) * _wgslsmith_f_op_f32(sign(-781f))))))));
    global1 = array<vec3<i32>, 4>();
    global1 = array<vec3<i32>, 4>();
    let var_1 = ~vec3<u32>(arg_0.x, _wgslsmith_clamp_u32(0u, 15314u, ~(u_input.a.x | 1u)), countOneBits(4294967295u));
    return _wgslsmith_f_op_f32(select(-152f, _wgslsmith_f_op_f32(abs(-117f)), 1u < _wgslsmith_clamp_u32(~func_4(vec3<bool>(true, false, true), Struct_1(vec4<i32>(var_0.a.x, -24835i, -2243i, 0i)), Struct_1(var_0.a)), 57301u, _wgslsmith_mod_u32(1u, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2033f + 239f) + _wgslsmith_f_op_f32(sign(803f))))), _wgslsmith_f_op_f32(func_5(vec4<u32>(~16656u, u_input.a.x, func_4(vec3<bool>(true, false, false), func_1(Struct_1(vec4<i32>(0i, -2147483647i, -24342i, -40745i))), func_1(Struct_1(vec4<i32>(76602i, 12104i, -2147483647i, 0i)))), _wgslsmith_sub_u32(firstTrailingBit(10260u), select(4294967295u, u_input.a.x, true)))))));
    let var_0 = reverseBits(_wgslsmith_sub_vec3_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)], ~vec3<i32>(reverseBits(47024i), 0i, 1i)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1819f);
    let var_1 = Struct_1(vec4<i32>(-1i) * -(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -5424i, -1i, 27526i), vec4<i32>(-11865i, var_0.x, 2147483647i, var_0.x)) & -vec4<i32>(var_0.x, 44049i, -1i, var_0.x)));
    let var_2 = func_1(func_1(var_1));
    global0 = 1f;
    global1 = array<vec3<i32>, 4>();
    var var_3 = select(select(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), (-1i != var_2.a.x) & true), all(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, true))), !select(vec3<bool>(true, false, select(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, !(!all(vec4<bool>(false, false, false, false))), any(vec3<bool>(true, false, any(vec3<bool>(false, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1049f, -3325f), vec2<f32>(-840f, -1000f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1195f - -407f)))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)), -1199f)), _wgslsmith_div_vec3_u32(u_input.a.wxw, _wgslsmith_mult_vec3_u32(u_input.a.xxz, firstLeadingBit(u_input.a.xzx)) >> (min(u_input.a.wxx, abs(vec3<u32>(57423u, 11409u, 4294967295u))) % vec3<u32>(32u))), 28477i);
}

