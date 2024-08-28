struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(true, Struct_1(820f, 52517i, 47828u, vec3<u32>(57674u, 25482u, 1u), 43647u), 0u, vec3<u32>(0u, 0u, 311u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_mod_u32(35830u >> (arg_0.c % 32u), ~u_input.b))), 1u)];
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(25877u, firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.d.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(70023u, arg_0.d.x))))), ~(~u_input.b), u_input.b, 4294967295u);
    let var_2 = ~_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_0.e, 63556u, 17963u, var_0.b.c), abs(vec4<u32>(arg_0.c, var_1.x, var_0.c, 113163u))), ~select(vec4<u32>(28913u, var_0.d.x, 1u, arg_0.e), vec4<u32>(arg_0.d.x, var_1.x, u_input.b, 55171u), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a))) << (vec4<u32>(60677u, ~3182u | _wgslsmith_div_u32(abs(var_1.x), min(75189u, arg_0.e)), countOneBits(var_0.d.x), max(0u, ~var_1.x & _wgslsmith_add_u32(88896u, var_0.c))) % vec4<u32>(32u));
    var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.d & arg_0.d, ~var_1.zzx), 19986u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2, var_2), var_2.x)), 4294967295u, 0u & (_wgslsmith_sub_u32(4294967295u, 6935u) >> (var_0.b.e % 32u)), _wgslsmith_mod_u32(firstTrailingBit(~var_1.x), 61664u));
    var var_3 = max(var_0.b.b, -2147483647i);
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 227f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2483f), _wgslsmith_f_op_f32(sign(global0.x)), -1513f, 1288f);
    global1 = array<Struct_3, 6>();
    let var_2 = vec4<bool>(arg_2.x, arg_2.x, !(1i >= arg_1.a) == arg_2.x, any(!vec2<bool>(func_3(Struct_1(306f, -2147483647i, 4294967295u, vec3<u32>(arg_0.x, 0u, u_input.b), u_input.b)), func_3(Struct_1(global0.x, u_input.a, 56100u, vec3<u32>(0u, arg_0.x, arg_0.x), arg_0.x)))));
    let var_3 = arg_1;
    return vec4<i32>(_wgslsmith_mult_i32(arg_1.a, firstTrailingBit(~1i)), ~_wgslsmith_mod_i32(~(-27933i), u_input.c.x) >> (~(~arg_0.x << (_wgslsmith_mult_u32(1u, u_input.b) % 32u)) % 32u), -1i, arg_1.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(486f, arg_2.a.a, countOneBits(~4294967295u), vec3<u32>(1u, u_input.b, 71733u), 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(790f)))), arg_2.a.a, countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.d.x, 0u), arg_1.x & 1u)) | var_0.d.x, vec3<u32>(1u, var_0.d.x, 4294967295u) << (reverseBits(vec3<u32>(u_input.b, u_input.b, 1u) >> (var_0.d % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(_wgslsmith_mod_u32(firstLeadingBit(u_input.b), max(8938u, arg_1.x))));
    var var_2 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, ~(-1i << (0u % 32u))), _wgslsmith_div_i32(-arg_0.x, ~_wgslsmith_add_i32(2147483647i, var_0.b))));
    var var_3 = var_0.d & _wgslsmith_div_vec3_u32(arg_1.yzz, ~(~(vec3<u32>(44254u, var_1.d.x, 47861u) >> (var_0.d % vec3<u32>(32u)))));
    let var_4 = _wgslsmith_mult_vec3_u32(countOneBits(~(~arg_1.yyz)) << (vec3<u32>(4351u, _wgslsmith_dot_vec4_u32(arg_1, abs(arg_1)), u_input.b) % vec3<u32>(32u)), vec3<u32>(0u, ~var_1.c, _wgslsmith_div_u32(4294967295u, arg_1.x)));
    return global2[_wgslsmith_index_u32(~30527u, 1u)];
}

fn func_1() -> vec4<f32> {
    global2 = array<Struct_2, 1>();
    var var_0 = func_4(-min(-vec4<i32>(u_input.a, u_input.c.x, 1i, 1i) | -vec4<i32>(-5533i, u_input.c.x, 1i, u_input.c.x), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(30861u, u_input.b, 1u), vec3<u32>(14021u, 0u, 1u)), Struct_3(2147483647i), vec2<bool>(true, true))), min(~(_wgslsmith_mod_vec4_u32(vec4<u32>(71223u, 4366u, 36792u, 43758u), vec4<u32>(u_input.b, 1u, 1u, u_input.b)) ^ select(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(1u, u_input.b, 31105u, 45068u), false)), firstTrailingBit(~(vec4<u32>(u_input.b, 107260u, 1u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 8756u, u_input.b) % vec4<u32>(32u))))), Struct_4(Struct_3(abs(func_2(vec3<u32>(48950u, 0u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec2<bool>(true, false)).x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-773f, 1114f, -1136f, global0.x), vec4<f32>(-800f, -586f, global0.x, 1127f))), vec4<f32>(-172f, 1101f, global0.x, global0.x))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(global0.x, global0.x, true)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(global0.x * -133f))))));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(var_0.b.a)), -324f)))));
    var var_1 = select(select(select(select(select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(false, true, var_0.a, false), vec4<bool>(true, var_0.a, true, var_0.a)), !vec4<bool>(true, var_0.a, false, true), !var_0.a), select(select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(false, false, var_0.a, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true))), 1i <= _wgslsmith_div_i32(var_0.b.b, 46668i)), select(select(select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(true, true, false, true), var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), !var_0.a), vec4<bool>(false, u_input.c.x > var_0.b.b, true, false), vec4<bool>(true, true, var_0.a, -947f <= var_0.b.a)), !select(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(false, var_0.a, var_0.a, var_0.a)), vec4<bool>(false, var_0.a, var_0.a, true), var_0.a)), select(vec4<bool>(var_0.a, !any(vec4<bool>(false, false, true, var_0.a)), !var_0.a, var_0.a), vec4<bool>(true, !all(vec3<bool>(true, var_0.a, var_0.a)), true, var_0.a | !var_0.a), func_4(-(vec4<i32>(u_input.c.x, u_input.c.x, var_0.b.b, 109522i) | vec4<i32>(u_input.c.x, 2147483647i, var_0.b.b, 1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 62121u), ~vec4<u32>(33232u, 85137u, var_0.b.e, 4294967295u)), Struct_4(Struct_3(var_0.b.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, var_0.b.a, global0.x, 1000f)))).a), vec4<bool>(true, false, true, func_4(~vec4<i32>(1i, u_input.c.x, var_0.b.b, u_input.a), select(abs(vec4<u32>(var_0.c, u_input.b, 1u, var_0.b.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 1u, var_0.d.x), vec4<u32>(1u, 0u, 24171u, 69089u)), func_3(var_0.b)), Struct_4(global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-102f, global0.x, global0.x, var_0.b.a))))).a));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.xx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, 1376f)), global0.xy, var_1.x))) * global0.yx);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-156f, var_2.x, _wgslsmith_f_op_f32(min(var_0.b.a, _wgslsmith_f_op_f32(sign(515f)))), -1000f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(127f))), _wgslsmith_f_op_f32(f32(-1f) * -479f), global0.x, _wgslsmith_div_f32(-410f, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -729f, -602f, -1145f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1000f, -1609f) + vec4<f32>(127f, global0.x, global0.x, global0.x))) * vec4<f32>(func_4(vec4<i32>(u_input.a, 20849i, -13983i, 25605i), vec4<u32>(u_input.b, 0u, 0u, u_input.b), Struct_4(Struct_3(2147483647i), vec4<f32>(global0.x, -623f, 1277f, 1015f))).b.a, global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1326f))))));
    global1 = array<Struct_3, 6>();
    var var_1 = func_4(_wgslsmith_sub_vec4_i32(-vec4<i32>(11738i & u_input.c.x, func_2(vec3<u32>(4294967295u, 6438u, u_input.b), global1[_wgslsmith_index_u32(75027u, 6u)], vec2<bool>(false, false)).x, u_input.c.x, u_input.a >> (0u % 32u)), vec4<i32>(~firstLeadingBit(u_input.a), _wgslsmith_mult_i32(reverseBits(u_input.c.x), 22517i), reverseBits(func_2(vec3<u32>(0u, 4294967295u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 6u)], vec2<bool>(true, false)).x), -(~2147483647i))), _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 29083u), ~vec4<u32>(22657u, u_input.b, 30847u, 110328u)), firstLeadingBit(vec4<u32>(u_input.b, ~u_input.b, firstTrailingBit(28078u), u_input.b))), Struct_4(global1[_wgslsmith_index_u32(u_input.b, 6u)], _wgslsmith_f_op_vec4_f32(-var_0))).b;
    let var_2 = select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(var_1.b != 50049i, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), !vec2<bool>(func_4(vec4<i32>(13493i, var_1.b, u_input.c.x, var_1.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u), Struct_4(global1[_wgslsmith_index_u32(u_input.b, 6u)], vec4<f32>(1403f, -491f, -108f, 268f))).a, true)), vec2<bool>(false, true));
    var var_3 = select(vec3<bool>(false, var_2.x, var_1.b < u_input.c.x), vec3<bool>(var_2.x && any(select(vec2<bool>(false, true), var_2, false)), !(!any(vec2<bool>(true, var_2.x))), !(!var_2.x)), any(select(!vec3<bool>(var_2.x, true, true), vec3<bool>(true, true, false), !vec3<bool>(var_2.x, false, true))) | !var_2.x);
    let var_4 = select(!vec2<bool>(any(select(vec2<bool>(var_3.x, true), var_2, false)), true), var_3.zy, !vec2<bool>(var_2.x, true));
    let var_5 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.d.x, 1u, u_input.b, u_input.b)), ~vec4<u32>(var_1.d.x, u_input.b, u_input.b, 46572u) & abs(vec4<u32>(0u, var_1.d.x, 11749u, 43557u))) >> (~1u % 32u)), 6u)];
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-select(-u_input.c, reverseBits(u_input.c), vec3<bool>(false, var_4.x, var_3.x)), ~_wgslsmith_clamp_vec3_i32(abs(u_input.c), reverseBits(u_input.c), u_input.c)), ~(~(~(~var_1.e))), _wgslsmith_f_op_vec3_f32(var_0.xxx + var_0.wyw), var_1.a);
}

