struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-42279i, -25485i), vec2<i32>(-1i, -1i), vec2<i32>(64483i, -51969i), vec2<i32>(20691i, -1i), vec2<i32>(-35235i, -36119i), vec2<i32>(-41254i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(26790i, -13934i), vec2<i32>(-652i, 11381i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 47256i), vec2<i32>(33578i, -1i), vec2<i32>(-33765i, -7616i), vec2<i32>(24904i, 0i), vec2<i32>(i32(-2147483648), -11175i), vec2<i32>(-1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-6952i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(1i, -15053i), vec2<i32>(-8450i, 2147483647i), vec2<i32>(71560i, 66042i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(36487i, -41230i), vec2<i32>(18596i, -44361i));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: f32;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<u32>) -> vec2<i32> {
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(arg_1.x, 32u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) - _wgslsmith_f_op_f32(sign(arg_0.b))))));
    let var_1 = min(vec4<u32>(~(~_wgslsmith_dot_vec3_u32(arg_1, arg_1)), u_input.a.x, ~(_wgslsmith_div_u32(u_input.a.x, 17380u) ^ ~u_input.a.x), ~arg_1.x), reverseBits((vec4<u32>(1u, u_input.a.x, 10099u, arg_1.x) | select(vec4<u32>(arg_1.x, 0u, 0u, u_input.a.x), vec4<u32>(4294967295u, arg_1.x, u_input.a.x, 29117u), false)) & ~countOneBits(vec4<u32>(0u, u_input.a.x, 1u, arg_1.x))));
    global4 = array<Struct_1, 32>();
    return global0[_wgslsmith_index_u32(4294967295u, 26u)];
}

fn func_2() -> bool {
    let var_0 = Struct_2(global1.zx, (-(-2305i | u_input.c.x) >> (~(0u ^ u_input.a.x) % 32u)) > 0i, min(~_wgslsmith_sub_vec2_u32(u_input.a & u_input.a, vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a), u_input.a), abs(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(28111u, 26u)], _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-16656i, -18117i), vec2<i32>(-3882i, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 5000i), global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(662f, _wgslsmith_f_op_f32(max(-401f, -527f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1623f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1429f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1234f, -692f, 381f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1707f, -1189f, -658f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1084f - -285f), -745f, _wgslsmith_div_f32(-1154f, 805f)))));
    global3 = vec2<bool>(!(true || !(!global3.x)), 640f == var_1.x);
    let var_2 = var_0;
    var var_3 = any(!global1.xxx);
    return _wgslsmith_dot_vec2_i32(max(vec2<i32>(20147i, var_0.d.x) ^ select(var_0.d, vec2<i32>(-2147483647i, 1i), var_0.a), -vec2<i32>(-18254i, 1i)), func_3(Struct_5(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_1.x))), ~vec3<u32>(4294967295u, 1u, 4294967295u))) < var_0.d.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = u_input.a;
    global1 = !vec4<bool>(global3.x, func_2(), true, all(select(!vec4<bool>(false, false, true, global1.x), select(vec4<bool>(global3.x, true, global3.x, global1.x), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, false, true, true)), vec4<bool>(true, true, global3.x, global3.x))));
    let var_1 = global4[_wgslsmith_index_u32(69817u, 32u)];
    var var_2 = ~vec2<u32>(1u, ~var_0.x);
    global1 = !(!(!(!vec4<bool>(global1.x, global1.x, false, true))));
    return Struct_2(select(vec2<bool>(!(!global3.x), all(vec4<bool>(true, false, global3.x, true))), select(select(select(global1.wy, vec2<bool>(false, global3.x), global1.xw), select(vec2<bool>(global3.x, true), global1.wx, vec2<bool>(true, true)), !vec2<bool>(global1.x, global3.x)), !select(global1.wx, vec2<bool>(true, true), true), global1.xx), global1.zw), global3.x, _wgslsmith_add_vec2_u32(var_0, ~vec2<u32>(u_input.a.x, var_2.x)) >> (abs(abs(u_input.a)) % vec2<u32>(32u)), vec2<i32>(u_input.c.x, select(u_input.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.d, arg_0), vec3<i32>(1i, -2147483647i, 2147483647i)), global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.x);
    var_0 = func_1(_wgslsmith_mod_i32(2147483647i, -2147483647i & firstLeadingBit(firstLeadingBit(u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(522f, -1000f), vec2<f32>(268f, -208f)), _wgslsmith_div_vec2_f32(vec2<f32>(-832f, -1000f), vec2<f32>(-879f, -266f)), any(global1.xwy))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -129f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(926f, 1500f) + vec2<f32>(-1199f, -2312f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-865f, _wgslsmith_f_op_f32(-894f - -2275f), -304f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1897f, 1480f, 785f, 435f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, 1000f, 1174f, 754f)))))))), ~func_1(abs(_wgslsmith_add_i32(6915i, var_0.d.x))).c.x);
}

