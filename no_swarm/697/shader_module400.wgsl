struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    let var_0 = arg_0.e;
    let var_1 = vec3<bool>(false, (_wgslsmith_f_op_f32(-1241f + _wgslsmith_f_op_f32(floor(arg_1.x))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(106f + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -706f), all(vec2<bool>(false, false))))) || all(vec2<bool>(true, true)), !(!any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.c.x);
    var var_3 = Struct_2(arg_0.b.b, arg_0.e, 581f, firstLeadingBit(((vec3<u32>(4294967295u, u_input.a.x, arg_0.d.x) | arg_0.d) << (vec3<u32>(78246u, 56179u, 10940u) % vec3<u32>(32u))) >> (arg_0.d % vec3<u32>(32u))), arg_0.e);
    let var_4 = !(!vec4<bool>(true, true, true, all(var_1)));
    return -1573f;
}

fn func_2() -> Struct_3 {
    var var_0 = select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<i32>(2147483647i, u_input.d, u_input.d), Struct_1(293f, u_input.b.yww, vec4<f32>(1760f, -134f, -254f, 1000f)), 3064f, vec3<u32>(u_input.c.x, 0u, u_input.a.x), Struct_1(-1427f, u_input.b.zww, vec4<f32>(1000f, 953f, -196f, 203f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1347f, -741f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1152f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-174f)))), true);
    let var_1 = Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.wxx, vec3<i32>(-29310i, -2147483647i, u_input.d)) << (select(countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)), ~vec3<u32>(u_input.c.x, 59669u, u_input.a.x), any(vec3<bool>(true, true, false))) % vec3<u32>(32u)), (max(u_input.b.ywz, vec3<i32>(2147483647i, -8046i, 0i)) ^ u_input.b.zzx) ^ ~reverseBits(u_input.b.wwx)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1f, 1f), _wgslsmith_f_op_f32(ceil(-311f)))), vec3<i32>(u_input.d, select(u_input.b.x, -1i, false) >> (u_input.c.x % 32u), ~1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1855f, 179f, -1913f, -568f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-230f)), _wgslsmith_f_op_f32(max(658f, 1000f))))) * _wgslsmith_f_op_f32(trunc(-781f))), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xww, ~vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), firstLeadingBit(u_input.c.x), u_input.c.x), Struct_1(178f, abs(u_input.b.yyz) ^ ~(~vec3<i32>(u_input.b.x, -20027i, u_input.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.b.xwx, Struct_1(-1676f, vec3<i32>(u_input.d, u_input.d, u_input.d), vec4<f32>(1000f, -2182f, -883f, 202f)), -564f, u_input.a.yyx, Struct_1(1242f, u_input.b.zwy, vec4<f32>(-135f, 1123f, 894f, -286f))), vec2<f32>(948f, -592f))), _wgslsmith_f_op_f32(203f + -869f), 1604f, -220f) - vec4<f32>(_wgslsmith_div_f32(-1651f, 1410f), _wgslsmith_f_op_f32(select(1911f, -397f, false)), -401f, _wgslsmith_f_op_f32(f32(-1f) * -131f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.a)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, 383f, var_1.e.a)))), _wgslsmith_f_op_vec3_f32(-var_1.e.c.yxx), select(vec3<bool>(true, true, true), vec3<bool>(2585u > var_1.d.x, true, any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(ceil(578f)) == _wgslsmith_f_op_f32(-559f - var_1.b.a)))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<i32>(16041i, u_input.d, var_1.e.b.x), var_1.b, _wgslsmith_f_op_f32(var_2.x + 272f), var_1.d, Struct_1(-1246f, var_1.a, var_1.e.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.c.xy - vec2<f32>(var_2.x, var_1.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_1.b.a * var_2.x)))), _wgslsmith_f_op_f32(-var_1.c));
    var var_3 = var_1.b.c.yxw;
    return global0[_wgslsmith_index_u32(22311u, 18u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = func_2();
    global0 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2().a, vec2<f32>(1135f, 1004f))) * 842f), var_0.a.e.a)));
    let var_2 = !any(vec2<bool>(true, true));
    let var_3 = ~u_input.b.ywy;
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.e.b, func_2().a.b, -1453f, ~abs(vec3<u32>(u_input.a.x | 4294967295u, min(u_input.c.x, arg_0.d.x), ~78779u)), func_2().a.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, vec2<f32>(arg_2, 445f))) * _wgslsmith_f_op_f32(var_0.c - arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.e.c.x)) * _wgslsmith_f_op_f32(arg_2 * -244f)))));
    let var_2 = vec4<bool>(arg_0.e.b.x != _wgslsmith_dot_vec3_i32(arg_0.a, firstLeadingBit(vec3<i32>(3566i, -1i, var_0.b.b.x))), arg_1, !(_wgslsmith_f_op_f32(exp2(arg_2)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), false);
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f))));
    return vec2<bool>(var_2.x, true);
}

fn func_5(arg_0: bool) -> i32 {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_0 = u_input.b.wyz;
    let var_1 = true;
    return _wgslsmith_mod_i32(u_input.b.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(any(func_4(func_1(Struct_1(-1059f, vec3<i32>(u_input.d, 1i, u_input.d), vec4<f32>(779f, -216f, 198f, -1396f)), vec3<u32>(0u, 1u, u_input.a.x)), true, 1968f)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yzw, u_input.c.wyz), ~func_2().a.d), 18u)];
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.a.b.a), abs(-u_input.b.wxx), _wgslsmith_f_op_vec4_f32(max(var_1.a.e.c, var_1.a.e.c)));
    global0 = array<Struct_3, 18>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1456f, -708f) * _wgslsmith_f_op_f32(sign(func_1(func_2().a.e, vec3<u32>(u_input.c.x, 0u, 4238u)).b.a))), u_input.b.zyy, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, firstLeadingBit(49037u), 0u), vec4<u32>(_wgslsmith_mod_u32(1288u, 38317u), firstLeadingBit(4294967295u), ~13916u, _wgslsmith_add_u32(var_1.a.d.x, 60720u)))), _wgslsmith_div_u32(min(~var_1.a.d.x, select(41185u, 1u, false)) ^ ~var_1.a.d.x, _wgslsmith_clamp_u32(var_1.a.d.x & _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, u_input.a.x, 23270u), var_1.a.d), ~_wgslsmith_mod_u32(46575u, 81032u), var_1.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(-func_2().a.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) * _wgslsmith_f_op_f32(f32(-1f) * -490f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

