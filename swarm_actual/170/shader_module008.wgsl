struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = vec2<bool>(any(select(arg_0.c, arg_0.c, select(!arg_0.d.x, false, any(vec4<bool>(true, true, arg_0.c.x, arg_0.c.x))))), _wgslsmith_add_u32(~arg_0.b.c, 1u) > arg_0.b.c);
    var var_1 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(23160u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.c, 22525u), vec2<u32>(0u, arg_0.b.c)) | 36639u), firstTrailingBit(~vec3<u32>(37073u, arg_0.b.c, arg_0.b.c))));
    var var_2 = ~55000u;
    var_2 = abs(min(0u << (var_1.x % 32u), var_1.x)) | 33488u;
    let var_3 = vec2<i32>(arg_0.e, arg_0.b.a << (~0u % 32u));
    return _wgslsmith_add_vec4_i32(abs(max(vec4<i32>(var_3.x, -6028i, -1966i, min(-3246i, 2147483647i)), firstLeadingBit(-vec4<i32>(arg_0.b.a, -2992i, -1i, u_input.a.x)))), ~abs(~select(vec4<i32>(2234i, -2147483647i, var_3.x, -13900i), vec4<i32>(85525i, var_3.x, u_input.a.x, var_3.x), false)));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = u_input.b.xy;
    let var_2 = func_3(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1305f, -436f, 116f, -347f))))), Struct_2(-16781i, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, 256f, -727f, 1344f) + vec4<f32>(2120f, -640f, 1000f, 811f))), ~_wgslsmith_add_u32(0u, 4776u), 1199f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1000f * -1659f) == _wgslsmith_f_op_f32(select(-273f, 1000f, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 89681i));
    var var_3 = -643f;
    let var_4 = select(vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), true || !any(vec3<bool>(true, false, true))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false)))), true);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(vec3<u32>(1u, 1u, 1u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = var_0;
    let var_2 = Struct_4(select(func_2(), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), func_2()), ~_wgslsmith_clamp_u32(1u, ~var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, var_0, var_0, var_0), ~vec4<u32>(0u, 10044u, var_0, 15932u))), select(vec3<bool>(!select(true, true, false), true, select(all(vec4<bool>(true, false, true, false)), true, false)), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_2()), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(566f)), _wgslsmith_f_op_f32(select(-675f, arg_2.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(963f, arg_0.x)) + -1527f), 545f)), Struct_2(42799i, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 905f, 283f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, arg_0.x, arg_0.x, -985f)))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2743f)) + -1368f)));
    var var_3 = max(abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_0, _wgslsmith_mod_u32(0u, arg_1)), 43638u)), _wgslsmith_mod_u32(~(~arg_1 >> (~1u % 32u)), var_0));
    var var_4 = 4294967295u;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1641f, -1165f) + _wgslsmith_div_f32(775f, 1285f)), _wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, 258f)), -589f))), 17961u ^ func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-682f, -535f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 308f), vec2<f32>(-164f, 513f), true))))), Struct_2(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, 4288i), -2914i, u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(825f, -475f, -1350f, -1000f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1595f, 1834f, -132f, 202f))))), 102825u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1739f))))), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true)), vec2<bool>(false, false), (~17110i & max(u_input.a.x, min(u_input.b.x, u_input.b.x))) | abs(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.b))));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.a.x, -1782f, var_0.b.d, 297f) - vec4<f32>(-1224f, 533f, var_0.b.b.a.x, 154f)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(select(var_0.b.d, var_0.a.a.x, var_0.d.x)), _wgslsmith_f_op_f32(floor(var_0.a.a.x)), _wgslsmith_f_op_f32(exp2(var_0.a.a.x))))), Struct_2(~57898i, var_0.b.b, 0u, _wgslsmith_f_op_f32(-var_0.b.d)), select(select(!select(var_0.c, vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.d.x, var_0.c.x, true)), var_0.c, any(!var_0.c)), select(var_0.c, vec4<bool>(true, var_0.a.a.x == -850f, true, !var_0.c.x), var_0.c.x), var_0.c.x), select(vec2<bool>(false, any(!vec4<bool>(true, var_0.c.x, false, false))), select(!vec2<bool>(var_0.d.x, false), vec2<bool>(true, true), vec2<bool>(false, true)), false), 1i);
    var_0 = Struct_3(var_0.a, Struct_2(func_3(Struct_3(var_0.b.b, var_0.b, select(vec4<bool>(var_0.d.x, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.d.x, var_0.c.x, var_0.c.x, false), var_0.d.x), select(var_0.c.zy, vec2<bool>(true, true), var_0.c.x), ~var_0.e)).x, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b.a.yww)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.c, 4294967295u, 4294967295u) & vec4<u32>(var_0.b.c, var_0.b.c, 56378u, var_0.b.c), vec4<u32>(var_0.b.c, 1u, var_0.b.c, var_0.b.c)), var_0.a.a.xx), _wgslsmith_sub_u32(27389u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.d, var_0.b.d)))))), !vec4<bool>(true, true, var_0.d.x, var_0.d.x), !vec2<bool>(29521u <= ~var_0.b.c, !select(true, true, true)), u_input.a.x);
    var_0 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, var_0.a.a.x) * var_0.a.a.yzx)))), var_0.b.c, _wgslsmith_f_op_vec2_f32(-var_0.a.a.zw)), Struct_2(_wgslsmith_sub_i32(-1i, var_0.e), var_0.b.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_0.b.c, 4294967295u, 4294967295u, var_0.b.c)), vec4<u32>(var_0.b.c, 13152u, var_0.b.c, 33347u)), abs(max(vec4<u32>(var_0.b.c, 1u, 0u, var_0.b.c), vec4<u32>(52433u, var_0.b.c, var_0.b.c, var_0.b.c)))), var_0.a.a.x), vec4<bool>(var_0.c.x, var_0.d.x || var_0.d.x, !(!any(var_0.c)), !select(true, var_0.c.x, true)), var_0.d, 29837i);
    var_0 = Struct_3(var_0.b.b, Struct_2(select(u_input.b.x, var_0.b.a >> (var_0.b.c % 32u), var_0.c.x | false), Struct_1(vec4<f32>(-189f, var_0.b.b.a.x, _wgslsmith_f_op_f32(361f * -1597f), _wgslsmith_f_op_f32(ceil(1410f)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.b.c, 20242u, var_0.b.c)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.c, 1u, var_0.b.c), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 38817u, 90109u), vec3<u32>(18010u, var_0.b.c, 48978u)))), var_0.b.b.a.x), var_0.c, vec2<bool>(var_0.d.x, var_0.c.x), u_input.a.x);
    let var_1 = ~(~min(~select(vec4<u32>(var_0.b.c, var_0.b.c, 1u, 1u), vec4<u32>(var_0.b.c, 1u, 1u, 1u), vec4<bool>(true, false, var_0.d.x, var_0.d.x)), vec4<u32>(~4294967295u, var_0.b.c, 3349u, var_0.b.c)));
    var var_2 = Struct_2(_wgslsmith_add_i32(-12611i | u_input.b.x, u_input.b.x) >> (1u % 32u), Struct_1(var_0.b.b.a), select(0u, 1u, var_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f + -308f) + -1204f)), _wgslsmith_f_op_f32(sign(-958f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.b.a.x)), -1000f))));
}

