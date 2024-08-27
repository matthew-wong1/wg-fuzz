struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-866f, vec2<i32>(-62869i, 2147483647i)), Struct_1(881f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(-1292f, vec2<i32>(32915i, 2147483647i)), Struct_1(-696f, vec2<i32>(-30734i, 2090i)), Struct_1(-276f, vec2<i32>(-1i, 3555i)), Struct_1(1000f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(-498f, vec2<i32>(2147483647i, 8860i)), Struct_1(685f, vec2<i32>(37771i, 2147483647i)), Struct_1(-1611f, vec2<i32>(11527i, 23041i)), Struct_1(509f, vec2<i32>(11511i, 0i)), Struct_1(981f, vec2<i32>(i32(-2147483648), 1i)), Struct_1(532f, vec2<i32>(0i, 11499i)), Struct_1(345f, vec2<i32>(-2999i, -1i)), Struct_1(1344f, vec2<i32>(34193i, 1i)), Struct_1(760f, vec2<i32>(0i, -1i)));

var<private> global2: u32 = 51352u;

var<private> global3: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-792f, -410f, 1361f, 1168f), vec4<f32>(-504f, 106f, -490f, -320f), vec4<f32>(3581f, -598f, -556f, -1000f), vec4<f32>(1107f, 172f, 347f, 2001f), vec4<f32>(1840f, -1306f, -236f, -275f), vec4<f32>(649f, 983f, 1000f, -1068f), vec4<f32>(560f, 1000f, 843f, 299f), vec4<f32>(1372f, -388f, 379f, 507f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    global0 = -1829f;
    var var_0 = firstTrailingBit(max(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 4708i, 0i, -40557i), vec4<i32>(2147483647i, 25362i, u_input.a, u_input.a)) | vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), select(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), countOneBits(vec4<i32>(12989i, 34601i, u_input.a, -39810i)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))), -vec4<i32>(-2147483647i, -6481i, select(0i, 2147483647i, true), 45689i)));
    var var_1 = Struct_1(1174f, vec2<i32>(-31319i, countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.x, u_input.a), vec3<i32>(2147483647i, var_0.x, u_input.a)), _wgslsmith_mult_i32(u_input.a, u_input.a)))));
    global2 = 0u;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f)), _wgslsmith_f_op_f32(select(var_1.a, 1422f, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))))), 599f, var_1.a);
    return arg_0.wzw;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_0, 0u), func_3(vec4<u32>(62827u, arg_0, 1u, 1u))) ^ (vec3<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(0u, arg_0), 1u) ^ vec3<u32>(arg_0 >> (36370u % 32u), 0u << (arg_0 % 32u), arg_0)));
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(select(~_wgslsmith_add_u32(~17760u, var_0.x), _wgslsmith_dot_vec2_u32(var_0.xy, abs(vec2<u32>(19735u, arg_0))), true)), 15u)];
    let var_2 = 13480i;
    var var_3 = !((-819f > arg_2.a.x) | false);
    var var_4 = vec2<u32>(1u, abs(~0u));
    return select(!vec4<bool>(true, any(vec2<bool>(false, true)), false, false), select(vec4<bool>(true, !(1422f <= var_1.a), all(vec2<bool>(true, true)) || (arg_2.a.x > 188f), var_1.a >= _wgslsmith_f_op_f32(f32(-1f) * -475f)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, 18915u >= countOneBits(arg_0), any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, false, true)) & true)), all(vec4<bool>(false, all(vec2<bool>(true, true)), true, false)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = select(func_2(~1u, -(~vec4<i32>(42581i, u_input.a, u_input.a, -7111i)) & firstTrailingBit(abs(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(929f * -240f)))), !vec4<bool>((u_input.a <= -2147483647i) && any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, true)), true, true), !(!vec4<bool>(all(vec2<bool>(false, true)), true, false, true)));
    let var_1 = max(2147483647i, u_input.a) | u_input.a;
    var var_2 = vec3<i32>(~(var_1 | -_wgslsmith_mod_i32(u_input.a, 13467i)), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1, u_input.a, 1i), vec4<i32>(u_input.a, -11329i, 0i, 0i)) >> (select(arg_0, 4294967295u, var_0.x) % 32u)) >> (_wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0, 1586u), ~19359u)) % 32u), u_input.a);
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    var_2 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(-2147483647i, var_2.x)), var_3.b), _wgslsmith_add_i32(var_1, var_3.b.x), -(~u_input.a) & var_1);
    return ~firstLeadingBit(~vec2<u32>(_wgslsmith_add_u32(0u, arg_0), 4294967295u));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = all(select(!vec4<bool>(true, true, 877f != arg_2.a, any(vec2<bool>(false, false))), vec4<bool>(true, any(vec3<bool>(false, false, false)), !all(vec4<bool>(false, false, true, true)), _wgslsmith_mod_u32(arg_0, 38203u) >= 35722u), vec4<bool>(true, true, all(vec2<bool>(true, true)), true)));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a, arg_2.a, arg_2.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, 2165f, 1947f), vec3<f32>(arg_2.a, arg_2.a, arg_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 2641f, -2227f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.a, -201f, arg_2.a)))), func_2(abs(min(arg_0, arg_0)), abs(vec4<i32>(1i, -2147483647i, 2147483647i, arg_2.b.x) << (vec4<u32>(arg_1.x, 1u, arg_0, 37841u) % vec4<u32>(32u))), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, arg_2.a), vec2<f32>(arg_2.a, -785f)))).x)));
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 1u, 109473u) ^ vec3<u32>(arg_0, arg_0, 106922u), func_3(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 38745u))), select(vec3<u32>(arg_0, arg_1.x, 21629u), vec3<u32>(arg_0, 0u, 0u), any(vec2<bool>(false, var_0)))), 49697u ^ (~arg_0 & 61641u), ~(arg_1.x ^ ~1u));
    var_1 = -u_input.a;
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-416f + 1993f), -1974f))), 1000f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(307f)))));
    global2 = ~_wgslsmith_sub_u32(max(~1u, 37437u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(22331u, 0u)), 1u));
    var var_1 = vec2<bool>(!(1u > select(~68853u, _wgslsmith_clamp_u32(67532u, 1u, 9547u), false)), !func_4(924u, func_1(~30663u), Struct_1(1f, vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, 8230i))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - -1546f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1586f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), 1391f)));
    var var_2 = select(vec2<bool>(false & var_1.x, true), select(vec2<bool>(true, !select(true, true, var_1.x)), vec2<bool>(func_2(~9866u, vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), Struct_2(var_0.yx)).x, true), any(vec4<bool>(true, true, any(vec2<bool>(false, false)), true))), func_2(_wgslsmith_mod_u32(max(1u, _wgslsmith_add_u32(15969u, 46191u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 11631u, 30273u))), vec4<i32>(_wgslsmith_mod_i32(-u_input.a, -2147483647i), -1i, -(u_input.a >> (0u % 32u)), u_input.a), Struct_2(vec2<f32>(var_0.x, 1000f))).ww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xz * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)))) - var_0.yz), u_input.a, -1000f, firstTrailingBit(countOneBits(min(vec4<i32>(u_input.a, -2147483647i, 25784i, u_input.a), vec4<i32>(1i, u_input.a, -64376i, 0i)))) >> (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(8977u, 4294967295u, 57047u, 64068u), ~vec4<u32>(1u, 13114u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, var_2.x, true)) % vec4<u32>(32u)), var_0.x);
}

