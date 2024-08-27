struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3>;

var<private> global1: array<vec3<i32>, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> f32 {
    global0 = array<vec2<bool>, 3>();
    global0 = array<vec2<bool>, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_div_f32(771f, 1241f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -330f), -1042f)))));
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 29>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-311f - 1002f), 1f) - _wgslsmith_f_op_f32(f32(-1f) * -161f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1661f * _wgslsmith_f_op_f32(abs(384f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-830f, -535f)) * -219f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(u_input.c.xy, min(vec4<i32>(-1i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(1i, -1i, u_input.b, u_input.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1078f), _wgslsmith_f_op_f32(abs(1168f)))), all(vec4<bool>(false, true, true, true)) | true)), !(~1u == u_input.c.x))));
    var var_1 = 1i ^ (~23284i & reverseBits(u_input.b));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~u_input.c.x) << (_wgslsmith_add_u32(16295u, u_input.c.x) % 32u), ~_wgslsmith_clamp_u32(52449u, 4294967295u, 0u) | ~(4294967295u | u_input.c.x), u_input.c.x, ~1u), firstLeadingBit(~max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 82408u), vec4<u32>(90474u, 96319u, u_input.c.x, u_input.c.x)) | reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-305f - -789f) - _wgslsmith_f_op_f32(861f * 119f)) * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(countOneBits(select(vec2<u32>(4294967295u, u_input.c.x), var_2.zx, vec2<bool>(false, true))), vec4<i32>(u_input.a.x, u_input.a.x, i32(-1i) * -32830i, u_input.a.x))), _wgslsmith_f_op_f32(min(var_0.x, 983f)))), _wgslsmith_f_op_f32(-var_0.x));
    return Struct_1(~var_2.xx);
}

fn func_1() -> vec3<u32> {
    let var_0 = !(any(vec4<bool>(true, true, true, true)) && true) && (any(!global0[_wgslsmith_index_u32(u_input.c.x & 4294967295u, 3u)]) == all(select(global0[_wgslsmith_index_u32(~60829u, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34251u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), 3u)], !global0[_wgslsmith_index_u32(u_input.c.x, 3u)])));
    let var_1 = func_2();
    global1 = array<vec3<i32>, 29>();
    let var_2 = Struct_1(abs(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, var_1.a.x), abs(8063u)), ~min(var_1.a, var_1.a))));
    var var_3 = !select(!select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, false, false), vec3<bool>(false, true, true), vec3<bool>(false, var_0, true)), any(vec3<bool>(true, var_0, true))), vec3<bool>(any(select(vec3<bool>(true, false, var_0), vec3<bool>(true, var_0, var_0), false)), all(vec4<bool>(var_0, var_0, var_0, false)), abs(u_input.b) != u_input.a.x), vec3<bool>(any(select(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(var_2.a.x, 3u)], true)), !any(vec4<bool>(var_0, var_0, true, var_0)), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_1.a.x, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]) > 0i));
    return ~u_input.c;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-908f, arg_1)) - _wgslsmith_f_op_f32(round(-698f)))))));
    let var_1 = -105f;
    return Struct_1(u_input.c.xz & arg_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstTrailingBit(~(~u_input.c) >> (func_1() % vec3<u32>(32u))), -224f, u_input.c);
    var var_1 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-6769i, u_input.a.x), firstTrailingBit(-1i), u_input.a.x, _wgslsmith_div_i32(u_input.b, -2147483647i)), ~vec4<i32>(11982i, u_input.b, u_input.b, u_input.b)), firstLeadingBit(~(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 5053i) | vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true))), -(-max(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 27247i), vec4<i32>(u_input.a.x, -15281i, -70246i, 2147483647i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-58400i, -2147483647i, u_input.a.x, -887i), vec4<i32>(4984i, 0i, -47239i, u_input.b) << (vec4<u32>(u_input.c.x, 37909u, 11845u, u_input.c.x) % vec4<u32>(32u)))));
    let var_2 = -9370i;
    var var_3 = select(vec3<bool>(true, !(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -7096i, u_input.a.x, 0i), vec4<i32>(var_1.x, -44538i, u_input.b, var_2)) < u_input.a.x), any(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), true), true);
    var var_4 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_1.yyy, vec3<i32>(var_2, -16202i, 2147483647i))), -_wgslsmith_mult_i32(0i, u_input.a.x), u_input.a.x, ~var_1.x) | min(-max(_wgslsmith_sub_vec4_i32(vec4<i32>(-5145i, 44111i, 17732i, 0i), vec4<i32>(-48128i, var_1.x, 0i, -19895i)), select(vec4<i32>(u_input.a.x, -28162i, -13266i, var_1.x), vec4<i32>(0i, 17946i, -1i, var_1.x), true)), _wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(20502i, var_2, -2147483647i, var_2), vec4<i32>(-29004i, 0i, var_2, var_2))), -max(vec4<i32>(-35338i, 1i, var_2, var_2), vec4<i32>(u_input.a.x, var_1.x, u_input.b, 37724i))));
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(330f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, 114f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, -538f) - vec2<f32>(127f, 1000f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(740f, 1000f), 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 517f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(521f, 3207f) + vec2<f32>(212f, -662f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5))))), ~var_0.a.x);
}

