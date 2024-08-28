struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 8109i;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global1.a >> (1u % 32u), firstTrailingBit(_wgslsmith_div_i32(29367i, u_input.a.x)), -_wgslsmith_mod_i32(-2147483647i, global1.a), 0i), vec4<i32>(-(i32(-1i) * -2147483647i), 0i, abs(-15285i), firstTrailingBit(1i))) | global1.a;
    let var_0 = min(vec4<u32>(firstTrailingBit(~1u), 20399u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), abs(~vec3<u32>(140211u, 4294967295u, 25522u)))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26685u, 19654u), vec2<u32>(1u, 4294967295u)), ~1u, ~0u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 36950u, 51220u, 1u)) >> (firstTrailingBit(vec4<u32>(0u, 13403u, 4294967295u, 4294967295u)) % vec4<u32>(32u))));
    global0 = firstLeadingBit(global1.a) & 21161i;
    let var_1 = -1148f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))))), Struct_1(u_input.a.x));
    return vec3<bool>(all(select(vec4<bool>(false, true, var_0.x < 4294967295u, true), vec4<bool>(34821u == var_0.x, true, select(false, true, false), all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, all(vec2<bool>(true, true))))), true, var_0.x >= firstTrailingBit(~var_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = !(!select(vec3<bool>(true, true, true), func_3(), true));
    let var_1 = !select(select(vec4<bool>(true, true, true, any(var_0.zx)), select(vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0.x), !any(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec4<bool>(true, !(!var_0.x), true, var_0.x), select(vec4<bool>(all(vec3<bool>(false, var_0.x, false)), true, true, var_0.x), select(vec4<bool>(true, false, var_0.x, true), !vec4<bool>(false, var_0.x, false, false), true), false));
    var var_2 = global1.a ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i >> (0u % 32u), select(-31126i, global1.a, var_0.x)) >> ((_wgslsmith_clamp_u32(708u, 1u, 0u) ^ ~1u) % 32u), select(global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, arg_1.a), u_input.a), (u_input.a.x < -2147483647i) || true));
    var_0 = select(select(var_1.yxw, vec3<bool>(func_3().x, !any(vec3<bool>(var_0.x, var_1.x, var_1.x)), true), func_3()), select(var_1.zyx, select(vec3<bool>(true, true, var_1.x), var_1.wzw, false), true), all(vec4<bool>(max(arg_1.a, -8105i) < -1i, any(vec4<bool>(var_1.x, false, false, false)) || (var_1.x & true), true, (u_input.a.x << (4294967295u % 32u)) <= _wgslsmith_mult_i32(arg_2, -12244i))));
    var var_3 = var_1;
    return max(_wgslsmith_clamp_u32(14212u, ~(~109702u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), ~69371u)) >> (countOneBits(abs(39521u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~27602u, _wgslsmith_mult_u32(81579u, 1u)), vec2<u32>(0u, ~firstLeadingBit(4294967295u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> vec2<u32> {
    var var_0 = 4294967295u;
    var_0 = ~4797u;
    var var_1 = Struct_1(1i);
    global1 = Struct_1(1i);
    let var_2 = u_input.a.zz;
    return vec2<u32>(~arg_0.x, ~arg_1);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = u_input.a.x;
    let var_0 = vec4<i32>(firstLeadingBit(firstTrailingBit(_wgslsmith_mod_i32(99i, 13064i))), u_input.a.x, 2147483647i & arg_1.a, _wgslsmith_mod_i32(~(-2624i) << (arg_0.x % 32u), _wgslsmith_div_i32(-33649i, ~0i)) | _wgslsmith_dot_vec2_i32(~(u_input.a.zx & u_input.a.xx), ~(u_input.a.xz ^ u_input.a.xy)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(769f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)))))), Struct_1(_wgslsmith_dot_vec4_i32(-var_0, ~var_0)));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-363f, -854f) + _wgslsmith_f_op_f32(-var_1.a))))));
    return Struct_1(1i);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1, 14506i), 1i, ~(-50727i)), 1i));
    global1 = func_5(func_4(firstLeadingBit(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(6312u, 7472u)), vec2<u32>(1u, 1u))), firstLeadingBit(func_2(Struct_2(-754f, Struct_1(arg_1)), Struct_1(-1i), -1i))), Struct_1(select(min(arg_1, ~u_input.a.x), ~(-global1.a), !all(vec2<bool>(false, false)))));
    global0 = -(~(global1.a & firstLeadingBit(global1.a))) >> (~4294967295u % 32u);
    var var_0 = vec2<f32>(1809f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(398f, -694f))));
    var var_1 = 0u;
    return Struct_1(max(-2147483647i, ~_wgslsmith_mod_i32(-1i, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = func_1(vec2<f32>(-1000f, -1923f), u_input.a.x);
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~u_input.a, u_input.a), -1567i, u_input.a.x), vec3<i32>(-1i, _wgslsmith_mult_i32(-29757i >> (0u % 32u), u_input.a.x), -var_1.a << (_wgslsmith_mult_u32(1u, 73638u) % 32u)));
    global1 = var_1;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, _wgslsmith_div_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(15024u, 4294967295u), vec2<u32>(1u, 19420u)), ~firstTrailingBit(0u)), countOneBits(1u)));
}

