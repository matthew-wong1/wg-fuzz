struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<u32, 20> = array<u32, 20>(1u, 25698u, 1u, 1u, 19762u, 81556u, 1u, 4294967295u, 23825u, 55040u, 22811u, 61246u, 1u, 4294967295u, 11378u, 0u, 4088u, 4294967295u, 0u, 0u);

var<private> global2: Struct_4 = Struct_4(vec3<f32>(-1321f, -548f, 865f), vec4<u32>(54041u, 82793u, 69182u, 0u), vec4<f32>(803f, -831f, 2022f, -771f), Struct_2(Struct_1(vec3<i32>(1i, 55726i, -1i), vec2<u32>(4294967295u, 22799u), -708f, vec2<i32>(-69739i, -62514i)), 1290i, vec2<bool>(true, true), 1u), 1074f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec3<u32>) -> vec2<u32> {
    global1 = array<u32, 20>();
    var var_0 = Struct_4(global2.c.yyw, global2.b, _wgslsmith_f_op_vec4_f32(step(global2.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), global2.c))), global2.d, -1096f);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.c.zyx))), vec4<u32>(global2.b.x, global1[_wgslsmith_index_u32(global2.d.d, 20u)], global2.d.a.b.x, 0u), _wgslsmith_f_op_vec4_f32(global2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-var_0.c)))), Struct_2(global2.d.a, firstLeadingBit(global2.d.b), vec2<bool>(var_0.d.c.x, false), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(arg_3.x, global2.d.d, u_input.c)), ~abs(vec3<u32>(arg_1.x, 0u, global2.d.d)))), -1000f);
    let var_2 = _wgslsmith_add_vec3_i32(var_1.d.a.a | var_0.d.a.a, global2.d.a.a | global2.d.a.a);
    global1 = array<u32, 20>();
    return vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.e, 20u)], 43212u), u_input.e), _wgslsmith_dot_vec4_u32(~var_1.b, vec4<u32>(arg_3.x, global2.b.x, var_0.b.x, 34187u)) | min(~11119u, u_input.e)), var_0.d.a.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = -57246i;
    var_0 = 0i;
    global1 = array<u32, 20>();
    global0 = array<vec3<u32>, 30>();
    var var_1 = -max(_wgslsmith_mult_i32(-_wgslsmith_div_i32(u_input.a, u_input.a), -global2.d.b), (23369i ^ _wgslsmith_dot_vec3_i32(global2.d.a.a, global2.d.a.a)) ^ _wgslsmith_mod_i32(u_input.d.x ^ global2.d.a.a.x, 1i << (global1[_wgslsmith_index_u32(global2.d.d, 20u)] % 32u)));
    return Struct_2(Struct_1(global2.d.a.a, func_3(1f, firstLeadingBit(global2.b), _wgslsmith_f_op_f32(-161f * _wgslsmith_f_op_f32(-304f * global2.d.a.c)), global2.b.wzz), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-700f)), arg_1.x)), -(vec2<i32>(-1i) * -vec2<i32>(-39273i, -1151i))), 0i, !select(arg_0.xy, !(!global2.d.c), any(arg_0.xz)), ~(~45648u));
}

fn func_1() -> vec2<f32> {
    let var_0 = u_input.e;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(200f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, global2.d.a.c) * 1086f))) - -352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582f - -1468f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.e, 458f))));
    var_1 = global2.d.a.c;
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.x, var_2.x, global2.c.x))), firstLeadingBit(abs(global2.b)), global2.c, func_2(!vec3<bool>(!global2.d.c.x, all(vec4<bool>(global2.d.c.x, global2.d.c.x, global2.d.c.x, global2.d.c.x)), global2.d.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, 755f, 1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-435f, global2.d.a.c, 494f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_2.x, global2.d.a.c), vec3<f32>(-892f, -997f, global2.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) + _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), vec3<f32>(global2.d.a.c, 1000f, var_2.x)).a.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1791f), _wgslsmith_f_op_f32(ceil(var_2.x)), global2.d.c.x & global2.d.c.x)))));
    return _wgslsmith_f_op_vec2_f32(trunc(global2.a.yx));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = vec3<bool>(all(select(!select(vec4<bool>(global2.d.c.x, arg_2.x, true, global2.d.c.x), vec4<bool>(false, arg_2.x, true, false), arg_2.x), vec4<bool>(global2.d.c.x, any(vec4<bool>(arg_2.x, false, true, arg_2.x)), arg_2.x, all(vec3<bool>(global2.d.c.x, global2.d.c.x, false))), func_2(vec3<bool>(true, arg_2.x, global2.d.c.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(238f, -271f, arg_1.x)))).c.x)), !any(select(select(vec4<bool>(arg_2.x, global2.d.c.x, false, arg_2.x), vec4<bool>(false, arg_2.x, true, global2.d.c.x), vec4<bool>(global2.d.c.x, arg_2.x, arg_2.x, false)), select(vec4<bool>(true, false, true, global2.d.c.x), vec4<bool>(global2.d.c.x, true, arg_2.x, global2.d.c.x), false), select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(global2.d.c.x, global2.d.c.x, arg_2.x, true), vec4<bool>(true, true, false, arg_2.x)))), arg_2.x && arg_2.x);
    global0 = array<vec3<u32>, 30>();
    var var_1 = !(!(!(!(!vec4<bool>(var_0.x, false, arg_2.x, true)))));
    var var_2 = var_0.x;
    let var_3 = func_2(!select(!(!arg_2), var_0, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2296f, _wgslsmith_f_op_f32(f32(-1f) * -1203f), -716f) * global2.c.xzw));
    return Struct_4(global2.c.xzw, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 39777u & global2.b.x, _wgslsmith_dot_vec4_u32(global2.b, vec4<u32>(global2.b.x, var_3.a.b.x, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 20u)]))), vec3<u32>(~global1[_wgslsmith_index_u32(0u, 20u)], global2.d.a.b.x << (arg_0.x % 32u), 0u)), 1u, ~4294967295u, global2.d.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, arg_1.x, _wgslsmith_div_f32(467f, global2.e), _wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global2.c)), vec4<f32>(var_3.a.c, global2.d.a.c, arg_1.x, arg_1.x), vec4<bool>(false, global2.d.c.x, global2.d.c.x, var_3.c.x))))), func_2(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.c, var_3.a.c, 335f)) + vec3<f32>(global2.e, arg_1.x, global2.c.x)))), var_3.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(41656u), ~(~60429u)), abs(global2.b.ww)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, global2.c.x) + global2.a.yx))) - _wgslsmith_f_op_vec2_f32(func_1())), !(!(!(!vec3<bool>(true, global2.d.c.x, global2.d.c.x)))));
    global0 = array<vec3<u32>, 30>();
    var var_0 = func_2(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(global2.d.c.x, global2.d.c.x, global2.d.c.x), vec3<bool>(false, global2.d.c.x, true)), select(vec3<bool>(false, global2.d.c.x, true), vec3<bool>(global2.d.c.x, global2.d.c.x, false), vec3<bool>(true, true, true)), all(global2.d.c)), !vec3<bool>(false, true, global2.d.c.x), vec3<bool>(1291f == global2.e, !global2.d.c.x, true)), vec3<f32>(1091f, global2.a.x, _wgslsmith_f_op_f32(-801f - -829f))).a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, func_4(var_0.b, global2.c.yw, select(vec3<bool>(global2.d.c.x, true, global2.d.c.x), vec3<bool>(global2.d.c.x, true, true), false)).c.x)) * func_4(~(~abs(vec2<u32>(74045u, 12344u))), _wgslsmith_f_op_vec2_f32(-global2.a.xy), select(select(vec3<bool>(true, global2.d.c.x, global2.d.c.x), select(vec3<bool>(false, global2.d.c.x, true), vec3<bool>(true, false, global2.d.c.x), global2.d.c.x), !global2.d.c.x), vec3<bool>(global2.d.c.x, true, true), vec3<bool>(all(vec4<bool>(global2.d.c.x, true, false, true)), any(vec2<bool>(true, false)), !global2.d.c.x))).c.wz);
    global0 = array<vec3<u32>, 30>();
    let var_2 = global2.d;
    let var_3 = all(func_4(vec2<u32>(var_2.a.b.x, firstLeadingBit(firstTrailingBit(var_0.b.x))), _wgslsmith_f_op_vec2_f32(-global2.c.xy), select(!select(vec3<bool>(var_2.c.x, true, global2.d.c.x), vec3<bool>(var_2.c.x, true, true), false), vec3<bool>(true, var_2.c.x && global2.d.c.x, true), vec3<bool>(func_4(vec2<u32>(u_input.e, 1u), global2.c.zw, vec3<bool>(true, global2.d.c.x, true)).d.c.x, true, any(vec3<bool>(false, global2.d.c.x, true))))).d.c);
    var var_4 = firstTrailingBit(u_input.d.x) >= _wgslsmith_sub_i32((_wgslsmith_div_i32(u_input.a, 2147483647i) | -38639i) | abs(global2.d.a.d.x), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x);
}

