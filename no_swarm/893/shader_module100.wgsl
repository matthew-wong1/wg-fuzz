struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(0i, -1i, -1i), vec3<i32>(68196i, 2147483647i, 38094i), vec3<i32>(1i, 1i, 0i), vec3<i32>(22244i, 14368i, 21511i), vec3<i32>(-1i, 2147483647i, -50933i), vec3<i32>(i32(-2147483648), -1i, -12337i), vec3<i32>(75459i, 40166i, -70672i), vec3<i32>(29575i, -1i, -17171i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(-8016i, 9218i, -36035i), vec3<i32>(-1i, -1i, -54663i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 13859i, i32(-2147483648)), vec3<i32>(56448i, 1532i, 1i), vec3<i32>(0i, 2844i, 0i), vec3<i32>(-15807i, -34893i, 2147483647i), vec3<i32>(-1i, -38077i, i32(-2147483648)));

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-723f, 1202f, 1233f), vec3<f32>(-213f, 1000f, 1065f), vec3<f32>(-368f, 1000f, 509f), vec3<f32>(628f, -481f, 2511f), vec3<f32>(246f, -1000f, -845f), vec3<f32>(1243f, -720f, 1052f), vec3<f32>(-363f, 1000f, -468f), vec3<f32>(-229f, 1178f, -1000f), vec3<f32>(-1123f, -481f, -333f), vec3<f32>(-610f, -811f, 2077f), vec3<f32>(-768f, -1818f, -686f), vec3<f32>(1969f, -1138f, -1331f), vec3<f32>(-1504f, 373f, -1083f), vec3<f32>(414f, 218f, 2179f), vec3<f32>(-1063f, -418f, -1000f), vec3<f32>(129f, 517f, -1000f), vec3<f32>(320f, -615f, -607f), vec3<f32>(477f, 871f, 821f), vec3<f32>(1695f, 1533f, 1000f), vec3<f32>(2530f, 1770f, 2476f), vec3<f32>(-1432f, -420f, 2192f), vec3<f32>(1162f, 521f, -1410f), vec3<f32>(-439f, 816f, 246f), vec3<f32>(1078f, 408f, 1175f), vec3<f32>(-1273f, 1000f, -1570f), vec3<f32>(-1876f, -1000f, 1394f), vec3<f32>(-729f, 120f, 945f), vec3<f32>(1000f, -648f, -1801f), vec3<f32>(-128f, -1487f, 206f), vec3<f32>(306f, -471f, 145f));

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, false, false, true, false, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> u32 {
    global2 = array<vec3<f32>, 30>();
    var var_0 = Struct_1(-min(1i, arg_3.x) << (_wgslsmith_mod_u32(max(reverseBits(u_input.a), u_input.a), _wgslsmith_sub_u32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 30u)]), 1u ^ u_input.a)) % 32u), arg_1, false, 29256i, arg_1.zw);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(790f)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1129f), _wgslsmith_f_op_f32(ceil(var_0.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_0)) - 305f), -175f, -604f, -1174f)), vec4<u32>(u_input.a, _wgslsmith_mod_u32(4294967295u, ~1u) & ~u_input.a, 36280u, u_input.a), _wgslsmith_clamp_u32(1u, 34666u, 4294967295u) == _wgslsmith_add_u32(0u, ~(4294967295u | u_input.a)), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~33259u & (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53535u, 30u)], 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)], 30u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u, u_input.a, u_input.a)), vec4<u32>(1u, 34027u, u_input.a, 7674u)), 30u)]), 30u)], ~(~(~u_input.a)), global0[_wgslsmith_index_u32(4294967295u, 30u)]), arg_2.yw);
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(step(arg_1, _wgslsmith_f_op_vec4_f32(-arg_1))), var_1.c, var_0.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + 264f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-arg_1.x))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.b.zx);
    return _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(var_1.b.xzw)), countOneBits(var_1.d << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), var_1.d) % vec3<u32>(32u)))) ^ (u_input.a << (u_input.a % 32u));
}

fn func_4(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(~global0[_wgslsmith_index_u32(1u, 30u)]), 9378u, countOneBits(arg_0), global0[_wgslsmith_index_u32(4294967295u, 30u)]), ~firstLeadingBit(select(vec4<u32>(1u, 22046u, arg_0, 1104u), vec4<u32>(4294967295u, arg_0, global0[_wgslsmith_index_u32(20143u, 30u)], global0[_wgslsmith_index_u32(26052u, 30u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(33510u, 9u)]))), reverseBits(~vec4<u32>(1143u, 46857u, 1u, u_input.a) << (abs(vec4<u32>(0u, u_input.a, arg_0, 1u)) % vec4<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(1i), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, 50601i) << (var_0.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 1525f, 357f, -1390f)) * vec4<f32>(-710f, 316f, 889f, -1037f)))), global3[_wgslsmith_index_u32(~22834u, 9u)] && true, min(u_input.b >> (select(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 30u)]), 4294967295u, arg_0 >= var_0.a.x) % 32u), abs(firstTrailingBit(abs(u_input.b)))), vec2<f32>(932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(985f, -971f, true)), _wgslsmith_div_f32(2504f, -278f), false)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -420f)))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(var_0.a.wy, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]));
    global0 = array<u32, 30>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), var_1.e.x, -145f, _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b)) + var_1.b);
    return ~(~var_0.a);
}

fn func_2() -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_div_vec4_u32(func_4(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(-658f, vec4<f32>(638f, -1979f, 181f, 1166f), vec4<bool>(var_0, false, true, false), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), abs(0u)), 30u)], 30u)], ~68924u), 30u)]), abs(vec4<u32>(28768u, select(_wgslsmith_mult_u32(87021u, 1u), 4294967295u, any(vec2<bool>(var_0, true))), (global0[_wgslsmith_index_u32(u_input.a, 30u)] >> (97248u % 32u)) << (~u_input.a % 32u), u_input.a)));
    var var_2 = var_1.x;
    global3 = array<bool, 9>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -713f);
    return ~1u;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_1(~(-1i) & firstTrailingBit(u_input.b << (0u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), arg_1, -301f, arg_1) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -273f, 1021f, -1252f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1232f, -695f, -2215f, -272f))))), any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 9u)], true, all(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(0u, 9u)])))), -(u_input.b << ((11307u >> (arg_2 % 32u)) % 32u)), vec2<f32>(arg_1, arg_1));
    let var_1 = abs(vec2<i32>(1i, ~(~(i32(-1i) * -2147483647i))));
    global3 = array<bool, 9>();
    return Struct_3(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(9446u, 17227u, 16735u, 62080u), vec4<u32>(2428u, arg_0, u_input.a, 34817u))) ^ vec4<u32>(1u, ~4294967295u, 101533u, ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 30u)], 30u)], 19734u)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_3 {
    global0 = array<u32, 30>();
    global1 = array<vec3<i32>, 17>();
    global2 = array<vec3<f32>, 30>();
    let var_0 = true && !arg_2.x;
    global3 = array<bool, 9>();
    return func_5(func_2(), _wgslsmith_f_op_f32(-957f - _wgslsmith_f_op_f32(select(-1503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), all(select(arg_2.zxy, vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29524u, 30u)], 9u)], arg_2.x), arg_2.zwx))))), abs(_wgslsmith_clamp_u32(65562u, arg_1.x, 1u)) & _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30425u, u_input.a, u_input.a), vec3<u32>(u_input.a, 34519u, 30743u)) << (95506u % 32u), _wgslsmith_add_u32(38805u, 20711u) | (u_input.a ^ global0[_wgslsmith_index_u32(4294967295u, 30u)]), firstLeadingBit(arg_1.x >> (arg_1.x % 32u))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = 1i;
    var var_1 = ~(_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(~global0[_wgslsmith_index_u32(4294967295u, 30u)], func_5(u_input.a, -568f, 1u).a.x, _wgslsmith_mult_u32(4294967295u, u_input.a))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~arg_0.a.zwz, ~vec3<u32>(53905u, arg_0.a.x, arg_1.x), vec3<u32>(arg_1.x, 12660u, 0u) & arg_1), ~(arg_1 >> (arg_1 % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global3 = array<bool, 9>();
    global2 = array<vec3<f32>, 30>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1092f, arg_3.e.x, -208f) * vec4<f32>(arg_3.e.x, arg_3.e.x, arg_3.b.x, arg_3.e.x)), _wgslsmith_f_op_vec4_f32(arg_3.b - vec4<f32>(1101f, 578f, arg_3.b.x, arg_3.b.x))), arg_3.b)), vec4<u32>(arg_1.x, 5422u, 4294967295u, global0[_wgslsmith_index_u32(arg_1.x, 30u)]), 1302f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-556f)) * 886f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b.x)))), vec3<u32>(~max(u_input.a, ~4287u), ~(~(~5550u)), max(1u, global0[_wgslsmith_index_u32(~59697u, 30u)])), select(!vec2<bool>(all(vec3<bool>(arg_2, true, true)), true), select(vec2<bool>(global3[_wgslsmith_index_u32(func_2(), 9u)], all(vec3<bool>(arg_2, true, arg_3.c))), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_2, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42468u, 30u)], 9u)])), global3[_wgslsmith_index_u32(var_1.x, 9u)] || true)), vec2<bool>(true, false)));
    return Struct_3(~var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 17>();
    var var_0 = ~(vec3<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(37967u, u_input.a, 7402u), vec3<u32>(27653u, 7087u, 53163u)), 45783u), 146032u, reverseBits(u_input.a)) | ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9243u, 30u)], 30u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10293u, 30u)], 30u)]))));
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_0.x, ~select(4294967295u, 0u, global3[_wgslsmith_index_u32(var_0.x, 9u)])), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53842u, 1u), _wgslsmith_mult_vec2_u32(var_0.xz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a))), 30u)] ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 87381u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, 93523u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(58506u, 30u)], 5237u))), 30u)], u_input.a, 0u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1833f + 1422f)), _wgslsmith_f_op_f32(abs(370f))))) * 1864f);
    let var_3 = func_6(func_1(-2714f, var_1.zz, !(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 9u)], true))), ~vec3<u32>(~72850u, select(~56148u, min(68184u, 61248u), true), ~func_4(1u).x), !all(select(vec2<bool>(true, true), !vec2<bool>(global3[_wgslsmith_index_u32(71166u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), select(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)]), global3[_wgslsmith_index_u32(var_0.x, 9u)]))), Struct_1(4462i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-471f, var_2, global3[_wgslsmith_index_u32(0u, 9u)])), -288f, _wgslsmith_f_op_f32(ceil(823f)), _wgslsmith_f_op_f32(min(594f, var_2)))), select(global3[_wgslsmith_index_u32(u_input.a, 9u)], !(!global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 30u)], 9u)]), any(!vec4<bool>(global3[_wgslsmith_index_u32(21449u, 9u)], false, false, global3[_wgslsmith_index_u32(1u, 9u)]))), u_input.b >> (u_input.a % 32u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1770f)), _wgslsmith_f_op_f32(-var_2))));
    let var_4 = firstTrailingBit(vec4<i32>(-u_input.b, u_input.b >> (var_3.a.x % 32u), 27847i, u_input.b));
    global3 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(-1873f, vec2<u32>(18867u, var_0.x), vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85245u, 30u)], 30u)], 9u)], false, global3[_wgslsmith_index_u32(1u, 9u)], true)).a.x, 44556u), 30u)], select(var_0.x, var_3.a.x, select(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 9u)], true)), true, global3[_wgslsmith_index_u32(func_2(), 9u)]))), var_3.a.zwx, abs(_wgslsmith_mult_vec2_u32(func_1(_wgslsmith_f_op_f32(round(-869f)), abs(var_1.zx), select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 9u)], true, global3[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false, true, false), vec4<bool>(global3[_wgslsmith_index_u32(18127u, 9u)], global3[_wgslsmith_index_u32(34492u, 9u)], false, true))).a.zy, var_0.zy)), vec4<f32>(_wgslsmith_f_op_f32(abs(var_2)), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(trunc(var_2))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2 + var_2)))), _wgslsmith_f_op_f32(min(var_2, var_2))));
}

