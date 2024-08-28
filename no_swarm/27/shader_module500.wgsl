struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = -752f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global1 = 332f;
    var var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.e, ~(~vec2<u32>(u_input.b.x, u_input.e.x))), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(0u, u_input.b.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(84752u, u_input.e.x), u_input.e.x), ~(~vec2<u32>(4294967295u, u_input.b.x)), u_input.e)));
    var var_1 = !(!select(vec3<bool>(all(vec2<bool>(false, false)), false, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, true), vec3<bool>(true, true, true)));
    var var_2 = vec2<u32>(~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.e, ~u_input.b.ww)), firstTrailingBit(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(0u, u_input.e.x)) << (select(~u_input.e.x, u_input.e.x, true) % 32u)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2004f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(994f, 282f, var_1.x)))))));
    return u_input.b.x;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_clamp_u32(~(~(~func_3())), ~_wgslsmith_clamp_u32(~4294967295u, 1u, _wgslsmith_dot_vec2_u32(u_input.b.zw, ~vec2<u32>(0u, u_input.b.x))), _wgslsmith_mult_u32(0u << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 37548u, u_input.b.x, 59589u), u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 3183u, 1u), u_input.b.xzy)) % 32u), countOneBits(1u << (u_input.b.x % 32u)) ^ 23588u));
    var var_0 = false;
    let var_1 = vec4<bool>(true, false, !all(vec3<bool>(true, true, true)), ~countOneBits(_wgslsmith_div_i32(u_input.c.x, u_input.a)) > 5923i);
    let var_2 = u_input.c.yy;
    let var_3 = var_2.x;
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-581f)))))), -635f)), firstLeadingBit(u_input.c), -7193i, !(!var_1.x), _wgslsmith_sub_u32(min(u_input.b.x, u_input.e.x), 0u));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = select(vec2<bool>(~(~u_input.a) == (arg_1.b.x ^ (u_input.c.x | arg_1.b.x)), all(vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d)) && arg_1.d), !select(select(vec2<bool>(true, arg_1.d), vec2<bool>(true, false), true), vec2<bool>(true, true), (arg_1.e < 397u) || false), select(!vec2<bool>(!arg_1.d, arg_1.d), select(vec2<bool>(false, any(vec3<bool>(arg_1.d, arg_1.d, arg_1.d))), vec2<bool>(u_input.d <= arg_1.b.x, all(vec2<bool>(true, arg_1.d))), arg_1.d & true), select(select(select(vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(true, arg_1.d)), vec2<bool>(true, true), vec2<bool>(arg_1.d, true)), vec2<bool>(true & arg_1.d, arg_0 != -133f), select(!vec2<bool>(true, arg_1.d), vec2<bool>(arg_1.d, false), func_2().d))));
    let var_1 = 1088f;
    var_0 = select(!(!vec2<bool>(all(vec2<bool>(var_0.x, false)), !var_0.x)), select(vec2<bool>(all(!vec4<bool>(arg_1.d, true, var_0.x, var_0.x)), _wgslsmith_f_op_f32(1201f - -838f) <= func_2().a), vec2<bool>(all(vec3<bool>(arg_1.d, true, var_0.x)) || any(vec2<bool>(var_0.x, false)), true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, arg_1.d), vec3<bool>(var_0.x, arg_1.d, var_0.x)), vec3<bool>(false, false, false)))), !vec2<bool>(var_0.x && true, !(!arg_1.d)));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(max(arg_1.a, var_1)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a + 426f))), select(var_0.x, false, _wgslsmith_mult_i32(min(39882i, 0i), firstTrailingBit(arg_1.b.x)) < -1i));
    var var_3 = Struct_2(vec2<u32>(0u, arg_1.e) ^ u_input.b.wy);
    return Struct_3(countOneBits(vec4<i32>(i32(-1i) * -u_input.d, u_input.c.x, -36625i, -u_input.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -423f), _wgslsmith_f_op_f32(ceil(arg_1.a)))), vec3<i32>(-102164i, arg_1.c, arg_1.c), _wgslsmith_dot_vec2_i32(min(-vec2<i32>(-1i, 0i), arg_1.b.xz), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.x, -38044i), u_input.c.yz)), !(!arg_1.d) | (-32652i == u_input.d), var_3.a.x), u_input.c.x);
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = func_4(_wgslsmith_f_op_f32(1000f * -373f), func_2());
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_0.b.a, var_0.b.d)), _wgslsmith_f_op_f32(step(405f, var_0.b.a))))) - vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-1472f * 714f)), var_0.b.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(round(-1655f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-773f)), _wgslsmith_f_op_f32(exp2(var_0.b.a))), !vec2<bool>(var_0.b.d, arg_0.x))))), vec2<bool>(!var_0.b.d, all(vec4<bool>(true, true, all(vec4<bool>(var_0.b.d, true, true, false)), var_0.b.d)))));
    global0 = func_3();
    var var_2 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(u_input.e), ~(~vec2<u32>(var_0.b.e, u_input.b.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.e.x, var_0.b.e), _wgslsmith_mod_u32(4294967295u, 3026u)), firstTrailingBit(u_input.e))));
    var var_3 = _wgslsmith_add_i32(-2147483647i, 20216i) == (max(_wgslsmith_mod_i32(firstTrailingBit(var_0.c), var_0.a.x), -6380i) & abs(22094i));
    return StorageBuffer(~(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 40530u), func_4(-853f, var_0.b).b.e, 4294967295u) ^ u_input.b.xxx), u_input.b, _wgslsmith_add_i32(-52009i, 1i), -1088f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<bool>(false, true, -3965i > _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.d, u_input.a, 14503i)))));
}

