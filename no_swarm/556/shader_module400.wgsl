struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(select(var_0.a, select(arg_0.a, arg_0.a, all(vec3<bool>(arg_0.a.x, false, false))), !any(arg_0.a)), _wgslsmith_div_i32(i32(-1i) * -(var_0.b ^ -1998i), 1i), arg_0.b, ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 1u, 42882u), vec4<u32>(4294967295u, var_0.d.x, 4294967295u, arg_0.d.x), ~vec4<u32>(1u, arg_0.d.x, u_input.c, 50881u))));
    var var_1 = arg_0;
    var_1 = Struct_1(vec4<bool>(_wgslsmith_add_u32(1u, var_1.d.x | 77676u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(54988u, var_1.d.x) & vec2<u32>(u_input.c, var_0.d.x), ~var_1.d.wz), true, any(vec4<bool>(true, var_0.a.x, true, true)), any(select(vec3<bool>(var_0.a.x, false, true), vec3<bool>(true, true, true), true))), var_1.c, _wgslsmith_mult_i32(~var_0.c | arg_0.c, max(1i, 1i)), arg_0.d);
    global0 = array<Struct_1, 23>();
    return _wgslsmith_add_i32(u_input.b, 39728i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, reverseBits(func_3(global0[_wgslsmith_index_u32(0u, 23u)])));
    return 13044i;
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<Struct_1, 23>();
    var var_0 = Struct_1(vec4<bool>(true, !(any(vec3<bool>(false, true, false)) && true), false, false), _wgslsmith_div_i32(-2147483647i, min(func_2(global0[_wgslsmith_index_u32(u_input.c, 23u)], Struct_1(vec4<bool>(true, true, true, true), -2147483647i, u_input.a.x, vec4<u32>(u_input.c, u_input.c, 10216u, 21561u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1000f) - vec2<f32>(arg_0, -1820f))), -1i)), ~(~_wgslsmith_dot_vec3_i32(u_input.a.zzz, vec3<i32>(0i, u_input.a.x, u_input.b) << (vec3<u32>(0u, u_input.c, 2956u) % vec3<u32>(32u)))), ~min(vec4<u32>(31017u, 74880u, countOneBits(20706u), abs(u_input.c)), ~(vec4<u32>(u_input.c, u_input.c, 14039u, u_input.c) ^ vec4<u32>(u_input.c, 58241u, u_input.c, u_input.c))));
    var var_1 = abs(-23823i);
    let var_2 = Struct_1(var_0.a, 2147483647i, 1i, abs(vec4<u32>(var_0.d.x, _wgslsmith_add_u32(~u_input.c, var_0.d.x), _wgslsmith_sub_u32(0u >> (var_0.d.x % 32u), u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.x, 6745u), vec2<u32>(0u, var_0.d.x)), _wgslsmith_mod_vec2_u32(var_0.d.zx, vec2<u32>(var_0.d.x, 0u))))));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return -162f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(70025i, u_input.b & firstTrailingBit(2147483647i), -2147483647i), u_input.a.wxx));
    var var_1 = Struct_1(vec4<bool>(!(~74713u >= _wgslsmith_mod_u32(u_input.c, 4294967295u)), true, select(select(false, true, false) && true, 1206f != _wgslsmith_f_op_f32(trunc(-222f)), true), false), -_wgslsmith_div_i32(var_0.x >> (~1u % 32u), ~1i), 36794i, vec4<u32>(u_input.c, ~_wgslsmith_add_u32(u_input.c, 1u << (0u % 32u)), firstLeadingBit(1u), u_input.c));
    var_0 = u_input.a.yzy;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-458f)) - -866f))) + 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-663f)), _wgslsmith_f_op_f32(-907f + 662f), any(var_1.a.yyz))), _wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(1000f * -102f)))), _wgslsmith_f_op_f32(-1f), all(var_1.a))), _wgslsmith_f_op_f32(floor(575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(610f, -268f))) + 512f));
    global0 = array<Struct_1, 23>();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(f32(-1f) * -1623f)) + -144f), 488f, 1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 667f, var_2.x, -133f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-856f, -613f, -995f, -546f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-180f)), _wgslsmith_f_op_f32(floor(-1371f)), _wgslsmith_f_op_f32(-223f - var_2.x), _wgslsmith_f_op_f32(145f - var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-279f, var_2.x)) - var_2.x) > var_2.x)));
    let var_4 = Struct_1(!var_1.a, var_1.b << (1u % 32u), 40340i, var_1.d);
    let var_5 = ~(~(~vec4<u32>(0u, u_input.c, var_4.d.x, var_4.d.x)) & (var_4.d >> (_wgslsmith_mult_vec4_u32(reverseBits(var_1.d), var_4.d >> (var_4.d % vec4<u32>(32u))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1511f * 679f) + _wgslsmith_f_op_f32(exp2(var_3.x)))), var_4.d.zz, 520f);
}

