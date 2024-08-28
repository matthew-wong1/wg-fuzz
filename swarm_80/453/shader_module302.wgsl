struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<i32>(-1i, -47607i), Struct_1(vec4<i32>(3818i, -7690i, 32509i, 1i), vec4<bool>(false, false, false, true)), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(vec2<i32>(7322i, -9030i), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648)), vec4<bool>(true, false, true, true)), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(vec2<i32>(-48793i, 0i), Struct_1(vec4<i32>(1i, 17706i, 48154i, -86025i), vec4<bool>(false, false, false, true)), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_4(vec2<i32>(1i, 1i), Struct_1(vec4<i32>(-705i, 37938i, 27091i, -37642i), vec4<bool>(true, true, true, false)), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_4(vec2<i32>(22310i, 7918i), Struct_1(vec4<i32>(i32(-2147483648), -49512i, -7i, 37426i), vec4<bool>(true, false, false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_4(vec2<i32>(0i, 2147483647i), Struct_1(vec4<i32>(55238i, -9772i, 0i, 10464i), vec4<bool>(true, false, false, false)), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_4(vec2<i32>(-28858i, 0i), Struct_1(vec4<i32>(0i, i32(-2147483648), -31195i, -12704i), vec4<bool>(false, true, true, false)), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_4(vec2<i32>(5962i, -18778i), Struct_1(vec4<i32>(-49671i, 34350i, 40204i, 9727i), vec4<bool>(true, false, false, true)), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_4(vec2<i32>(1i, 0i), Struct_1(vec4<i32>(2147483647i, 0i, -32208i, -1i), vec4<bool>(false, true, true, true)), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_4(vec2<i32>(4783i, 2600i), Struct_1(vec4<i32>(8636i, -1i, 1i, 46762i), vec4<bool>(true, false, false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_4(vec2<i32>(-22036i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, -12280i, 0i, 80462i), vec4<bool>(false, false, false, false)), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_4(vec2<i32>(54933i, 70708i), Struct_1(vec4<i32>(1i, 1i, -1i, 28958i), vec4<bool>(false, false, true, true)), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_4(vec2<i32>(-1i, 43525i), Struct_1(vec4<i32>(i32(-2147483648), 11125i, 6551i, -1i), vec4<bool>(false, false, false, false)), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_4(vec2<i32>(-32022i, -1i), Struct_1(vec4<i32>(30298i, i32(-2147483648), 1i, i32(-2147483648)), vec4<bool>(false, false, false, true)), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_4(vec2<i32>(i32(-2147483648), -35048i), Struct_1(vec4<i32>(0i, i32(-2147483648), 11852i, 0i), vec4<bool>(false, false, true, false)), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_4(vec2<i32>(-33761i, -1i), Struct_1(vec4<i32>(-42840i, -21747i, 2147483647i, 17452i), vec4<bool>(true, true, false, false)), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_4(vec2<i32>(2147483647i, -1i), Struct_1(vec4<i32>(50036i, -9390i, 0i, 0i), vec4<bool>(false, false, false, true)), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_4(vec2<i32>(-1i, -5978i), Struct_1(vec4<i32>(2682i, -23239i, 33286i, i32(-2147483648)), vec4<bool>(false, true, true, true)), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(vec2<i32>(1i, 0i), Struct_1(vec4<i32>(2147483647i, 2147483647i, -41666i, i32(-2147483648)), vec4<bool>(true, false, false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_4(vec2<i32>(12296i, 1074i), Struct_1(vec4<i32>(-26732i, 7570i, 44458i, 0i), vec4<bool>(false, true, true, false)), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_4(vec2<i32>(1i, -13265i), Struct_1(vec4<i32>(0i, 1i, 2147483647i, -1i), vec4<bool>(true, false, false, false)), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_4(vec2<i32>(2147483647i, -48238i), Struct_1(vec4<i32>(i32(-2147483648), 1i, -21090i, 2147483647i), vec4<bool>(true, true, false, false)), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_4(vec2<i32>(1i, 0i), Struct_1(vec4<i32>(-1i, 34791i, -4887i, 2054i), vec4<bool>(false, false, false, true)), vec2<bool>(false, false), vec2<bool>(true, true)));

var<private> global1: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.xx * _wgslsmith_f_op_vec2_f32(min(arg_0.yy, _wgslsmith_f_op_vec2_f32(arg_0.yy + arg_0.zz))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(2115f, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 662f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1445f)), 653f))));
    var var_2 = u_input.e.x;
    let var_3 = _wgslsmith_div_i32(0i, u_input.b >> ((select(countOneBits(0u), ~u_input.a.x, true) >> (0u % 32u)) % 32u));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1199f + var_1.x), 245f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(458f, 132f) - var_0), var_0, all(vec3<bool>(true, false, true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 421f)))), vec2<f32>(1844f, _wgslsmith_f_op_f32(round(-1168f))));
    return ~_wgslsmith_div_u32(select(firstTrailingBit(abs(62124u)), max(~u_input.c, ~u_input.c), false), u_input.e.x);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = reverseBits(u_input.b);
    let var_1 = !(!all(arg_0.d.b) && (arg_0.a > 2147483647i));
    let var_2 = select(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_0.b, 1u, arg_0.b, func_3(vec3<f32>(485f, 994f, -772f), vec3<i32>(u_input.d.x, arg_0.a, 1i)))), arg_2), vec4<u32>(_wgslsmith_div_u32(86183u, 0u & countOneBits(arg_2.x)), arg_0.b, ~(~u_input.e.x), 1u), arg_1);
    return ~_wgslsmith_add_vec2_u32(var_2.ww << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), ~arg_2.wx >> (abs(var_2.xy) % vec2<u32>(32u))) ^ vec2<u32>(reverseBits((15245u & u_input.a.x) | ~32748u), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = vec2<u32>(1u, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.e.x, 4294967295u), firstLeadingBit(~37923u))));
    var_0 = abs(reverseBits(func_2(Struct_2(57515i, u_input.a.x, arg_1, Struct_1(vec4<i32>(u_input.d.x, u_input.b, u_input.b, 19093i), vec4<bool>(true, false, false, false))), true, select(vec4<u32>(u_input.c, var_0.x, 1u, 1u), vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x), false)))) ^ u_input.e;
    var_0 = ~_wgslsmith_div_vec2_u32(max(u_input.e >> (abs(vec2<u32>(var_0.x, 4294967295u)) % vec2<u32>(32u)), min(vec2<u32>(u_input.c, 36220u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)))), vec2<u32>(~44877u, _wgslsmith_div_u32(u_input.e.x & 4294967295u, reverseBits(u_input.c))));
    global1 = true;
    var_0 = u_input.a;
    return ~firstTrailingBit(4294967295u);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global1 = !(arg_3.x < 46666u);
    global1 = false;
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b, arg_0.x), vec2<i32>(u_input.d.x, 69141i)) ^ abs(arg_0), _wgslsmith_clamp_vec2_i32(arg_0, _wgslsmith_add_vec2_i32(arg_0, arg_0), min(arg_0, vec2<i32>(-2147483647i, u_input.d.x)))), arg_0.x & u_input.d.x, countOneBits(~u_input.b), countOneBits(u_input.b)), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4((_wgslsmith_mult_vec2_i32(u_input.d.yx >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), u_input.d.zx >> (u_input.e % vec2<u32>(32u))) & (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 83413i), vec2<i32>(u_input.b, 1i)) << (select(u_input.a, u_input.a, false) % vec2<u32>(32u)))) | _wgslsmith_mod_vec2_i32(u_input.d.xy, -(~vec2<i32>(u_input.b, 1i))), func_4(u_input.d.zx, abs(1u) & func_1(_wgslsmith_f_op_f32(f32(-1f) * -814f), -u_input.d.zy, vec2<f32>(436f, 250f)), 26367u, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(4294967295u, 85897u)), max(u_input.e, vec2<u32>(1u, u_input.c))) | ~vec2<u32>(39977u, 4294967295u)), func_4(-_wgslsmith_mod_vec2_i32(u_input.d.yz >> (u_input.a % vec2<u32>(32u)), abs(vec2<i32>(0i, 48414i))), ~4294967295u, max(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_mod_u32(74008u, u_input.a.x), abs(u_input.c)), u_input.a.x), vec2<u32>(_wgslsmith_clamp_u32(~25400u, func_3(vec3<f32>(-917f, -650f, 860f), u_input.d), u_input.c ^ u_input.e.x), _wgslsmith_sub_u32(4294967295u, u_input.c))).b.zx, !vec2<bool>(func_4(vec2<i32>(u_input.d.x, u_input.d.x), func_1(425f, vec2<i32>(u_input.b, u_input.d.x), vec2<f32>(-836f, 1006f)), 1u, select(u_input.e, vec2<u32>(0u, u_input.a.x), vec2<bool>(false, false))).b.x, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))));
    global0 = array<Struct_4, 23>();
    let var_1 = Struct_1(-var_0.b.a, var_0.b.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-648f, 1000f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -681f))))));
    global0 = array<Struct_4, 23>();
    var var_3 = !func_4(-(~var_1.a.zz), u_input.c, _wgslsmith_mod_u32(11456u, _wgslsmith_add_u32(u_input.e.x, 11129u)) ^ u_input.e.x, u_input.e).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e & ~select(u_input.a << (u_input.a % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(23120u, 0u)), var_1.b.xz), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -1000f))))), ~(var_0.b.a & var_0.b.a));
}

