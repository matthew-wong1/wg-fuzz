struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1301f, 136f, 504f, 335f), vec4<f32>(-926f, -1327f, 273f, 2888f), vec4<f32>(2162f, -978f, 161f, 2483f), vec4<f32>(-1000f, -460f, 786f, 585f), vec4<f32>(662f, -1681f, -982f, -812f), vec4<f32>(1000f, -210f, 1000f, -922f), vec4<f32>(211f, 947f, -637f, 298f), vec4<f32>(789f, -1177f, 1061f, 1000f), vec4<f32>(-1507f, -619f, -695f, 2041f), vec4<f32>(1000f, -214f, 812f, -432f), vec4<f32>(115f, 1368f, -543f, 458f), vec4<f32>(-1151f, 230f, -1027f, -389f), vec4<f32>(1630f, -845f, -2004f, 738f), vec4<f32>(-296f, -1000f, -701f, -1000f), vec4<f32>(1096f, -393f, 476f, 1265f), vec4<f32>(2424f, -584f, 2084f, 397f), vec4<f32>(-865f, -2173f, -1000f, 910f), vec4<f32>(-373f, 985f, -437f, 1993f), vec4<f32>(873f, 317f, -257f, 770f), vec4<f32>(1097f, 563f, 1675f, 1308f), vec4<f32>(-352f, 672f, -1271f, -195f), vec4<f32>(653f, 1212f, -314f, 447f), vec4<f32>(1222f, 955f, 1000f, 181f), vec4<f32>(948f, 1000f, -678f, -1824f), vec4<f32>(686f, -1058f, 1737f, 664f), vec4<f32>(294f, -1309f, -109f, -298f), vec4<f32>(-272f, -1008f, 376f, -2436f));

var<private> global1: f32 = -1336f;

var<private> global2: array<Struct_2, 7>;

var<private> global3: bool = true;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_div_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 12437i, u_input.d.x, -1i), vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, u_input.d.x)), -(~vec4<i32>(u_input.d.x, -1i, u_input.d.x, 19995i)))) | -1i;
    var var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_sub_i32(u_input.d.x, u_input.d.x) > _wgslsmith_sub_i32(-10134i, u_input.d.x), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))), vec3<bool>(select(false, true, true), all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))), -42763i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(41058i, 2147483647i, u_input.d.x), vec3<i32>(u_input.d.x, 1i, 23086i)))), true);
    var var_2 = vec4<i32>(1833i, -firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(-53402i, u_input.d.x, u_input.d.x), vec3<i32>(2147483647i, -22720i, 51394i))), -(u_input.d.x & _wgslsmith_div_i32(~u_input.d.x, -37258i)), 2147483647i);
    let var_3 = -2147483647i;
    var var_4 = Struct_4(Struct_1(var_1.x, any(!(!vec4<bool>(var_1.x, var_1.x, true, true))), vec2<bool>(4583i >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3, 77365i), vec3<i32>(u_input.d.x, -10531i, -2147483647i)), true), var_2.zw ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 24459i), vec2<i32>(var_3, -11082i)) ^ u_input.d), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(960f))))) - -253f);
}

fn func_2() -> i32 {
    global3 = true;
    let var_0 = u_input.a.www;
    global0 = array<vec4<f32>, 27>();
    global1 = _wgslsmith_f_op_f32(func_3(u_input.a));
    let var_1 = Struct_4(Struct_1(true, false, !vec2<bool>(true, any(vec2<bool>(true, false))), u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), abs(~(~(var_0.x >> (u_input.b % 32u)))));
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(~(countOneBits(vec4<i32>(u_input.d.x, var_1.a.d.x, 0i, u_input.d.x)) << ((vec4<u32>(var_1.b, var_1.b, u_input.a.x, 1u) | u_input.a) % vec4<u32>(32u)))), (-vec4<i32>(var_1.a.d.x, -2147483647i, var_1.a.d.x, u_input.d.x) >> (abs(vec4<u32>(u_input.b, 0u, u_input.c, 19538u)) % vec4<u32>(32u))) ^ vec4<i32>(~(~u_input.d.x), u_input.d.x, ~u_input.d.x, reverseBits(var_1.a.d.x)));
}

fn func_1() -> bool {
    var var_0 = true;
    let var_1 = !(!(!all(vec3<bool>(true, false, false))));
    var var_2 = _wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(~(39244u | u_input.a.x), ~(4294967295u | u_input.a.x)));
    var var_3 = ~func_2();
    var_3 = reverseBits(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, i32(-1i) * -2690i)) | func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec3<bool>(true, true, true)) | (((i32(-1i) * -1i) == u_input.d.x) && func_1()), false, vec2<bool>(all(vec2<bool>(true, true)), false), ~vec2<i32>(reverseBits(7259i) << (0u % 32u), max(u_input.d.x, u_input.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1099f, _wgslsmith_f_op_f32(min(-2281f, -951f)))), _wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(527f, 713f) + 1165f)), 1310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -532f))));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 7u)];
    global0 = array<vec4<f32>, 27>();
    global2 = array<Struct_2, 7>();
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(10931u), 27u)];
    var var_3 = Struct_5(reverseBits((-u_input.d.x & func_2()) & ((var_0.d.x >> (78819u % 32u)) & 2147483647i)));
    let var_4 = ~_wgslsmith_mod_vec3_u32(u_input.a.zyw, u_input.a.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.e.x * var_1.c.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(138f, 733f)) - -424f), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(-787f - -378f)), _wgslsmith_f_op_f32(871f - _wgslsmith_f_op_f32(min(var_0.e.x, -1000f)))) - _wgslsmith_f_op_vec4_f32(trunc(var_1.c.e))));
}

