struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(1034i, 0i, 36439i, -654i), vec4<i32>(22082i, -23586i, -1i, i32(-2147483648)));

var<private> global3: array<f32, 23> = array<f32, 23>(-239f, 2162f, -1000f, 1606f, -1003f, 482f, -263f, 881f, -1289f, -178f, 1996f, -1000f, -900f, 620f, 294f, 2318f, -1880f, 1000f, 1000f, -285f, -1000f, 454f, -874f);

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec2<bool> {
    global3 = array<f32, 23>();
    return !(!arg_1);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(19240u, 17u)], u_input.b.wwz ^ ~vec3<i32>(~1i, _wgslsmith_mod_i32(-38576i, 44402i), u_input.b.x), vec2<f32>(global3[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 23u)])));
    var var_1 = true;
    var var_2 = var_0.a.c.wzx;
    var var_3 = any(vec3<bool>(any(func_3(Struct_2(Struct_1(var_0.a.a, vec4<f32>(var_2.x, 1752f, global3[_wgslsmith_index_u32(1u, 23u)], -1969f), vec4<f32>(1405f, var_2.x, global3[_wgslsmith_index_u32(30016u, 23u)], var_0.a.c.x), true, vec2<f32>(1254f, 1903f)), u_input.b.zww, var_0.c), !vec2<bool>(var_0.a.d, var_0.a.d))), func_3(Struct_2(var_0.a, vec3<i32>(u_input.b.x, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(3419u, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)])))), select(vec2<bool>(true, true), vec2<bool>(var_0.a.d, false), false)).x, true));
    global2 = array<vec4<i32>, 2>();
    return global1[_wgslsmith_index_u32(131758u ^ u_input.c.x, 17u)];
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<vec4<i32>, 2>();
    var var_0 = u_input.b.zzw;
    var var_1 = -393f;
    return !vec3<bool>(false && arg_0.d, func_3(Struct_2(Struct_1(u_input.b.x, vec4<f32>(460f, -1351f, -1000f, global3[_wgslsmith_index_u32(1u, 23u)]), arg_0.c, true, arg_0.b.xz), max(u_input.b.yyx, u_input.b.wyz), arg_0.e), vec2<bool>(any(vec2<bool>(false, true)), true)).x, arg_0.d);
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<i32>, 2>();
    global4 = true;
    let var_0 = _wgslsmith_f_op_f32(floor(767f));
    global4 = any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), func_4(func_2()), vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true)));
    var var_1 = Struct_2(func_2(), max(_wgslsmith_add_vec3_i32(u_input.b.xzz, reverseBits(vec3<i32>(-2147483647i, -28595i, u_input.d))) ^ vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.d), -u_input.d, u_input.d ^ u_input.d), u_input.b.zxy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, -436f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(u_input.c.x, 23u)]) - vec2<f32>(var_0, 404f)))));
    return Struct_2(var_1.a, ~var_1.b, _wgslsmith_div_vec2_f32(var_1.a.b.zw, vec2<f32>(294f, -314f)));
}

fn func_5(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = arg_0;
    global2 = array<vec4<i32>, 2>();
    let var_1 = var_0.b;
    var var_2 = var_0;
    global4 = all(func_4(func_2()));
    return vec3<i32>(_wgslsmith_mod_i32(~(~(-110239i)), -max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -1i, 1i), var_0.a.b))), var_0.a.b.x, var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 23>();
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, 1u) ^ 4294967295u;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, min(0i, u_input.b.x), ~2147483647i) ^ -select(u_input.b.zzw, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false), vec3<i32>(firstLeadingBit(~u_input.d), _wgslsmith_mod_i32(1i, u_input.b.x ^ u_input.d), -5930i)), func_5(Struct_3(func_1(), global1[_wgslsmith_index_u32(50721u, 17u)], _wgslsmith_div_vec2_u32(abs(vec2<u32>(26252u, 4294967295u)), select(vec2<u32>(var_0, var_0), u_input.a.xx, vec2<bool>(false, false))))));
    global1 = array<Struct_1, 17>();
    var var_2 = vec2<bool>(!(!all(global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) && ((u_input.a.x <= u_input.a.x) || func_2().d), true);
    var var_3 = Struct_3(func_1(), global1[_wgslsmith_index_u32(1u, 17u)], reverseBits(u_input.a.yy));
    let var_4 = vec2<u32>(var_0, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_3.c.x, u_input.a.x, 26233u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, var_3.c.x, var_0), vec4<u32>(28504u, 1u, u_input.a.x, u_input.a.x))), ~select(vec4<u32>(var_3.c.x, 29855u, var_0, var_0), vec4<u32>(0u, var_3.c.x, 25228u, 1u), var_3.b.d))) >> (~u_input.c.zy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -642f), var_1 >> (_wgslsmith_div_u32(var_3.c.x, var_4.x) % 32u), func_1().a.a, vec3<u32>(_wgslsmith_dot_vec3_u32(~(~u_input.c), _wgslsmith_sub_vec3_u32(~u_input.a, u_input.c)), var_0, ~u_input.c.x), ~((_wgslsmith_mult_i32(1i, var_1) | 7225i) | (-4122i & (2147483647i >> (u_input.c.x % 32u)))));
}

