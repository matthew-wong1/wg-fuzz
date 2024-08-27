struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    global1 = array<vec3<bool>, 30>();
    return all(vec3<bool>(true, true, true));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> bool {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32265u, 1u), vec3<u32>(23338u, 1u, u_input.a.x)), _wgslsmith_div_u32(4294967295u, u_input.a.x << (4294967295u % 32u)), 0u), vec4<u32>(2882u, (u_input.a.x | u_input.a.x) ^ ~57895u, _wgslsmith_mod_u32(u_input.a.x << (4294967295u % 32u), select(u_input.a.x, 1u, true)), ~(~10012u)), vec4<u32>(u_input.a.x, firstTrailingBit(0u), u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 4294967295u, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3.x, 2220f, -988f)))))));
    var var_2 = Struct_2(reverseBits(vec2<i32>(-2147483647i, arg_0.a.x)), Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(var_0.xyw, ~var_0.wwy)), -563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, var_1.x)))));
    var var_3 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true | (1i <= var_2.a.x), false, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(!(var_1.x < 481f), ~var_0.x > abs(44361u), var_0.x < 4294967295u, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), false, ~(-1i) >= arg_0.a.x, all(vec3<bool>(true, true, false)))));
    let var_4 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-var_2.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-313f)))));
    return var_3.x;
}

fn func_4(arg_0: vec3<bool>) -> vec4<u32> {
    global1 = array<vec3<bool>, 30>();
    var var_0 = abs(min(vec4<u32>(~u_input.a.x, ~19925u, _wgslsmith_mod_u32(68975u, u_input.a.x), u_input.a.x) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(38621u, 16691u, 37082u, u_input.a.x), ~vec4<u32>(u_input.a.x, 22080u, 205u, u_input.a.x)) % vec4<u32>(32u)), max(reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(max(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x ^ u_input.a.x, 28119u))));
    var var_1 = ~vec3<i32>(_wgslsmith_mod_i32(max(_wgslsmith_div_i32(-2147483647i, 1i), 0i), -42437i), ~max(-61912i, 1i), _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(0i, 2147483647i), -(i32(-1i) * -18535i), -14503i));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f - _wgslsmith_f_op_f32(-112f * -164f))) - 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f - -150f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -152f))) - -363f));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, 338f), vec2<f32>(var_2.x, -780f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 659f))) - vec2<f32>(-1276f, var_2.x));
    return vec4<u32>(countOneBits(var_0.x), max(u_input.a.x >> (37959u % 32u), ~abs(select(u_input.a.x, 1u, true))), ~u_input.a.x, 4294967295u);
}

fn func_2() -> i32 {
    global0 = false;
    var var_0 = _wgslsmith_mod_i32(-select(~(-1i), ~(-55156i), any(vec4<bool>(false, false, false, false))) >> (28596u % 32u), 13812i >> (u_input.a.x % 32u));
    let var_1 = _wgslsmith_mult_vec4_u32(func_4(vec3<bool>(!func_3(Struct_3(vec3<i32>(1i, -27200i, 1i)), -698f, 1247f, vec3<f32>(-1372f, 709f, 224f)), any(vec3<bool>(false, false, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))))), vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zz))), 0u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(0u, u_input.a.x), ~(u_input.a.x >> (0u % 32u))), 46831u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(227f + _wgslsmith_div_f32(-559f, 379f)), -1047f))));
    global1 = array<vec3<bool>, 30>();
    return -1i | _wgslsmith_sub_i32(i32(-1i) * -(2147483647i << (var_1.x % 32u)), _wgslsmith_sub_i32(abs(0i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 1i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(any(global1[_wgslsmith_index_u32(4294967295u, 30u)]) | false, true, !select(false, false, true)));
    global0 = any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true && any(vec4<bool>(false, true, true, false)), func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x < _wgslsmith_dot_vec4_u32(vec4<u32>(24442u, 47175u, u_input.a.x, 4150u), vec4<u32>(u_input.a.x, 0u, 37506u, 1u))), false));
    global0 = !(!func_1(u_input.a));
    let var_1 = 13469i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_3 = (firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx)) >= u_input.a.x) | true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f - 1265f) * _wgslsmith_f_op_f32(-701f - 826f)), _wgslsmith_div_f32(1048f, -478f), true)))));
}

