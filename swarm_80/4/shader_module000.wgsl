struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-1476f, -220f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<i32> {
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a, arg_2.a))) + arg_2.a));
    let var_0 = global0[_wgslsmith_index_u32(max(0u, 4294967295u), 8u)];
    global1 = arg_2;
    var var_1 = max(vec2<i32>(0i, -(i32(-1i) * -4384i) << (0u % 32u)), firstLeadingBit((_wgslsmith_sub_vec2_i32(vec2<i32>(-18201i, 67658i), vec2<i32>(u_input.a.x, var_0.d.d)) & (u_input.a.wx ^ vec2<i32>(u_input.a.x, 1i))) | _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.a.zy), -u_input.a.xx)));
    var_1 = u_input.a.wy;
    return abs(select(-vec4<i32>(u_input.a.x, var_1.x, arg_3.d, arg_3.d), vec4<i32>(-2147483647i, _wgslsmith_div_i32(-66574i, -3539i), var_0.d.d, arg_3.d), var_0.c) << (vec4<u32>(32593u, ~38243u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, arg_3.a), vec2<u32>(4294967295u, 12933u)), max(30408u, 21633u)), var_0.a) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global1 = Struct_3(global1.a);
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(global1.a, vec2<f32>(arg_0.a.c, _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19997u, arg_0.a.a, arg_0.a.e.x), ~vec4<u32>(arg_0.a.a, 0u, 25870u, arg_0.a.e.x)) == _wgslsmith_dot_vec2_u32(arg_0.a.e.xx, select(arg_0.a.e.zy, vec2<u32>(12351u, 1u), vec2<bool>(arg_0.a.b, arg_0.a.b))))));
    let var_1 = arg_0.a;
    var var_2 = -18544i & u_input.a.x;
    global0 = array<Struct_4, 8>();
    return Struct_4(var_1.e.x, any(!select(!vec3<bool>(arg_0.a.b, arg_0.a.b, false), select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, false, false), vec3<bool>(false, true, arg_0.a.b)), vec3<bool>(false, true, var_1.b))), !select(vec4<bool>(!var_1.b, !var_1.b, arg_0.a.b, any(vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b))), !vec4<bool>(false, false, var_1.b, arg_0.a.b), true), Struct_1(firstTrailingBit(_wgslsmith_div_u32(var_1.e.x, arg_0.a.a)), true, arg_0.a.c, _wgslsmith_dot_vec4_i32(u_input.a, func_3(Struct_3(vec2<f32>(914f, 382f)), u_input.a.x, Struct_3(global1.a), arg_0.a)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.e.x, 6850u, 63722u) | _wgslsmith_mod_vec3_u32(arg_0.a.e, vec3<u32>(19672u, 4294967295u, 25086u)), arg_0.a.e)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> i32 {
    global0 = array<Struct_4, 8>();
    var var_0 = -1104f;
    global1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.c - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(394f, -1000f))), global1.a));
    let var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(746f * _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(min(1109f, _wgslsmith_f_op_f32(abs(-577f))))) == _wgslsmith_f_op_f32(-arg_0.d.c));
    var var_2 = arg_0;
    return u_input.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(~firstTrailingBit(_wgslsmith_mod_u32(~arg_1.x, arg_1.x)), false, global1.a.x, firstLeadingBit(_wgslsmith_mult_i32(-(arg_2 | 13590i), func_4(func_2(Struct_2(Struct_1(4294967295u, false, 1016f, 1i, vec3<u32>(75967u, arg_1.x, 15852u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 49637u, 19906u, 24213u), vec4<u32>(arg_0.x, arg_0.x, arg_1.x, arg_1.x)), true, 1442f))), ~(~(firstTrailingBit(arg_0) << (~arg_0 % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-534f, 3045f)), 246f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, -498f))) + _wgslsmith_f_op_f32(trunc(200f)))));
    let var_2 = _wgslsmith_sub_vec3_u32(var_0.e, var_0.e);
    var var_3 = arg_3;
    var var_4 = func_2(Struct_2(func_2(Struct_2(Struct_1(37568u, var_0.b, -174f, arg_2, vec3<u32>(1u, arg_0.x, arg_1.x)))).d)).c.xxz;
    return abs(-(~arg_2));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(~_wgslsmith_sub_u32(firstTrailingBit(arg_0.a.e.x), arg_2.e.x)), !arg_2.b, _wgslsmith_f_op_f32(-global1.a.x), func_1(_wgslsmith_add_vec3_u32(reverseBits(countOneBits(arg_2.e)), firstTrailingBit(firstTrailingBit(vec3<u32>(0u, 7579u, arg_3.x)))), (arg_3.zy << (vec2<u32>(arg_3.x, arg_0.a.a) % vec2<u32>(32u))) ^ (func_2(arg_0).d.e.zy << (~arg_0.a.e.xz % vec2<u32>(32u))), min(arg_0.a.d, -(~(-1i))), Struct_3(global1.a)), select(arg_3.zwx, max(vec3<u32>(arg_3.x, 20366u, 4294967295u | arg_2.a), arg_2.e), false));
    var var_1 = var_0.d;
    let var_2 = arg_0;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - _wgslsmith_f_op_vec2_f32(min(global1.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.a.x)), func_2(var_2).d.c)))));
    let var_4 = !vec4<bool>(all(vec2<bool>(!arg_0.a.b, false)), any(!vec3<bool>(false, true, arg_1)), false, var_2.a.b & (_wgslsmith_f_op_f32(-arg_2.c) > -132f));
    return Struct_1(var_0.a, !func_2(arg_0).d.b, _wgslsmith_div_f32(var_2.a.c, _wgslsmith_f_op_f32(step(297f, arg_2.c))), select(0i, -arg_2.d, all(vec2<bool>(!arg_2.b, true))), var_0.e);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global1.a.x;
    var var_1 = ~(~_wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.e.x, arg_3.e.x, 4294967295u), vec4<u32>(arg_0.e.x, arg_3.a, 1310u, arg_3.a)), firstLeadingBit(0u)), 1u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(select(global1.a.x, -1000f, arg_3.b))))) * vec2<f32>(1573f, -1625f)));
    let var_3 = arg_2.a;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(643f))));
    return func_5(arg_2, arg_3.b, func_2(arg_2).d, _wgslsmith_clamp_vec4_u32((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.a, 33512u, arg_3.e.x, var_3.a), vec4<u32>(var_3.e.x, arg_0.e.x, 0u, arg_2.a.a)) << (select(vec4<u32>(15026u, arg_0.e.x, arg_0.e.x, 131915u), vec4<u32>(arg_3.a, 144124u, 63772u, arg_3.e.x), arg_0.b) % vec4<u32>(32u))) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 1u, 22413u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1u, 79805u, 26421u)), vec4<u32>(12261u, ~0u, ~arg_2.a.e.x, ~arg_0.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(55739u, var_3.a, 103750u, 3280u), abs(vec4<u32>(4294967295u, arg_3.a, 44227u, arg_2.a.e.x))) & ~firstTrailingBit(vec4<u32>(arg_3.e.x, 0u, 48533u, arg_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(1u, firstTrailingBit(4294967295u)), select(_wgslsmith_clamp_u32(39834u, 38405u, 0u), ~63596u, false), ~_wgslsmith_mod_u32(4294967295u, 1u)), abs(vec4<u32>(firstLeadingBit(4294967295u), min(1u, 66675u), max(19344u, 60033u), 11317u)));
    var var_1 = func_6(func_5(Struct_2(Struct_1(0u, true, _wgslsmith_f_op_f32(1323f + global1.a.x), u_input.a.x & -2147483647i, vec3<u32>(var_0.x, var_0.x, 4294967295u))), !(all(vec4<bool>(false, false, true, true)) || true), Struct_1(abs(~var_0.x), false, -139f, func_1(var_0.wwy ^ var_0.wwx, ~var_0.xz, u_input.a.x, Struct_3(global1.a)), var_0.wxx), var_0), min(0i >> (_wgslsmith_dot_vec2_u32(var_0.xz, var_0.yw) % 32u), -abs(u_input.a.x >> (1u % 32u))), Struct_2(func_5(Struct_2(Struct_1(1u, false, global1.a.x, u_input.a.x, var_0.yzz)), all(vec2<bool>(true, true)), func_2(Struct_2(Struct_1(32063u, false, -511f, 12855i, vec3<u32>(38194u, var_0.x, 39202u)))).d, vec4<u32>(1u, ~0u, _wgslsmith_mod_u32(59595u, 62106u), ~var_0.x))), Struct_1(4294967295u, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(525f, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) - global1.a.x))), ~(3776i >> (var_0.x % 32u)) & _wgslsmith_div_i32(2147483647i, select(u_input.a.x, u_input.a.x, true)), firstLeadingBit(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 89954u))) | ~vec3<u32>(var_0.x, var_0.x, var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(max(969f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(4294967295u, true, var_1.c, 0i, vec3<u32>(var_0.x, var_1.e.x, 1u))), func_2(Struct_2(Struct_1(var_1.e.x, var_1.b, -1450f, u_input.a.x, var_0.zzy))).d.b, func_5(Struct_2(Struct_1(var_1.e.x, var_1.b, 768f, -2147483647i, var_1.e)), true, Struct_1(var_0.x, false, -976f, u_input.a.x, var_1.e), var_0), var_0).c - _wgslsmith_f_op_f32(sign(1129f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2 - func_5(Struct_2(Struct_1(var_0.x, false, global1.a.x, 54870i, var_0.zxx)), all(vec4<bool>(false, true, var_1.b, var_1.b)), Struct_1(var_1.e.x, true, var_1.c, -47232i, var_1.e), vec4<u32>(var_0.x, 109926u, 0u, 0u)).c), -825f, func_2(Struct_2(Struct_1(var_0.x, false, global1.a.x, 1i, var_1.e))).d.c, _wgslsmith_f_op_f32(211f * global1.a.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_6(func_5(Struct_2(Struct_1(var_0.x, true, global1.a.x, 28892i, var_0.xzy)), !var_1.b, Struct_1(var_0.x, false, 234f, 1i, vec3<u32>(var_1.e.x, 0u, var_1.a)), var_0 & var_0), var_1.d >> ((1u & var_1.a) % 32u), Struct_2(Struct_1(20934u, true, var_2, 29109i, var_0.zzw)), Struct_1(~33256u, false, _wgslsmith_f_op_f32(-var_3.x), 1i, vec3<u32>(var_0.x, 0u, var_1.a))).c, global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~vec4<u32>(0u, var_1.e.x, var_0.x, var_1.e.x)))));
}

