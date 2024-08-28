struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -1i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1395f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)))), _wgslsmith_f_op_vec2_f32(abs(global0.b)), reverseBits(global0.c), !global0.d, global0.e);
    var var_1 = true;
    global0 = Struct_1(-1050f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(arg_0 * var_0.b)))))), -_wgslsmith_div_i32(1i, max(var_0.c << (1u % 32u), var_0.c)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(global0.e.yw, ~vec2<u32>(0u, u_input.a.x))) < _wgslsmith_mod_u32(u_input.a.x, ~(~u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.e.yx, _wgslsmith_mod_vec2_u32(global0.e.xw, vec2<u32>(56568u, 12064u))), select(max(~1u, var_0.e.x), global0.e.x, any(!vec4<bool>(global0.d, global0.d, global0.d, var_0.d))), global0.e.x, (max(35093u, 0u) & (73029u ^ global0.e.x)) ^ _wgslsmith_dot_vec3_u32(global0.e.wwx, u_input.a.wyy)));
    let var_2 = -882f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) * -1319f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, global0.a), _wgslsmith_f_op_f32(step(469f, -1178f))))) - var_2);
    return !(!(false && !var_0.d));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global1 = global0.c >> (u_input.a.x % 32u);
    global0 = Struct_1(370f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1750f))))), global0.c | arg_0, global0.d, _wgslsmith_clamp_vec4_u32(firstTrailingBit(global0.e) >> (~vec4<u32>(u_input.a.x, u_input.a.x, global0.e.x, 1u) % vec4<u32>(32u)), ~u_input.a, ~u_input.a));
    let var_0 = vec4<bool>(false, _wgslsmith_mult_u32(4294967295u, 1u) >= max(abs(12149u), 4294967295u << (global0.e.x % 32u)), true, global0.d);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(global0.a)), true)), 299f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(global0.b, _wgslsmith_f_op_vec2_f32(trunc(global0.b)))))), 1i, select(var_0.x, global0.d, true), ~vec4<u32>(firstTrailingBit(1u), 10712u, countOneBits(_wgslsmith_mod_u32(15601u, 92684u)), ~(~global0.e.x)));
    var var_2 = ~min(~(~var_1.e.x), min(global0.e.x, 4294967295u));
    return vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.xz)), _wgslsmith_dot_vec3_u32(reverseBits(reverseBits(var_1.e.xzz)), vec3<u32>(var_1.e.x ^ u_input.a.x, var_1.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.e.x, global0.e.x, var_1.e.x), u_input.a.xxw)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50961u, 1u), ~(vec2<u32>(2676u, global0.e.x) ^ global0.e.yz)), global0.e.x), ~var_1.e.x, _wgslsmith_mod_u32(~select(_wgslsmith_div_u32(0u, global0.e.x), 1u, any(vec3<bool>(global0.d, var_1.d, var_1.d))), 15995u));
}

fn func_1() -> u32 {
    global0 = Struct_1(-781f, global0.b, ~abs(firstLeadingBit(global0.c)), func_2(_wgslsmith_f_op_vec2_f32(-global0.b), ~(u_input.a.x & (33116u & global0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -517f)), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(36622u, global0.e.x << (u_input.a.x % 32u), 4294967295u), global0.e.x, ~(~97006u)) & vec4<u32>(global0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~10051u | global0.e.x, u_input.a.x));
    let var_0 = func_3(_wgslsmith_add_i32(global0.c, _wgslsmith_clamp_i32(-2147483647i, 13596i, countOneBits(reverseBits(64957i)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f) - _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(select(global0.a, global0.a, global0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1922f - global0.a) + -891f))), global0.b, abs(-2147483647i), !global0.d, vec4<u32>(var_0.x, ~(~_wgslsmith_dot_vec3_u32(global0.e.yxy, vec3<u32>(u_input.a.x, 1u, 8736u))), var_0.x, ~select(15042u, _wgslsmith_clamp_u32(global0.e.x, 79676u, 38116u), true || global0.d)));
    let var_2 = Struct_1(-891f, var_1.b, firstLeadingBit(38896i), all(select(select(!vec3<bool>(var_1.d, false, false), select(vec3<bool>(false, var_1.d, global0.d), vec3<bool>(var_1.d, true, true), vec3<bool>(global0.d, false, global0.d)), !vec3<bool>(false, true, var_1.d)), !vec3<bool>(var_1.d, false, var_1.d), !vec3<bool>(var_1.d, false, false))), _wgslsmith_clamp_vec4_u32(u_input.a, ~(~global0.e) ^ ~vec4<u32>(global0.e.x, 6214u, var_1.e.x, 0u), max(vec4<u32>(~23113u, ~var_0.x, _wgslsmith_div_u32(u_input.a.x, 1u), var_0.x), (vec4<u32>(global0.e.x, var_1.e.x, var_1.e.x, 4294967295u) << (var_1.e % vec4<u32>(32u))) & u_input.a)));
    var var_3 = func_3(28239i).x;
    return _wgslsmith_dot_vec2_u32(func_3(1i).zz, max(vec2<u32>(_wgslsmith_clamp_u32(var_0.x, u_input.a.x, u_input.a.x), ~6887u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, var_1.e.x))) ^ max(vec2<u32>(65452u, 0u), var_2.e.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(select(u_input.a.x, firstTrailingBit(func_1()), true) & firstLeadingBit(min(~16397u, ~u_input.a.x)), select(max(63909u, ~global0.e.x), firstTrailingBit(max(u_input.a.x, 1u)), true));
    var var_1 = Struct_1(597f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global0.b)))), ~min(global0.c, -2147483647i), select(_wgslsmith_f_op_f32(-global0.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))), all(!select(vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(global0.d, true, false))), global0.d), global0.e);
    var var_2 = _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1746f))) + _wgslsmith_f_op_f32(round(var_1.a))));
    global1 = ~(-var_1.c);
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + 822f));
    var var_4 = -max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, 1i, var_1.c, var_1.c), vec4<i32>(var_1.c, -2147483647i, global0.c, var_1.c)), global0.c), min(i32(-1i) * -79249i, select(var_1.c, var_1.c, global0.d)), ~0i, var_1.c), vec4<i32>(~global0.c, global0.c, abs(-1i | var_1.c), _wgslsmith_mult_i32(~global0.c, var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(var_1.c, 0i), _wgslsmith_sub_i32(global0.c, 0i) << (firstLeadingBit(45762u) % 32u), ~18239i, 1i) ^ countOneBits(~vec4<i32>(17446i, -2147483647i, 38978i, var_4.x)));
}

