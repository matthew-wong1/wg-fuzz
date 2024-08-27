struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<bool>(true, false), 2026f), i32(-2147483648), -713f, vec4<u32>(28414u, 1u, 4294967295u, 79714u)), Struct_2(Struct_1(vec2<bool>(true, true), -1196f), -1i, -604f, vec4<u32>(45219u, 4294967295u, 1u, 0u)), Struct_2(Struct_1(vec2<bool>(true, true), -1145f), -1i, 770f, vec4<u32>(4294967295u, 0u, 64456u, 22678u)), Struct_2(Struct_1(vec2<bool>(true, false), 855f), 2147483647i, -279f, vec4<u32>(19104u, 1u, 1u, 12374u)), Struct_2(Struct_1(vec2<bool>(true, true), -556f), 1i, -135f, vec4<u32>(59349u, 0u, 54895u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(false, false), 960f), 2147483647i, 921f, vec4<u32>(24523u, 1u, 34238u, 35559u)), Struct_2(Struct_1(vec2<bool>(true, false), -550f), -1i, -1023f, vec4<u32>(1u, 673u, 1u, 0u)), Struct_2(Struct_1(vec2<bool>(true, true), -159f), 0i, 700f, vec4<u32>(1u, 4294967295u, 34696u, 1137u)), Struct_2(Struct_1(vec2<bool>(false, false), 200f), -1i, 963f, vec4<u32>(2692u, 33536u, 4294967295u, 75634u)), Struct_2(Struct_1(vec2<bool>(false, false), -796f), -6427i, -556f, vec4<u32>(0u, 41560u, 1u, 0u)), Struct_2(Struct_1(vec2<bool>(false, true), -1208f), 5005i, -1247f, vec4<u32>(4294967295u, 4294967295u, 0u, 51868u)), Struct_2(Struct_1(vec2<bool>(true, true), 771f), 2147483647i, -1757f, vec4<u32>(0u, 0u, 9159u, 41579u)), Struct_2(Struct_1(vec2<bool>(false, false), 1307f), 23900i, -845f, vec4<u32>(1u, 70258u, 49251u, 1u)), Struct_2(Struct_1(vec2<bool>(false, false), -633f), 0i, 650f, vec4<u32>(4294967295u, 6815u, 4294967295u, 1u)), Struct_2(Struct_1(vec2<bool>(false, false), -1114f), 0i, 416f, vec4<u32>(69492u, 0u, 7183u, 0u)), Struct_2(Struct_1(vec2<bool>(false, false), -575f), -7940i, 1000f, vec4<u32>(5585u, 4294967295u, 1u, 6389u)), Struct_2(Struct_1(vec2<bool>(false, true), -193f), -1i, -692f, vec4<u32>(38594u, 43653u, 0u, 0u)), Struct_2(Struct_1(vec2<bool>(false, false), 254f), 1i, -2452f, vec4<u32>(0u, 4294967295u, 4294967295u, 7904u)), Struct_2(Struct_1(vec2<bool>(true, true), 591f), -12660i, 1836f, vec4<u32>(16349u, 1u, 33063u, 29526u)), Struct_2(Struct_1(vec2<bool>(true, false), -333f), -1i, 1314f, vec4<u32>(0u, 34903u, 0u, 1u)), Struct_2(Struct_1(vec2<bool>(true, true), 819f), 2147483647i, 207f, vec4<u32>(51256u, 121913u, 0u, 79874u)), Struct_2(Struct_1(vec2<bool>(false, true), 1180f), 22114i, 361f, vec4<u32>(0u, 0u, 54886u, 70828u)), Struct_2(Struct_1(vec2<bool>(false, true), -644f), 0i, 364f, vec4<u32>(24909u, 4294967295u, 7526u, 70852u)), Struct_2(Struct_1(vec2<bool>(true, true), 726f), 2147483647i, -1228f, vec4<u32>(0u, 4294967295u, 14392u, 15788u)), Struct_2(Struct_1(vec2<bool>(true, false), -1211f), -1i, 1925f, vec4<u32>(4294967295u, 95732u, 28642u, 8908u)), Struct_2(Struct_1(vec2<bool>(false, false), -348f), -9792i, 1013f, vec4<u32>(4294967295u, 4294967295u, 142959u, 38381u)));

var<private> global2: Struct_4 = Struct_4(vec2<f32>(809f, -252f));

var<private> global3: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    return reverseBits(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.a, ~7788i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.a)), _wgslsmith_f_op_vec2_f32(-global2.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) * vec2<f32>(-1322f, arg_3)))))));
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1007f, arg_3)))))), Struct_1(vec2<bool>(any(vec2<bool>(true, true)), ~22677i >= arg_1), 1559f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, 2064f, 1000f), vec3<f32>(-1000f, 127f, -272f), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1768f, var_0.a.x, -1000f), vec3<f32>(global2.a.x, 107f, -1275f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, global2.a.x, arg_3))))))), Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_3)), global1[_wgslsmith_index_u32(firstTrailingBit(10512u), 26u)]);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.a.a.x))));
    var_0 = Struct_4(global2.a);
    var var_3 = _wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(arg_1, 953i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), countOneBits(vec2<i32>(var_1.e.b, arg_0)), min(vec2<i32>(2147483647i, 1i), vec2<i32>(arg_1, arg_0))))), u_input.a);
    return Struct_3(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_1.e.d.x, 78638u, u_input.b.x << (0u % 32u))), vec3<u32>(~firstLeadingBit(u_input.b.x), 4294967295u & var_1.e.d.x, var_1.e.d.x)), select(any(vec2<bool>(var_1.e.a.a.x, var_1.b.a.x)), false | (arg_3 < 1412f), !var_1.e.a.a.x), 1i, i32(-1i) * -abs(max(var_1.e.b, u_input.a)), Struct_1(select(var_1.b.a, var_1.e.a.a, _wgslsmith_mod_u32(1u, u_input.b.x) < _wgslsmith_sub_u32(u_input.b.x, var_1.e.d.x)), arg_3));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_sub_vec3_u32(~select(vec3<u32>(u_input.b.x, 52695u, 40506u), max(~vec3<u32>(13130u, 39112u, 13916u), ~vec3<u32>(u_input.b.x, 1780u, u_input.b.x)), vec3<bool>(all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), arg_0.a.x, u_input.b.x >= 4294967295u)), vec3<u32>(0u, 0u, 1u) << ((vec3<u32>(1u, ~0u, _wgslsmith_div_u32(u_input.b.x, 12104u)) >> (~(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.a.x, -1145f), global2.a.x))))));
    var var_2 = vec4<bool>(true, arg_0.a.x, true, arg_0.a.x);
    global3 = array<vec4<bool>, 8>();
    return func_3(-2147483647i, 1i, func_2(), -220f);
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = u_input.b;
    global0 = array<Struct_5, 5>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e.b, func_3(-1i, u_input.a, -1i, global2.a.x).e.b))))) - global2.a.x);
    var var_2 = -1i;
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.x, 1u, 0u, arg_0.a)), vec4<u32>(u_input.b.x ^ ~var_0.x, _wgslsmith_sub_u32(min(u_input.b.x, var_0.x), abs(u_input.b.x)), func_3(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 93638i, arg_0.c, 5738i), vec4<i32>(u_input.a, u_input.a, arg_0.c, u_input.a)), 7797i, _wgslsmith_f_op_f32(select(arg_0.e.b, -856f, arg_0.b))).a, firstTrailingBit(arg_0.a) ^ (arg_0.a >> (4294967295u % 32u)))), arg_0.e.a.x, 10516i, u_input.a, func_3(_wgslsmith_mult_i32(-u_input.a, 2147483647i), arg_0.d, 1i, arg_0.e.b).e);
    return u_input.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = -748f;
    var var_1 = arg_1;
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2224f, -1161f) * global2.a))))) * _wgslsmith_f_op_vec2_f32(-arg_1.a)));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(u_input.a ^ countOneBits(-u_input.a), _wgslsmith_mod_i32(-44598i, 31449i)), u_input.a & min(~1i, abs(_wgslsmith_mult_i32(u_input.a, 5574i))), -(i32(-1i) * -arg_0.c));
    let var_3 = func_3(~1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(var_2.x, 6569i, -1i, arg_0.d)), vec4<i32>(u_input.a << (u_input.b.x % 32u), -u_input.a, u_input.a << (24658u % 32u), -40306i)), var_2.x, ~countOneBits(var_2.x)), var_2.x, global2.a.x);
    return func_3(abs(u_input.a), arg_0.c, max(var_2.x, -_wgslsmith_clamp_i32(-42026i, i32(-1i) * -1i, max(u_input.a, arg_0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b))))).e;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec4<f32> {
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b, -1000f))));
    let var_0 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(343f, -719f, 1364f, _wgslsmith_f_op_f32(-arg_0.b)), vec4<f32>(arg_0.b, _wgslsmith_div_f32(-1000f, arg_0.b), global2.a.x, -976f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, true, true), !vec3<bool>(u_input.b.x <= u_input.b.x, true, false), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true));
    let var_1 = u_input.b.x;
    global2 = Struct_4(global2.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_3(u_input.b.x, var_0.x, ~abs(-7655i), func_4(func_1(Struct_1(var_0.xx, global2.a.x))), Struct_1(var_0.xz, func_3(u_input.a, 30728i, u_input.a, global2.a.x).e.b)), Struct_4(_wgslsmith_f_op_vec2_f32(global2.a + global2.a)), select(vec3<bool>(var_0.x, true, !var_0.x), var_0, !select(vec3<bool>(false, false, var_0.x), var_0, var_0)), func_1(func_3(1892i, 11242i, u_input.a, 443f).e).b || (var_0.x && true)), countOneBits(1u), ~(~(~select(vec4<u32>(u_input.b.x, var_1, var_1, 63563u), vec4<u32>(var_1, var_1, 25058u, var_1), var_0.x)))));
    var var_3 = vec2<i32>(i32(-1i) * -26222i, -20320i);
    var_3 = -firstLeadingBit(vec2<i32>(6864i, 13744i));
    var var_4 = _wgslsmith_f_op_f32(-global2.a.x);
    var var_5 = select(var_3.x | -min(2147483647i, min(var_3.x, u_input.a)), u_input.a, var_0.x);
    let var_6 = -_wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(var_3.x, var_3.x, u_input.a)), vec3<i32>(~(-39908i), 7176i, _wgslsmith_mult_i32(-var_3.x, -var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(var_1, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, var_1, u_input.b.x, 4294967295u)), vec4<u32>(3922u, 1u, 1u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_1, u_input.b.x) % vec4<u32>(32u))))), ~52986u, firstTrailingBit(u_input.b) & select(~vec2<u32>(34357u, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(1u, 4294967295u)) >> (max(u_input.b, vec2<u32>(var_1, 0u)) % vec2<u32>(32u)), var_0.x));
}

