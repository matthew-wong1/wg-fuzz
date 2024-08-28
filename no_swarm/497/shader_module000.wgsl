struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(17621i, 1i);

var<private> global3: array<vec4<i32>, 13>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_2(~0u, Struct_1(!select(vec4<bool>(true, arg_2.x, true, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2.x), arg_2.x), 11302i, arg_2.zy), Struct_1(arg_2, global2.x, arg_2.xw));
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.yxz - arg_1.zwx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(686f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.wyx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-897f, arg_1.x, -486f), vec3<f32>(-1331f, 1522f, -1000f))) * arg_1.xxx) - arg_1.yxz)), var_0.c.a.x, select(arg_2, !select(!arg_2, select(arg_2, var_0.c.a, arg_2.x), vec4<bool>(true, var_0.c.a.x, false, var_0.b.c.x)), true));
    let var_2 = vec3<bool>(true, _wgslsmith_add_i32(~global2.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a, 30905u, 1u), vec4<u32>(0u, 2248u, var_0.a, var_0.a)) % 32u), _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_0.xw), arg_0.xw)) != -44680i, global2.x >= abs(4323i));
    global0 = var_0.a;
    return _wgslsmith_dot_vec4_i32(arg_0, ~_wgslsmith_add_vec4_i32(max(vec4<i32>(0i, var_0.b.b, var_0.b.b, 0i), vec4<i32>(17035i, 2147483647i, arg_0.x, var_0.c.b)) | vec4<i32>(arg_0.x, u_input.a, global2.x, -11827i), arg_0));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_4(vec3<f32>(164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, -547f))), -261f), true, vec4<bool>(false, arg_0 | !(global2.x != global2.x), !arg_0, true));
    let var_1 = !var_0.c;
    global2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-26914i, func_3(vec4<i32>(-1i, u_input.a, global2.x, global2.x), vec4<f32>(-1910f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.c.x, var_0.c.x, false))) | global2.x, firstLeadingBit(u_input.a) >> (0u % 32u)), -((vec2<i32>(u_input.a, u_input.a) | min(vec2<i32>(u_input.a, 16000i), vec2<i32>(2147483647i, -2147483647i))) | select(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 15966i), vec2<i32>(global2.x, u_input.a)), min(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(0i, -36600i)), vec2<bool>(true, true))));
    let var_2 = ~firstTrailingBit(abs(~33515i) >> (0u % 32u));
    return Struct_1(vec4<bool>(var_0.c.x, true, true, any(var_0.c.xwx)), countOneBits(~_wgslsmith_clamp_i32(-19807i, var_2, 1i)), vec2<bool>(true, true));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(~19409u, func_2(min(_wgslsmith_dot_vec3_u32(vec3<u32>(53341u, 4294967295u, 35648u), vec3<u32>(4294967295u, 56288u, 0u)), 57970u) == firstLeadingBit(2129u)), Struct_1(!func_2(true).a, u_input.a, !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    global3 = array<vec4<i32>, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_vec4_f32(vec4<f32>(1775f, _wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f * -424f) + _wgslsmith_f_op_f32(f32(-1f) * -313f)), 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 116f), 390f, _wgslsmith_f_op_f32(sign(-220f)), _wgslsmith_f_op_f32(max(-1027f, 316f))))))));
    global0 = 4294967295u;
    let var_2 = Struct_2(var_0.a, Struct_1(var_0.c.a, -_wgslsmith_add_i32(global2.x, var_0.b.b) & 0i, select(vec2<bool>(all(var_0.b.a.yx), any(vec2<bool>(var_0.b.a.x, var_0.b.c.x))), vec2<bool>(true, var_0.c.a.x), true)), Struct_1(!(!var_0.b.a), ~(-(i32(-1i) * -2147483647i)), vec2<bool>(var_0.b.c.x && select(var_0.c.c.x, var_0.b.c.x, var_0.c.a.x), true)));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = Struct_3(arg_0.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, 977f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1580f, -592f) + vec2<f32>(-1421f, -1434f)))))), func_1(), arg_0.b, func_2(false));
    var var_1 = 450f;
    var var_2 = Struct_3(vec4<bool>(false, arg_0.c.c.x, false, (func_2(false).a.x | true) | arg_0.b.c.x), var_0.b, Struct_2(~(~(~arg_0.a)), func_1().b, var_0.d), Struct_1(arg_0.b.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, 18550i), vec2<i32>(1i, arg_0.c.b)), max(vec2<i32>(global2.x, var_0.d.b), vec2<i32>(arg_1, u_input.a))), !(!var_0.e.c)), var_0.e);
    var var_3 = var_0.c;
    global2 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c.c.b, ~66378i), ~(vec2<i32>(u_input.a, -1i) << (vec2<u32>(14978u, 58333u) % vec2<u32>(32u)))), firstTrailingBit(abs(~vec2<i32>(-67656i, -46498i))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~39435u ^ func_4(func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~(-1i), ~9750i), -(vec3<i32>(global2.x, 19442i, u_input.a) << (vec3<u32>(4294967295u, 0u, 1739u) % vec3<u32>(32u)))));
    let var_1 = !(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) >= 132213u);
    let var_2 = min(57744u, _wgslsmith_mod_u32(func_1().a, 73618u));
    var var_3 = Struct_1(func_2(any(vec4<bool>(select(true, false, var_1), all(vec4<bool>(var_1, false, var_1, true)), true, true))).a, -47900i, vec2<bool>(func_1().b.a.x, !var_1));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(329f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-344f, 1787f)) - _wgslsmith_f_op_f32(ceil(-338f)))))), !(!(!var_1)), var_3.a);
    let var_5 = global2.x;
    var_3 = func_1().c;
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -1518f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-abs(-10381i), -(~(-19613i))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1().a, var_2), 13u)], -11532i, u_input.a, ~abs(_wgslsmith_add_vec2_u32(~vec2<u32>(52168u, var_2), ~vec2<u32>(var_2, 4294967295u))));
}

