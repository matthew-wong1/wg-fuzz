struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<bool, 23>;

var<private> global2: array<i32, 20>;

var<private> global3: u32 = 17281u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = min(vec2<u32>(4294967295u, select(u_input.a, _wgslsmith_mod_u32(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(u_input.b, 23u)])), vec2<u32>(32522u, 28734u)) | vec2<u32>(firstTrailingBit(u_input.b), max(u_input.a, 75866u ^ _wgslsmith_div_u32(u_input.b, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(49163u), ~1u), 18u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, -656f)))));
    var var_2 = Struct_2(u_input.c.x, vec3<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(~43414u), 20u)] << (max(_wgslsmith_mod_u32(4294967295u, 52124u), 0u) % 32u), -46434i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -43476i, global2[_wgslsmith_index_u32(56413u, 20u)], u_input.c.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.c.x, 20312i, global2[_wgslsmith_index_u32(var_0.x, 20u)])), _wgslsmith_mult_i32(firstLeadingBit(u_input.c.x), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_0.x, 20u)], u_input.c.x)), global1[_wgslsmith_index_u32(var_0.x, 23u)])));
    var_2 = Struct_2(2147483647i, ~(-(vec3<i32>(var_2.a, u_input.c.x, global2[_wgslsmith_index_u32(39023u, 20u)]) << (~vec3<u32>(u_input.a, 10507u, var_0.x) % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, 1000f)), _wgslsmith_f_op_f32(step(-1300f, 527f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(156f - var_1.x)), var_1.x, _wgslsmith_f_op_f32(select(-1037f, -2225f, !global1[_wgslsmith_index_u32(u_input.a, 23u)])))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1307f, var_1.x) + global0[_wgslsmith_index_u32(1u, 18u)]))), vec2<f32>(-1217f, _wgslsmith_div_f32(var_1.x, -706f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.xx)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, -664f), _wgslsmith_div_vec2_f32(var_3.xy, vec2<f32>(var_1.x, -903f)), !global1[_wgslsmith_index_u32(var_0.x, 23u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2176f, 742f), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, 1000f), vec2<f32>(var_3.x, -116f))) * var_1), var_3.zz));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_1(u_input.c.x, u_input.b, _wgslsmith_mult_vec2_u32(abs(~min(vec2<u32>(0u, u_input.a), vec2<u32>(0u, u_input.a))), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(u_input.b, ~u_input.a))), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(min(532f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(966f + arg_0.x))) + arg_0.x)))));
    var var_2 = ~reverseBits(1u) != (u_input.a << ((_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(u_input.a, 0u, 113882u)) | ~(~var_0.b)) % 32u));
    global0 = array<vec2<f32>, 18>();
    let var_3 = vec3<i32>(0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.b, u_input.a, true), u_input.b, _wgslsmith_clamp_u32(0u, 59306u, var_0.c.x), 1u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.b, var_0.b, 4294967295u), ~vec4<u32>(u_input.a, 0u, 1u, 4294967295u))) % 32u), ~(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(122796u, 45300u, 45258u, 0u), vec4<u32>(7457u, 36846u, 4294967295u, 0u)), 20u)], 12006i) >> (_wgslsmith_sub_u32(15293u, ~var_0.c.x) % 32u)), 2147483647i);
    return any(vec2<bool>(global1[_wgslsmith_index_u32(42948u, 23u)], any(vec3<bool>(true, true, arg_1.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> i32 {
    global3 = _wgslsmith_add_u32(abs(abs(max(~u_input.b, 4294967295u))), 1u);
    let var_0 = vec4<bool>(any(arg_0), arg_0.x, !func_4(_wgslsmith_f_op_vec2_f32(func_3(false)), arg_0) | true, true);
    var var_1 = -903f;
    var var_2 = _wgslsmith_add_u32(reverseBits(u_input.b), ~u_input.b);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1036f)) + 780f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(false)).x)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(trunc(-1243f)))))))));
    return _wgslsmith_dot_vec3_i32(u_input.c, max(select(abs(u_input.c), u_input.c, !vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], var_0.x)), vec3<i32>(reverseBits(arg_2), -31644i, u_input.c.x >> (1u % 32u)))) & global2[_wgslsmith_index_u32(0u, 20u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -563f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1023f))))));
    let var_1 = Struct_2(~arg_0.a, max(-arg_0.d, arg_0.d));
    global1 = array<bool, 23>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1662f, -1988f)))), -1494f)));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1851f, 1000f))) - 1660f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(272f, 1000f)) - _wgslsmith_f_op_f32(abs(-427f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1630f + -331f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-907f))))), _wgslsmith_f_op_f32(trunc(1663f)));
    return StorageBuffer(i32(-1i) * -2147483647i, arg_1, reverseBits(_wgslsmith_mod_u32(~4294967295u, ~16183u)), var_3.x, firstLeadingBit(~arg_1.zy));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec3<u32>(u_input.a, 13315u, _wgslsmith_mod_u32(u_input.b, 100665u));
    global1 = array<bool, 23>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_2 = ~firstTrailingBit(_wgslsmith_div_vec4_u32(~(vec4<u32>(28154u, 0u, var_0.x, var_0.x) >> (vec4<u32>(112839u, 21460u, 4294967295u, 13843u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_0.x, 1u) & vec4<u32>(u_input.a, 5149u, 1u, u_input.b), vec4<u32>(4294967295u, var_0.x, u_input.b, var_0.x) ^ vec4<u32>(66078u, 1u, var_0.x, 1u), vec4<u32>(u_input.a, 13026u, 0u, var_0.x) & vec4<u32>(0u, var_0.x, 4333u, 28586u))));
    let var_3 = vec2<u32>(var_0.x, 1u);
    return func_5(Struct_1(func_2(!(!vec4<bool>(global1[_wgslsmith_index_u32(var_3.x, 23u)], global1[_wgslsmith_index_u32(var_3.x, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], false)), true, ~countOneBits(u_input.c.x)), u_input.a, vec2<u32>(8312u, var_0.x), vec3<i32>(global2[_wgslsmith_index_u32(~(u_input.b & 1u), 20u)], 1i | (global2[_wgslsmith_index_u32(0u, 20u)] >> (var_2.x % 32u)), 1530i)), abs(min(vec4<u32>(4294967295u, var_3.x, ~0u, u_input.b), ~vec4<u32>(0u, var_3.x, 15126u, 10727u) >> (firstTrailingBit(vec4<u32>(4294967295u, 23036u, 1u, 32935u)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

