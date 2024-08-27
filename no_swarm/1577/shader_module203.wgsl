struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 24>;

var<private> global2: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = any(select(select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(21923u, 24u)], false, global1[_wgslsmith_index_u32(26454u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(global0.x, 24u)], false, false)), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(71756u, 24u)], false), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(58551u, 24u)], true)), global1[_wgslsmith_index_u32(~24804u, 24u)], true, true)), vec4<bool>(_wgslsmith_mod_u32(798u, u_input.b) <= u_input.a.x, all(select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(5458u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true, global1[_wgslsmith_index_u32(global0.x, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 24u)], true, global1[_wgslsmith_index_u32(76546u, 24u)], global1[_wgslsmith_index_u32(11729u, 24u)]))), any(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(81566u, 24u)], global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(8513u, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(8528u, 24u)], global1[_wgslsmith_index_u32(37064u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)]))), _wgslsmith_mod_i32(10379i, -2147483647i) != _wgslsmith_dot_vec2_i32(vec2<i32>(11177i, -27453i), vec2<i32>(25810i, 2147483647i))), !(true || global1[_wgslsmith_index_u32(global0.x, 24u)]) == true));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(33011u, 51139u, 0u, 69587u), vec4<u32>(global0.x, u_input.b, 5542u, global0.x), vec4<u32>(0u, u_input.d.x, 1u, 51u))), _wgslsmith_mod_vec4_u32((vec4<u32>(global0.x, u_input.d.x, u_input.c.x, global0.x) | vec4<u32>(1u, global0.x, global0.x, global0.x)) ^ vec4<u32>(u_input.b, u_input.b, 1u, global0.x), ~(~vec4<u32>(4769u, u_input.a.x, global0.x, 1u)))), vec4<bool>(false, true, !(_wgslsmith_mod_u32(global0.x, 1u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18120u, global0.x, 117651u), vec4<u32>(u_input.d.x, 9688u, global0.x, u_input.d.x))), global1[_wgslsmith_index_u32(firstTrailingBit(select(~global0.x, ~4294967295u, false)), 24u)]), i32(-1i) * -2147483647i);
    let var_2 = countOneBits(~1i);
    global0 = ~u_input.a;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(625f, 239f) - _wgslsmith_div_vec2_f32(vec2<f32>(243f, 191f), vec2<f32>(1060f, -138f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(329f, -2086f) * vec2<f32>(-1000f, -827f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-930f, 1536f) + vec2<f32>(1278f, 316f))))), -(~(vec3<i32>(-1i, var_1.c, var_2) | -vec3<i32>(var_1.c, var_2, -52265i))), -44723i, var_1.a, Struct_2(var_1));
    return ~9038i;
}

fn func_2() -> u32 {
    var var_0 = u_input.a.zx;
    global0 = u_input.a;
    var var_1 = vec2<bool>(_wgslsmith_add_u32(0u, var_0.x) < u_input.a.x, global1[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 24u)]);
    global1 = array<bool, 24>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, var_0.x) ^ vec4<u32>(83657u, u_input.b, var_0.x, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, var_0.x, 20510u, 42986u), vec4<u32>(global0.x, var_0.x, 4294967295u, u_input.c.x), vec4<u32>(4294967295u, 60971u, var_0.x, global0.x))), vec4<u32>(0u, u_input.c.x, _wgslsmith_mod_u32(17744u, u_input.b), 5026u)), vec4<bool>(!(!global1[_wgslsmith_index_u32(7079u, 24u)]), any(vec2<bool>(true, true)), all(!vec3<bool>(var_1.x, var_1.x, var_1.x)), global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), func_3()));
    return abs(1u);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = ~reverseBits(~(~(vec4<u32>(24248u, u_input.b, 4294967295u, 0u) >> (arg_0.a % vec4<u32>(32u)))));
    global2 = !((_wgslsmith_div_i32(arg_0.c | arg_0.c, arg_0.c) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c, 0i) << (u_input.a % vec3<u32>(32u)), ~vec3<i32>(0i, 36988i, -3393i))) == arg_0.c);
    global0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(3999u, firstLeadingBit(u_input.b ^ global0.x), arg_0.a.x), arg_0.a.yyz);
    let var_1 = vec3<u32>(func_2(), ~reverseBits(0u), max(u_input.b, 0u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-569f, 965f, 223f) - vec3<f32>(1309f, -913f, -1736f)) - vec3<f32>(-611f, -1348f, -999f)) * _wgslsmith_div_vec3_f32(vec3<f32>(781f, -528f, -1446f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, -1232f, -933f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-934f - 1083f), _wgslsmith_f_op_f32(min(622f, -788f)), -461f))));
    return arg_0.b.yxw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(global1[_wgslsmith_index_u32(max(50818u, ~_wgslsmith_mod_u32(4294967295u, 27913u)), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, _wgslsmith_mod_u32(reverseBits(u_input.b), _wgslsmith_div_u32(u_input.b, global0.x))), 24u)], true), select(!func_1(Struct_1(vec4<u32>(u_input.c.x, 37190u, 4294967295u, 3930u), vec4<bool>(true, false, false, false), 1i), !global1[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(all(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 24u)])), !(!global1[_wgslsmith_index_u32(global0.x, 24u)]), all(func_1(Struct_1(vec4<u32>(global0.x, 4294967295u, u_input.b, 16064u), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), 1i), false))), true), true);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, u_input.b, global0.x, u_input.a.x), vec4<u32>(0u, 32514u, u_input.d.x, 1u)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, global0.x, 12342u, u_input.b), vec4<u32>(1u, global0.x, 74480u, 52460u)), vec4<u32>(15434u, _wgslsmith_clamp_u32(1u, countOneBits(global0.x), _wgslsmith_clamp_u32(u_input.d.x, global0.x, 20866u)), ~15419u, firstTrailingBit(20824u) | ~u_input.a.x)), select(select(select(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(50517u, 24u)], var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(22692u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true), var_0.x), !vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false, var_0.x), vec4<bool>(true, true, false, false)), vec4<bool>(false, var_0.x, all(var_0.xx), global1[_wgslsmith_index_u32(4294967295u, 24u)] || false), all(select(vec2<bool>(var_0.x, false), var_0.zy, var_0.x))), !(!select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 24u)], true, true), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false, true), vec4<bool>(true, var_0.x, true, var_0.x))), false & var_0.x), abs(~_wgslsmith_clamp_i32(0i, -2147483647i, -2147483647i)));
    global2 = true | any(var_1.b);
    let var_2 = Struct_2(Struct_1(reverseBits(var_1.a), select(var_1.b, var_1.b, !select(vec4<bool>(var_1.b.x, var_1.b.x, var_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), var_1.b)), 0i));
    let var_3 = ~max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(25094u, 4294967295u, 42019u)) & (vec3<u32>(u_input.c.x, var_2.a.a.x, 4294967295u) ^ var_1.a.xwz), ~_wgslsmith_sub_vec3_u32(var_1.a.zxx, var_2.a.a.zzz)), countOneBits(~_wgslsmith_mult_u32(u_input.b, var_1.a.x)));
    let var_4 = var_2;
    global2 = true;
    global0 = ~(~_wgslsmith_clamp_vec3_u32(var_4.a.a.xwz, vec3<u32>(124173u, 26197u, 52510u), u_input.a)) >> (var_1.a.zwy % vec3<u32>(32u));
    let var_5 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1339f - -1901f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_4.a.c, ~_wgslsmith_clamp_i32(var_2.a.c, -19817i, 0i) >> (~4294967295u % 32u)), var_1.a.yxx & (~(~vec3<u32>(var_2.a.a.x, 1u, var_2.a.a.x)) | ~(var_2.a.a.xxz ^ vec3<u32>(48147u, var_3, 4294967295u))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.a), var_5.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_5.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f * 454f)))));
}

