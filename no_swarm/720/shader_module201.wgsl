struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(9967u, 0u), vec2<u32>(77487u, 24706u), vec2<u32>(4657u, 0u), vec2<u32>(0u, 51699u), vec2<u32>(6303u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(59310u, 44808u), vec2<u32>(4294967295u, 80966u), vec2<u32>(16896u, 18065u), vec2<u32>(4294967295u, 0u), vec2<u32>(57148u, 1u), vec2<u32>(50153u, 0u), vec2<u32>(80326u, 4294967295u), vec2<u32>(44177u, 91140u), vec2<u32>(4294967295u, 1u), vec2<u32>(388u, 18791u), vec2<u32>(32260u, 0u), vec2<u32>(72242u, 27513u), vec2<u32>(8942u, 1u), vec2<u32>(43308u, 47228u), vec2<u32>(22981u, 1u), vec2<u32>(4294967295u, 53296u), vec2<u32>(89168u, 26608u), vec2<u32>(0u, 31528u), vec2<u32>(33545u, 64322u), vec2<u32>(31108u, 4294967295u), vec2<u32>(55475u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 34876u));

var<private> global1: array<u32, 23> = array<u32, 23>(26677u, 0u, 7853u, 0u, 4294967295u, 24545u, 4294967295u, 0u, 41757u, 75642u, 0u, 5971u, 31771u, 0u, 4294967295u, 23842u, 35681u, 5102u, 1u, 1u, 66796u, 30043u, 0u);

var<private> global2: vec4<f32>;

var<private> global3: Struct_3;

var<private> global4: array<u32, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(arg_0.c.a, var_0.c.a, global3.a, !(global3.a | true) | true);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), global2.x, var_0.d.a.x, global2.x);
    var var_2 = var_0.c.a;
    var var_3 = arg_0.d;
    return _wgslsmith_mod_i32(2304i, _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(-16380i, 2147483647i, -26554i, -347i) ^ vec4<i32>(u_input.a, -10026i, u_input.a, 19530i))), select(vec4<i32>(-u_input.a, -2147483647i, 6117i, select(2147483647i, u_input.a, false)), -_wgslsmith_sub_vec4_i32(vec4<i32>(35779i, 31212i, 13170i, u_input.a), vec4<i32>(-20055i, 26063i, u_input.a, -2251i)), vec4<bool>(false, true, all(vec2<bool>(false, false)), var_0.c.a))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = func_3(Struct_4(-1363f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1444f, -508f, -217f) * global2.zzy) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, global2.x, 965f) * vec3<f32>(1428f, -257f, 476f))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(true, 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, global2.x, 779f, 1379f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -338f, global2.x, global2.x) + vec4<f32>(global2.x, global2.x, global2.x, -1035f))))));
    var var_1 = 271f;
    global0 = array<vec2<u32>, 29>();
    var_0 = (min(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-25239i, -68151i), vec2<i32>(u_input.a, -2147483647i))) ^ 2147483647i) << (global3.b % 32u);
    global2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-163f + -143f), _wgslsmith_f_op_f32(max(global2.x, global2.x)), global2.x, -396f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - 1327f)) - vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-2391f * global2.x), _wgslsmith_f_op_f32(trunc(global2.x)), -566f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1143f, global2.x, global2.x))));
    return Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, _wgslsmith_f_op_f32(global2.x * global2.x)));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2(!(!(!select(vec4<bool>(global3.a, global3.a, global3.a, false), vec4<bool>(global3.a, global3.a, false, true), vec4<bool>(false, global3.a, true, global3.a)))), u_input.b.yy);
    let var_1 = false;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -665f) * -1797f)), 1162f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1341f + _wgslsmith_f_op_f32(f32(-1f) * -963f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<u32, 23>();
    global0 = array<vec2<u32>, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1231f, 840f, 822f, -1271f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1494f, 690f, 427f, -1550f) * vec4<f32>(587f, var_0, -1905f, var_0)), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, global2.x, 365f, var_0)) + _wgslsmith_f_op_vec4_f32(func_1()))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, global2.x, -278f, 1000f) * vec4<f32>(global2.x, -862f, -941f, var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 600f, -1000f, 592f))))));
    var var_2 = Struct_2(global3.a, vec4<u32>(1u, global3.b >> (1u % 32u), _wgslsmith_clamp_u32((global3.b ^ 14922u) | ~global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 4u)], _wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b >> (vec3<u32>(u_input.b.x, global4[_wgslsmith_index_u32(243u, 4u)], 1u) % vec3<u32>(32u)), ~vec3<u32>(global4[_wgslsmith_index_u32(global3.b, 4u)], global3.b, 4294967295u))), firstTrailingBit(222u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-569f, _wgslsmith_f_op_vec4_f32(func_1()).x)));
    global1 = array<u32, 23>();
    global0 = array<vec2<u32>, 29>();
    global4 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, select(abs(vec2<i32>(u_input.a, ~(-2147483647i))), -_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a) >> (u_input.b.yz % vec2<u32>(32u))), vec2<bool>(!var_2.a, false)), global0[_wgslsmith_index_u32(global3.b, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, 119f)))) - var_2.c.x), vec3<f32>(269f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1156f)), 825f))), var_2.c.x));
}

