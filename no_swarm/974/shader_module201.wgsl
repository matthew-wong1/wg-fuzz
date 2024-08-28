struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(101f, false), Struct_1(-824f, true), Struct_1(752f, true), Struct_1(674f, false), Struct_1(-444f, false), Struct_1(844f, false), Struct_1(208f, true), Struct_1(-655f, false), Struct_1(999f, true), Struct_1(642f, false), Struct_1(-2179f, true), Struct_1(518f, true), Struct_1(-918f, true), Struct_1(1000f, false), Struct_1(-1907f, true), Struct_1(-760f, true), Struct_1(-263f, false), Struct_1(-1112f, false), Struct_1(509f, true), Struct_1(256f, false), Struct_1(-1000f, false), Struct_1(1428f, false), Struct_1(-627f, false), Struct_1(937f, false), Struct_1(-113f, false), Struct_1(608f, false), Struct_1(1131f, false), Struct_1(-471f, true), Struct_1(-1717f, false), Struct_1(500f, true));

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(315f, 250f, 891f), vec3<f32>(241f, -563f, -1059f), vec3<f32>(881f, -1153f, 241f), vec3<f32>(-1694f, 1179f, 1418f), vec3<f32>(-835f, -1722f, -399f), vec3<f32>(-211f, 898f, -870f), vec3<f32>(-705f, -1675f, -1743f), vec3<f32>(-1980f, 1000f, 464f), vec3<f32>(1676f, -1000f, -872f), vec3<f32>(-620f, -644f, 507f), vec3<f32>(-501f, 283f, 501f), vec3<f32>(-1000f, -230f, 362f), vec3<f32>(-1673f, 1185f, 628f), vec3<f32>(1549f, 914f, 364f), vec3<f32>(215f, -662f, -1000f), vec3<f32>(-395f, -419f, 2182f), vec3<f32>(-672f, 349f, 980f), vec3<f32>(338f, 1028f, -341f), vec3<f32>(245f, -1399f, 927f), vec3<f32>(-831f, 152f, -1649f), vec3<f32>(799f, 350f, -234f), vec3<f32>(-445f, 1425f, 577f), vec3<f32>(204f, -3707f, -623f), vec3<f32>(1130f, 323f, -1368f), vec3<f32>(-599f, -932f, 854f), vec3<f32>(-1072f, 660f, 358f), vec3<f32>(-269f, 2919f, 601f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(arg_1, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, 0i, 16905i)))), _wgslsmith_div_i32(-(~arg_1), 1i), -12877i), ~(-(~vec3<i32>(arg_1, 0i, arg_1) << (u_input.d % vec3<u32>(32u)))));
    let var_1 = abs(13339i);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1853f)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(var_2, arg_0)), select(true == (false && any(vec2<bool>(false, false))), true, true));
    global0 = array<Struct_1, 30>();
    return !vec3<bool>(true, all(select(vec3<bool>(false, false, true), select(vec3<bool>(var_3.b, false, var_3.b), vec3<bool>(var_3.b, var_3.b, var_3.b), var_3.b), select(vec3<bool>(var_3.b, true, true), vec3<bool>(var_3.b, false, var_3.b), true))), all(vec2<bool>(var_3.b, var_3.b)) & var_3.b);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = true;
    var var_1 = true;
    let var_2 = global0[_wgslsmith_index_u32(61699u, 30u)];
    return _wgslsmith_add_u32(0u | (~arg_1.x ^ arg_1.x), ~(~firstLeadingBit(~u_input.d.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    var var_0 = 34629u;
    let var_1 = !arg_1.yz;
    let var_2 = func_2(_wgslsmith_f_op_f32(step(272f, -1000f)), -20562i);
    var_0 = max(4294967295u, max(~_wgslsmith_mod_u32(~arg_2.x, func_3(u_input.a, vec2<u32>(1u, arg_2.x), 535f, Struct_1(-435f, false))), firstLeadingBit(arg_2.x)));
    var_0 = select(27935u, ~_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(arg_2.x, arg_2.x)), _wgslsmith_dot_vec3_u32(max(u_input.d, vec3<u32>(4294967295u, arg_2.x, 24065u)), select(vec3<u32>(u_input.d.x, arg_2.x, u_input.c), u_input.d, vec3<bool>(true, var_1.x, arg_0.b)))), var_1.x);
    return _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.wyz, vec3<u32>(0u, arg_2.x, 4294967295u), vec3<u32>(u_input.d.x, arg_2.x, arg_2.x)), arg_2.wxw), ~arg_2.xwz, func_2(-170f, -1i).x), min(~(~u_input.d), vec3<u32>(abs(4294967295u), ~1609u, u_input.d.x))) >> (_wgslsmith_div_u32(~func_3(5834i >> (u_input.c % 32u), vec2<u32>(u_input.d.x, arg_2.x) | u_input.d.xy, _wgslsmith_f_op_f32(-arg_0.a), arg_0), min(u_input.d.x, ~4294967295u)) % 32u);
}

fn func_4(arg_0: u32, arg_1: bool) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-825f))), any(vec4<bool>(true, arg_1, !(!arg_1), !arg_1)));
    return _wgslsmith_add_vec2_i32(min(~countOneBits(vec2<i32>(u_input.b, 0i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), ~vec2<i32>(u_input.b, 8582i)), countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, 1i), abs(vec2<i32>(u_input.b, u_input.a))))), ~(-vec2<i32>(u_input.a, -25330i) << (u_input.d.xy % vec2<u32>(32u))) | (abs(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 4712i), vec2<bool>(var_0.b, arg_1))) & vec2<i32>(1369i, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a ^ u_input.a, 29814i), func_4(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 77012u), 30u)], vec4<bool>(true, true, true, true), ~vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, 1u)), false)), ((u_input.b & _wgslsmith_mod_i32(u_input.b, 1i)) >= 1i) & ((_wgslsmith_mod_u32(u_input.d.x, 4294967295u) < ~49176u) | select(u_input.d.x != u_input.c, true, true)));
    let var_1 = !(_wgslsmith_div_u32(u_input.d.x >> (abs(u_input.c) % 32u), 1u) == u_input.d.x);
    let var_2 = u_input.b ^ _wgslsmith_div_i32(3574i, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-357f, -883f)) - -1671f)), 450f));
    let var_4 = -248f;
    let var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max((var_5.x | 26925u) >> (u_input.d.x % 32u), var_5.x), ~(~(u_input.d.x >> (var_5.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * 473f) + 572f), -598f))), _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(var_5.x, 27u)], vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4 * -1560f), 685f)), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(select(var_4, var_3, var_1)))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4741u, func_1(Struct_1(var_3, false), vec4<bool>(var_1, var_1, false, var_1), vec4<u32>(u_input.c, 54983u, u_input.d.x, var_5.x))), ~(~vec2<u32>(4294967295u, var_5.x)) | u_input.d.xz, ~u_input.d.zz), firstLeadingBit(1i));
}

