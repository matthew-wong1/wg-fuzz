struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, true, true, false, false, false, false, false, true, true, false, true, true, true, false, true, true, true, true, true, false, true, false, true);

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(26354i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(0i), Struct_3(16040i), Struct_3(0i), Struct_3(i32(-2147483648)), Struct_3(-49098i), Struct_3(1i), Struct_3(-1i), Struct_3(34574i), Struct_3(-9712i), Struct_3(2147483647i), Struct_3(22783i), Struct_3(-42191i), Struct_3(1i), Struct_3(8969i), Struct_3(1i), Struct_3(41170i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(-12452i), Struct_3(-1i), Struct_3(50341i), Struct_3(i32(-2147483648)));

var<private> global3: bool;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> f32 {
    return -1197f;
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    global1 = array<i32, 18>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1613f), -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(func_3(true, Struct_3(u_input.a), 1u))) - vec2<f32>(_wgslsmith_f_op_f32(-717f * 490f), -1091f))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-136f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) + -583f)))));
    let var_3 = true;
    return vec4<u32>(select(~45915u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), vec2<u32>(1u, 1u)), ~vec2<u32>(u_input.b.x, u_input.c.x)), _wgslsmith_clamp_vec2_u32(abs(u_input.c.wx), select(vec2<u32>(0u, 16759u), u_input.c.ww, vec2<bool>(var_3, true)), abs(vec2<u32>(0u, 1u)))), all(vec2<bool>(true, true))), _wgslsmith_mod_u32(u_input.c.x, 4294967295u), 0u, u_input.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, ~83063u) | u_input.b.x, reverseBits(12502u), _wgslsmith_add_u32(1u, 23560u));
    let var_1 = u_input.b;
    global1 = array<i32, 18>();
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1691f, 135f, 645f, 749f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1291f, 716f, -1431f, -1135f))))))), arg_1, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1096f)), 212f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1805f, _wgslsmith_f_op_f32(min(725f, 1279f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(690f, 1988f), vec2<f32>(1245f, -1125f))), vec2<f32>(804f, -310f), global0[_wgslsmith_index_u32(u_input.b.x, 25u)])))));
    let var_3 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, u_input.a, arg_2), vec3<i32>(arg_2, arg_0.a, arg_2)), firstTrailingBit(0i)) << (u_input.b.zy % vec2<u32>(32u)), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(global1[_wgslsmith_index_u32(139334u, 18u)], select(-(arg_2 << (var_0.x % 32u)), u_input.a, true)));
    return var_2.c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = array<Struct_3, 25>();
    var var_0 = global1[_wgslsmith_index_u32(~1u, 18u)];
    global0 = array<bool, 25>();
    var var_1 = Struct_3(~_wgslsmith_sub_i32(-(u_input.a & 37676i), 2147483647i));
    global1 = array<i32, 18>();
    return func_4(Struct_3(abs(global1[_wgslsmith_index_u32(~(~0u), 18u)])), !select(vec2<bool>(arg_0, all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global0[_wgslsmith_index_u32(0u, 25u)]))), !(!vec2<bool>(true, arg_0)), true), -(var_1.a >> (52481u % 32u)), min(vec4<u32>(~0u, 1u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(43357u, 24038u)), u_input.c.x << (1u % 32u)) | vec4<u32>(u_input.d, reverseBits(u_input.c.x), _wgslsmith_add_u32(100863u, u_input.d), ~22327u), ~func_2(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    var var_0 = Struct_4(-443f, global0[_wgslsmith_index_u32(31306u, 25u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(903f, -598f)))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1541f - var_0.a))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-317f - _wgslsmith_f_op_f32(var_0.c.a.x + -1023f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), -1620f, _wgslsmith_f_op_f32(min(-1581f, var_0.c.a.x))))));
    var var_2 = func_1(false);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, -441f, var_0.b)), _wgslsmith_f_op_f32(abs(-1107f)), _wgslsmith_f_op_f32(step(-614f, 980f)), _wgslsmith_f_op_f32(trunc(var_2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x + -704f), _wgslsmith_f_op_f32(var_0.c.a.x * -1000f), _wgslsmith_div_f32(var_1.x, var_1.x)), vec4<bool>(true, true, true, !var_0.b)))), !vec2<bool>(!any(vec3<bool>(true, true, true)), select(any(vec2<bool>(global0[_wgslsmith_index_u32(25513u, 25u)], false)), false, all(vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(u_input.d, 25u)])))), var_0.c, var_0.c, func_4(global2[_wgslsmith_index_u32(u_input.c.x, 25u)], vec2<bool>(true, !(!var_0.b)), 7053i, ~(vec4<u32>(u_input.c.x, 1u, 6111u, u_input.b.x) & _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, vec4<u32>(u_input.d, u_input.c.x, 0u, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~(~113554u)), ~u_input.b.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(0u, 0u), 1053u), ~firstTrailingBit(vec3<u32>(4294967295u, u_input.c.x, 67140u))), abs(u_input.b) | u_input.b), ~abs(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.c.x, u_input.d))));
}

