struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(1176f, -417f, 157f), vec3<f32>(459f, 874f, 982f), vec3<f32>(-1558f, -1145f, 1126f), vec3<f32>(-1049f, 715f, 756f), vec3<f32>(-691f, -261f, 2193f), vec3<f32>(1000f, -245f, -1038f), vec3<f32>(612f, 570f, -1566f), vec3<f32>(1000f, -316f, -225f), vec3<f32>(1318f, 846f, -760f), vec3<f32>(-626f, -1000f, -291f), vec3<f32>(-233f, 616f, 1942f), vec3<f32>(148f, -571f, -519f), vec3<f32>(2037f, 125f, -471f), vec3<f32>(1144f, -265f, -542f), vec3<f32>(615f, -1977f, 1000f), vec3<f32>(-1387f, 317f, 2802f), vec3<f32>(1000f, -126f, -1768f));

var<private> global1: f32 = -1207f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_div_f32(277f, -1354f);
    global1 = -1000f;
    var var_0 = u_input.d;
    return firstLeadingBit(arg_0.a);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = Struct_5(arg_2.b.yz);
    let var_1 = arg_2;
    global0 = array<vec3<f32>, 17>();
    let var_2 = Struct_2(vec4<u32>(1u, ~573u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(28584u, arg_0.a, 55260u, 52185u) << (vec4<u32>(u_input.c, 3257u, 83772u, arg_0.c.a.x) % vec4<u32>(32u))), arg_0.c.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.a.x, arg_0.a, 66995u), arg_0.c.a.yxw)), arg_0.c.b);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.b.x + arg_2.e.x))))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1858f)) - _wgslsmith_f_op_f32(-var_2.b.b.x)), all(!select(vec3<bool>(true, true, var_2.b.d.x), vec3<bool>(var_2.b.d.x, true, false), select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(false, var_1.d, true), arg_0.b.d))), (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, arg_0.c.a.x, 0u, 4294967295u), arg_0.c.a), 9330u) == u_input.c) && all(!vec4<bool>(true, var_2.b.d.x, true, false)), !(!arg_2.d));
    return abs((arg_1 ^ _wgslsmith_mult_vec3_i32(abs(arg_2.a), vec3<i32>(-38812i, arg_2.b.x, arg_1.x))) >> (arg_0.c.a.wyw % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = arg_0 || (arg_0 & any(!(!vec4<bool>(true, arg_0, true, arg_0))));
    var var_1 = Struct_4(4294967295u, Struct_3(~func_3(Struct_4(arg_1.x, Struct_3(vec3<i32>(0i, 1i, 11869i), vec4<i32>(-2147483647i, 39350i, -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(64632u, 17u)], true, vec4<f32>(-814f, -985f, 852f, 1255f)), Struct_2(vec4<u32>(u_input.e.x, u_input.a, 64414u, u_input.e.x), Struct_1(u_input.d, vec4<f32>(-450f, -761f, 553f, -728f), u_input.d, vec2<bool>(false, false)))), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, 0i)), Struct_3(vec3<i32>(-33019i, u_input.b.x, u_input.b.x), vec4<i32>(2874i, -1i, 17540i, u_input.d), vec3<f32>(1455f, 3641f, 239f), true, vec4<f32>(660f, -1102f, 786f, -1000f))), -abs(countOneBits(vec4<i32>(21666i, 0i, u_input.b.x, u_input.d))), _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(~select(u_input.c, u_input.e.x, arg_0), 17u)])), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1707f - 918f), -813f, -957f, 639f))), Struct_2(firstLeadingBit(~(~vec4<u32>(u_input.c, 4294967295u, arg_1.x, 5150u))), Struct_1(abs(u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(745f, 234f, -1364f, -2310f) - vec4<f32>(1459f, -705f, -556f, 409f)), -2147483647i, vec2<bool>(false, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b.b.x * 1871f) * var_1.c.b.b.x));
    let var_3 = ~(min(_wgslsmith_mult_vec2_u32(arg_1.wz, select(arg_1.wx, vec2<u32>(69830u, 61487u), true)), vec2<u32>(~96334u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, arg_1.x), vec2<u32>(arg_1.x, 59681u)))) ^ vec2<u32>(30685u, ~arg_1.x));
    let var_4 = Struct_1(func_1(var_1.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1190f, 1301f, var_1.c.b.b.x, 2380f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 243f, -1287f)))))), _wgslsmith_sub_i32(-var_1.b.b.x >> (36928u % 32u), max(-max(2147483647i, var_1.b.b.x), func_1(Struct_1(2147483647i, vec4<f32>(343f, var_2, 527f, 884f), var_1.b.b.x, vec2<bool>(arg_0, false))) | -2147483647i)), vec2<bool>(394f == _wgslsmith_f_op_f32(step(2618f, 198f)), var_1.c.b.d.x));
    return var_1.c.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    let var_0 = ~_wgslsmith_mod_u32(~((4294967295u >> (u_input.e.x % 32u)) ^ 56673u), 11957u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1493f))), _wgslsmith_f_op_f32(select(-1826f, -554f, any(vec2<bool>(false, true)))))))));
    global0 = array<vec3<f32>, 17>();
    var var_2 = vec4<u32>(~34456u, reverseBits(9913u), _wgslsmith_mod_u32(u_input.a, ~(~_wgslsmith_mod_u32(var_0, u_input.e.x))), u_input.c);
    var var_3 = u_input.b.x >= func_1(Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-888f, 1000f, -581f, -142f), vec4<f32>(-278f, -1000f, 783f, -249f))), vec4<f32>(1744f, -405f, 136f, 237f), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true))), u_input.b.x, vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f * _wgslsmith_div_f32(-457f, 2936f)) * 412f), _wgslsmith_f_op_f32(select(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, vec4<u32>(4294967295u, u_input.c, 1u, var_2.x)))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_div_f32(993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(3233f)))), -998f), ~(~(~(~33102u))));
}

