struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(1u, Struct_1(50646u, 1i, -1845f)), Struct_3(49103u, Struct_1(10315u, -3350i, -522f)), Struct_3(69971u, Struct_1(0u, 1i, 1154f)));

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(0i, vec4<u32>(4294967295u, 0u, 1u, 48992u), -1123f, vec4<bool>(false, true, true, true), 4294967295u), Struct_2(1i, vec4<u32>(61650u, 43789u, 0u, 128090u), -443f, vec4<bool>(true, false, false, false), 8703u), Struct_2(-28038i, vec4<u32>(9555u, 12553u, 4294967295u, 56454u), -2120f, vec4<bool>(true, true, false, true), 4294967295u), Struct_2(-6524i, vec4<u32>(51767u, 73859u, 4294967295u, 28753u), 1000f, vec4<bool>(false, true, true, false), 28107u), Struct_2(-46524i, vec4<u32>(0u, 1u, 19042u, 1u), -911f, vec4<bool>(false, true, false, false), 2771u), Struct_2(29674i, vec4<u32>(1u, 8975u, 49417u, 4294967295u), -661f, vec4<bool>(false, false, false, false), 61967u), Struct_2(-1i, vec4<u32>(24667u, 70529u, 0u, 1u), 1300f, vec4<bool>(false, false, true, false), 29280u), Struct_2(1i, vec4<u32>(0u, 4294967295u, 1u, 1u), 431f, vec4<bool>(false, true, false, true), 0u), Struct_2(1i, vec4<u32>(0u, 27214u, 97u, 1u), 580f, vec4<bool>(false, true, true, true), 7116u), Struct_2(-1i, vec4<u32>(4294967295u, 4294967295u, 0u, 63203u), 1000f, vec4<bool>(true, true, false, false), 1065u), Struct_2(66388i, vec4<u32>(4294967295u, 0u, 8244u, 1u), 1000f, vec4<bool>(true, false, true, false), 18609u), Struct_2(-5291i, vec4<u32>(0u, 39832u, 6536u, 0u), -379f, vec4<bool>(false, true, true, false), 14382u), Struct_2(1i, vec4<u32>(3304u, 0u, 0u, 14639u), 753f, vec4<bool>(true, false, false, false), 1u), Struct_2(-30971i, vec4<u32>(1u, 1u, 2419u, 17285u), -214f, vec4<bool>(false, true, false, false), 29943u), Struct_2(0i, vec4<u32>(1u, 10226u, 0u, 348u), 827f, vec4<bool>(true, true, true, false), 5517u), Struct_2(-24902i, vec4<u32>(0u, 23018u, 17650u, 0u), 773f, vec4<bool>(true, true, false, true), 0u), Struct_2(19584i, vec4<u32>(120860u, 1u, 1u, 11428u), -1068f, vec4<bool>(false, false, true, true), 33616u), Struct_2(18636i, vec4<u32>(4294967295u, 29232u, 19253u, 80048u), -1000f, vec4<bool>(false, true, false, true), 3321u), Struct_2(0i, vec4<u32>(86111u, 0u, 0u, 55502u), -1967f, vec4<bool>(false, true, false, true), 22842u));

var<private> global2: f32;

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(4294967295u, Struct_1(0u, -1i, -193f)), Struct_3(4294967295u, Struct_1(0u, -3727i, -1422f)), Struct_3(1u, Struct_1(4294967295u, 7477i, 1000f)), Struct_3(4294967295u, Struct_1(2570u, 20475i, 404f)), Struct_3(43300u, Struct_1(1u, 6358i, -251f)), Struct_3(58709u, Struct_1(1u, 4133i, -1000f)), Struct_3(4294967295u, Struct_1(0u, 1i, 483f)), Struct_3(73250u, Struct_1(0u, 1i, 313f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = !any(vec4<bool>(true || !arg_1, (false | arg_1) || true, any(select(vec4<bool>(arg_1, arg_0, arg_0, arg_1), vec4<bool>(false, arg_1, arg_1, arg_0), false)), !arg_0));
    let var_1 = Struct_4(-2147483647i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, 117f)) * vec2<f32>(1f, 1f)))));
    var var_2 = Struct_1(max(_wgslsmith_sub_u32(57170u, 23486u), ~4294967295u), var_1.a, var_1.b.x);
    global3 = array<Struct_3, 8>();
    let var_3 = -abs(var_2.b);
    return -11183i;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = -2147483647i;
    global3 = array<Struct_3, 8>();
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    var var_1 = 290f;
    return _wgslsmith_div_i32(func_3(!select(false, false, all(vec4<bool>(true, true, false, false))), (~(-2147483647i) <= _wgslsmith_mod_i32(arg_1.x, -30394i)) && (_wgslsmith_add_i32(arg_1.x, 21880i) >= arg_1.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 1u)) & vec2<u32>(firstLeadingBit(0u), 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, _wgslsmith_div_u32(u_input.a, 9953u)), vec3<u32>(5741u, ~311u, ~4294967295u))), ~arg_0.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_4 {
    var var_0 = vec2<bool>(arg_0.x > ~func_2(Struct_4(arg_0.x, vec2<f32>(-1363f, -1722f)), ~arg_0, arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1, 357f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1570f), -708f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-216f)), _wgslsmith_f_op_f32(arg_1 - arg_1)));
    let var_1 = select(reverseBits(~min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a))) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~abs(vec2<u32>(1u, ~u_input.a)), false);
    global0 = array<Struct_3, 3>();
    let var_2 = Struct_4(-_wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(1i, -7315i, arg_0.x, -8677i)) | firstTrailingBit(-7270i)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f - -462f) - _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(max(-1020f, arg_1))))));
    var_0 = !select(vec2<bool>(var_0.x, all(!vec3<bool>(var_0.x, true, false))), vec2<bool>(var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x))), select(!(!vec2<bool>(false, var_0.x)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), var_0.x));
    return Struct_4(24710i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b + vec2<f32>(1042f, -870f))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(max(var_2.b.x, 1027f))))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(select(arg_0, vec2<u32>(arg_0.x, 1u), all(vec3<bool>(false, false, false))), arg_0), u_input.a, ~u_input.a), vec3<u32>(_wgslsmith_clamp_u32(1638u, ~(~4294967295u), ~arg_0.x), max(firstLeadingBit(u_input.a | u_input.a), _wgslsmith_div_u32(u_input.a & 0u, abs(arg_0.x))), firstTrailingBit(arg_0.x)));
    global3 = array<Struct_3, 8>();
    var var_2 = min(vec4<u32>(var_1.x, 32333u, var_1.x, 27929u), vec4<u32>(u_input.a, ~31809u, u_input.a, select(~0u, select(countOneBits(u_input.a), ~arg_0.x, true), true != all(vec4<bool>(false, true, false, true)))));
    var var_3 = ~arg_0.x;
    return vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 66851u, 1u, 13565u), ~vec4<u32>(51035u, 4294967295u, 356u, 66106u)), min(u_input.a, select(var_2.x, ~var_2.x, true)), 1u), 1u, var_2.x, ~23565u);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>) -> Struct_4 {
    global3 = array<Struct_3, 8>();
    let var_0 = Struct_1(~97426u, -1i, 218f);
    let var_1 = -(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-32712i << (0u % 32u), select(var_0.b, arg_0.a, false)), -1i));
    var var_2 = var_0.b;
    global3 = array<Struct_3, 8>();
    return Struct_4(-min(var_0.b, -39195i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1909f, _wgslsmith_f_op_f32(min(-493f, 237f)), any(arg_0.d)))), arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(2147483647i, ~func_4(abs(vec2<u32>(u_input.a, 25451u)), func_1(vec3<i32>(0i, -1i, -78634i), 1000f)), -997f, vec4<bool>(all(vec3<bool>(true, false, false)), false, true, any(vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(72509u, 0u, u_input.a)) << (abs(0u >> (u_input.a % 32u)) % 32u)), 2147483647i, abs(firstLeadingBit(vec3<i32>(func_2(Struct_4(52516i, vec2<f32>(-800f, 1048f)), vec3<i32>(15496i, -14662i, 51283i), 1i), func_2(Struct_4(19915i, vec2<f32>(342f, -1159f)), vec3<i32>(45909i, 5997i, 0i), -1i), abs(-46285i)))));
    var var_1 = !(!vec4<bool>(!(-627f <= var_0.b.x), false, false, _wgslsmith_f_op_f32(ceil(1085f)) != var_0.b.x));
    global0 = array<Struct_3, 3>();
    var var_2 = Struct_2(var_0.a, ~max(max(vec4<u32>(14049u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 33832u, u_input.a)), select(vec4<u32>(u_input.a, 46453u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, 17845u, u_input.a), true) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 26073u, 89861u), vec4<u32>(0u, 0u, 54413u, u_input.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-125f)), _wgslsmith_f_op_f32(var_0.b.x - 1251f))), vec4<bool>(false, !any(vec3<bool>(false, var_1.x, var_1.x)), (-1i >= (-79589i >> (u_input.a % 32u))) == !select(var_1.x, var_1.x, var_1.x), true), u_input.a);
    var_1 = var_2.d;
    var_0 = func_1(reverseBits(firstLeadingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_0.a, -16647i, var_0.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_2.a, -1i), vec3<i32>(21552i, var_0.a, var_2.a), vec3<i32>(1i, 4921i, 1i))))), func_1(abs(abs(~vec3<i32>(var_2.a, 3513i, var_2.a))), 1358f).b.x);
    let var_3 = vec2<i32>(var_2.a, var_0.a);
    var_2 = global1[_wgslsmith_index_u32(select(0u, 0u, 50526u == firstLeadingBit(var_2.e)), 19u)];
    let var_4 = Struct_2(min(~(-7678i), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(var_0.a, 0i)) ^ _wgslsmith_mod_i32(var_0.a, 0i)), max(_wgslsmith_add_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.e, var_2.e, var_2.e, 1u), var_2.b, vec4<u32>(var_2.b.x, u_input.a, var_2.b.x, u_input.a)), ~vec4<u32>(7278u, var_2.e, u_input.a, var_2.e)), var_2.b), var_2.b), _wgslsmith_f_op_f32(-var_2.c), select(select(!(!var_2.d), select(var_2.d, !var_2.d, select(var_2.d, var_2.d, var_2.d)), var_1.x), vec4<bool>(true | any(vec4<bool>(var_1.x, true, true, false)), true, !select(true, var_1.x, var_2.d.x), var_1.x), !(any(vec2<bool>(true, false)) || all(var_2.d.yw))), _wgslsmith_sub_u32(min(~4294967295u, 1u) & ~(var_2.b.x >> (var_2.e % 32u)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~5588i, _wgslsmith_sub_vec4_i32(countOneBits(abs(vec4<i32>(var_2.a, var_2.a, 0i, -21428i)) >> (~vec4<u32>(1u, 1u, u_input.a, 1u) % vec4<u32>(32u))), vec4<i32>(-1i, ~(-2147483647i), 16038i >> ((var_4.e ^ 4294967295u) % 32u), 1i)), vec3<u32>(firstTrailingBit(0u), var_4.e, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_4.c)));
}

