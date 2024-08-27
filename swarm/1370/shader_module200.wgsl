struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -31050i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(25167i, -10129i), vec2<i32>(4699i, 18145i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -79201i), vec2<i32>(i32(-2147483648), 20847i), vec2<i32>(0i, 1329i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-9589i, -1i), vec2<i32>(2524i, 11826i));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -2841i), 4294967295u, 22703i), Struct_1(vec4<i32>(-23261i, 11969i, 3082i, -13361i), 1u, i32(-2147483648)), Struct_1(vec4<i32>(8125i, 24438i, i32(-2147483648), 19309i), 4294967295u, 9235i), Struct_1(vec4<i32>(-7985i, 2147483647i, -45210i, 32124i), 1u, 0i), Struct_1(vec4<i32>(40791i, i32(-2147483648), -8677i, 2147483647i), 56335u, -21571i));

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1000f, 761f, 671f, -294f), vec4<f32>(-131f, 604f, -679f, -565f), vec4<f32>(-301f, -308f, 1000f, 469f), vec4<f32>(1576f, 1052f, 465f, -482f), vec4<f32>(-157f, 604f, 1355f, 448f), vec4<f32>(633f, 210f, -1476f, -302f), vec4<f32>(1525f, -429f, 381f, -695f), vec4<f32>(-197f, -1889f, -349f, 723f), vec4<f32>(322f, -1387f, -101f, -1292f), vec4<f32>(-235f, -1485f, 1000f, 215f), vec4<f32>(-163f, -164f, -1000f, 698f), vec4<f32>(1129f, 1000f, -276f, 113f), vec4<f32>(-1059f, -223f, -1246f, -169f), vec4<f32>(-1000f, 1576f, -1219f, 104f), vec4<f32>(1696f, -390f, 1000f, 504f), vec4<f32>(-2039f, -312f, -2097f, 1000f), vec4<f32>(-430f, 344f, 478f, -300f), vec4<f32>(-709f, 859f, 621f, -1196f), vec4<f32>(-897f, -1274f, 1710f, 558f), vec4<f32>(-1000f, 1677f, 833f, -870f), vec4<f32>(-939f, 1997f, -1000f, -1756f), vec4<f32>(777f, -770f, -664f, 1244f), vec4<f32>(-1142f, -1274f, 1525f, 510f), vec4<f32>(-362f, 1000f, 771f, -380f), vec4<f32>(-756f, 378f, 113f, 212f), vec4<f32>(-239f, 232f, 464f, 1195f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 20>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global0 = array<vec3<bool>, 20>();
    let var_2 = var_0.b;
    return Struct_1(var_0.a, 4294967295u, var_0.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global3 = array<vec4<f32>, 26>();
    var var_0 = vec4<bool>(all(vec3<bool>(false, false, false)), true, any(vec4<bool>(any(!global0[_wgslsmith_index_u32(arg_1, 20u)]), true, !any(vec2<bool>(true, true)), all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzy, vec3<u32>(arg_1, arg_1, 4294967295u)), 20u)]))), true);
    var var_1 = Struct_1(abs(~arg_0.a << ((vec4<u32>(arg_1, arg_1, 57826u, u_input.a.x) | firstLeadingBit(u_input.a)) % vec4<u32>(32u))), arg_0.b ^ 1u, -arg_0.a.x | -_wgslsmith_mod_i32(-43061i, -52208i << (arg_1 % 32u)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1191f)), _wgslsmith_f_op_f32(f32(-1f) * -488f), true)))))));
    global3 = array<vec4<f32>, 26>();
    return firstTrailingBit(4294967295u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    let var_0 = min(22321u, u_input.a.x);
    let var_1 = func_2();
    global2 = array<Struct_1, 5>();
    var var_2 = var_1;
    var_2 = global2[_wgslsmith_index_u32(func_3(var_1, var_0), 5u)];
    return var_2.b;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = -129f;
    global3 = array<vec4<f32>, 26>();
    var_0 = 1343f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f - -1000f) + _wgslsmith_f_op_f32(168f + -205f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(403f)), _wgslsmith_f_op_f32(-378f + 1000f))))));
    global3 = array<vec4<f32>, 26>();
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, _wgslsmith_sub_i32(u_input.c, 0i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.b), vec3<i32>(2147483647i, -2147483647i, u_input.c)), vec3<i32>(-2147483647i, u_input.c, -58098i) << (u_input.a.zwz % vec3<u32>(32u)))), abs(abs(reverseBits(u_input.b))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 65174i, u_input.c, 56225i)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(20476i, u_input.c, 4625i, u_input.b), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.b, 0i, 1i))), u_input.b), u_input.d, -u_input.c);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    return global2[_wgslsmith_index_u32((4294967295u ^ _wgslsmith_mult_u32(0u, u_input.d)) << (_wgslsmith_dot_vec4_u32(countOneBits(~u_input.a), _wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_0.b, u_input.a.x, arg_0.b, 8041u)), ~abs(u_input.a))) % 32u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~7269u, 5u)];
    let var_1 = true;
    global3 = array<vec4<f32>, 26>();
    global2 = array<Struct_1, 5>();
    var var_2 = func_5(func_4(func_1(0i, !(!var_1), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.d, 26u)] * vec4<f32>(-539f, 579f, -479f, 405f)))))));
    global0 = array<vec3<bool>, 20>();
    var var_3 = global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(7648u, 15799u), func_2().b), 5u)];
    var var_4 = Struct_1(_wgslsmith_div_vec4_i32(var_3.a, _wgslsmith_div_vec4_i32(var_2.a, var_3.a & vec4<i32>(-22473i, var_2.c, 1i, u_input.b))) << (~(~vec4<u32>(0u, 645u, var_2.b, u_input.a.x)) % vec4<u32>(32u)), 8301u, -30535i);
    let x = u_input.a;
    s_output = StorageBuffer(-777f, vec4<f32>(660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-332f, 663f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1249f))));
}

