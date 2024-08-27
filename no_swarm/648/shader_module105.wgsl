struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, true, true, true, true, true, true, false, false, true, false, true, false, true, true, true, false, true, false, false, false, true, false);

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(false, Struct_1(-1091f, true, vec3<i32>(5439i, -42124i, -22699i), -19452i), vec3<i32>(0i, -1912i, 2791i)), Struct_2(false, Struct_1(565f, false, vec3<i32>(-10630i, 31258i, -1i), 0i), vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_2(false, Struct_1(793f, true, vec3<i32>(1i, -1i, 6943i), -43684i), vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_2(false, Struct_1(-133f, false, vec3<i32>(1i, 2147483647i, 10958i), -1i), vec3<i32>(-1i, 1i, -28489i)), Struct_2(false, Struct_1(-1915f, true, vec3<i32>(-49321i, 2147483647i, 2147483647i), 1i), vec3<i32>(13234i, -1i, -2473i)), Struct_2(false, Struct_1(-569f, false, vec3<i32>(9358i, i32(-2147483648), 36913i), 1i), vec3<i32>(-1601i, 70827i, 35242i)), Struct_2(true, Struct_1(482f, false, vec3<i32>(i32(-2147483648), -31341i, 30268i), 0i), vec3<i32>(i32(-2147483648), 65248i, 0i)), Struct_2(false, Struct_1(711f, true, vec3<i32>(27080i, 2147483647i, 1i), 2147483647i), vec3<i32>(-53041i, -554i, -14774i)), Struct_2(false, Struct_1(-627f, true, vec3<i32>(8948i, -1i, i32(-2147483648)), 20157i), vec3<i32>(1600i, 0i, 10778i)), Struct_2(false, Struct_1(-1923f, false, vec3<i32>(0i, 0i, -46302i), 0i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), Struct_2(true, Struct_1(-561f, false, vec3<i32>(11099i, 32348i, 0i), -6056i), vec3<i32>(0i, -1i, 23235i)), Struct_2(true, Struct_1(-1099f, true, vec3<i32>(64901i, i32(-2147483648), 2147483647i), 19304i), vec3<i32>(2322i, 0i, -32896i)), Struct_2(true, Struct_1(1418f, false, vec3<i32>(1i, 9301i, -1i), 0i), vec3<i32>(-25007i, 0i, 0i)), Struct_2(true, Struct_1(-1763f, false, vec3<i32>(0i, 13966i, -30434i), -3484i), vec3<i32>(0i, 0i, -32285i)), Struct_2(true, Struct_1(1113f, false, vec3<i32>(-12008i, 1i, 2147483647i), 2147483647i), vec3<i32>(1i, 1i, 12132i)), Struct_2(false, Struct_1(678f, true, vec3<i32>(45907i, -39775i, -11553i), 0i), vec3<i32>(-1i, -50025i, 68721i)), Struct_2(false, Struct_1(944f, false, vec3<i32>(-1i, -21558i, 5722i), -1i), vec3<i32>(2147483647i, -1i, 29913i)), Struct_2(true, Struct_1(-409f, true, vec3<i32>(2147483647i, -1i, 16809i), -1i), vec3<i32>(i32(-2147483648), 0i, -36482i)), Struct_2(true, Struct_1(803f, false, vec3<i32>(12343i, 2147483647i, -7500i), -3446i), vec3<i32>(25450i, -1i, -9627i)), Struct_2(false, Struct_1(-357f, true, vec3<i32>(2821i, -22631i, 2147483647i), -1i), vec3<i32>(40881i, 471i, -1i)), Struct_2(true, Struct_1(-1102f, false, vec3<i32>(1i, -16973i, 1i), 1i), vec3<i32>(-11028i, 2147483647i, 0i)), Struct_2(false, Struct_1(-731f, false, vec3<i32>(16631i, -1i, 0i), 42978i), vec3<i32>(1i, 31949i, i32(-2147483648))), Struct_2(true, Struct_1(1000f, false, vec3<i32>(10515i, 56307i, 75214i), i32(-2147483648)), vec3<i32>(32245i, -11239i, 51682i)), Struct_2(true, Struct_1(1000f, false, vec3<i32>(0i, 1i, 0i), 2147483647i), vec3<i32>(-32607i, 28619i, -53744i)), Struct_2(false, Struct_1(1209f, true, vec3<i32>(-1i, 0i, 0i), -54206i), vec3<i32>(i32(-2147483648), -18932i, 2147483647i)), Struct_2(false, Struct_1(-465f, true, vec3<i32>(0i, 0i, 2147483647i), 8309i), vec3<i32>(8071i, i32(-2147483648), -11151i)), Struct_2(false, Struct_1(1116f, true, vec3<i32>(1i, 2147483647i, i32(-2147483648)), 24930i), vec3<i32>(1i, -10494i, 1i)), Struct_2(true, Struct_1(-336f, false, vec3<i32>(2147483647i, 2147483647i, -1i), 0i), vec3<i32>(1i, -17097i, 1i)));

var<private> global3: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(15128i, -1139i, -1i, 13339i), vec4<i32>(2147483647i, 38617i, -2122i, 1i), vec4<i32>(i32(-2147483648), 1i, 40271i, 9806i), vec4<i32>(1i, 26770i, 668i, 1379i), vec4<i32>(0i, i32(-2147483648), 0i, 15753i), vec4<i32>(i32(-2147483648), i32(-2147483648), 13974i, 2147483647i), vec4<i32>(33703i, -29550i, 0i, 65030i), vec4<i32>(11107i, -12386i, 24038i, -47729i), vec4<i32>(13880i, 2147483647i, -70366i, 24774i), vec4<i32>(-1i, i32(-2147483648), 1i, 0i), vec4<i32>(1i, -2225i, 0i, 1i), vec4<i32>(1i, -22971i, 21903i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -16685i), vec4<i32>(49100i, -24587i, 2147483647i, 2988i), vec4<i32>(-19744i, -1i, 37164i, -1i), vec4<i32>(i32(-2147483648), 1i, 1i, 1i), vec4<i32>(-1i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 1688i), vec4<i32>(-26051i, 2147483647i, 2147483647i, 0i), vec4<i32>(-54893i, -1i, 0i, -43455i), vec4<i32>(-27444i, 2147483647i, -7118i, 0i), vec4<i32>(1i, 15055i, 58345i, -1i), vec4<i32>(50138i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 2284i, 2147483647i, -24536i), vec4<i32>(10749i, -1904i, -27244i, 0i));

var<private> global4: vec4<i32> = vec4<i32>(-1i, -13480i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1035f, arg_3.a))) + vec2<f32>(_wgslsmith_f_op_f32(-344f + _wgslsmith_f_op_f32(floor(arg_1.a))), arg_3.a)), _wgslsmith_mult_u32(u_input.a, u_input.a));
    return var_0;
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 20>();
    global1 = array<bool, 24>();
    var var_0 = !(!vec4<bool>((4294967295u ^ u_input.a) < firstLeadingBit(12988u), true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(83869u, 24u)], false, true)), false));
    var_0 = !vec4<bool>(select(all(!var_0.zzx), true, any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]))), any(!(!vec4<bool>(global1[_wgslsmith_index_u32(23600u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], false, global1[_wgslsmith_index_u32(u_input.a, 24u)]))), false, all(!var_0.xzx));
    global1 = array<bool, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1349f)));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))))), -1119f);
    global2 = array<Struct_2, 28>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_1.c.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, 134f))), reverseBits(1u));
    let var_2 = abs(4294967295u);
    let var_3 = arg_1.a.b;
    return _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(1339u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a)), ~u_input.a, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1973u, var_2, var_2), vec3<u32>(arg_1.c.b, var_2, u_input.a)), u_input.a, 0u, u_input.a), all(vec3<bool>(true, true, arg_1.a.b.b))), _wgslsmith_div_vec4_u32(max(firstLeadingBit(vec4<u32>(var_2, var_2, var_2, var_1.b)), ~vec4<u32>(0u, u_input.a, 0u, 58605u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1.c.b, 118671u, arg_1.c.b, 0u)), vec4<u32>(var_1.b, u_input.a, u_input.a, 8097u))), true), vec4<u32>(_wgslsmith_sub_u32(31270u, _wgslsmith_add_u32(50173u >> (var_2 % 32u), _wgslsmith_mod_u32(0u, 14772u))), min(69729u, ~(53594u >> (1u % 32u))), ~var_2, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, u_input.a, u_input.a), vec3<u32>(u_input.a, var_1.b, 14262u)), ~vec3<u32>(4294967295u, var_1.b, var_1.b)) >> (_wgslsmith_mult_u32(u_input.a, abs(1u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-100f, true, -vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(8686i, 11729i, u_input.d) << (~u_input.a % 32u), _wgslsmith_div_i32(25086i, -1i)), _wgslsmith_mult_i32(u_input.c.x, ~(-global4.x)));
    global3 = array<vec4<i32>, 25>();
    var var_1 = countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 7532u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) >> (~(~vec4<u32>(1u, 1u, 24402u, u_input.a)) % vec4<u32>(32u))) ^ func_2(907f, Struct_4(Struct_2(true, Struct_1(var_0.a, false, global4.wyy, u_input.b), reverseBits(vec3<i32>(-26191i, global4.x, -11729i))), global4.ywz, func_1(var_0.d, var_0, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, -369f, var_0.a, var_0.a))), var_0)));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(28460u, 20u)], vec3<i32>(~(-u_input.c.x), ~var_0.d, u_input.d), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(247f - -340f))), -1901f), _wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(var_1.x, var_1.x)), u_input.a)));
    let var_3 = Struct_1(var_0.a, !(!select(true, var_2.a.b.b, var_2.a.a)), _wgslsmith_div_vec3_i32(select(var_2.b, ~var_2.b, !(!vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 24u)], false, false))), -(~var_2.b)), -var_0.c.x);
    var var_4 = Struct_2(true, Struct_1(var_3.a, all(select(select(vec4<bool>(var_3.b, global1[_wgslsmith_index_u32(var_1.x, 24u)], global1[_wgslsmith_index_u32(7537u, 24u)], var_0.b), vec4<bool>(true, true, var_0.b, global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(true, var_3.b, true, false)), vec4<bool>(var_2.a.b.b, true, global1[_wgslsmith_index_u32(var_1.x, 24u)], false), true)), _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(u_input.c.xwz, vec3<i32>(var_2.b.x, var_2.b.x, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(12672i, global4.x, 26198i), vec3<i32>(-2147483647i, -44822i, var_0.d)), all(vec3<bool>(true, true, false))), vec3<i32>(~var_2.a.b.d, var_2.a.c.x, u_input.b)), ~(-1i)), firstTrailingBit(global4.yyz));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b);
}

