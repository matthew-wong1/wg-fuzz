struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<u32>(arg_0.b.x, arg_0.b.x);
    var_0 = u_input.b;
    let var_1 = 38355u;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(24323i, firstLeadingBit(-56623i)), reverseBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, ~2147483647i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i))))), -min(-1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(950i, 0i, 1i, -17075i)), abs(vec4<i32>(29784i, -2147483647i, -2147483647i, -2147483647i)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))))));
    return var_2;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = var_0.b;
    let var_2 = false;
    var var_3 = arg_3.a.x;
    var var_4 = ~(-vec4<i32>(max(func_3(Struct_1(arg_3.a, arg_3.b)), countOneBits(8774i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -27822i), vec2<i32>(-2147483647i, 42255i)), -vec2<i32>(-2147483647i, -2147483647i)), ~(i32(-1i) * -31042i), firstTrailingBit(~1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a.x, -1000f))) * arg_3.a.x));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(!vec3<bool>(true, false, !arg_0.a), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-916f, 434f) * _wgslsmith_f_op_f32(min(2253f, 887f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_0, arg_0, arg_0.a, Struct_1(vec2<f32>(206f, 1203f), vec4<u32>(u_input.a, 5708u, u_input.b.x, 33664u)))), _wgslsmith_f_op_f32(-711f * -335f)), true || ((arg_0.a && false) || (arg_0.a != true)), arg_0.a), !(!select(!vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))));
    var_0 = select(!(!(!select(vec3<bool>(arg_0.a, true, false), vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, var_0.x)))), vec3<bool>(!var_0.x, true, -181i == select(-2147483647i, -5959i, any(vec4<bool>(false, true, var_0.x, true)))), true);
    var var_1 = abs(vec4<u32>(u_input.b.x | _wgslsmith_clamp_u32(~u_input.a, 20545u, u_input.b.x), _wgslsmith_clamp_u32(32246u, 4294967295u, ~(~1u)), firstLeadingBit(6796u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, 24177u), u_input.b & u_input.b, !var_0.x), ~(u_input.b | vec2<u32>(u_input.b.x, 47674u)))));
    var_0 = !(!select(vec3<bool>(!var_0.x, all(vec4<bool>(arg_0.a, false, var_0.x, var_0.x)), true), select(select(vec3<bool>(arg_0.a, var_0.x, arg_0.a), vec3<bool>(false, arg_0.a, false), false), vec3<bool>(arg_0.a, true, true), !var_0.x), true));
    var_0 = select(!vec3<bool>(arg_0.a | true, select(true, true, select(true, true, arg_0.a)), var_0.x), select(!select(!vec3<bool>(true, arg_0.a, var_0.x), select(vec3<bool>(var_0.x, true, arg_0.a), vec3<bool>(true, arg_0.a, true), arg_0.a), true), !select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(arg_0.a, false, arg_0.a), arg_0.a), select(vec3<bool>(arg_0.a, false, false), vec3<bool>(var_0.x, arg_0.a, var_0.x), var_0.x), select(vec3<bool>(var_0.x, arg_0.a, false), vec3<bool>(var_0.x, true, var_0.x), true)), true), -1i < (select(select(-17043i, -1i, var_0.x), ~(-2147483647i), arg_0.a) | -60972i));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = ~(~u_input.a) << (firstLeadingBit(6265u) % 32u);
    let var_1 = _wgslsmith_mod_i32(select(-1i, i32(-1i) * -19426i, !(!arg_1.a)), -(~(-2147483647i))) & 1i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(270f, 455f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f + -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, 1581f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(595f, -168f) + vec2<f32>(1414f, 1524f))))), _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), ~(~abs(vec4<u32>(37853u, u_input.a, 1u, u_input.b.x)))));
    let var_3 = vec4<bool>(true, !(!all(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_1.a, false, true, false), false))), arg_0, arg_1.a);
    var_0 = ~u_input.b.x;
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.b), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, var_2.b.x), _wgslsmith_add_vec2_u32(u_input.b, var_2.b.wx)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<u32>(countOneBits(func_4(true, func_1(Struct_2(false)))), u_input.b.x, ~0u), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.b.x, u_input.a, 0u), ~_wgslsmith_add_u32(5969u, u_input.b.x) << (_wgslsmith_mod_u32(max(u_input.a, u_input.b.x), ~32010u) % 32u)));
    var var_1 = -(~(-vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), firstLeadingBit(-2147483647i))));
    let var_2 = Struct_3(496f);
    var_1 = _wgslsmith_div_vec2_i32(abs(~vec2<i32>(var_1.x, func_3(Struct_1(vec2<f32>(var_2.a, -549f), vec4<u32>(4294967295u, var_0.x, 1u, u_input.a))))), abs(vec2<i32>(max(~var_1.x, min(-1i, var_1.x)), ~2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43945u, u_input.b.x, u_input.a, 14330u), vec4<u32>(6488u, 54170u, u_input.b.x, 0u)) % 32u))));
    let var_3 = -21872i;
    let var_4 = _wgslsmith_div_vec3_u32(abs(~(~reverseBits(vec3<u32>(1u, 0u, 4294967295u)))), reverseBits(var_0));
    var var_5 = _wgslsmith_f_op_f32(min(var_2.a, var_2.a));
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(var_2.a, var_2.a))) + 1160f), var_3, firstLeadingBit(_wgslsmith_sub_i32(0i, -74157i)));
}

