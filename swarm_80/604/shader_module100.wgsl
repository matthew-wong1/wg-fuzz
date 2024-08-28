struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 30> = array<u32, 30>(0u, 20884u, 5303u, 46921u, 66846u, 1u, 4294967295u, 0u, 23104u, 93829u, 18395u, 40879u, 274u, 57520u, 19493u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 1u, 323u, 28020u, 113986u, 96531u, 13916u, 7679u, 4294967295u, 22005u, 55636u);

var<private> global2: array<vec4<u32>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1416f, -1483f)), 387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1299f)))), !any(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(930f)), _wgslsmith_f_op_f32(sign(809f)), -156f))));
    var var_1 = true;
    let var_2 = vec2<u32>(1u, _wgslsmith_mod_u32(~max(~17592u, ~global1[_wgslsmith_index_u32(1u, 30u)]), 76900u));
    var var_3 = var_0.a;
    var_0 = Struct_2(var_0.a);
    return max(u_input.b, u_input.c);
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(), -reverseBits(-2147483647i)), u_input.d.xz);
    global0 = u_input.d.x << (1u % 32u);
    global1 = array<u32, 30>();
    global2 = array<vec4<u32>, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f - -519f)), 895f))));
    return Struct_5(vec3<f32>(-1214f, 670f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, 755f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(311f, var_1.x, 212f, var_1.x) - vec4<f32>(var_1.x, 241f, -1027f, var_1.x))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(479f, 501f, -164f, 461f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 879f, 329f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -322f, 1531f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, 896f, var_1.x, -223f), vec4<f32>(1000f, var_1.x, -285f, var_1.x)))))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 600f, var_1.x))), _wgslsmith_f_op_f32(-var_1.x) == var_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -495f)))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 1u)), countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), vec2<u32>(_wgslsmith_add_u32(52340u, u_input.a), ~u_input.a))));
    let var_1 = !arg_0.c.b;
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    global2 = array<vec4<u32>, 4>();
    return _wgslsmith_f_op_f32(-arg_2.a.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_4 {
    let var_0 = vec4<f32>(arg_1.x, -176f, -403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.xwz, var_0.xwx)))), false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, arg_1.x, 872f))))));
    var var_2 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -553f) + -798f) < var_1.a.c.x) && true);
    var_2 = any(vec4<bool>((any(vec3<bool>(var_1.a.b, var_1.a.b, var_1.a.b)) | any(vec4<bool>(arg_0.a.b, var_1.a.b, false, false))) && var_1.a.b, var_1.a.b, true, any(vec4<bool>(true, true, true, true))));
    var var_3 = reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(96679u, 8226u, 1u)), vec3<u32>(_wgslsmith_div_u32(arg_3, 1u), 0u, 10073u)), abs(reverseBits(countOneBits(u_input.a))), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_3 & global1[_wgslsmith_index_u32(4294967295u, 30u)], ~7919u), 30u)], u_input.a));
    return Struct_4(Struct_2(arg_0.a), ~(~11279u));
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    global1 = array<u32, 30>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_sub_i32(u_input.b, 2147483647i);
    var var_2 = Struct_4(func_5(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-580f, var_0.a, 305f, arg_0.a.a.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, -419f, var_0.a, 129f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, -2328f, 169f, arg_0.a.a.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, arg_0.a.a.c.x, var_0.a, -1000f))))), !vec4<bool>(true, false, arg_0.a.a.b, arg_0.a.a.b))), _wgslsmith_div_u32(u_input.a, ~1u)).a, ~(~u_input.a));
    global0 = -1651i;
    return func_5(Struct_2(func_2().c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.a.x, -3095f, _wgslsmith_div_f32(-857f, var_2.a.a.a.x), _wgslsmith_f_op_f32(-1133f + var_2.a.a.c.x)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -159f, var_2.a.a.c.x, arg_0.a.a.a.x)))))), vec4<f32>(arg_0.a.a.a.x, -431f, -330f, var_2.a.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-115f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(377f)))), var_2.a.a.c.x, func_2().c.c.x, var_0.a), _wgslsmith_div_u32(~(~arg_0.b), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 66631u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 19012u), abs(vec2<u32>(12438u, u_input.a)))))).a;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    global1 = array<u32, 30>();
    global2 = array<vec4<u32>, 4>();
    var var_0 = func_6(func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.c.a * vec3<f32>(1560f, arg_0.c.c.x, arg_0.a.x)), arg_0.c.b, arg_0.a)), vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.c.c.x - arg_0.a.x)), _wgslsmith_f_op_f32(-1250f - _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)), _wgslsmith_div_f32(arg_0.c.a.x, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(func_4(func_2(), all(vec3<bool>(arg_0.c.b, true, true)), Struct_2(arg_0.c), -3609i))), arg_0.b, ~4294967295u));
    var var_1 = vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(61938u, 30u)], 4294967295u), func_5(Struct_2(Struct_1(vec3<f32>(var_0.a.c.x, arg_0.a.x, var_0.a.c.x), arg_0.c.b, vec3<f32>(var_0.a.c.x, arg_0.c.c.x, -122f))), vec4<f32>(-119f, var_0.a.c.x, arg_0.b.x, 363f), vec4<f32>(1374f, 1592f, 222f, arg_0.b.x), u_input.a).b)), 30u)], 30u)], 76649u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a) >> (_wgslsmith_mod_u32(u_input.a, global1[_wgslsmith_index_u32(36912u, 30u)]) % 32u), 30u)], ~(global1[_wgslsmith_index_u32(9830u, 30u)] << (u_input.a % 32u))), 1u), u_input.a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(abs(func_6(func_5(Struct_2(Struct_1(vec3<f32>(-1095f, var_0.a.c.x, -1276f), true, vec3<f32>(var_0.a.a.x, -1543f, 966f))), arg_0.b, _wgslsmith_f_op_vec4_f32(floor(arg_0.b)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_1.x, 30u)], u_input.a))).a.c.x)));
    return ~_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.x, 87383i), 1i), -min(-2147483647i, 2147483647i) << (~(4294967295u << (0u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(global1[_wgslsmith_index_u32(72822u, 30u)], firstLeadingBit(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 1u)));
    var var_1 = u_input.d;
    var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, -2147483647i, var_1.x)), abs(u_input.d)), vec3<i32>(-func_1(Struct_5(vec3<f32>(-457f, -1770f, -224f), vec4<f32>(1294f, -1394f, -221f, 1326f), Struct_1(vec3<f32>(-350f, -858f, 630f), false, vec3<f32>(-814f, 173f, 211f))), firstLeadingBit(u_input.d), var_1.x), u_input.b, ((u_input.b << (46867u % 32u)) | _wgslsmith_div_i32(u_input.d.x, -2147483647i)) ^ ~_wgslsmith_add_i32(16245i, u_input.b)));
    global1 = array<u32, 30>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f));
    var var_3 = firstLeadingBit(0u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, 1537f, u_input.d, abs(min(~vec3<u32>(1u, var_0.x, 30976u), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(21874u, u_input.a, 1u), vec3<u32>(54861u, var_0.x, 1u))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, -1000f, -1273f, -848f) * vec4<f32>(-1000f, 1379f, -274f, -1459f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, 305f, 1287f, 1749f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, 1000f, 374f, -1000f))), vec4<f32>(1f, 1f, 1f, 1f)), func_5(func_6(Struct_4(Struct_2(Struct_1(vec3<f32>(866f, -617f, -1000f), false, vec3<f32>(280f, -1000f, -864f))), u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1025f, 278f, 1100f, -380f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(-304f - -1735f), _wgslsmith_f_op_f32(-756f + 1139f), 1000f), 69606u).a.a.b)));
}

