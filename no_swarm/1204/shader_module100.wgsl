struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-1007f, 724f), vec2<f32>(297f, -310f), vec2<f32>(1350f, -1415f), vec2<f32>(-1683f, -711f), vec2<f32>(1127f, 1180f), vec2<f32>(124f, 1905f), vec2<f32>(-1348f, 529f), vec2<f32>(1000f, -976f), vec2<f32>(-161f, -1108f), vec2<f32>(391f, 940f), vec2<f32>(408f, -1054f), vec2<f32>(420f, 800f), vec2<f32>(-692f, 1956f), vec2<f32>(-585f, -379f), vec2<f32>(-1256f, 1223f), vec2<f32>(498f, -193f), vec2<f32>(540f, 1532f), vec2<f32>(1508f, 180f), vec2<f32>(1000f, -1129f), vec2<f32>(-201f, -454f), vec2<f32>(-591f, -399f), vec2<f32>(1000f, 536f), vec2<f32>(327f, 174f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> bool {
    global2 = array<vec2<f32>, 23>();
    var var_0 = Struct_1(-(~(i32(-1i) * -u_input.b.x)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), true), ~333u);
    global2 = array<vec2<f32>, 23>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f + 697f)), _wgslsmith_f_op_f32(f32(-1f) * -453f), -702f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, 1250f, -290f, 210f) * vec4<f32>(-210f, 151f, -150f, -1048f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2315f, -263f, 949f, 621f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(596f, 1032f, -547f, -337f) * vec4<f32>(596f, -297f, 1215f, -1518f))))))));
    return true;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> Struct_4 {
    global1 = select(func_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, arg_1, arg_1 << (arg_0 % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), reverseBits(vec3<u32>(arg_0, arg_1, 5828u))))), false, select(func_3(86555u << (arg_1 % 32u)), any(vec3<bool>(true, true, true)), reverseBits(-1i) > ~_wgslsmith_sub_i32(arg_2.x, -1i)));
    global1 = any(vec2<bool>(any(vec2<bool>(true, true)), false));
    global2 = array<vec2<f32>, 23>();
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(14554i, -1i, u_input.a, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(8303i, u_input.a, -1i, 79264i) | vec4<i32>(-1i, -31141i, arg_2.x, u_input.a), vec4<i32>(u_input.b.x, -24967i, arg_2.x, -2147483647i) >> (vec4<u32>(arg_0, arg_0, arg_1, 1u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(abs(~vec4<i32>(u_input.a, -1i, arg_2.x, 1i)), -min(vec4<i32>(53719i, 1i, arg_2.x, u_input.a), vec4<i32>(arg_2.x, 2147483647i, 28912i, 3025i)))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, true) || true, false, false, any(vec3<bool>(false, false, true)) & any(vec2<bool>(false, true))), vec4<bool>(false && all(vec2<bool>(true, false)), true | all(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, false)), !select(true, false, false))), arg_1 << (arg_0 % 32u));
    global1 = true;
    return Struct_4(_wgslsmith_mult_u32(~reverseBits(select(arg_1, arg_1, var_0.b.x)), 11255u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<vec2<f32>, 6>();
    global1 = ~(~arg_3) <= arg_3;
    global0 = array<vec2<f32>, 6>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~80258u, ~reverseBits(arg_3), firstLeadingBit(1u) & _wgslsmith_clamp_u32(arg_3, arg_3, arg_3)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u << (arg_3 % 32u), 8358u), _wgslsmith_mult_u32(0u, ~13490u)));
    let var_1 = func_2(max(var_0, ~(~var_0) & 69605u), 1u, arg_1);
    return ~(~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~func_1(u_input.b.xz, vec2<i32>(u_input.a, u_input.a), 492f, 46979u) << (~min(49936u, 0u) % 32u)), 1u, select(_wgslsmith_mod_u32(1u, reverseBits(477u)) << ((func_1(vec2<i32>(u_input.a, 19166i), u_input.b.zy, 1765f, 1u) << (_wgslsmith_clamp_u32(4294967295u, 0u, 55405u) % 32u)) % 32u), 1u, (i32(-1i) * -52416i) > _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.a), u_input.b.zx, vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(u_input.b.zz, u_input.b.yz, u_input.b.xy))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(49785u, ~1u), 22944u));
    var var_1 = abs(var_0.x) <= _wgslsmith_div_u32(var_0.x, firstTrailingBit(~var_0.x));
    var var_2 = var_0;
    var var_3 = -(~u_input.b.yz);
    let var_4 = func_3(_wgslsmith_sub_u32(~var_2.x ^ func_1(u_input.b.yx << (var_2.zw % vec2<u32>(32u)), vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(-505f + -116f), ~var_2.x), var_2.x));
    var var_5 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-844f, -276f)) - _wgslsmith_f_op_f32(f32(-1f) * -963f)))), 491f, 939f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -815f))) - _wgslsmith_f_op_f32(-314f + _wgslsmith_f_op_f32(abs(-833f)))), 1394f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(543f)), _wgslsmith_f_op_f32(-281f - 2604f))))), 305f));
    var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_5.b.x)), _wgslsmith_f_op_f32(277f + -867f), _wgslsmith_f_op_f32(-var_5.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.a.x))), _wgslsmith_f_op_f32(-var_5.a.x), 1584f, var_5.b.x)));
    global1 = var_4;
    let var_6 = func_2((0u & select(var_0.x, var_2.x, true)) << (_wgslsmith_add_u32(0u, ~max(var_0.x, var_2.x)) % 32u), max(var_2.x, _wgslsmith_mult_u32(4294967295u, var_2.x) & ~var_0.x) << (76431u % 32u), ~(~(~reverseBits(u_input.b.zz))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a, _wgslsmith_clamp_i32(countOneBits(var_3.x) >> ((var_6.a << ((var_2.x ^ 25873u) % 32u)) % 32u), ~var_3.x ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -7463i), u_input.b.yz), 0i), ~u_input.a));
}

