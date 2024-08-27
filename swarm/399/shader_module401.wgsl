struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-495f, 1022f, -986f, -1101f), vec4<f32>(762f, -1272f, 417f, 723f), vec4<f32>(-1062f, -202f, -1190f, 699f), vec4<f32>(1595f, -462f, 194f, 977f), vec4<f32>(1114f, 873f, 393f, 662f), vec4<f32>(-1168f, 1000f, -456f, -2404f), vec4<f32>(-216f, -2967f, 278f, -1000f), vec4<f32>(-230f, -224f, 1632f, -2286f), vec4<f32>(-1000f, 921f, 998f, -993f), vec4<f32>(-1683f, -1000f, 471f, -784f), vec4<f32>(-830f, -468f, -563f, -1567f), vec4<f32>(-1924f, 131f, -361f, -871f), vec4<f32>(-1000f, 1000f, 454f, 447f), vec4<f32>(-981f, 315f, -725f, 1476f), vec4<f32>(1000f, 1148f, 2093f, -628f), vec4<f32>(1064f, -726f, 956f, -832f));

var<private> global2: vec3<u32> = vec3<u32>(1u, 14849u, 11064u);

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: array<vec4<u32>, 10>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c))))));
    let var_1 = arg_2.b;
    let var_2 = var_1;
    let var_3 = 7008u;
    var var_4 = arg_2;
    return -2147483647i;
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<bool> {
    global3 = array<vec3<i32>, 7>();
    var var_0 = _wgslsmith_div_u32(4294967295u, 42342u);
    global0 = ~reverseBits(vec4<i32>(-2147483647i, arg_0, i32(-1i) * -global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-19126i, arg_0), global0.zw | vec2<i32>(23259i, 1i))));
    var_0 = ~select(u_input.a.x, 30998u, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(1f)), Struct_1(~vec4<u32>(_wgslsmith_mod_u32(1u, 78218u), ~4294967295u, u_input.c, 46961u), vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), false, select(false, true, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(267f, 874f), vec2<f32>(1515f, 945f), vec2<bool>(false, false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(arg_1, arg_1, true)))))), arg_1, all(!vec4<bool>(true, true, global0.x < 10990i, true)), Struct_1(global4[_wgslsmith_index_u32(~1u, 10u)], !vec4<bool>(u_input.c <= 0u, false, false, any(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(735f - 662f), _wgslsmith_f_op_f32(f32(-1f) * -2199f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, -1733f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(round(-1000f))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 + -214f), _wgslsmith_f_op_f32(trunc(arg_1))))));
    return vec4<bool>(var_1.d, select(-firstTrailingBit(global0.x) > 1i, any(select(vec2<bool>(var_1.d, var_1.b.b.x), var_1.b.b.zz, vec2<bool>(var_1.d, false))), _wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.c.x * 268f), _wgslsmith_f_op_f32(select(arg_1, arg_1, var_1.b.b.x)))), true, (false || (~9711i > arg_0)) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.e.c.x) < _wgslsmith_f_op_f32(f32(-1f) * -396f)));
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = -select(reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, global0.x, global0.x, -1i), firstTrailingBit(vec4<i32>(global0.x, global0.x, global0.x, global0.x)))), (~vec4<i32>(global0.x, 2147483647i, -2147483647i, 1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, -11245i, 2147483647i))) >> (vec4<u32>(u_input.c, 1u, _wgslsmith_clamp_u32(global2.x, global2.x, 1u), 1u) % vec4<u32>(32u)), select(func_3(func_2(arg_0.x, Struct_2(-412f, Struct_1(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x), vec4<bool>(arg_0.x, false, true, false), vec2<f32>(1968f, -1134f), vec2<f32>(-855f, -433f)), 1097f, arg_0.x, Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], vec4<bool>(true, arg_0.x, arg_0.x, false), vec2<f32>(-721f, -720f), vec2<f32>(-1000f, 814f))), Struct_2(-668f, Struct_1(vec4<u32>(global2.x, global2.x, global2.x, 0u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(-1000f, 123f), vec2<f32>(-1007f, 881f)), 713f, arg_0.x, Struct_1(global4[_wgslsmith_index_u32(0u, 10u)], vec4<bool>(arg_0.x, false, false, true), vec2<f32>(743f, 489f), vec2<f32>(636f, 1156f)))), _wgslsmith_f_op_f32(sign(-1267f))), !vec4<bool>(false, true, arg_0.x, true), (arg_0.x || false) | (arg_0.x && arg_0.x)));
    global1 = array<vec4<f32>, 16>();
    global0 = -vec4<i32>(0i, var_0.x, var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(u_input.c, 7u)], global0.wzz, global3[_wgslsmith_index_u32(abs(global2.x), 7u)]), var_0.wxw));
    let var_1 = true;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(31448u, ~countOneBits(global2.x)), 16u)] - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1360f, -2081f, 131f, 704f) + vec4<f32>(-1340f, -982f, 148f, 2222f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(14872u, 16u)])))), arg_0.x, var_0.x);
    return vec4<bool>(select(_wgslsmith_f_op_f32(-var_2.a.x) <= -1737f, global2.x < _wgslsmith_mod_u32(4294967295u | global2.x, ~global2.x), select(var_2.b || any(vec3<bool>(true, false, false)), true, any(select(arg_0, arg_0, true)))), var_2.b, !var_1, any(func_3(var_2.c, _wgslsmith_f_op_f32(-var_2.a.x)).yz) && any(select(select(arg_0, arg_0, var_1), func_3(var_0.x, var_2.a.x).wy, select(vec2<bool>(arg_0.x, false), arg_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(global2.x, 16u)], true, _wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(~global0.x, 1i)), -2147483647i));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(select(u_input.a, _wgslsmith_add_vec4_u32(~global4[_wgslsmith_index_u32(10105u, 10u)], vec4<u32>(1u, global2.x, global2.x, global2.x)), select(!vec4<bool>(true, true, true, var_0.b), func_1(vec2<bool>(var_0.b, var_0.b)), !vec4<bool>(var_0.b, false, var_0.b, var_0.b))), abs(vec4<u32>(~global2.x, 1u, ~91885u, 51645u))), !(!(!select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(var_0.b, false, var_0.b, false), false))), var_0.a.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) * 1000f))));
    global1 = array<vec4<f32>, 16>();
    let var_2 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, 57196u << (_wgslsmith_div_u32(u_input.c, ~18399u) % 32u), _wgslsmith_clamp_vec2_i32(global0.zz, abs(global0.zx), ~(-(global0.wz << (var_1.a.zw % vec2<u32>(32u))))));
}

