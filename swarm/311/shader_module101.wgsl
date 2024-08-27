struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(12602u, 4294967295u, 46234u), Struct_1(4294967295u, vec3<f32>(-1232f, 133f, -391f)), Struct_1(13740u, vec3<f32>(-1000f, 1316f, 376f))), Struct_2(vec3<u32>(90078u, 78422u, 23478u), Struct_1(1u, vec3<f32>(-1000f, -1243f, 639f)), Struct_1(19133u, vec3<f32>(-717f, 571f, 1940f))), Struct_2(vec3<u32>(6330u, 1u, 41959u), Struct_1(39116u, vec3<f32>(1704f, -1195f, 831f)), Struct_1(0u, vec3<f32>(1137f, -754f, -1206f))));

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, vec3<f32>(-857f, 1397f, -830f)), Struct_1(72288u, vec3<f32>(-814f, -1226f, 2030f)), Struct_1(11884u, vec3<f32>(2700f, -1097f, 251f)), Struct_1(37733u, vec3<f32>(-1019f, 1426f, 263f)), Struct_1(25602u, vec3<f32>(629f, 781f, -546f)), Struct_1(28671u, vec3<f32>(567f, -456f, -776f)), Struct_1(0u, vec3<f32>(506f, -545f, 1000f)), Struct_1(93063u, vec3<f32>(971f, -1337f, -1656f)), Struct_1(38368u, vec3<f32>(-1503f, 1337f, -637f)), Struct_1(2459u, vec3<f32>(985f, 1000f, -644f)), Struct_1(69739u, vec3<f32>(124f, 391f, 513f)), Struct_1(1u, vec3<f32>(-275f, 228f, -515f)), Struct_1(0u, vec3<f32>(170f, 548f, -236f)), Struct_1(4294967295u, vec3<f32>(942f, 1000f, -571f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_4(u_input.a.x << (27661u % 32u), firstLeadingBit(u_input.c.x), Struct_1(77670u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, -1512f, 649f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-714f, -1197f, 319f))))));
    let var_1 = _wgslsmith_dot_vec2_u32(~select(countOneBits(u_input.c), ~vec2<u32>(var_0.c.a, 19025u), select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, true))) >> (~select(u_input.c, firstTrailingBit(vec2<u32>(u_input.b, var_0.c.a)), true) % vec2<u32>(32u)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 51900u), vec2<u32>(var_0.c.a, var_0.c.a)) ^ u_input.c) << (u_input.c % vec2<u32>(32u)));
    global1 = array<vec4<f32>, 7>();
    let var_2 = select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.a & u_input.a.x, _wgslsmith_mod_i32(var_0.a, var_0.a), u_input.a.x, 1i)), _wgslsmith_mod_vec4_i32(-select(vec4<i32>(u_input.a.x, -18608i, var_0.a, 32893i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), true), ~reverseBits(vec4<i32>(u_input.a.x, 2147483647i, var_0.a, -1i))), -_wgslsmith_add_vec4_i32(vec4<i32>(-7944i, var_0.a, var_0.a, 2147483647i), vec4<i32>(var_0.a, u_input.a.x, -22417i, 0i)) & vec4<i32>(~(-1075i), var_0.a, -3793i, var_0.a)), ~vec4<i32>(max(~u_input.a.x, 12446i << (var_1 % 32u)), var_0.a, u_input.a.x, reverseBits(u_input.a.x >> (var_0.b % 32u))), select(!vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), all(!vec4<bool>(true, arg_0, arg_0, arg_0)), true, true), true));
    var_0 = Struct_4(var_0.a, _wgslsmith_clamp_u32(~min(1u, _wgslsmith_mult_u32(13792u, 1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 4294967295u, 1u), vec3<u32>(var_1, 21458u, 1u)) & ~var_1, ~(~4294967295u)), _wgslsmith_clamp_u32(var_1, var_0.b, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, u_input.c.x, var_1)), _wgslsmith_clamp_vec3_u32(vec3<u32>(52253u, 0u, 1u), vec3<u32>(50432u, u_input.d, 15032u), vec3<u32>(u_input.d, var_1, u_input.c.x))))), global2[_wgslsmith_index_u32(var_0.c.a, 14u)]);
    return _wgslsmith_f_op_f32(floor(var_0.c.b.x));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f * _wgslsmith_f_op_f32(func_3(arg_0))));
    var var_1 = ~_wgslsmith_mod_u32(reverseBits(u_input.c.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.d ^ u_input.b), u_input.b));
    global2 = array<Struct_1, 14>();
    var var_2 = u_input.a.x;
    var_1 = u_input.d;
    return Struct_3(global2[_wgslsmith_index_u32(abs(0u), 14u)], global0[_wgslsmith_index_u32(~abs(min(~u_input.c.x, u_input.b)), 3u)]);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec2<bool> {
    let var_0 = arg_0.b.c.b.xx;
    var var_1 = ~firstTrailingBit(-66165i | (0i | u_input.a.x)) > -973i;
    var var_2 = -1434f;
    global1 = array<vec4<f32>, 7>();
    return select(vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(arg_1, !(arg_1 || arg_1)), !vec2<bool>(any(vec3<bool>(false, arg_1, false)), true | arg_1), !(!(!vec2<bool>(false, arg_1)))), select(select(select(vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), vec2<bool>(true & arg_1, arg_1), vec2<bool>(var_0.x < arg_0.a.b.x, any(vec2<bool>(false, arg_1)))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(arg_1, arg_1, false)), false), true), true));
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    var var_0 = !select(func_4(func_2(u_input.d <= 0u), false), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true));
    var var_1 = Struct_4(~u_input.a.x, _wgslsmith_mult_u32(54126u, 12780u), func_2(var_0.x).a);
    global2 = array<Struct_1, 14>();
    return 662f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(true, true)) | (2147483647i < _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-22978i, u_input.a.x, 18360i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -25042i, 0i)), _wgslsmith_sub_i32(-u_input.a.x, 2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 808f));
    var_1 = 154f;
    var var_2 = -592f;
    global1 = array<vec4<f32>, 7>();
    let var_3 = _wgslsmith_div_vec4_i32(~abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, 34063i, 2147483647i), ~vec4<i32>(u_input.a.x, 0i, u_input.a.x, 57355i), vec4<i32>(-4494i, u_input.a.x, u_input.a.x, 1i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(9698i, 46646i, -2147483647i, 1i) & -vec4<i32>(1i, -56567i, u_input.a.x, u_input.a.x), abs(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 2147483647i, 1i, 16482i), vec4<bool>(var_0, var_0, true, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 52110i, -58237i, -1i), vec4<i32>(u_input.a.x, -62565i, u_input.a.x, -2147483647i)))));
    var_2 = -966f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_i32(-1i, 1i)), var_3.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(706f, _wgslsmith_f_op_f32(floor(-1000f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, 344f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-426f, -2152f) * vec2<f32>(-1252f, -194f)), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1328f, -1284f), vec2<f32>(730f, 1144f), vec2<bool>(var_0, var_0))))))));
}

