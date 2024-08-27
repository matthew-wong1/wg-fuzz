struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_4, 30>;

var<private> global2: array<f32, 24>;

var<private> global3: Struct_5 = Struct_5(vec3<f32>(-997f, -1000f, 527f), Struct_4(-335f), 61551u, vec3<u32>(22214u, 41488u, 85924u), Struct_2(i32(-2147483648), 24845u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(15234u, 24u)], 35352u, Struct_2(global3.e.a, (27464u << (1u % 32u)) ^ abs(global3.e.b)), _wgslsmith_f_op_f32(abs(global3.a.x)), _wgslsmith_dot_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -16923i, global3.e.a, global3.e.a), vec4<i32>(global3.e.a, global3.e.a, u_input.a.x, u_input.a.x), vec4<i32>(5731i, global3.e.a, global3.e.a, 2147483647i))), abs(-vec4<i32>(2147483647i, 30106i, -36141i, 0i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-20496i, -4517i, -11173i, 2147483647i), vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x) | vec4<i32>(26426i, 59514i, -2123i, -29872i))));
    let var_1 = vec2<u32>(var_0.b, firstLeadingBit(_wgslsmith_clamp_u32(66357u, global3.e.b, ~(~1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.a)));
}

fn func_2() -> Struct_3 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(156f - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 649f) * _wgslsmith_f_op_f32(232f + global3.b.a)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -355f))));
    let var_0 = select(vec4<bool>(true, false, all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), vec4<bool>(false, false, any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec3<bool>(true, false, true)))), vec4<bool>(true, true, all(vec2<bool>(true, true)), false), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, -5584i >= global3.e.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, 71389u >= global3.c, false, false))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(global3.b.a - 286f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(138f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(845f - -1432f)))));
    global1 = array<Struct_4, 30>();
    let var_1 = _wgslsmith_clamp_u32(4294967295u, 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, ~global3.e.b), _wgslsmith_sub_u32(reverseBits(4294967295u), 52204u) ^ global3.e.b));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(984f)), -162f)) + -207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(-global0.x)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 0u, global3.c, var_1), ~vec4<u32>(global3.d.x, global3.c, global3.c, 43315u)), vec4<u32>(4294967295u, global3.d.x, global3.e.b, global3.e.b) << (vec4<u32>(1u, 1u, var_1, global3.e.b) % vec4<u32>(32u))), global3.e, _wgslsmith_f_op_f32(f32(-1f) * -144f), u_input.a.x ^ abs(global3.e.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = arg_2.c.b & global3.e.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.a)) * _wgslsmith_f_op_f32(select(1261f, arg_3.a, false))), arg_0.a)));
    var var_2 = global3.e;
    var_1 = _wgslsmith_f_op_f32(max(189f, 283f));
    global1 = array<Struct_4, 30>();
    return vec3<i32>(abs(i32(-1i) * -22953i), _wgslsmith_add_i32(var_2.a, -60178i), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = 174f;
    let var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3.e.a, u_input.a.x, u_input.a.x) ^ (u_input.a & vec3<i32>(43818i, 0i, global3.e.a)), func_4(global1[_wgslsmith_index_u32(~0u, 30u)], select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), func_2(), global1[_wgslsmith_index_u32(arg_2.d, 30u)])), u_input.a << (arg_2.c % vec3<u32>(32u)));
    var_0 = -1609f;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(104598u, 24u)]), global2[_wgslsmith_index_u32(arg_2.d, 24u)], global3.a.x, arg_0))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.b.a, -2079f, 321f)) + vec4<f32>(global0.x, -483f, 978f, -400f)))))));
    return Struct_4(1068f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xzz)))), func_1(global3.b.a, select(u_input.a.yz, u_input.a.zy, true), Struct_1(0i, 1i, global3.d, ~4294967295u)), _wgslsmith_mod_u32(~(_wgslsmith_div_u32(global3.c, global3.c) ^ 1u), 1u), global3.d, global3.e);
    var var_1 = global3.b.a;
    var var_2 = (var_0.c ^ var_0.e.b) ^ var_0.e.b;
    let var_3 = ~select(var_0.d, vec3<u32>(~30645u, _wgslsmith_dot_vec2_u32(var_0.d.xx, vec2<u32>(var_0.c, 7838u)), ~33909u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, global3.c, 19994u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.c, 1u, 0u), var_0.d, var_0.d)) % vec3<u32>(32u)), vec3<bool>(true, true, true));
    global2 = array<f32, 24>();
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(func_2().d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-113f)), _wgslsmith_f_op_f32(195f + -692f), true))), 1000f, _wgslsmith_f_op_f32(select(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2388f)), true)), 355f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * global3.a.x), 101f, _wgslsmith_f_op_f32(step(2183f, global2[_wgslsmith_index_u32(var_0.d.x, 24u)])), _wgslsmith_f_op_f32(func_3())))), vec4<bool>(true, !(0i == u_input.a.x) && true, !(_wgslsmith_f_op_f32(f32(-1f) * -934f) < _wgslsmith_div_f32(var_0.a.x, 306f)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, true), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global3.d, var_0.d), var_0.c), select(~var_3.x, firstTrailingBit(39302u), false)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 18978u, var_3.x, var_3.x), vec4<u32>(4294967295u, var_3.x, 64037u, 0u)), vec4<u32>(var_3.x, 4294967295u, var_3.x, global3.e.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.a.x, var_0.b.a))));
}

