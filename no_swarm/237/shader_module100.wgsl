struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: f32 = 1957f;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(1i, 9069i)), Struct_1(vec2<i32>(0i, 5023i)), Struct_1(vec2<i32>(11735i, -1i)), Struct_1(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(-4171i, -6398i)), Struct_1(vec2<i32>(2147483647i, -1i)), Struct_1(vec2<i32>(i32(-2147483648), 40926i)), Struct_1(vec2<i32>(11954i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, 9311i)), Struct_1(vec2<i32>(-9445i, -1i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(4152i, 1i)), Struct_1(vec2<i32>(-18656i, -1i)), Struct_1(vec2<i32>(2147483647i, 48799i)), Struct_1(vec2<i32>(25077i, i32(-2147483648))), Struct_1(vec2<i32>(-46614i, i32(-2147483648))), Struct_1(vec2<i32>(11223i, 36467i)), Struct_1(vec2<i32>(0i, 14099i)), Struct_1(vec2<i32>(i32(-2147483648), -3669i)), Struct_1(vec2<i32>(-1i, 2913i)), Struct_1(vec2<i32>(1i, 16363i)));

var<private> global3: vec2<bool>;

var<private> global4: array<bool, 25> = array<bool, 25>(false, true, true, true, false, false, false, false, false, true, false, false, false, true, true, false, false, true, true, false, false, true, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = select(_wgslsmith_clamp_i32(11639i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-35714i, _wgslsmith_dot_vec3_i32(vec3<i32>(-55106i, -11904i, -84928i), vec3<i32>(2147483647i, -9107i, -2147483647i)))), _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(14445i, -9114i), -1i, -27567i)), -70745i, any(vec4<bool>(true, ~u_input.a == 4294967295u, global4[_wgslsmith_index_u32(1u, 25u)] && (u_input.a < 113438u), true)));
    global2 = array<Struct_1, 23>();
    var_0 = reverseBits(~((0i >> (u_input.a % 32u)) << (4294967295u % 32u)) ^ 44996i);
    let var_1 = Struct_3(-max(vec4<i32>(-1463i, 2147483647i, 2147483647i, -25161i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-33793i, -333i, -2147483647i, 0i), vec4<i32>(-1i, 1i, -1i, 56785i), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 25u)], false, global3.x, global4[_wgslsmith_index_u32(u_input.a, 25u)])), vec4<i32>(-10163i, -16779i, -8108i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(-941f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-956f, 874f)) + _wgslsmith_f_op_f32(f32(-1f) * -1715f)), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -853f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-582f, -1735f, 1062f, 408f), vec4<f32>(1364f, 436f, 1243f, 786f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-351f, 1511f, -372f, -340f)))), !select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 25u)], global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global4[_wgslsmith_index_u32(u_input.a, 25u)], global3.x), vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(10354u, 25u)])))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-837f, _wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(-1259f * 713f), 790f))))), select(select(select(vec4<bool>(global3.x, true, true, true), vec4<bool>(global3.x, global3.x, false, global4[_wgslsmith_index_u32(u_input.a, 25u)]), global3.x && false), select(select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 25u)], false, global4[_wgslsmith_index_u32(u_input.a, 25u)], false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global3.x, global4[_wgslsmith_index_u32(u_input.a, 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)]), global4[_wgslsmith_index_u32(1u, 25u)]), !vec4<bool>(global4[_wgslsmith_index_u32(46992u, 25u)], global4[_wgslsmith_index_u32(14054u, 25u)], true, false), select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)], false), vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(27515u, 25u)]), true)), global3.x), vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), 25u)], global3.x, all(!vec4<bool>(false, global4[_wgslsmith_index_u32(53278u, 25u)], false, false)), true), vec4<bool>(true, global3.x, 63892i > firstTrailingBit(-1i), global4[_wgslsmith_index_u32(11060u, 25u)]))));
    return countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, _wgslsmith_add_i32(20185i, var_1.a.x), min(-289i, var_1.a.x)), vec3<i32>(var_1.a.x, _wgslsmith_clamp_i32(0i, ~23229i, -2147483647i), var_1.a.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = !select(select(vec3<bool>(global3.x, global3.x && true, var_0), global0[_wgslsmith_index_u32(~u_input.a, 32u)], !vec3<bool>(false, var_0, global3.x)), !vec3<bool>(true, true, arg_1 > arg_1), any(vec3<bool>(false, true, any(vec4<bool>(global4[_wgslsmith_index_u32(1u, 25u)], false, global3.x, global4[_wgslsmith_index_u32(0u, 25u)])))));
    let var_2 = vec2<i32>(-1i ^ ~arg_1, 2147483647i);
    var var_3 = vec3<i32>(2147483647i, arg_2.a.x, arg_2.a.x) | func_3();
    global3 = vec2<bool>(false, arg_0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f - -2283f)));
    return -354f;
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 23>();
    var var_0 = global3.x;
    var var_1 = -(~vec3<i32>(select(_wgslsmith_clamp_i32(2147483647i, 65629i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(18428i, -34242i, 6954i), vec3<i32>(65743i, -1i, 2147483647i)), false), 1i, ~(i32(-1i) * -2147483647i)));
    global4 = array<bool, 25>();
    var var_2 = Struct_1(vec2<i32>(firstLeadingBit(18549i), select(19579i, abs(_wgslsmith_mod_i32(var_1.x, var_1.x)), false)));
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(267f, -586f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2069f, 1000f)))))), var_2.a.x, Struct_3(-abs(~vec4<i32>(var_2.a.x, var_2.a.x, 0i, 0i))), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29730u, 51610u, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u) | vec3<u32>(u_input.a, 30888u, 1u)), 12918u)), 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 32>();
    var var_0 = false;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    var var_1 = vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f * _wgslsmith_f_op_f32(219f - 289f))), _wgslsmith_f_op_f32(step(-102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) * -737f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(-741f, 278f), -2147483647i, Struct_3(vec4<i32>(1i, -2147483647i, 49230i, -2147483647i)), Struct_1(vec2<i32>(-53498i, -42393i)))), _wgslsmith_div_f32(1000f, -534f)), -abs(-2147483647i), Struct_3(~vec4<i32>(-2147483647i, 1i, -8204i, -37578i)), global2[_wgslsmith_index_u32(~0u, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -798f)), 494f);
    var var_2 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(10839u, 70305u, u_input.a, 13976u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), firstLeadingBit(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var var_3 = ~38038i;
    var_0 = !(!(!(!global4[_wgslsmith_index_u32(u_input.a, 25u)] == (global3.x | global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(~var_2.yx), _wgslsmith_clamp_vec2_u32(var_2.zw, _wgslsmith_div_vec2_u32(var_2.xz, vec2<u32>(u_input.a, 64592u)), var_2.zx | vec2<u32>(0u, 16922u)) ^ var_2.zx), -2147483647i);
}

