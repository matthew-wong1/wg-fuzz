struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-854f, 664f), vec2<f32>(454f, -804f), vec2<f32>(1015f, -277f), vec2<f32>(236f, -930f), vec2<f32>(-189f, -102f), vec2<f32>(566f, 131f), vec2<f32>(-660f, 1837f), vec2<f32>(-909f, -401f), vec2<f32>(858f, 209f), vec2<f32>(417f, -1189f), vec2<f32>(-1000f, 622f), vec2<f32>(812f, -1627f), vec2<f32>(-1177f, 1000f), vec2<f32>(983f, 468f), vec2<f32>(1399f, 1848f), vec2<f32>(1000f, -915f), vec2<f32>(-1992f, -717f), vec2<f32>(1340f, 233f), vec2<f32>(-1268f, 219f), vec2<f32>(-1316f, -939f), vec2<f32>(309f, 135f), vec2<f32>(-821f, -1843f), vec2<f32>(563f, -456f), vec2<f32>(1127f, -1930f), vec2<f32>(-757f, -758f), vec2<f32>(689f, 993f), vec2<f32>(2658f, -1280f));

var<private> global1: array<f32, 29> = array<f32, 29>(882f, -342f, -692f, 322f, -1023f, 887f, -1205f, 1319f, 1000f, -916f, -1174f, 1483f, -529f, -1132f, -1207f, 770f, 284f, -103f, 448f, -1000f, -1124f, 125f, -980f, -1000f, -2394f, 343f, -1156f, 593f, -1252f);

var<private> global2: i32 = 4148i;

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    global0 = array<vec2<f32>, 27>();
    global1 = array<f32, 29>();
    global2 = u_input.d.x;
    var var_0 = vec2<bool>(true, true);
    global1 = array<f32, 29>();
    return all(!select(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, false)), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x)), false));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2, 9087u), 29u)];
    global4 = array<Struct_2, 10>();
    global2 = _wgslsmith_clamp_i32(1i, i32(-1i) * -18745i, ~(-u_input.c.x));
    return Struct_1(_wgslsmith_dot_vec2_u32(u_input.a.xx, ~(~vec2<u32>(arg_2, 11658u) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), ~(~(~1u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, arg_0.x, arg_0.x, 0u & u_input.a.x), ~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u))) << ((_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.x, 4294967295u, 0u, 0u), ~vec4<u32>(1u, 4294967295u, u_input.b, 26755u)) ^ ~vec4<u32>(4294967295u, u_input.b, 17586u, arg_0.x)) % vec4<u32>(32u)));
    var var_1 = -2448i;
    var var_2 = u_input.c.x;
    let var_3 = u_input.d.xwz;
    var var_4 = u_input.b;
    return func_3(vec3<bool>(all(vec2<bool>(true, any(vec2<bool>(true, false)))), func_2(~var_0 << (~vec4<u32>(15603u, 1u, 16657u, 4294967295u) % vec4<u32>(32u)), arg_0, Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, 0u), 29u)])), !(!any(vec3<bool>(true, false, false)))), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, any(vec3<bool>(true, true, true)) || false), ~u_input.b << (arg_0.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global4 = array<Struct_2, 10>();
    global0 = array<vec2<f32>, 27>();
    var var_0 = vec2<i32>(reverseBits(u_input.d.x), ~(~1i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1644f));
    var var_2 = true;
    return func_3(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !(!vec3<bool>(any(vec2<bool>(true, false)), true, all(vec2<bool>(false, true)))), ~1u);
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global1[_wgslsmith_index_u32(1u, 29u)])))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b ^ arg_0.a, 29u)] * _wgslsmith_f_op_f32(abs(1025f)))))));
    var var_1 = arg_0;
    global2 = -(~(-_wgslsmith_add_i32(1i, -37906i))) & u_input.c.x;
    var var_2 = global3[_wgslsmith_index_u32(func_4(arg_0, Struct_1(51128u, u_input.b)).b, 4u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -868f))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1417f * global1[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 29u)]))), 1022f))));
    return _wgslsmith_dot_vec4_u32(~max(~vec4<u32>(var_1.a, 4294967295u, var_1.a, 4294967295u) | ~vec4<u32>(var_1.a, 1u, var_1.a, var_1.a), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 41385u), 1u, ~66591u, max(var_1.b, 108381u))), ~(~(~(~vec4<u32>(arg_0.b, var_1.a, var_1.b, 10676u)))));
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    global2 = ~countOneBits(max(_wgslsmith_dot_vec3_i32(u_input.d.yxz, vec3<i32>(-2147483647i, -16625i, arg_3)) >> ((arg_0 & 4294967295u) % 32u), 0i));
    global3 = array<Struct_2, 4>();
    return Struct_1(0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 10>();
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1647f, _wgslsmith_f_op_f32(step(1244f, -870f)))))), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 29u)]))));
    global2 = 0i;
    let var_1 = func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << ((u_input.b << (29316u % 32u)) % 32u), u_input.a.x, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), vec4<bool>(false, true, false, true), vec4<u32>(func_5(func_4(func_1(u_input.a, global4[_wgslsmith_index_u32(u_input.b, 10u)], 692f, 425f), Struct_1(707u, 0u))), func_5(func_1(abs(vec3<u32>(u_input.b, 89008u, u_input.a.x)), Struct_2(global1[_wgslsmith_index_u32(77559u, 29u)]), _wgslsmith_div_f32(-1715f, -771f), _wgslsmith_f_op_f32(max(372f, 804f)))), _wgslsmith_mod_u32(u_input.a.x, 4294967295u | func_3(vec3<bool>(false, false, true), vec3<bool>(false, false, false), 4294967295u).a), u_input.b), u_input.d.x);
    var var_2 = -vec3<i32>(reverseBits(u_input.d.x), _wgslsmith_add_i32(2147483647i, firstTrailingBit(-2147483647i)), 1i);
    let var_3 = u_input.d;
    global1 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~44101u, 29u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19783u, 29u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 29u)], var_0.a))))))), vec3<u32>(_wgslsmith_sub_u32(var_1.b, 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), u_input.a), ~u_input.a), countOneBits(u_input.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(140170u, var_1.b), u_input.a.xx)), u_input.b));
}

