struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(53538u, 4294967295u, 45264u), false), Struct_2(vec3<u32>(1u, 1u, 58461u), true), Struct_2(vec3<u32>(1u, 4294967295u, 7283u), false), Struct_2(vec3<u32>(0u, 1u, 4294967295u), false), Struct_2(vec3<u32>(9398u, 4294967295u, 0u), true), Struct_2(vec3<u32>(1u, 90061u, 22858u), false), Struct_2(vec3<u32>(18586u, 0u, 70728u), true), Struct_2(vec3<u32>(35704u, 30132u, 12115u), true), Struct_2(vec3<u32>(36282u, 60891u, 70083u), true), Struct_2(vec3<u32>(1u, 4294967295u, 1u), true), Struct_2(vec3<u32>(1u, 1u, 12372u), true), Struct_2(vec3<u32>(4294967295u, 34456u, 4294967295u), true), Struct_2(vec3<u32>(1u, 1732u, 4294967295u), false), Struct_2(vec3<u32>(33760u, 4294967295u, 13208u), false), Struct_2(vec3<u32>(4294967295u, 0u, 53103u), true), Struct_2(vec3<u32>(4294967295u, 33557u, 0u), true), Struct_2(vec3<u32>(9607u, 4294967295u, 1u), false), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), true), Struct_2(vec3<u32>(11470u, 18476u, 0u), true), Struct_2(vec3<u32>(4294967295u, 82707u, 0u), true));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 7>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-1i, vec2<f32>(-1224f, -766f), vec2<bool>(false, false), 31364u), Struct_1(1i, vec2<f32>(-329f, 731f), vec2<bool>(true, false), 11205u), Struct_1(2147483647i, vec2<f32>(-569f, 1000f), vec2<bool>(false, true), 16876u), Struct_1(39953i, vec2<f32>(135f, 769f), vec2<bool>(true, true), 2685u), Struct_1(i32(-2147483648), vec2<f32>(-547f, 774f), vec2<bool>(false, true), 4025u), Struct_1(6043i, vec2<f32>(-231f, 1251f), vec2<bool>(true, false), 64434u), Struct_1(i32(-2147483648), vec2<f32>(1128f, 112f), vec2<bool>(true, false), 6939u), Struct_1(-1755i, vec2<f32>(-716f, 812f), vec2<bool>(false, true), 10452u), Struct_1(49259i, vec2<f32>(222f, -674f), vec2<bool>(false, false), 69437u), Struct_1(-2241i, vec2<f32>(780f, 1495f), vec2<bool>(true, true), 58301u), Struct_1(-1i, vec2<f32>(531f, 480f), vec2<bool>(true, true), 1u), Struct_1(-4035i, vec2<f32>(-528f, 119f), vec2<bool>(false, true), 4294967295u), Struct_1(i32(-2147483648), vec2<f32>(-703f, 271f), vec2<bool>(false, false), 4294967295u), Struct_1(i32(-2147483648), vec2<f32>(-1032f, 1000f), vec2<bool>(false, false), 28184u), Struct_1(1i, vec2<f32>(-128f, -348f), vec2<bool>(true, true), 44248u), Struct_1(-16358i, vec2<f32>(-396f, -1000f), vec2<bool>(true, true), 8742u), Struct_1(2147483647i, vec2<f32>(800f, 635f), vec2<bool>(true, false), 4294967295u), Struct_1(1i, vec2<f32>(1000f, 921f), vec2<bool>(true, true), 0u), Struct_1(-1i, vec2<f32>(1173f, -1060f), vec2<bool>(false, true), 33019u), Struct_1(1i, vec2<f32>(326f, -114f), vec2<bool>(true, true), 1u), Struct_1(-57242i, vec2<f32>(-675f, 1255f), vec2<bool>(true, true), 73858u), Struct_1(0i, vec2<f32>(-263f, -701f), vec2<bool>(true, false), 1u), Struct_1(i32(-2147483648), vec2<f32>(-1000f, 1341f), vec2<bool>(false, false), 4294967295u), Struct_1(2147483647i, vec2<f32>(1690f, -897f), vec2<bool>(true, true), 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    let var_0 = !vec3<bool>(arg_1.b, arg_1.b, !(!global1.b));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.d, _wgslsmith_add_u32(0u, ~(arg_0.d & arg_1.a.x))) & (select(arg_1.a.x, ~(~global1.a.x), all(arg_0.c)) & _wgslsmith_mod_u32(reverseBits(_wgslsmith_sub_u32(arg_1.a.x, global1.a.x)), _wgslsmith_div_u32(select(7484u, 55793u, true), arg_1.a.x))), 7u)];
    var var_2 = Struct_1(-10185i, vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<bool>(any(var_1.a.c) | false, !arg_1.b), 1u);
    let var_3 = arg_0;
    global0 = array<Struct_2, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-145f))));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    global3 = array<Struct_1, 24>();
    var var_0 = vec2<bool>(false == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1117f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.x, vec2<f32>(-1296f, -546f), vec2<bool>(true, false), arg_0.a.x), Struct_2(arg_0.a, false), vec4<f32>(-930f, 420f, 345f, 1253f))))), arg_0.b & false);
    var var_1 = arg_0.a;
    let var_2 = !(!vec3<bool>(true, true, global1.b));
    return vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.d), var_1.x, var_1.x);
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 24u)];
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(30664u, 57623u, var_0.d)), var_0.d << (~_wgslsmith_mult_u32(u_input.d, global1.a.x) % 32u), _wgslsmith_clamp_u32(~var_0.d, ~(~u_input.c.x), ~(~4294967295u)), 0u), reverseBits(max(abs(vec4<u32>(15775u, u_input.d, 4294967295u, 14624u) | vec4<u32>(19769u, 0u, 0u, 36847u)), ~(~vec4<u32>(4294967295u, 12051u, global1.a.x, 4294967295u)))));
    global2 = array<Struct_3, 7>();
    let var_2 = arg_0;
    global3 = array<Struct_1, 24>();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(Struct_2(global1.a, false)), !all(vec4<bool>(true, true, true, true)) && true);
    var var_1 = Struct_3(Struct_1(-_wgslsmith_div_i32(~u_input.b.x, -6754i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(690f - -704f), _wgslsmith_f_op_f32(f32(-1f) * -160f))), !(!select(vec2<bool>(global1.b, var_0.b), vec2<bool>(false, true), vec2<bool>(global1.b, true))), _wgslsmith_mult_u32(~(~4294967295u), min(1u, 1u))));
    global3 = array<Struct_1, 24>();
    var var_2 = var_0;
    let var_3 = 2147483647i;
    var_1 = global2[_wgslsmith_index_u32(global1.a.x, 7u)];
    global0 = array<Struct_2, 20>();
    let var_4 = -35523i;
    var var_5 = any(!vec4<bool>((false | var_2.b) || true, true, false, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2853i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 21298i), u_input.b)), select(-25755i, func_3(var_1.a.b.x), true), -21331i ^ ~var_3) | _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 1i, var_3, 1i)) >> ((vec4<u32>(1u, 4294967295u, var_2.a.x, var_0.a.x) ^ vec4<u32>(4294967295u, var_1.a.d, var_1.a.d, 1296u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_3, -77160i, var_4), vec4<i32>(8263i, 85038i, u_input.b.x, u_input.e.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-17407i, var_1.a.a, 1i, var_1.a.a), vec4<i32>(u_input.b.x, 2147483647i, 1i, 22419i)))));
}

