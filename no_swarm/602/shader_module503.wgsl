struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = Struct_2(0i, _wgslsmith_sub_vec2_i32(abs(firstLeadingBit(vec2<i32>(24560i, -1i))) | u_input.a, -u_input.a), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), u_input.c.zzy, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(955f, -913f))), _wgslsmith_f_op_f32(step(1350f, _wgslsmith_f_op_f32(f32(-1f) * -135f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -413f, true))))));
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_1, 0u, arg_0), vec4<u32>(1u, 1u, 73434u, arg_1)), ~vec4<u32>(0u, arg_0, arg_0, u_input.b)) >> (select(vec4<u32>(5127u, 1u, 40750u, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(21071u, arg_1, u_input.b, arg_0), vec4<u32>(4294967295u, 4294967295u, 50918u, 4294967295u)), var_0.c.b) % vec4<u32>(32u)), vec4<u32>(1u, 0u, ~arg_0 ^ 5719u, 0u & ~u_input.b)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, countOneBits(13505u), 0u), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1220u, arg_0, arg_0, 0u), vec4<u32>(0u, u_input.b, arg_0, arg_0), vec4<u32>(u_input.b, arg_1, u_input.b, arg_0)), vec4<u32>(4294967295u, arg_0, u_input.b, 0u), ~vec4<u32>(arg_0, arg_0, arg_0, 9989u))), vec4<u32>(~29311u, arg_0, firstTrailingBit(~u_input.b), min(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(arg_1, arg_1)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37652u, 0u), vec3<u32>(u_input.b, arg_1, 0u)), arg_1))));
    return all(vec3<bool>(true, var_0.c.a.x, false));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: f32) -> vec3<u32> {
    let var_0 = vec2<u32>(~u_input.b, 0u);
    let var_1 = Struct_2(-_wgslsmith_add_i32(~(32461i ^ u_input.a.x), -u_input.c.x), _wgslsmith_div_vec2_i32(-vec2<i32>(min(u_input.c.x, 0i), select(0i, 42710i, false)), abs(-u_input.a)), Struct_1(vec3<bool>(!arg_0.x, true, false), select(select(select(vec4<bool>(arg_0.x, true, arg_1, arg_2.x), vec4<bool>(false, arg_2.x, arg_0.x, arg_0.x), false), select(vec4<bool>(arg_0.x, true, true, arg_2.x), vec4<bool>(false, true, arg_0.x, false), arg_0.x), false | arg_1), select(!vec4<bool>(arg_0.x, true, arg_2.x, arg_0.x), vec4<bool>(false, arg_2.x, arg_1, arg_1), u_input.a.x > 0i), !arg_0.x), vec3<i32>(-u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x), ~(-66531i), u_input.c.x | u_input.c.x), ~firstLeadingBit(-2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), 845f, -353f)));
    var var_2 = arg_2.x;
    var var_3 = var_0.x;
    var var_4 = !(!vec4<bool>(func_3(u_input.b ^ 63341u, var_0.x), true, var_1.c.b.x, true && arg_1));
    return vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_0.x, firstLeadingBit(abs(105090u))), ~var_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = func_2(vec3<bool>(all(!select(vec2<bool>(arg_0.a.x, true), vec2<bool>(arg_0.b.x, true), arg_0.b.wy)), false, any(!(!arg_0.a))), !((~u_input.b & u_input.b) < _wgslsmith_add_u32(u_input.b, 4294967295u)), select(arg_0.b.zy, vec2<bool>(true, arg_0.a.x), false), -971f);
    let var_1 = arg_0;
    let var_2 = Struct_2(1i & abs(max(-31861i, _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(40847i, arg_1, u_input.c.x)))), ~(~min(vec2<i32>(-20638i, u_input.c.x) << (vec2<u32>(u_input.b, 1153u) % vec2<u32>(32u)), select(vec2<i32>(0i, 1i), vec2<i32>(var_1.c.x, 23349i), true))), var_1);
    var_0 = vec3<u32>(1u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.xy, var_0.yy), reverseBits(var_0.x), ~0u), _wgslsmith_dot_vec2_u32(var_0.yy, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 28063u), var_0.yz ^ vec2<u32>(4294967295u, 40510u)))) ^ ~vec3<u32>(~u_input.b, var_0.x, ~84718u);
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(2683u, _wgslsmith_clamp_u32(93951u, firstTrailingBit(u_input.b), func_2(arg_0.a, var_1.b.x, vec2<bool>(false, var_1.a.x), _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x)).x), u_input.b), abs(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(4294967295u, 51708u, 17481u)))) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(var_0.x, 4294967295u, u_input.b, 21304u)), ~var_0.x, var_0.x) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f * 1253f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(696f * 575f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false), u_input.c.xxz, vec3<f32>(718f, -1839f, -1267f)), u_input.c.x, u_input.a.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-140f, 1000f)))));
    let var_1 = Struct_1(select(vec3<bool>(any(!vec4<bool>(false, var_0, true, var_0)), true, true), select(!(!vec3<bool>(var_0, var_0, true)), !select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, false)), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, var_0))), true), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0, any(select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0))), true, var_0), !select(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(false, var_0, var_0, true), false), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)), var_0)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(16961i, u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(u_input.c.x, u_input.c.x))) ^ u_input.c.zxw, _wgslsmith_div_vec3_i32(-vec3<i32>(0i, -1i, u_input.a.x), u_input.c.yww)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(769f, 2018f))), -496f)));
    var var_2 = -30897i;
    let var_3 = var_1.c.x;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~abs(vec2<u32>(~u_input.b, ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1277f, var_1.d.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(378f, _wgslsmith_f_op_f32(-var_1.d.x))), -1000f)), vec2<u32>(func_2(var_4.b.wxx, true, select(select(vec2<bool>(true, false), var_1.a.xx, false), vec2<bool>(true, false), true), 430f).x, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(25397u, u_input.b, u_input.b, 1u), ~vec4<u32>(u_input.b, 52980u, u_input.b, 4294967295u)), u_input.b >> (~30968u % 32u))));
}

