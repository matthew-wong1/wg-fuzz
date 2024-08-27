struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1128f;

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 11237u, 38378u, 4294967295u, 0u, 35165u, 1u, 88322u);

var<private> global2: bool;

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = firstLeadingBit(max(~(vec4<i32>(-2147483647i, arg_1.a.a.b, arg_1.a.b.b, 42107i) << (arg_0.b % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(arg_1.a.b.b >> (0u % 32u), 8894i, select(-36226i, -5525i, arg_1.a.d.x), i32(-1i) * -1i))));
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.d)) * var_1.b.a), arg_1.d.d.d, _wgslsmith_f_op_f32(max(746f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1216f + -2125f))))), _wgslsmith_f_op_f32(max(arg_0.d.e.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-610f - 348f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f + 1302f) - -523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.d.a)), _wgslsmith_div_f32(var_1.a.d, -1000f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b.a, arg_1.c.a, arg_1.c.d, 2128f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), arg_1.c.a, var_1.b.d, -1038f)))));
    let var_3 = 327f;
    var var_4 = Struct_5(-(~vec3<i32>(~arg_0.c.b, abs(var_0.x), -37917i)), arg_1.b.wzy, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(25386i, 2497i, -4237i, -2147483647i), vec4<i32>(39336i, 14604i, -1i, 24460i)), -select(vec4<i32>(arg_0.c.b, 31926i, arg_1.d.e.b, var_1.b.b), vec4<i32>(arg_0.c.b, var_0.x, arg_1.d.d.b, var_1.b.b), true)), (_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.x, var_1.b.b, 1i), vec4<i32>(var_1.b.b, arg_1.c.b, var_0.x, var_1.b.b)) | vec4<i32>(2147483647i, arg_0.d.d.b, 26308i, var_0.x)) | -(~vec4<i32>(-54014i, arg_1.a.a.b, var_1.b.b, var_0.x))), var_2.zwy, arg_1.a.d.zx);
    return var_4.c.zyy;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    var var_0 = -arg_1.d.b;
    global2 = all(!select(!vec3<bool>(arg_2.x, arg_0.x, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, arg_0.x), any(select(vec3<bool>(false, arg_2.x, true), vec3<bool>(arg_2.x, false, arg_0.x), false))));
    let var_1 = arg_1;
    global2 = arg_0.x;
    var var_2 = Struct_3(arg_1.d, var_1.b, ~_wgslsmith_dot_vec4_u32(~(u_input.b ^ vec4<u32>(33271u, 4294967295u, global1[_wgslsmith_index_u32(52938u, 8u)], arg_1.d.c)), ~u_input.b), !select(select(select(arg_2, arg_2, true), vec3<bool>(false, true, arg_0.x), all(arg_0.zxw)), vec3<bool>(false && arg_2.x, all(vec4<bool>(arg_0.x, arg_2.x, arg_0.x, arg_2.x)), false), arg_0.wyz));
    return _wgslsmith_f_op_f32(-634f + arg_3);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(vec3<i32>(1i, 1i, 1i), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -391f), 570f)), _wgslsmith_clamp_i32(-52138i, _wgslsmith_div_i32(1i, -2147483647i), 0i), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1071f)) + _wgslsmith_f_op_f32(f32(-1f) * -166f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1000f) - _wgslsmith_f_op_f32(1081f + 223f)))), firstTrailingBit(min(countOneBits(1i), 0i << (~u_input.a.x % 32u))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-454f))))), 26499i, 67667u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-110f)), -535f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -793f))))), Struct_1(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_2(func_3(Struct_4(Struct_3(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62809u, 8u)], 8u)], Struct_1(-1000f, -1i, 0u, -1209f), global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec3<bool>(false, true, true)), u_input.b, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], Struct_2(vec3<i32>(82714i, 1i, 10288i), global3[_wgslsmith_index_u32(0u, 8u)], -42476i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], global3[_wgslsmith_index_u32(43459u, 8u)])), Struct_4(Struct_3(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_1(-1159f, -2147483647i, 4294967295u, 637f), u_input.b.x, vec3<bool>(false, true, false)), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a.x, global1[_wgslsmith_index_u32(1u, 8u)], 91572u), global3[_wgslsmith_index_u32(47976u, 8u)], Struct_2(vec3<i32>(779i, 24192i, 0i), Struct_1(2345f, -3817i, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 450f), 5091i, global3[_wgslsmith_index_u32(0u, 8u)], Struct_1(-1705f, -2147483647i, 9007u, 2212f)))), Struct_1(2325f, 2147483647i, u_input.b.x, 694f), ~0i, Struct_1(-267f, 0i, 50107u, -1000f), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 8u)]), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(round(-388f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), firstTrailingBit(vec2<i32>(-14824i, 0i))), 19882u, -1096f));
    var var_1 = Struct_5(-var_0.a & vec3<i32>(var_0.e.b, -52822i, -(~var_0.c)), vec3<u32>(~(~firstLeadingBit(5065u)), _wgslsmith_div_u32(~17939u, var_0.e.c), 4294967295u), vec4<i32>(var_0.c, var_0.e.b | (var_0.c ^ 6309i), -1859i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.b.b, -6683i), _wgslsmith_sub_i32(1i, 1i))) ^ (((vec4<i32>(var_0.a.x, var_0.d.b, -1i, var_0.d.b) >> (vec4<u32>(u_input.b.x, var_0.e.c, 0u, 1u) % vec4<u32>(32u))) << (~u_input.b % vec4<u32>(32u))) ^ ((vec4<i32>(var_0.d.b, -1i, var_0.b.b, var_0.e.b) << (vec4<u32>(var_0.d.c, u_input.b.x, 47451u, 1u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.b, var_0.e.b, -65746i, -31070i), vec4<i32>(1i, var_0.a.x, var_0.d.b, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1016f, _wgslsmith_f_op_f32(-var_0.e.d), _wgslsmith_f_op_f32(var_0.e.d + _wgslsmith_f_op_f32(exp2(var_0.b.d))))), vec2<bool>(true, true));
    return Struct_3(var_0.d, global3[_wgslsmith_index_u32(~var_0.e.c, 8u)], _wgslsmith_mod_u32(~4294967295u, var_0.d.c), vec3<bool>(all(vec3<bool>(true, true, true)), select(any(vec4<bool>(var_1.e.x, true, var_1.e.x, false)), var_1.e.x, !var_1.e.x) | true, var_1.e.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global3 = array<Struct_1, 8>();
    var var_0 = 4116i;
    var var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-101f, -781f))) - _wgslsmith_f_op_f32(f32(-1f) * -210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1110f - 2102f))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1787f);
    return func_2();
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec3<f32> {
    global3 = array<Struct_1, 8>();
    var var_0 = ~(~reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.b, arg_2.b.b), vec2<i32>(arg_2.b.b, arg_2.b.b)), arg_2.b.b, arg_2.a.b)));
    let var_1 = _wgslsmith_mod_i32(~(0i ^ (-2147483647i >> (u_input.b.x % 32u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, -2147483647i), arg_2.b.b) | (-1i >> (firstLeadingBit(2072u) % 32u))) | var_0.x;
    global3 = array<Struct_1, 8>();
    global1 = array<u32, 8>();
    return vec3<f32>(474f, arg_2.b.d, 424f);
}

fn func_6(arg_0: vec3<f32>) -> StorageBuffer {
    global3 = array<Struct_1, 8>();
    let var_0 = abs(abs(_wgslsmith_sub_u32(~(1561u >> (global1[_wgslsmith_index_u32(1u, 8u)] % 32u)), 40426u | ~u_input.b.x)));
    global2 = !any(vec3<bool>(true, true, true));
    let var_1 = select(true, true, !all(func_2().d));
    var var_2 = Struct_4(func_1(reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(min(var_0, global1[_wgslsmith_index_u32(11146u, 8u)]), 8u)], firstTrailingBit(37551u)))), u_input.b, Struct_1(-1643f, _wgslsmith_div_i32(min(22022i, 2147483647i), ~(-28875i)), ~abs(global1[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -754f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(608f * -1926f) - func_2().b.a), true))), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(25932i, 0i), ~0i, _wgslsmith_mod_i32(1i, 47213i)), ~vec3<i32>(8408i, -10421i, 0i), _wgslsmith_mod_vec3_i32(~vec3<i32>(28483i, -35148i, -1489i), ~vec3<i32>(-40449i, 2147483647i, 22685i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - _wgslsmith_f_op_f32(select(-936f, arg_0.x, var_1))), 1i, func_1(vec2<u32>(0u, 18072u)).a.c, func_2().b.a), _wgslsmith_mult_i32(1i, 1i), func_1(countOneBits(~vec2<u32>(var_0, 0u))).a, Struct_1(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.b.wz, vec2<u32>(13783u, global1[_wgslsmith_index_u32(0u, 8u)]))).a.a, func_2().b.b, 1u, _wgslsmith_f_op_f32(max(-697f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
    return StorageBuffer(~(abs(u_input.b) & vec4<u32>(u_input.a.x | var_0, 4294967295u, ~6510u, ~var_0)), ~(~(select(var_2.b.wyx, vec3<u32>(0u, 1u, 1u), true) << ((u_input.b.yww << (var_2.b.yyz % vec3<u32>(32u))) % vec3<u32>(32u)))), vec4<i32>(-var_2.c.b, _wgslsmith_sub_i32(var_2.c.b, -35573i), var_2.c.b, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_2.d.b.b, 16263i)), var_2.d.a.yx)), firstLeadingBit(countOneBits(global1[_wgslsmith_index_u32(var_0, 8u)])), var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(true, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), func_1(vec2<u32>(37628u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-909f, 642f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(true, vec2<bool>(false, true), Struct_3(Struct_1(-886f, -2147483647i, u_input.b.x, 946f), global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 1u, vec3<bool>(true, false, true)), vec2<f32>(-667f, 1737f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, false, true), Struct_2(vec3<i32>(25281i, -2147483647i, 2147483647i), Struct_1(652f, 24045i, 34036u, -138f), -11177i, Struct_1(-1196f, -49507i, 4294967295u, -1000f), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)]), vec3<bool>(true, true, false), 147f)), _wgslsmith_f_op_f32(137f - -1322f), 896f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1051f, -1237f, 478f), vec3<f32>(-180f, 555f, -1122f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(151f, -805f, -406f))))))));
}

