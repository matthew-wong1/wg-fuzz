struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec4<u32> {
    global0 = Struct_3(Struct_1(vec4<bool>(any(!global0.c.a), global0.c.a.x, global0.c.a.x, 1u <= abs(arg_1.x)), u_input.a.x, _wgslsmith_mult_vec3_i32(global0.c.c, -_wgslsmith_mult_vec3_i32(u_input.d.zxz, global0.c.c)), countOneBits(~min(global0.a.d, 65750i)), ~_wgslsmith_add_u32(arg_1.x, ~1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))))), global0.a, Struct_2(arg_2.x, abs(_wgslsmith_mult_vec3_u32(global0.e.b ^ vec3<u32>(global0.a.b, u_input.a.x, 56595u), vec3<u32>(arg_1.x, 55074u, 5638u))), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.b, _wgslsmith_mult_u32(1u, 66460u), arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u), arg_1)), vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), firstLeadingBit(50736u), global0.e.b.x, ~u_input.a.x))), Struct_2(651f, vec3<u32>(4294967295u, 49558u, u_input.c.x), reverseBits(~3833u)));
    let var_0 = max(-_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global0.a.d) >> (_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(global0.c.e, u_input.a.x)) % vec2<u32>(32u)), u_input.d.wx), vec2<i32>(_wgslsmith_add_i32(1i, abs(min(1i, global0.a.d))), 2147483647i));
    let var_1 = Struct_3(global0.a, arg_2.x, Struct_1(!vec4<bool>(!global0.c.a.x, true, any(vec4<bool>(global0.c.a.x, global0.a.a.x, false, true)), all(global0.c.a.wxy)), u_input.c.x, vec3<i32>(~var_0.x, -2147483647i, _wgslsmith_sub_i32(-1i, global0.c.d)) ^ select(vec3<i32>(-2147483647i, u_input.d.x, global0.a.d), _wgslsmith_add_vec3_i32(vec3<i32>(13058i, 1i, var_0.x), global0.a.c), global0.c.a.wyw), global0.c.c.x, 1u), Struct_2(1000f, select(u_input.c.wxz, _wgslsmith_add_vec3_u32(global0.d.b, vec3<u32>(arg_1.x, 0u, u_input.b)), true & global0.a.a.x) ^ abs(vec3<u32>(12142u, 0u, arg_1.x)), arg_1.x >> (4294967295u % 32u)), Struct_2(_wgslsmith_f_op_f32(sign(1620f)), global0.d.b, 10514u));
    let var_2 = var_1.a.c.x;
    var var_3 = (1f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(trunc(1000f))), -535f))) && var_1.a.a.x;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.e, 44625u, var_1.d.b.x, 4294967295u), vec4<u32>(52793u, 37103u, 20895u, 49081u)))), u_input.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    let var_0 = i32(-1i) * -2147483647i;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c ^ (~u_input.c >> (func_3(-985f, vec2<u32>(arg_0.x, global0.e.b.x), vec4<f32>(-230f, global0.b, global0.b, -226f)) % vec4<u32>(32u))), ~(~(~vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.e.b.x, 4294967295u, 4294967295u), vec4<u32>(arg_0.x, global0.c.e, 23576u, u_input.b)), ~vec4<u32>(4294967295u, global0.c.b, 59633u, 4294967295u))), vec4<u32>(48457u, 1u, u_input.b, 85448u));
    let var_2 = _wgslsmith_f_op_f32(599f + global0.b);
    global1 = array<Struct_4, 24>();
    global1 = array<Struct_4, 24>();
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = array<Struct_4, 24>();
    var var_0 = vec4<f32>(global0.e.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec3_u32(u_input.c.zwx, vec3<u32>(4294967295u, arg_0.b, arg_0.b)), u_input.a, !arg_0.a, 1i))) * 2422f), global0.b, _wgslsmith_div_f32(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1614f, 247f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.a, var_0.x, 1000f, var_0.x), vec4<f32>(var_0.x, global0.b, var_0.x, -759f), arg_0.a))))) - vec4<f32>(global0.d.a, var_0.x, var_0.x, 1175f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -157f, _wgslsmith_f_op_f32(global0.b - var_0.x), _wgslsmith_f_op_f32(select(global0.e.a, -1421f, global0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, -992f, 1175f, var_0.x))), select(!global0.a.a, vec4<bool>(global0.a.a.x, true, true, arg_0.a.x), true))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1008f, 257f, var_0.x, global0.e.a), vec4<f32>(-2087f, 730f, var_0.x, -111f))), vec4<f32>(global0.d.a, var_0.x, var_0.x, var_0.x), !arg_0.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1139f, var_0.x, 1000f, 1292f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1982f, 1000f, global0.d.a, var_0.x), vec4<f32>(353f, var_0.x, var_0.x, -957f)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - global0.e.a), var_0.x, !global0.c.a.x)), _wgslsmith_f_op_f32(select(446f, -342f, all(arg_0.a.xz))), -531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a)))), select(!(!(!vec4<bool>(global0.c.a.x, false, false, false))), arg_0.a, _wgslsmith_dot_vec3_i32(arg_0.c, _wgslsmith_add_vec3_i32(vec3<i32>(61370i, 0i, 31744i), vec3<i32>(arg_1, arg_0.d, 1i))) >= -u_input.d.x)));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(global0.a.b, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]);
    return all(!global0.c.a.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(vec3<bool>(func_1(global0.c, -2147483647i), global0.c.a.x, func_1(Struct_1(vec4<bool>(true, global0.c.a.x, true, global0.c.a.x), 48570u, global0.a.c, -23322i, 1u), u_input.d.x)), global0.a.a.zwy, true));
    global1 = array<Struct_4, 24>();
    let var_1 = global0.c.a.x;
    global0 = Struct_3(Struct_1(select(vec4<bool>(global0.a.a.x || global0.c.a.x, global0.a.a.x, !global0.a.a.x, true), vec4<bool>(all(vec3<bool>(true, true, global0.c.a.x)), -1i <= u_input.d.x, !global0.c.a.x, global0.c.a.x), select(vec4<bool>(false, true, global0.c.a.x, true), global0.c.a, true)), global0.a.e, -_wgslsmith_add_vec3_i32(global0.a.c, vec3<i32>(-208i, -32596i, 2147483647i)), u_input.d.x, 4294967295u), 1615f, Struct_1(global0.c.a, u_input.a.x, _wgslsmith_div_vec3_i32(global0.c.c, vec3<i32>(0i, -u_input.d.x, _wgslsmith_mod_i32(-2147483647i, 6825i))), 2147483647i, firstTrailingBit(10429u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.a, -564f, true))), 775f), ~abs(~vec3<u32>(global0.e.c, global0.c.b, global0.c.b)), global0.c.e), global0.d);
    var_0 = !global0.a.a.x;
    let var_2 = 4923i;
    let var_3 = Struct_5(global1[_wgslsmith_index_u32(global0.e.b.x, 24u)], Struct_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), 1724f)))));
    global0 = Struct_3(global0.a, var_3.b.a.x, global0.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-945f))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global0.d.b.x, u_input.b), global0.d.b), ~(global0.d.b ^ vec3<u32>(u_input.a.x, global0.a.b, u_input.b)), func_1(Struct_1(vec4<bool>(false, global0.a.a.x, false, false), u_input.c.x, global0.a.c, u_input.d.x, 51368u), var_2) & true), 16085u), global0.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1241f * global0.d.a), 1f, -152f) - vec3<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-var_3.a.a.x), -1136f)) - vec3<f32>(_wgslsmith_f_op_f32(global0.b + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1192f)) - global0.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b + var_3.a.a.x), global0.e.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.a.x, global0.d.a, -751f)) * vec3<f32>(global0.b, var_3.b.a.x, global0.d.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, 0i, -2147483647i), vec3<f32>(853f, var_4.x, var_4.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(firstLeadingBit(firstTrailingBit(u_input.c.zwy)), vec3<u32>(countOneBits(u_input.b), u_input.a.x, reverseBits(4294967295u)), !(!vec4<bool>(global0.a.a.x, global0.a.a.x, false, false)), 1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(430f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(392f, _wgslsmith_f_op_f32(1641f - var_4.x), _wgslsmith_f_op_f32(sign(-861f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global0.b, 949f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(455f, -1000f, 1000f), vec3<f32>(-1000f, 1000f, -2014f), global0.c.a.zzz)))), vec3<f32>(232f, -1480f, global0.d.a), global0.a.a.wxw)));
}

