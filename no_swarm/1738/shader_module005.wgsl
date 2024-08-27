struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = ~(_wgslsmith_div_vec3_i32((vec3<i32>(1i, 10576i, u_input.b) ^ vec3<i32>(u_input.b, u_input.b, 1i)) & firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec3<i32>(1i, 1i, 19075i) >> (u_input.a.zyw % vec3<u32>(32u)))) ^ vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i), vec4<i32>(1i, -1i, u_input.b, u_input.b)), _wgslsmith_clamp_i32(7227i, u_input.b, -1i), u_input.b), u_input.b, -(~1i)));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, ~18941u), u_input.c.x, 4294967295u), ~(~(vec4<u32>(7668u, u_input.c.x, u_input.a.x, u_input.a.x) & vec4<u32>(36795u, 0u, 85462u, u_input.a.x)))), var_0.x, all(vec4<bool>(false, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(!global0[_wgslsmith_index_u32(4294967295u, 4u)]))), u_input.b, 499f);
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    let var_2 = var_1;
    return var_2.a.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, u_input.b, arg_1, ~max(_wgslsmith_sub_i32(arg_2, 0i) ^ ~(-1i), u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-788f - -898f), _wgslsmith_f_op_f32(min(arg_3, 1525f))))))));
    var var_1 = var_0;
    var_1 = Struct_1(vec4<u32>(func_3(_wgslsmith_f_op_f32(trunc(-439f))) ^ (var_0.a.x | ~4294967295u), u_input.c.x, var_0.a.x, var_1.a.x), 0i, true, _wgslsmith_mod_i32(var_0.d, 1i >> (var_0.a.x % 32u)), _wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(max(-1787f, -684f))));
    var var_2 = vec4<u32>(~15585u ^ firstTrailingBit(var_0.a.x ^ var_1.a.x), 26768u >> (firstLeadingBit(u_input.c.x | u_input.c.x) % 32u), select(~(u_input.c.x & 0u), ~_wgslsmith_dot_vec3_u32(u_input.a.zzz, var_1.a.xwx), false), ~(45412u >> (var_1.a.x % 32u)) | _wgslsmith_div_u32(4294967295u, countOneBits(var_1.a.x))) >> (var_1.a % vec4<u32>(32u));
    return var_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = func_2((-1i >= (1131i & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, -41845i, arg_0.d, -1230i), vec4<i32>(arg_0.b, -69137i, -17401i, -1i)))) | true, true, _wgslsmith_sub_i32(arg_0.b, u_input.b & ~(2147483647i >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e))));
    global0 = array<vec4<bool>, 4>();
    var var_1 = func_2(~_wgslsmith_mod_u32(1u, ~u_input.a.x) == (~arg_0.a.x | _wgslsmith_mult_u32(~arg_0.a.x, ~1u)), arg_0.c, abs(arg_0.d) ^ abs(1i), 193f);
    global0 = array<vec4<bool>, 4>();
    var var_2 = func_2(!arg_0.c, arg_0.c, _wgslsmith_sub_i32(arg_0.d, -30897i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e + 455f))))) - 1436f));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 4>();
    var var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(u_input.a.x, 19743u, u_input.a.x, u_input.a.x), u_input.b, true, 0i, 133f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1223f, 267f))))) >= _wgslsmith_f_op_f32(1821f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(global0[_wgslsmith_index_u32(~(~u_input.a.x), 4u)]));
    var var_1 = func_2(true, -430f < _wgslsmith_f_op_f32(trunc(255f)), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) * _wgslsmith_div_f32(-1130f, -353f)))) - -247f)).a.x;
    var var_2 = ~u_input.a.x;
    var_2 = ~u_input.c.x;
    let var_3 = var_0.x;
    var var_4 = func_2(var_0.x, true, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f + _wgslsmith_f_op_f32(-1681f + -911f)))));
    var var_5 = func_2(_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), 0u) < 20613u, all(vec4<bool>(var_0.x, !var_0.x, false, true)), firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(var_4.b, u_input.b, u_input.b)), ~(-vec3<i32>(-1i, -2147483647i, u_input.b)))), 933f);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e, 1i, countOneBits(vec4<i32>(var_4.b, -2147483647i, _wgslsmith_mod_i32(var_5.b, -50516i), _wgslsmith_mod_i32(5075i, -1i)) << (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.a.x, 4031u, u_input.a.x, u_input.a.x), var_5.a)) % vec4<u32>(32u))));
}

