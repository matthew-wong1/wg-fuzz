struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(1079f, -285f, 106f), vec3<f32>(1000f, 252f, -841f), vec3<f32>(-328f, -522f, -848f), vec3<f32>(-1906f, 310f, -180f), vec3<f32>(-1342f, -1158f, 584f), vec3<f32>(-103f, -1160f, 797f), vec3<f32>(1000f, -1435f, -1178f), vec3<f32>(1440f, -511f, 205f), vec3<f32>(-430f, 1579f, 1767f), vec3<f32>(450f, 1000f, -207f), vec3<f32>(2314f, -748f, -752f), vec3<f32>(-327f, -257f, 1000f), vec3<f32>(289f, 477f, 476f), vec3<f32>(1000f, 1000f, -636f), vec3<f32>(-1000f, 1295f, -2819f), vec3<f32>(-1526f, -729f, 1350f), vec3<f32>(1072f, -1203f, -303f), vec3<f32>(-2740f, 1708f, -460f), vec3<f32>(1245f, 1136f, 744f));

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(41655u, 31454u, 11104u), vec3<u32>(24370u, 1u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 1963u, 91028u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 21248u, 4037u), vec3<u32>(20908u, 36038u, 1u), vec3<u32>(72972u, 4294967295u, 18481u));

var<private> global2: i32 = -43858i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.b.b.xyw);
    let var_1 = Struct_4(arg_2.b, select(vec2<bool>(true, any(vec3<bool>(true, true, true))), !vec2<bool>(arg_2.b.d, false & arg_2.b.a), !(arg_0 > _wgslsmith_div_i32(-47328i, 32772i))), select(max(abs(-arg_2.a), vec2<i32>(_wgslsmith_mod_i32(arg_0, -1i), max(arg_2.a.x, 2147483647i))), arg_2.a, select(!(!vec2<bool>(arg_2.b.a, arg_2.b.d)), vec2<bool>(true, true), all(select(vec3<bool>(true, arg_2.b.a, true), vec3<bool>(false, false, arg_2.b.d), arg_2.b.d)))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000f + var_1.a.c)) + _wgslsmith_f_op_f32(select(1767f, _wgslsmith_f_op_f32(529f * var_0.x), true))) + _wgslsmith_f_op_f32(-737f - arg_2.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b.x)) - var_1.a.b.x)));
    let var_3 = -69843i;
    let var_4 = firstTrailingBit(-(~vec4<i32>(arg_2.a.x << (41849u % 32u), ~3046i, ~arg_2.a.x, -2147483647i)));
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_1.b.x;
    global0 = array<vec3<f32>, 19>();
    var var_1 = ~vec4<u32>(countOneBits(countOneBits(_wgslsmith_div_u32(arg_0, u_input.a.x))), abs(1u), 1u, abs(5753u));
    var var_2 = arg_1;
    let var_3 = var_0;
    return _wgslsmith_mod_vec2_i32(countOneBits(~firstTrailingBit(vec2<i32>(-17785i, -1i))), _wgslsmith_div_vec2_i32(abs(firstTrailingBit(abs(vec2<i32>(61861i, -2099i)))), vec2<i32>(abs(0i), min(_wgslsmith_mult_i32(1i, -1i), -16429i))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_4(Struct_1(!(true & any(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(363f, 566f, 238f, -1000f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1241f, -421f, -717f, -129f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1033f, 919f, 931f, 1914f), vec4<f32>(1156f, 404f, 750f, 568f)) * vec4<f32>(491f, -1000f, 1000f, -803f))), -822f, any(vec3<bool>(arg_0 >= arg_0, true, true))), vec2<bool>(true, true), func_4(func_3(-reverseBits(1i), _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.a.x, arg_0), vec2<u32>(arg_0, 17922u)), select(vec2<u32>(arg_0, u_input.a.x), u_input.a.wx, true)), Struct_2(vec2<i32>(1i, 0i), Struct_1(false, vec4<f32>(926f, 793f, -551f, -881f), 1000f, true))), Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(ceil(1321f)), _wgslsmith_f_op_f32(select(456f, -325f, true)), -1000f, 381f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(376f)), -1706f)), true), vec4<bool>(true, true, true, true)));
    global1 = array<vec3<u32>, 9>();
    var_0 = Struct_4(var_0.a, var_0.b, var_0.c);
    let var_1 = var_0.a.b.x;
    var var_2 = vec2<bool>(false, var_0.a.a || false);
    return any(!select(!var_0.b, vec2<bool>(true, var_2.x), vec2<bool>(true, true))) & (max(var_0.c.x, 0i) >= abs(var_0.c.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.c);
    var var_1 = arg_0.a.b;
    global0 = array<vec3<f32>, 19>();
    var var_2 = !all(select(vec3<bool>(true || arg_1.a.x, false, func_2(u_input.a.x)), arg_1.a.zyz, arg_0.a.d));
    var var_3 = vec3<i32>(-49471i, -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, -2147483647i, -52323i), vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), ~2147483647i) << (abs(vec3<u32>(reverseBits(~u_input.a.x), ~arg_1.b.x, 66u)) % vec3<u32>(32u));
    return Struct_3(!vec4<bool>(!(var_3.x < var_3.x), false | (true & arg_1.a.x), arg_0.b.x, arg_0.a.a), vec3<u32>(_wgslsmith_add_u32(99484u, u_input.a.x), arg_1.b.x >> (firstLeadingBit(~92292u) % 32u), 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    var var_0 = Struct_4(Struct_1(arg_3.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a.b)) * arg_3.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b.x)), true), !arg_3.b, -firstTrailingBit(abs(vec2<i32>(arg_3.c.x, arg_3.c.x) & vec2<i32>(-23261i, 1i))));
    global2 = min(_wgslsmith_mod_i32(-31146i, ~(-44913i)), 24094i);
    let var_1 = vec2<i32>(-select(-min(arg_3.c.x, var_0.c.x), ~var_0.c.x, any(arg_0) || true), arg_3.c.x);
    return func_2(~(~(~0u))) || true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 9>();
    var var_0 = Struct_2(-(~vec2<i32>(1i, -2147483647i)), Struct_1(!(all(vec2<bool>(false, true)) | false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, -805f, -594f, 1659f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)))), func_5(vec4<bool>(true, false, false, false), func_1(Struct_4(Struct_1(true, vec4<f32>(262f, 218f, 1107f, 1558f), 142f, true), vec2<bool>(false, true), vec2<i32>(-2147483647i, 2147483647i)), Struct_3(vec4<bool>(false, false, true, false), u_input.a.ywz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-843f, 1743f) + vec2<f32>(-567f, -441f)), Struct_4(Struct_1(false, vec4<f32>(1896f, 552f, -303f, -728f), -1214f, true), vec2<bool>(false, true), vec2<i32>(40532i, -44161i))) & (_wgslsmith_f_op_f32(sign(1634f)) != _wgslsmith_f_op_f32(-1047f - 210f))));
    let var_1 = Struct_3(select(!vec4<bool>(true, var_0.b.d, true, any(vec4<bool>(false, var_0.b.d, true, var_0.b.d))), !select(!vec4<bool>(false, var_0.b.d, var_0.b.a, false), !vec4<bool>(var_0.b.d, var_0.b.a, var_0.b.d, var_0.b.d), !vec4<bool>(var_0.b.a, var_0.b.d, var_0.b.d, false)), all(select(select(vec4<bool>(false, var_0.b.d, var_0.b.a, false), vec4<bool>(false, var_0.b.d, var_0.b.d, var_0.b.d), vec4<bool>(var_0.b.a, true, false, var_0.b.a)), func_1(Struct_4(var_0.b, vec2<bool>(var_0.b.d, false), var_0.a), Struct_3(vec4<bool>(true, var_0.b.d, true, false), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u))).a, vec4<bool>(var_0.b.a, false, false, var_0.b.d)))), vec3<u32>(~(~65081u >> (u_input.a.x % 32u)), 3825u, max(~u_input.a.x, ~1u) | 14234u));
    global1 = array<vec3<u32>, 9>();
    var var_2 = Struct_2(abs(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, var_0.a.x), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x)), 2147483647i)), var_0.b);
    let var_3 = ~abs(u_input.a.x);
    var var_4 = -2147483647i;
    let var_5 = ~vec3<u32>(0u, ~(~abs(4294967295u)), ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1129f, var_2.b.c)), _wgslsmith_f_op_f32(-var_0.b.b.x)))));
}

