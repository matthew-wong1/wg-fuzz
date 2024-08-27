struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
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

var<private> global0: f32;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, vec4<bool>(true, true, false, true), 2147483647i), Struct_1(true, vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_1(true, vec4<bool>(true, true, true, true), -1i), Struct_1(false, vec4<bool>(true, true, false, false), 5918i), Struct_1(false, vec4<bool>(false, true, false, false), -11992i), Struct_1(false, vec4<bool>(false, false, false, true), 1450i), Struct_1(false, vec4<bool>(false, true, true, false), 14147i), Struct_1(false, vec4<bool>(true, true, false, false), -34645i), Struct_1(true, vec4<bool>(true, false, true, false), 36321i), Struct_1(true, vec4<bool>(true, true, false, true), -1i), Struct_1(false, vec4<bool>(false, true, false, true), 0i), Struct_1(false, vec4<bool>(false, false, false, true), 6941i), Struct_1(false, vec4<bool>(false, true, true, false), -13253i));

var<private> global3: vec4<f32>;

var<private> global4: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(1u, 0u, 17987u, 36889u), vec4<u32>(6960u, 4294967295u, 67742u, 16097u), vec4<u32>(19391u, 13812u, 41719u, 51553u), vec4<u32>(0u, 0u, 0u, 2979u), vec4<u32>(50988u, 4294967295u, 4938u, 62467u), vec4<u32>(1u, 1u, 31464u, 49835u), vec4<u32>(0u, 30209u, 1u, 4294967295u), vec4<u32>(0u, 61030u, 47333u, 12292u), vec4<u32>(0u, 30259u, 0u, 1u), vec4<u32>(1u, 4294967295u, 50660u, 29581u), vec4<u32>(6068u, 1u, 5698u, 0u), vec4<u32>(1u, 0u, 13268u, 29128u), vec4<u32>(0u, 21079u, 0u, 38124u), vec4<u32>(33841u, 4294967295u, 1u, 50663u), vec4<u32>(88083u, 86798u, 1u, 1u), vec4<u32>(1u, 1u, 6952u, 1u), vec4<u32>(1u, 22246u, 1208u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(20834u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 25756u, 46746u, 0u), vec4<u32>(31444u, 1u, 39229u, 0u), vec4<u32>(4816u, 0u, 0u, 24739u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(max(1378f, 404f)))))) - global3.x);
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -405f)))), global3.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(741f, global3.x, -606f, global3.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -918f, 1012f) * vec4<f32>(global3.x, global3.x, 1654f, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, -963f, global3.x, 1000f)))))));
    var var_1 = Struct_3(vec3<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1541i, -2147483647i, -38844i), vec4<i32>(4373i, 0i, 1i, -2147483647i))), 1i, -1i), !any(!select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(33971u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true, global1[_wgslsmith_index_u32(arg_0.x, 12u)]))), true, ~vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(7582i, 1i), 27033i), firstLeadingBit(1i), max(~(-2742i), ~(-3690i)), min(min(-84289i, -50736i), reverseBits(0i))), ~(~arg_0));
    var var_2 = Struct_3(var_1.a, false, var_1.c, reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(18739i, -41698i, var_1.d.x, var_1.d.x), ~vec4<i32>(403i, -19466i, 60952i, var_1.a.x))), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.e, ~vec2<u32>(arg_0.x, 1u), ~var_1.e), ~(~var_1.e))));
    let var_3 = Struct_3(vec3<i32>(-42519i, var_2.a.x, abs(0i)), global1[_wgslsmith_index_u32(min(u_input.c.x, 0u), 12u)], !any(select(select(vec3<bool>(var_1.b, true, true), vec3<bool>(var_1.b, false, true), vec3<bool>(global1[_wgslsmith_index_u32(49755u, 12u)], global1[_wgslsmith_index_u32(46592u, 12u)], var_1.c)), vec3<bool>(true, global1[_wgslsmith_index_u32(581u, 12u)], true), vec3<bool>(false, true, true))), select(~firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, -23898i, 12710i) >> (vec4<u32>(u_input.d.x, 49556u, 1u, 4486u) % vec4<u32>(32u))), firstLeadingBit(var_2.d), vec4<bool>(all(!vec4<bool>(var_2.b, false, false, global1[_wgslsmith_index_u32(u_input.b, 12u)])), true, var_1.c, !any(vec4<bool>(var_2.c, var_2.c, true, var_2.b)))), _wgslsmith_add_vec2_u32(u_input.a.xy, max(vec2<u32>(u_input.d.x, var_1.e.x) ^ vec2<u32>(var_2.e.x, var_1.e.x), countOneBits(var_1.e))));
    return ~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(73106i, var_3.a.x), ~var_3.a.x, var_1.a.x, _wgslsmith_dot_vec2_i32(var_2.d.yx, vec2<i32>(var_2.a.x, 1i))), abs(-var_2.d)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    global4 = array<vec4<u32>, 22>();
    let var_0 = max(-(~(func_3(u_input.a.xz) | abs(vec4<i32>(arg_2.c, arg_2.c, arg_2.c, -8705i)))), _wgslsmith_add_vec4_i32(min(firstLeadingBit(~vec4<i32>(-17757i, 2147483647i, arg_2.c, 2147483647i)), -firstLeadingBit(vec4<i32>(arg_2.c, arg_2.c, 1i, 18388i))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(55784i, arg_2.c, arg_2.c, 2147483647i), vec4<i32>(0i, 2325i, 17319i, arg_2.c))), vec4<i32>(arg_2.c, -25886i, 9011i, 0i) >> (vec4<u32>(61840u, 1u, 29635u, arg_3.x) % vec4<u32>(32u)))));
    let var_1 = -292f;
    var var_2 = Struct_1(false, arg_1, _wgslsmith_dot_vec4_i32(func_3(u_input.a.xy), _wgslsmith_mult_vec4_i32(vec4<i32>(~var_0.x, -24188i, var_0.x, var_0.x), _wgslsmith_mult_vec4_i32(~var_0, abs(vec4<i32>(-11725i, var_0.x, 1i, arg_2.c))))));
    let var_3 = arg_2;
    return select(arg_1, vec4<bool>(!all(var_3.b), select(arg_2.b.x, true, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], var_2.b.x, false, true))) || !all(vec2<bool>(arg_2.a, arg_1.x)), all(select(var_2.b.yxw, vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], arg_1.x, arg_1.x), vec3<bool>(true, var_3.a, var_2.b.x))), var_2.b.x), vec4<bool>(true, any(!vec3<bool>(var_2.b.x, true, false)), false, var_2.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>) -> vec2<u32> {
    let var_0 = select(!func_2(Struct_2(_wgslsmith_f_op_f32(arg_2.x - arg_2.x)), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, global1[_wgslsmith_index_u32(18836u, 12u)]), Struct_1(!global1[_wgslsmith_index_u32(0u, 12u)], !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 12u)], true, true, false), 1i), ~global4[_wgslsmith_index_u32(arg_0.x, 22u)]), func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1635f, global3.x))), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(9226u, 12u)], global1[_wgslsmith_index_u32(25452u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], true, true), global1[_wgslsmith_index_u32(1u, 12u)])), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 1u) & (_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(arg_0.x, 22u)], vec4<u32>(61603u, 51758u, arg_0.x, arg_0.x)) << (_wgslsmith_add_u32(u_input.a.x, 32633u) % 32u)), 13u)], vec4<u32>(4294967295u, reverseBits(24960u), _wgslsmith_sub_u32(4294967295u, u_input.a.x) >> ((arg_0.x ^ 36606u) % 32u), abs(u_input.d.x))), false);
    global3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1841f, 784f, 152f, 962f), arg_2), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2), _wgslsmith_div_vec4_f32(arg_2, arg_2))), global1[_wgslsmith_index_u32(0u, 12u)])))));
    global1 = array<bool, 12>();
    let var_1 = 1i;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(-680f)));
    return max(vec2<u32>(1u, reverseBits((u_input.a.x | arg_0.x) << (84888u % 32u))), ~min(countOneBits(vec2<u32>(arg_0.x, arg_0.x)) << (arg_0.yx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(arg_0.x, u_input.d.x), _wgslsmith_mod_u32(u_input.d.x, 85247u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -412f;
    global1 = array<bool, 12>();
    var var_0 = Struct_2(-652f);
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(~(u_input.d.x ^ 12310u), 12u)], !select(!(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(45681u, 12u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(17951u, 12u)], true, global1[_wgslsmith_index_u32(56467u, 12u)]))), -14664i);
    var var_2 = _wgslsmith_dot_vec2_u32(~func_1(~(~vec3<u32>(u_input.a.x, 0u, u_input.d.x)), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 2153f, -1096f, -1276f) + vec4<f32>(-329f, global3.x, 171f, 446f)))), _wgslsmith_mod_vec2_u32(~u_input.c, vec2<u32>(firstLeadingBit(41767u), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, ~(~(~u_input.a.x))));
}

