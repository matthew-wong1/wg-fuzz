struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 30>;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global2 = array<vec3<u32>, 30>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, -942f))))));
    let var_0 = select(~vec4<i32>(29411i, min(~1582i, _wgslsmith_mult_i32(-1i, -37226i)), i32(-1i) * -2147483647i, abs(19321i)), firstLeadingBit(-(~vec4<i32>(0i, 20894i, -4832i, 1i)) << (u_input.a % vec4<u32>(32u))), any(arg_2));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -18048i, var_0.x, var_0.x) & _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, 26268i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 1i) & vec4<i32>(2147483647i, var_0.x, 2147483647i, -23586i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, abs(var_0.x), -1i, _wgslsmith_add_i32(38047i, -12022i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -40875i) ^ var_0, _wgslsmith_sub_vec4_i32(var_0, vec4<i32>(var_0.x, var_0.x, var_0.x, 4866i))), var_0)));
    let var_2 = u_input.a.x;
    return ~(-(-2147483647i >> (_wgslsmith_add_u32(~28404u, arg_3.a.x) % 32u)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(-_wgslsmith_clamp_i32(_wgslsmith_add_i32(39638i, -2147483647i), func_3(true, vec2<bool>(false, true), vec2<bool>(false, false), Struct_1(u_input.a)), _wgslsmith_mod_i32(1i, -35799i)), _wgslsmith_mult_vec4_u32(max(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 59805u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(4294967295u, 82122u, 4294967295u, 202u)), vec4<u32>(~4294967295u, u_input.a.x >> (11126u % 32u), 0u, 2148u)), vec2<i32>(49597i, -abs(10689i)), Struct_1(~vec4<u32>(u_input.a.x, u_input.a.x, 76331u, 41085u)), true));
    let var_1 = _wgslsmith_f_op_f32(trunc(1732f));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, global3.x, 471f, 1030f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, -501f, 1057f, -255f) * vec4<f32>(var_1, global3.x, 777f, 841f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, -850f, 1532f, -1652f) - vec4<f32>(global3.x, global3.x, -933f, -413f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)) - var_2.x);
    global1 = var_1;
    return max(vec4<u32>(var_0.a.b.x, var_0.a.b.x, u_input.a.x, ~(~u_input.a.x)), countOneBits(~countOneBits(~u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = true;
    var var_1 = Struct_3(Struct_2(-abs(_wgslsmith_sub_i32(34303i, -707i)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, _wgslsmith_mod_u32(0u, u_input.a.x), arg_0.a.x, u_input.a.x), countOneBits(firstTrailingBit(vec4<u32>(80512u, 69841u, 74378u, 4294967295u)))), vec2<i32>(1i, 1i), Struct_1(~vec4<u32>(arg_0.a.x, 1u, 57751u, 43289u)), select(all(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), any(vec3<bool>(false, false, true)) || true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xx - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.wy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1000f)))))) * arg_1.wz);
    var var_3 = ~var_1.a.c >> (~_wgslsmith_mod_vec2_u32(max(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a.x, 41307u)), u_input.a.wx >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))), u_input.a.zw) % vec2<u32>(32u));
    var_0 = var_1.a.e;
    return var_1.a.e;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<f32> {
    global0 = false;
    let var_0 = arg_1.zw;
    let var_1 = vec3<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true))) | ((u_input.a.x & (u_input.a.x ^ u_input.a.x)) != min(7745u, u_input.a.x)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = func_4(Struct_1(~func_2()), arg_1);
    global2 = array<vec3<u32>, 30>();
    return _wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)))), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(1453f + _wgslsmith_f_op_f32(select(-401f, 207f, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1279f, 178f, -594f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global3.x * 1f), global3.x, _wgslsmith_f_op_f32(773f * 1278f)), true)), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), global3.x, _wgslsmith_f_op_f32(global3.x + global3.x))));
    var var_1 = Struct_2(abs(_wgslsmith_add_i32((23255i << (u_input.a.x % 32u)) | abs(0i), -_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -28953i))), u_input.a, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, 15239i << (u_input.a.x % 32u)), 1i), ~(-34826i)), Struct_1(max(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, 56941u, u_input.a.x), u_input.a, vec4<u32>(11936u, 0u, u_input.a.x, 4294967295u))), reverseBits(vec4<u32>(u_input.a.x, 0u, 18603u, u_input.a.x)))), true);
    var_1 = Struct_2(_wgslsmith_sub_i32(var_1.a, _wgslsmith_sub_i32(reverseBits(1i), -1i) & reverseBits(var_1.c.x)), ~firstLeadingBit(var_1.d.a), -abs(vec2<i32>(var_1.a, -var_1.a)), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(40411u, var_1.d.a.x, var_1.d.a.x, 0u), u_input.a)), all(!vec3<bool>(!var_1.e, var_1.e, select(true, false, true))));
    var var_2 = global3.x;
    var var_3 = !(!(!var_1.e));
    let var_4 = select(!select(vec2<bool>(global3.x != global3.x, true), vec2<bool>(true, var_1.a < var_1.c.x), var_1.e), !vec2<bool>(var_1.e, !var_1.e), vec2<bool>(func_4(Struct_1(vec4<u32>(12867u, u_input.a.x, var_1.d.a.x, var_1.b.x)), var_0), false));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - global3.x);
    var_3 = (~(~var_1.d.a.x) & _wgslsmith_div_u32(~38327u, ~_wgslsmith_mult_u32(u_input.a.x, var_1.d.a.x))) > var_1.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, var_0, ~vec4<i32>(min(~0i, -23754i), ~(2147483647i ^ var_1.c.x), 2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, 18773i), var_1.c), -1i)), u_input.a.x);
}

