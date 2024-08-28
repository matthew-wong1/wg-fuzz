struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(68442u, firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c.x, 1u, u_input.d.x)), ~vec4<u32>(u_input.d.x, u_input.c.x, 0u, u_input.d.x)))), ~_wgslsmith_add_u32(4294967295u, 0u));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(334f, -1226f, -240f, _wgslsmith_f_op_f32(203f - -1389f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-318f, 826f, 1450f, 789f), vec4<f32>(-1646f, -617f, 278f, -1340f))), vec4<f32>(975f, 1659f, -1062f, 1197f), true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -831f, -618f, -628f) + vec4<f32>(1000f, 651f, -348f, -588f))))))), false));
    var_1 = any(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true));
    var_0 = u_input.d.x >> (_wgslsmith_sub_u32(3535u, min(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 15771u), u_input.c.wy), ~4294967295u), u_input.d.x)) % 32u);
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_div_i32(_wgslsmith_div_i32(abs(~1i), ~0i), min(24541i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), -vec3<i32>(19770i, 6735i, u_input.b.x)))), ~vec3<u32>(4294967295u, firstTrailingBit(23361u), 4294967295u), Struct_3(Struct_1(~_wgslsmith_sub_vec3_u32(u_input.c.yxy, vec3<u32>(u_input.c.x, u_input.d.x, 11282u)), firstTrailingBit(-43807i), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), vec2<u32>(0u, 1u)), true), vec3<bool>(true | any(vec2<bool>(false, false)), true, false), Struct_2(_wgslsmith_f_op_f32(floor(459f)), vec2<f32>(_wgslsmith_div_f32(-1181f, 1457f), _wgslsmith_f_op_f32(-1000f - -1087f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(405f, 204f), vec2<f32>(1000f, -328f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 818f, 1848f, 703f)))), all(vec4<bool>(true, true, true, true))), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.b.x, u_input.d.wy, func_3()), vec2<f32>(1f, 1f));
    var var_1 = _wgslsmith_sub_vec2_u32(max(abs(~vec2<u32>(u_input.d.x, 4294967295u)), countOneBits(~select(vec2<u32>(42068u, var_0.b.x), vec2<u32>(4294967295u, u_input.c.x), vec2<bool>(false, var_0.c.a.d)))), ~countOneBits(~_wgslsmith_sub_vec2_u32(var_0.d.c, u_input.d.yx)));
    let var_2 = vec4<bool>(var_0.c.a.d, !all(vec3<bool>(var_0.c.b.x, false, var_0.d.d)) | var_0.c.b.x, any(!var_0.c.b), true);
    let var_3 = Struct_4(~var_0.a, u_input.d.zzz, var_0.c, var_0.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(trunc(-1290f))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x - var_0.c.d.x), var_0.c.d.x)))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(397f)) * var_3.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-376f, _wgslsmith_f_op_f32(step(var_0.e.x, 964f))))))), var_0.c.c.c.x));
    return vec3<bool>(var_0.c.e, !(!(true | !var_0.c.a.d)), _wgslsmith_div_f32(var_3.c.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.c.b.x, var_0.c.c.b.x)))) < _wgslsmith_f_op_f32(var_3.c.d.x * 983f));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = Struct_4(~abs(2147483647i), ~(~abs(u_input.c.xxx)), Struct_3(Struct_1(vec3<u32>(select(127394u, u_input.c.x, var_0.x), 33297u, u_input.c.x), firstLeadingBit(u_input.b.x), u_input.d.zz, var_0.x == false), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(any(var_0.yx), var_0.x, true), func_2().x), Struct_2(_wgslsmith_f_op_f32(-1294f - -788f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-241f, 286f), vec2<f32>(-1154f, 1170f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-266f, 1352f), vec2<f32>(-829f, 2338f), var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2081f, -1152f) + vec2<f32>(931f, -1336f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, -224f, -547f, 188f)) * vec4<f32>(-161f, -1000f, -967f, -1380f)), vec4<f32>(_wgslsmith_f_op_f32(min(444f, 144f)), -216f, _wgslsmith_f_op_f32(f32(-1f) * -1956f), _wgslsmith_f_op_f32(min(-1110f, 1873f))))), true), Struct_1(~abs(u_input.c.yxy), 0i, ~u_input.c.yx, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-164f, -888f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, 3170f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, -1130f) * vec2<f32>(537f, 197f)) - vec2<f32>(-308f, -138f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(-var_1.e.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-595f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f), -1000f))), _wgslsmith_f_op_f32(var_1.e.x * var_1.e.x))));
    var var_3 = ~(-abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-12160i, 36786i, 0i, 0i), vec4<i32>(-41553i, 68576i, 22502i, -2147483647i))));
    var_0 = vec3<bool>(!all(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, var_0.x, false, true))), all(func_2().zy) && (true && (false & (2147483647i < var_1.a))), all(vec2<bool>(var_1.c.b.x, false)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1310f + _wgslsmith_div_f32(665f, -395f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - -566f)));
    let x = u_input.a;
    s_output = StorageBuffer(415f, vec2<i32>(max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), vec3<i32>(-1i, -31812i, u_input.b.x))), firstTrailingBit(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), 2147483647i), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(u_input.d.x, 9525u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 18788u), vec2<u32>(4294967295u, 4294967295u), u_input.c.xw), u_input.d.ww), u_input.c.yy, ~vec2<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), ~4294967295u)), _wgslsmith_mod_u32(u_input.c.x, ~(~13753u)), _wgslsmith_mod_u32(u_input.c.x, ~abs(u_input.d.x)));
}

