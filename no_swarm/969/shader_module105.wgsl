struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.c, -21346i);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, ~(15705u & u_input.c)), 3583u) <= _wgslsmith_div_u32(1u, u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-479f, _wgslsmith_f_op_f32(f32(-1f) * -355f))));
    let var_3 = var_0;
    let var_4 = vec2<bool>(true, true);
    return var_0.a;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = abs(vec4<u32>(arg_0 << (var_0.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 1u, 16632u, u_input.a.x), vec4<u32>(arg_0, var_0.a, 0u, var_0.a) << (vec4<u32>(4294967295u, 1u, 1u, 26259u) % vec4<u32>(32u))), _wgslsmith_clamp_u32(70495u, u_input.a.x, ~arg_1.a), _wgslsmith_sub_u32(func_3(), _wgslsmith_div_u32(4294967295u, 7518u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, arg_0, arg_1.a, abs(arg_0)), ~vec4<u32>(1u, 1u, arg_1.a, arg_0)) % vec4<u32>(32u)));
    let var_2 = Struct_1(min(~abs(0u), min(~arg_0, firstTrailingBit(7562u))), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.b, var_0.b, -51148i) & vec4<i32>(0i, u_input.b.x, -22411i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b, var_0.b, 0i, u_input.b.x), vec4<i32>(u_input.b.x, 58539i, arg_1.b, 14515i))), _wgslsmith_add_i32(1i, -1i)));
    let var_3 = var_2;
    var var_4 = _wgslsmith_mod_u32(~arg_1.a, ~(~(~25083u ^ abs(arg_1.a))));
    return -212f;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !any(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var_0 = all(vec2<bool>(true, true));
    var_0 = select(true, false, all(vec2<bool>(all(vec4<bool>(false, true, true, false)), true || all(vec3<bool>(false, true, false)))));
    var var_1 = arg_1;
    var var_2 = -select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b) << (vec3<u32>(12669u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(81010u, arg_0)), firstTrailingBit(9820u)) % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x << (u_input.c % 32u), u_input.b.x, 1i), vec3<bool>(true, true, true));
    return Struct_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 89193u, 0u, arg_0), vec4<u32>(15670u, 41372u, arg_0, arg_0)), abs(vec4<u32>(u_input.a.x, arg_0, 16993u, u_input.a.x)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 67425u, u_input.a.x, 32687u), vec4<u32>(arg_0, u_input.c, 0u, arg_0))) ^ max(~vec4<u32>(u_input.a.x, 4294967295u, u_input.c, arg_0), countOneBits(vec4<u32>(4294967295u, 23835u, u_input.a.x, 1068u)))), u_input.b.x);
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = func_4(_wgslsmith_mod_u32(~max(max(u_input.a.x, 1u), min(u_input.a.x, u_input.c)), ((u_input.c ^ u_input.a.x) >> (~36965u % 32u)) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f + -1000f)), -1000f, _wgslsmith_f_op_f32(max(1917f, _wgslsmith_f_op_f32(func_2(61456u, Struct_1(74720u, arg_0)))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1153f * -278f), _wgslsmith_f_op_f32(min(1937f, 197f)), _wgslsmith_f_op_f32(f32(-1f) * -2519f))))));
    let var_1 = vec3<i32>(-var_0.b, _wgslsmith_sub_i32(-arg_0, ~abs(u_input.b.x)), _wgslsmith_add_i32(u_input.b.x, arg_0));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(918f)) - _wgslsmith_f_op_f32(-1f)));
    var_2 = -1539f;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-428f, -550f), vec2<f32>(-1975f, -682f))))))));
    return vec4<u32>(~27244u, _wgslsmith_div_u32(abs(~1u), ~(~var_0.a)), var_0.a >> ((~var_0.a & reverseBits(4294967295u)) % 32u), select(_wgslsmith_sub_u32(var_0.a ^ var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 14876u, 19966u), vec3<u32>(4294967295u, 62533u, 6858u))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c, var_0.a), 1u, 16247u), false)) | abs(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.c) ^ vec4<u32>(var_0.a, var_0.a, 1u, 67949u)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.c, u_input.c, var_0.a) & vec4<u32>(var_0.a, var_0.a, var_0.a, 47997u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = func_1(-u_input.b.x);
    let var_2 = func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, 1945f, -1326f) * vec3<f32>(-1758f, 2180f, 656f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, 1633f, 510f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1416f), _wgslsmith_f_op_f32(-158f - -324f), 1283f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(min(-1309f, -790f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-968f, 110f, true)))))));
    var_0 = max(var_2.b, 10108i);
    var var_3 = func_4(~(~var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, -816f, -788f) - vec3<f32>(-161f, -607f, 928f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, -1388f, -1000f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(919f, 277f, -1190f) * vec3<f32>(1000f, -1480f, 813f)))))));
    var_3 = func_4(~var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(527f - 783f))), -1649f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1605f, -100f) - _wgslsmith_f_op_f32(562f + 569f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1021f, -193f)), vec3<f32>(_wgslsmith_f_op_f32(1026f - 782f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f), vec3<bool>(true, true, true)))));
    var_3 = func_4(select(var_1.x, ~abs(abs(0u)), any(vec4<bool>(true, all(vec2<bool>(false, true)), true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-2371f, -1141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-578f))), _wgslsmith_f_op_f32(-396f - _wgslsmith_f_op_f32(-280f * 379f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(116f - -532f), _wgslsmith_f_op_f32(min(-296f, 964f)), _wgslsmith_f_op_f32(1462f + -470f)), vec3<f32>(-2225f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -399f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, i32(-1i) * -53328i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_3.b, 2147483647i, var_2.b), _wgslsmith_add_i32(1i, var_3.b), var_2.b), vec3<i32>(51272i, var_2.b, 2147483647i) << (vec3<u32>(102761u, 44391u, var_2.a) % vec3<u32>(32u)))));
}

