struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec2<i32>(2147483647i, 2147483647i), vec2<f32>(581f, 415f), vec3<u32>(1u, 26846u, 0u), vec3<f32>(-115f, 394f, -1985f)), vec4<bool>(false, true, false, false)), Struct_2(vec2<u32>(35317u, 4294967295u), Struct_1(vec3<i32>(2147483647i, -1i, -22220i), vec2<i32>(-1i, 633i), vec2<f32>(878f, -361f), vec3<u32>(26713u, 1u, 13176u), vec3<f32>(-217f, -429f, -753f)), vec4<bool>(true, true, true, false)), Struct_2(vec2<u32>(37462u, 4294967295u), Struct_1(vec3<i32>(-29920i, 2147483647i, 0i), vec2<i32>(19757i, 1i), vec2<f32>(-473f, -1239f), vec3<u32>(9628u, 65568u, 1u), vec3<f32>(175f, -1499f, 1040f)), vec4<bool>(false, false, false, false)), Struct_2(vec2<u32>(5275u, 37685u), Struct_1(vec3<i32>(-60842i, -47262i, 24237i), vec2<i32>(1i, i32(-2147483648)), vec2<f32>(1250f, 582f), vec3<u32>(31131u, 1u, 2072u), vec3<f32>(538f, -1145f, 1132f)), vec4<bool>(true, true, true, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), false), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), !all(vec3<bool>(false, true, true)) || true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(f32(-1f) * -1438f), -598f, -240f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -175f, -656f, -597f) + vec4<f32>(681f, 707f, -1509f, 1940f))))), vec4<f32>(_wgslsmith_f_op_f32(-791f + -1480f), 208f, _wgslsmith_f_op_f32(select(-710f, -1905f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1752f)))), vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.xy >> (u_input.b.zy % vec2<u32>(32u)), u_input.b.zy)), _wgslsmith_sub_u32(abs(45967u), _wgslsmith_mult_u32(firstTrailingBit(1u), 0u)), ~_wgslsmith_mod_u32(~arg_0, _wgslsmith_div_u32(arg_0, arg_0)), ~arg_0), ~vec3<i32>(u_input.d, -2147483647i, reverseBits(1i)));
    var var_1 = Struct_3(var_0.a, var_0.b, (vec4<u32>(~u_input.e, arg_0 >> (u_input.a % 32u), ~u_input.e, 1u >> (0u % 32u)) & vec4<u32>(4294967295u, 1u, 17979u, var_0.c.x)) ^ vec4<u32>(_wgslsmith_mod_u32(~u_input.c, 1u), 1u, ~_wgslsmith_sub_u32(var_0.c.x, 14601u), u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(62034i, -34499i, -1i), vec3<i32>(u_input.d, -1i, var_0.d.x)), var_0.d), vec3<i32>(u_input.d, 0i, 1i)));
    var var_2 = 411f;
    let var_3 = Struct_4(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(var_0.c.x, 4294967295u, 48288u)) >> (~var_1.c.yyw % vec3<u32>(32u)), var_1.c.zxz), 4u)], var_1.a, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(select(var_0.d.x, -21443i, var_0.a.x), u_input.d << (var_0.c.x % 32u), -var_1.d.x, 2147483647i)), abs(-(vec4<i32>(var_0.d.x, var_1.d.x, var_0.d.x, var_1.d.x) << (var_0.c % vec4<u32>(32u))))), Struct_3(var_1.a, var_0.b, abs(max(var_0.c, ~vec4<u32>(u_input.c, arg_0, u_input.a, 3118u))), vec3<i32>(abs(u_input.d), -1i, u_input.d)), abs(~(-var_0.d.x)));
    global1 = ~_wgslsmith_sub_u32(1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 25524u), vec3<u32>(u_input.c, u_input.b.x, 12999u))));
    return var_1.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<u32>(~min(5188u, max(u_input.c, 21360u | u_input.b.x)), min(u_input.c, countOneBits(57300u)), u_input.c, u_input.e);
    global0 = array<vec2<f32>, 21>();
    var var_1 = -(vec3<i32>(-1i, _wgslsmith_add_i32(u_input.d, u_input.d | -3942i), u_input.d) << (_wgslsmith_add_vec3_u32(abs(max(vec3<u32>(0u, 10461u, u_input.c), var_0.zyx)), ~(var_0.wwx << (u_input.b % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global2 = array<vec2<bool>, 4>();
    var var_2 = Struct_3(vec3<bool>(false, !func_3(~u_input.a), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, 961f, 1000f, -365f) - vec4<f32>(833f, 902f, -1058f, -2003f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1919f, -1000f, 393f, 537f)))), vec4<f32>(-1643f, -200f, _wgslsmith_f_op_f32(abs(-707f)), _wgslsmith_div_f32(-513f, 1186f))))), firstTrailingBit(~vec4<u32>(u_input.b.x | 27758u, 19723u, select(1u, 49343u, true), 4294967295u)), vec3<i32>(reverseBits(select(_wgslsmith_add_i32(u_input.d, var_1.x), select(u_input.d, var_1.x, true), var_1.x > -2147483647i)), _wgslsmith_add_i32(reverseBits(~(-36580i)), ~var_1.x ^ var_1.x), var_1.x));
    return Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(f32(-1f) * -190f), -249f, 170f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.b, _wgslsmith_f_op_vec4_f32(floor(var_2.b)))))), vec4<u32>(var_0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.c.x), vec2<u32>(1u, u_input.e))), _wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(u_input.a, 1u))), var_2.c.x, ~52837u), var_2.d);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = false;
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(~(~max(u_input.b.x, _wgslsmith_div_u32(31958u, 4294967295u))), 4u)], vec3<bool>(20548i != func_2().d.x, true, func_3(4294967295u)), arg_1.d.x, arg_1, _wgslsmith_div_i32(2147483647i, arg_1.d.x));
    let var_2 = !(!func_2().a.xy);
    var_0 = true;
    var var_3 = var_2;
    return var_1.d;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(769f, -1712f), _wgslsmith_f_op_f32(-111f - -1223f), -2341f)))), func_2());
    let var_1 = vec2<i32>(-21318i, u_input.d);
    let var_2 = global3[_wgslsmith_index_u32(1u, 4u)];
    var var_3 = !(!select(var_2.c, !(!vec4<bool>(var_0.a.x, false, var_0.a.x, false)), var_0.a.x));
    let var_4 = Struct_2(vec2<u32>(~min(select(4294967295u, var_0.c.x, var_3.x), max(arg_0.x, 15897u)), var_2.a.x), Struct_1(select(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.a.x, -24880i, 67039i), vec3<i32>(2147483647i, -17439i, var_0.d.x)), vec3<i32>(19330i, 1i, u_input.d), vec3<bool>(false, var_0.a.x, var_2.c.x)) >> (u_input.b % vec3<u32>(32u)), func_4(var_0.b.zyy, var_0).d.yy >> (select(~vec2<u32>(arg_0.x, var_0.c.x), ~var_0.c.yw, func_4(var_2.b.e, var_0).a.zx) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(var_2.b.c * _wgslsmith_f_op_vec2_f32(var_0.b.xy * global0[_wgslsmith_index_u32(~1u, 21u)])), ~vec3<u32>(select(var_2.a.x, 8467u, false), arg_0.x, ~70147u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.yyx), _wgslsmith_div_vec3_f32(var_2.b.e, var_0.b.wzw)))), var_2.c);
    return ~countOneBits(var_4.b.d.x | firstLeadingBit(15521u));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5) -> vec2<bool> {
    return !(!(!func_4(_wgslsmith_f_op_vec3_f32(-arg_1.c.b.wzw), func_4(arg_0.c.b.zzz, arg_1.c)).a.zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(true, ~(-firstTrailingBit(vec4<i32>(u_input.d, -1i, 2147483647i, -33692i))), Struct_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(2277f, 128f, 544f, 944f) + _wgslsmith_div_vec4_f32(vec4<f32>(-431f, -807f, 901f, -916f), vec4<f32>(1000f, -417f, -430f, 673f))), ~abs(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x)), vec3<i32>(-1i, reverseBits(-1i), u_input.d))), Struct_5(select(false, (u_input.b.x ^ 3754u) > func_1(u_input.b.zy), true), vec4<i32>(1i, _wgslsmith_clamp_i32(-10939i, -9426i ^ u_input.d, _wgslsmith_mod_i32(u_input.d, u_input.d)), _wgslsmith_add_i32(u_input.d | u_input.d, u_input.d & -21915i), u_input.d >> ((u_input.b.x ^ 4294967295u) % 32u)), Struct_3(!func_4(vec3<f32>(1886f, 1793f, -937f), Struct_3(vec3<bool>(true, false, true), vec4<f32>(-776f, 421f, 125f, 3433f), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec3<i32>(u_input.d, u_input.d, u_input.d))).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -726f, -485f, 681f)), vec4<u32>(~25939u, u_input.e, ~u_input.c, u_input.c), vec3<i32>(u_input.d | u_input.d, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 30519i, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, 4218i))))));
    var var_1 = 1358f;
    global2 = array<vec2<bool>, 4>();
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(104f, -1000f, -1189f)))))), func_2()).b.x;
    let var_2 = Struct_4(Struct_2(~(reverseBits(vec2<u32>(4294967295u, u_input.c)) | u_input.b.xx), Struct_1(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, u_input.d, -61909i), vec3<i32>(u_input.d, 2147483647i, u_input.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -12143i, u_input.d), vec3<i32>(-2147483647i, 26388i, u_input.d))), ~vec2<i32>(u_input.d, u_input.d), func_2().b.zx, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1431f, -1000f, -1000f) * vec3<f32>(306f, -367f, 1000f)))), !select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, var_0.x, false)), !vec4<bool>(true, false, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !vec3<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(0i, -1i, u_input.d)) > u_input.d, true), max(~(-u_input.d), u_input.d) << (u_input.a % 32u), Struct_3(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, false, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_f_op_f32(f32(-1f) * -1944f)), _wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(107f + 694f)), 351f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(673f))))), countOneBits(~(~vec4<u32>(u_input.b.x, u_input.e, u_input.e, u_input.a))), ((vec3<i32>(u_input.d, -1i, 44443i) << (u_input.b % vec3<u32>(32u))) ^ (vec3<i32>(u_input.d, u_input.d, -2147483647i) >> (u_input.b % vec3<u32>(32u)))) & ~abs(vec3<i32>(5152i, 1i, -2147483647i))), -((u_input.d | u_input.d) >> (((0u << (u_input.e % 32u)) ^ u_input.a) % 32u)));
    let var_3 = Struct_5(any(select(!vec3<bool>(var_2.d.a.x, false, false), var_2.d.a, func_4(var_2.d.b.wzz, var_2.d).a)) || true, ~(vec4<i32>(u_input.d << (136u % 32u), u_input.d, _wgslsmith_mult_i32(0i, var_2.e), -1i << (var_2.d.c.x % 32u)) ^ vec4<i32>(select(u_input.d, u_input.d, false), -37692i | u_input.d, func_2().d.x, ~var_2.c)), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.c.x);
}

