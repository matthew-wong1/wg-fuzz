struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(-11707i, -1i, 0i), vec4<f32>(311f, -354f, -1035f, -665f), 90451u, vec4<i32>(-27436i, 2147483647i, 62242i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 5803i, 1i), vec4<f32>(-975f, 986f, 1111f, -1581f), 74588u, vec4<i32>(i32(-2147483648), -14926i, 626i, -53507i)), Struct_1(vec3<i32>(2147483647i, 19413i, 1i), vec4<f32>(-358f, -388f, -663f, 273f), 4294967295u, vec4<i32>(-42636i, 6366i, -8405i, -49606i)), Struct_1(vec3<i32>(13474i, -3998i, i32(-2147483648)), vec4<f32>(-1300f, -753f, -550f, 539f), 1u, vec4<i32>(-40042i, -30010i, 1i, 2147483647i)), Struct_1(vec3<i32>(5460i, 1i, 36007i), vec4<f32>(-217f, -326f, 159f, 168f), 4294967295u, vec4<i32>(2147483647i, 35050i, 0i, 45593i)), Struct_1(vec3<i32>(-37805i, -1i, 0i), vec4<f32>(-636f, -426f, -795f, -1510f), 3881u, vec4<i32>(3928i, -44646i, 16729i, 18302i)), Struct_1(vec3<i32>(2147483647i, -1i, 0i), vec4<f32>(-2857f, 376f, -140f, 1604f), 4294967295u, vec4<i32>(1i, 2147483647i, -9466i, 19636i)), Struct_1(vec3<i32>(-1i, 0i, -3300i), vec4<f32>(1477f, 750f, 359f, 1131f), 4294967295u, vec4<i32>(-55230i, 57979i, -1i, -52736i)), Struct_1(vec3<i32>(30779i, -13062i, 1i), vec4<f32>(139f, 747f, 420f, -1098f), 4294967295u, vec4<i32>(0i, 27147i, 0i, 0i)), Struct_1(vec3<i32>(2147483647i, 53858i, -45103i), vec4<f32>(816f, 153f, 999f, -899f), 1u, vec4<i32>(64617i, -8389i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(63426i, -71853i, -1812i), vec4<f32>(424f, 574f, 2311f, -1016f), 0u, vec4<i32>(1i, 2147483647i, 0i, 15226i)), Struct_1(vec3<i32>(15538i, 1i, i32(-2147483648)), vec4<f32>(-1964f, 569f, -664f, 894f), 43488u, vec4<i32>(2147483647i, 16617i, 2147483647i, -74563i)), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec4<f32>(-1140f, -533f, 1399f, 1076f), 72958u, vec4<i32>(1i, -1734i, i32(-2147483648), -30182i)), Struct_1(vec3<i32>(i32(-2147483648), 11417i, 42029i), vec4<f32>(1000f, 1083f, -1000f, 1183f), 12474u, vec4<i32>(i32(-2147483648), 12690i, 1i, 87245i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec4<f32>(-276f, -159f, 335f, 1412f), 4294967295u, vec4<i32>(-52527i, 7784i, -56061i, 82015i)), Struct_1(vec3<i32>(-28664i, -1i, 1i), vec4<f32>(882f, 940f, 261f, 405f), 57676u, vec4<i32>(1i, 24693i, -12664i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec4<f32>(1083f, 1073f, -564f, -762f), 1u, vec4<i32>(i32(-2147483648), 31711i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec4<f32>(1211f, 915f, -1000f, 1000f), 0u, vec4<i32>(0i, 1i, i32(-2147483648), -28103i)), Struct_1(vec3<i32>(1i, 2147483647i, -13977i), vec4<f32>(424f, 151f, -1000f, 399f), 0u, vec4<i32>(-1i, 0i, -2577i, -1i)), Struct_1(vec3<i32>(-1i, 1i, -42622i), vec4<f32>(-1460f, 415f, -1618f, 1240f), 575u, vec4<i32>(-28996i, -17739i, -6602i, i32(-2147483648))), Struct_1(vec3<i32>(7196i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-1503f, 1000f, -1042f, -1175f), 4294967295u, vec4<i32>(2147483647i, -1i, i32(-2147483648), 6177i)), Struct_1(vec3<i32>(0i, 11915i, 2625i), vec4<f32>(-935f, -619f, -111f, -973f), 15063u, vec4<i32>(2147483647i, 2147483647i, 12335i, 2147483647i)), Struct_1(vec3<i32>(0i, 37701i, 29597i), vec4<f32>(-1737f, -466f, 1249f, 575f), 4598u, vec4<i32>(50302i, -9268i, 2147483647i, -11026i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: i32) -> vec2<bool> {
    let var_0 = vec3<u32>(~(~arg_1.x << (arg_1.x % 32u)), firstTrailingBit(arg_1.x), _wgslsmith_mod_u32(arg_1.x, ~arg_1.x));
    let var_1 = ~arg_1.x;
    let var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(~(~40063u)), 23u)];
    var var_3 = var_2.b.wwz;
    return select(select(!vec2<bool>(true, any(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), all(vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, false, false, true))))), vec2<bool>(true, true), any(vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(false, false)), true), !((arg_3.a.x & 0i) != arg_3.d.x)), select(func_3(arg_3.d.wxw, ~vec4<u32>(arg_3.c, 0u, arg_1, 4294967295u), 0i), select(vec2<bool>(true, true), vec2<bool>(true, -2147483647i <= u_input.c), any(vec3<bool>(true, true, true))), func_3(select(~vec3<i32>(arg_3.a.x, 2147483647i, 33485i), vec3<i32>(u_input.a.x, arg_3.a.x, 1i), true), vec4<u32>(arg_1, arg_3.c, 1u, 5947u), abs(abs(u_input.b)))), true);
    global3 = array<Struct_1, 23>();
    let var_1 = global3[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = var_1.d;
    let var_3 = Struct_1(u_input.a, var_1.b, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1, var_1.c, 73310u)) << (~vec3<u32>(1328u, var_1.c, var_1.c) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(42534u, arg_1, var_1.c), ~vec3<u32>(arg_1, arg_3.c, 1u))), arg_3.d);
    return Struct_1(~(~(~vec3<i32>(arg_3.a.x, 23301i, var_2.x))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1321f + _wgslsmith_f_op_f32(sign(var_1.b.x))))), 390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1139f * -618f), _wgslsmith_f_op_f32(f32(-1f) * -739f), false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -163f)) + _wgslsmith_f_op_f32(var_3.b.x * arg_0)))), (arg_3.c | 107127u) << (~_wgslsmith_mult_u32(arg_3.c, 4294967295u) % 32u), -vec4<i32>(1i, var_2.x, _wgslsmith_add_i32(-2147483647i, 0i), (var_2.x & var_1.d.x) | ~var_3.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = countOneBits(_wgslsmith_mod_i32(u_input.d, u_input.c));
    global2 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1175f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), _wgslsmith_f_op_f32(step(-1915f, 1558f)), _wgslsmith_f_op_f32(-1278f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(select(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(arg_0.b.x, 974f, arg_0.b.x, arg_1.b.x)) * arg_1.b) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, arg_0.b.x, -2368f, arg_1.b.x)), vec4<f32>(513f, -344f, arg_0.b.x, 504f))), any(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))))))));
    var var_1 = -25927i <= -arg_0.a.x;
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(-30956i), ~(~(max(u_input.d, 20487i) | ~arg_1.a.x)));
    return Struct_1(~(~(~arg_0.d.xzy)), arg_0.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.c, arg_1.c, 4595u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_1.c, arg_0.c), vec3<u32>(arg_0.c, 7457u, 1u)) % vec3<u32>(32u)), vec3<u32>(max(19492u, 8762u), 4294967295u, ~36409u)) | ~_wgslsmith_mod_u32(~0u, 73933u), max(~(-vec4<i32>(-4241i, -1i, -2147483647i, -1i)), arg_1.d));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = func_4(func_2(1445f, arg_0.c, arg_0.b.x, Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(37554i, -1i, u_input.e)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, arg_0.d.x), vec3<i32>(arg_0.a.x, arg_0.d.x, arg_0.d.x), u_input.a)), arg_0.b, 16321u, vec4<i32>(min(7753i, arg_0.a.x), 65978i ^ u_input.d, firstTrailingBit(u_input.d), 2147483647i))), Struct_1(_wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(28163i, 2147483647i, u_input.c), vec3<i32>(arg_0.a.x, arg_0.a.x, 18117i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1354f), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(round(arg_0.b.x)), arg_1))), max(arg_0.c, ~(~arg_0.c)), _wgslsmith_add_vec4_i32(vec4<i32>(81328i, 0i, u_input.d, arg_0.d.x >> (arg_0.c % 32u)), ~(~arg_0.d))));
    let var_1 = u_input.a;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((vec2<i32>(u_input.d << (1u % 32u), u_input.e) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.a.x, -1i)), -vec2<i32>(u_input.e, -2356i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1190f, 1144f, 860f) + vec3<f32>(564f, 303f, 2467f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, -445f, -1318f)), vec3<bool>(true, true, true)))))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~select(1u, 49439u, false), min(~1u, ~38222u)), reverseBits(min(0u ^ func_1(Struct_1(vec3<i32>(u_input.b, var_0.x, -2147483647i), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), 100566u, vec4<i32>(1i, u_input.a.x, -23219i, u_input.a.x)), false, true), 0u))), 23u)];
    var var_3 = vec3<u32>(8661u, var_2.c, var_2.c);
    var var_4 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(6354i, -1i, -2147483647i), abs(vec3<i32>(u_input.b, u_input.c, var_2.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 7020i, -2147483647i), var_2.a, vec3<i32>(var_2.a.x, 15499i, 25881i)) | reverseBits(var_2.d.zzy)), _wgslsmith_mult_vec3_i32(func_4(func_4(global3[_wgslsmith_index_u32(0u, 23u)], Struct_1(vec3<i32>(var_2.a.x, u_input.a.x, -2461i), var_2.b, var_3.x, vec4<i32>(-38286i, var_0.x, -2147483647i, 0i))), func_2(739f, 0u, 822f, Struct_1(vec3<i32>(var_0.x, -15209i, var_0.x), vec4<f32>(var_2.b.x, var_1.x, 1334f, var_1.x), var_2.c, vec4<i32>(0i, var_2.a.x, var_0.x, 37948i)))).a, ~vec3<i32>(u_input.c, -51921i, var_2.d.x))), var_2.b, func_2(-2255f, 4294967295u, _wgslsmith_f_op_f32(max(-436f, var_2.b.x)), Struct_1(abs(vec3<i32>(var_2.a.x, 0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -503f, -264f, 1000f)) * var_2.b), var_3.x, func_2(var_2.b.x, var_3.x, var_2.b.x, global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 22u)]).d)).c, func_4(Struct_1(max(~u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(-46975i, -24560i, 0i), vec3<i32>(-31390i, -39651i, u_input.b))), _wgslsmith_f_op_vec4_f32(abs(var_2.b)), var_2.c, ~select(vec4<i32>(-2147483647i, -26222i, -32299i, u_input.e), vec4<i32>(1i, var_0.x, 28058i, var_2.d.x), vec4<bool>(true, true, false, false))), global2[_wgslsmith_index_u32(firstTrailingBit(63973u), 22u)]).d);
    let var_5 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~22906u), 23u)];
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(24915i);
}

