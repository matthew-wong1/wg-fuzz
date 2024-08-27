struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: array<f32, 8> = array<f32, 8>(320f, 739f, -788f, -1000f, 334f, -106f, 522f, -851f);

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-2043f, vec2<f32>(740f, 417f), false), Struct_1(620f, vec2<f32>(-597f, -438f), true), Struct_1(1307f, vec2<f32>(1937f, -1260f), true), Struct_1(-308f, vec2<f32>(789f, -852f), true), Struct_1(-1507f, vec2<f32>(651f, 834f), false), Struct_1(957f, vec2<f32>(-237f, -1634f), false), Struct_1(1271f, vec2<f32>(609f, 1559f), true), Struct_1(-2838f, vec2<f32>(-151f, 160f), true), Struct_1(-1000f, vec2<f32>(-672f, 474f), true), Struct_1(-261f, vec2<f32>(447f, -1632f), true), Struct_1(-397f, vec2<f32>(538f, 667f), false), Struct_1(2858f, vec2<f32>(1000f, 300f), true), Struct_1(1348f, vec2<f32>(-747f, -393f), false), Struct_1(-955f, vec2<f32>(951f, -235f), true), Struct_1(991f, vec2<f32>(1002f, -1985f), true), Struct_1(-142f, vec2<f32>(472f, -235f), false), Struct_1(717f, vec2<f32>(174f, -170f), true), Struct_1(279f, vec2<f32>(-839f, 1931f), false), Struct_1(-1445f, vec2<f32>(1393f, 2099f), false), Struct_1(-714f, vec2<f32>(1198f, -776f), false), Struct_1(-735f, vec2<f32>(-803f, -483f), false), Struct_1(-406f, vec2<f32>(-1227f, -395f), true), Struct_1(745f, vec2<f32>(1877f, -1201f), false), Struct_1(-1697f, vec2<f32>(784f, -1000f), false), Struct_1(-2128f, vec2<f32>(-1747f, -239f), false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = !select(!vec4<bool>(all(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(true, false)), false), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), (true & any(vec4<bool>(true, false, false, false))) || true);
    var var_1 = -1i;
    var var_2 = Struct_1(1156f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 8u)])) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, 340f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-842f, -1234f)))))), true);
    let var_3 = Struct_2(countOneBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, 1u, u_input.a, global0.x)), vec4<u32>(14149u, 0u, u_input.b, 31786u))) >= ~0u, vec2<i32>(1i, ~firstTrailingBit(~1i)), 1i, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~global0.x) | u_input.a, 8u)]));
    var var_4 = Struct_2(true, -var_3.b, _wgslsmith_add_i32(var_3.b.x, -16730i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~120463u, 8u)]))))));
    return !(!var_0.wx);
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    global1 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2299f + -870f))), -998f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(global0.x, 8u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(14160u, 8u)]))))), select(!arg_0.a.x, select(arg_0.a.x && false, false, true), true)));
    let var_1 = !func_3();
    let var_2 = Struct_2(var_1.x, select(_wgslsmith_mod_vec2_i32(firstLeadingBit(~vec2<i32>(3122i, -16153i)), vec2<i32>(reverseBits(-25108i), reverseBits(-2147483647i))), vec2<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(18399i, -5380i, -20860i), -2147483647i)), vec2<bool>(false, !func_3().x)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -17756i, 0i, -13380i), vec4<i32>(1i, 50235i, 2147483647i, 49111i)), countOneBits(vec4<i32>(-20721i, 2147483647i, -575i, 23107i)))), vec4<i32>(-11130i, 1i, 27156i, -37347i) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.b, global0.x), vec4<u32>(u_input.a, 19578u, u_input.a, 4294967295u))) % vec4<u32>(32u))), -801f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-829f, _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2078f, -1303f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.x, 8u)])), 688f, _wgslsmith_div_f32(var_0.x, -304f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_2.d)))))) * vec3<f32>(_wgslsmith_f_op_f32(-159f * _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -772f), -1000f));
    return vec2<u32>(0u, select(_wgslsmith_div_u32(reverseBits(60583u | global0.x), _wgslsmith_dot_vec2_u32(select(u_input.c.xz, u_input.c.xy, var_1), _wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(global0.x, 29632u)))), global0.x, true == (~var_2.b.x > -4298i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_sub_vec2_u32(func_2(Struct_3(select(!vec3<bool>(arg_1.c, arg_1.c, true), vec3<bool>(arg_1.c, arg_1.c, true), arg_1.c && false))), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x & countOneBits(u_input.c.x), ~(u_input.c.x | 47161u)), vec2<u32>(reverseBits(global0.x) ^ countOneBits(1u), 19320u)));
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    global1 = array<f32, 8>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(250f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(max(-2243f, arg_1.a)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(f32(-1f) * -337f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a - 1184f), global1[_wgslsmith_index_u32(~global0.x, 8u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-277f + global1[_wgslsmith_index_u32(36310u << (global0.x % 32u), 8u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1280f + 170f) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-849f, -1593f), _wgslsmith_f_op_f32(floor(arg_1.a))))), arg_0 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(46282u, 8u)] - -1544f) - _wgslsmith_f_op_f32(-arg_0)))));
    return Struct_3(!(!(!(!vec3<bool>(arg_1.c, arg_1.c, arg_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(global0.x | 17273u), 8u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(firstLeadingBit(u_input.b), 4294967295u)) ^ ~abs(10676u), 25u)]);
    global3 = array<Struct_1, 25>();
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global0.x, global0.x, global0.x)), ~129848u, select(u_input.c.x, u_input.c.x, var_0.a.x)) << (~global0.x % 32u), _wgslsmith_mult_u32(4294967295u << (0u % 32u), ~u_input.c.x), ~0u, u_input.c.x) ^ vec4<u32>(32140u, 1u, ~32314u, 4294967295u);
    let var_2 = true;
    let var_3 = vec4<bool>(any(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.x, 8u)], 1684f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 8u)]))), Struct_1(-2594f, vec2<f32>(1000f, -2000f), true)).a), true, false && var_2, any(select(!(!var_0.a.xx), !(!vec2<bool>(false, var_0.a.x)), func_1(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(80196u, 25u)]).a.xx)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, global1[_wgslsmith_index_u32(1u, 8u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(56548u, 8u)]))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(global0.x, 8u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], 352f) + vec2<f32>(1016f, -447f))))));
    let var_5 = var_0.a.x;
    let var_6 = select(vec4<u32>(~6178u, ~_wgslsmith_sub_u32(abs(3824u), 0u), (firstLeadingBit(u_input.a) >> (4294967295u % 32u)) >> (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(7294u, 13297u, 38585u)) % 32u), abs(min(var_1.x, u_input.c.x))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, abs(1u), func_2(Struct_3(var_0.a)).x, var_1.x & var_1.x), ~(~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 1u)))), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(317f, var_4.x)))) + -253f));
}

