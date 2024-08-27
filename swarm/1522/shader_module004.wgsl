struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = select(vec3<i32>(firstLeadingBit(~_wgslsmith_mod_i32(u_input.b.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 1i), ~(-1i)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, 19921i) >> (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u)), abs(u_input.c))), max(u_input.a.x, ~firstLeadingBit(u_input.d.x))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, -1i)), -5889i), select(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.d.x, 0i), _wgslsmith_mult_vec3_i32(u_input.c, u_input.d)), -1i, _wgslsmith_f_op_f32(round(-368f)) <= -490f), ~(_wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, u_input.d.x) ^ countOneBits(u_input.a.x))), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f + -788f)))))));
    var var_2 = abs(_wgslsmith_clamp_u32(abs(select(~20389u, ~20388u, true)), _wgslsmith_add_u32(18937u, _wgslsmith_clamp_u32(1u, ~19929u, 61607u)), ~max(4294967295u, ~0u)));
    let var_3 = vec2<bool>(any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true & any(vec3<bool>(false, true, false)), true)), true);
    let var_4 = -u_input.e.wz;
    return _wgslsmith_div_u32(~max(~1u, ~1u), 7904u);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(u_input.d.x, 1663f, u_input.e.x << (2265u % 32u), _wgslsmith_sub_u32(abs(0u), func_3()), -(-u_input.d & u_input.e.zyw));
    let var_1 = vec4<i32>(1i, -1i, -2147483647i, _wgslsmith_div_i32(-9902i ^ _wgslsmith_sub_i32(~955i, u_input.b.x << (8611u % 32u)), u_input.e.x));
    let var_2 = var_0.b;
    return -1582f;
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(select(abs(~vec3<u32>(7602u, 23900u, 10770u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, 38451u), ~vec3<u32>(72706u, 1u, var_0)) | _wgslsmith_mod_vec3_u32(~vec3<u32>(9144u, var_0, var_0), vec3<u32>(4294967295u, var_0, var_0) & vec3<u32>(var_0, var_0, var_0)), true), ~u_input.e.x & u_input.c.x, var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_2(false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1245f * -360f)) + 1f)), Struct_1(_wgslsmith_mod_i32(~firstTrailingBit(7568i), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-638f, 1000f)))), -1i, var_0 << (firstLeadingBit(firstLeadingBit(var_0)) % 32u), select(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-17449i, 0i)), u_input.a.x, -u_input.c.x), firstTrailingBit(u_input.c) | u_input.c, !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))));
    var_1 = Struct_2(var_1.a, min(~(-min(u_input.a.x, u_input.d.x)), 1i), ~(~19191u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e.b, var_1.e.b) - -1026f), 464f), var_1.e);
    var_1 = Struct_2(var_1.a, select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.e.e.yz, var_1.e.e.yx), var_1.e.e.xz ^ var_1.e.e.zx), countOneBits(select(vec2<i32>(20230i, u_input.d.x), vec2<i32>(u_input.b.x, u_input.d.x), true))), 0i, true), var_0 ^ ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_1.a.x), var_1.a.zy, vec2<bool>(false, true)), ~var_1.a.yy), _wgslsmith_f_op_vec2_f32(select(var_1.d, var_1.d, true)), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1493f))), 3913i, ~(~(~11244u)), u_input.d));
    var var_2 = select(select(vec3<bool>(false, true || any(vec4<bool>(false, false, false, false)), true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, true)) & (740f >= var_1.d.x)), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(all(vec3<bool>(true, true, true)), false, all(vec2<bool>(true, true))));
    return var_1.e;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<bool>(!(true == (arg_2.b > _wgslsmith_f_op_f32(-arg_1.e.b))), false, !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
    var var_1 = abs(~_wgslsmith_mod_i32(arg_1.b, _wgslsmith_sub_i32(3203i, 1i))) << (firstTrailingBit(arg_2.d) % 32u);
    return Struct_2(vec3<u32>(~(1u << (_wgslsmith_add_u32(4294967295u, arg_2.d) % 32u)), ~firstLeadingBit(arg_1.a.x), ~arg_1.a.x), ~(-arg_1.b), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, arg_1.a.x, 40523u, 0u), vec4<u32>(arg_2.d, 1u, 4294967295u, 20634u))), 0u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.b) * arg_2.b), _wgslsmith_f_op_f32(-592f + arg_2.b)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b.x, Struct_2(min(countOneBits(vec3<u32>(27736u, 16056u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), -countOneBits(min(32147i, 41454i)), 1u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-884f, _wgslsmith_div_f32(220f, -544f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(937f, 390f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(704f, -763f) + vec2<f32>(-279f, 1000f))))), Struct_1(~(-22024i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1030f)))), 0i, min(1u, 0u), -(vec3<i32>(u_input.c.x, u_input.c.x, 1i) >> (vec3<u32>(0u, 1u, 1668u) % vec3<u32>(32u))))), func_1());
    var var_1 = var_0.a.yy;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b, var_0.e.b, 454f, 1713f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, 1119f, 339f, var_0.d.x), vec4<f32>(var_0.e.b, 1001f, var_0.d.x, var_0.d.x)))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))))))));
    var_1 = ~max(vec2<u32>(var_0.e.d, var_1.x) >> (vec2<u32>(var_0.e.d, var_1.x) % vec2<u32>(32u)), select(firstLeadingBit(vec2<u32>(var_0.a.x, 0u)), abs(var_0.a.yy), vec2<bool>(false, true))) >> (max(max(~var_0.a.yx, ~var_0.a.zx) ^ vec2<u32>(~1u, 22789u), ~var_0.a.zy) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-910f)), _wgslsmith_f_op_f32(var_2.x * -1000f), var_0.d.x) - _wgslsmith_f_op_vec3_f32(floor(var_2.zwx))) + _wgslsmith_f_op_vec3_f32(-var_2.wzz)), var_2.xwz, vec3<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(true, true, true), true)));
    var var_4 = false;
    var var_5 = Struct_2(func_4(~(-2064i) >> (~_wgslsmith_clamp_u32(0u, 4294967295u, var_1.x) % 32u), func_4(6034i, func_4(-7238i, var_0, var_0.e), var_0.e), func_4(var_0.b, func_4(max(var_0.e.a, 2147483647i), func_4(2147483647i, Struct_2(var_0.a, 73251i, 1508u, vec2<f32>(485f, -285f), Struct_1(12429i, 615f, -32366i, 0u, u_input.e.xxw)), Struct_1(var_0.e.a, var_3.x, -1i, 49929u, u_input.e.wzw)), func_1()), var_0.e).e).a, -1i, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(2667u, 37167u, 1u, var_0.c) << (countOneBits(vec4<u32>(3435u, 38628u, 0u, var_0.a.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 25121u, var_0.a.x, var_0.c) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(11944u, var_0.c, var_0.a.x, var_0.a.x), vec4<u32>(1u, 15533u, 31384u, var_1.x)), (vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.e.d) << (vec4<u32>(var_1.x, 0u, var_1.x, var_0.c) % vec4<u32>(32u))) & ~vec4<u32>(0u, 0u, var_0.c, var_0.c))), var_0.d, func_1());
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.b))))));
}

