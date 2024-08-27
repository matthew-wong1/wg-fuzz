struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(627f, vec4<i32>(35732i, 2147483647i, 42868i, 1i)), Struct_1(521f, vec4<i32>(-1i, 2147483647i, 1i, 46413i)), Struct_1(834f, vec4<i32>(1i, -69043i, -28249i, i32(-2147483648))), Struct_1(710f, vec4<i32>(-22005i, 22870i, -69707i, 23107i)), Struct_1(-499f, vec4<i32>(0i, 0i, -1i, -1i)), Struct_1(492f, vec4<i32>(-9723i, -1i, 48525i, -1i)), Struct_1(-1391f, vec4<i32>(-1i, -1i, -14022i, 0i)), Struct_1(-1155f, vec4<i32>(2147483647i, -15381i, 2147483647i, 10243i)), Struct_1(-202f, vec4<i32>(1i, 12560i, -12474i, -2912i)), Struct_1(-732f, vec4<i32>(1i, i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(134f, vec4<i32>(2147483647i, 11023i, 1i, -1i)), Struct_1(958f, vec4<i32>(0i, 1i, -3997i, 1i)), Struct_1(1000f, vec4<i32>(1i, 1i, 2147483647i, 31476i)), Struct_1(-1676f, vec4<i32>(-50064i, -19802i, -11350i, 1i)), Struct_1(374f, vec4<i32>(25547i, 2004i, 16652i, 2147483647i)), Struct_1(-554f, vec4<i32>(1i, 1i, 0i, -19438i)), Struct_1(-1000f, vec4<i32>(i32(-2147483648), -1i, 1i, -9710i)), Struct_1(953f, vec4<i32>(-1i, 4699i, -4790i, 19654i)), Struct_1(526f, vec4<i32>(0i, 52373i, 2147483647i, -8232i)), Struct_1(472f, vec4<i32>(2147483647i, 0i, -19573i, 0i)), Struct_1(-336f, vec4<i32>(9124i, 42998i, 1i, -1i)), Struct_1(-175f, vec4<i32>(22999i, 1i, 2147483647i, 0i)), Struct_1(-446f, vec4<i32>(-1i, -5140i, 0i, 57403i)), Struct_1(1250f, vec4<i32>(-15093i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(232f, vec4<i32>(57408i, 2147483647i, -36677i, -3865i)), Struct_1(305f, vec4<i32>(1i, 2147483647i, -51567i, 2147483647i)), Struct_1(2147f, vec4<i32>(1i, -32530i, 0i, i32(-2147483648))), Struct_1(-1000f, vec4<i32>(i32(-2147483648), i32(-2147483648), -71370i, 48069i)), Struct_1(1289f, vec4<i32>(1i, -37825i, 0i, -27614i)), Struct_1(340f, vec4<i32>(192i, -1i, 0i, i32(-2147483648))), Struct_1(479f, vec4<i32>(36871i, 0i, -1i, -9125i)));

var<private> global2: array<u32, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = array<u32, 26>();
    let var_0 = Struct_3(abs(~(-select(u_input.a.zwx, vec3<i32>(arg_0, -1i, 17234i), vec3<bool>(false, false, false)))), Struct_1(_wgslsmith_f_op_f32(abs(-1247f)), vec4<i32>(arg_0, -1i, u_input.c, -(~1i))), ~(abs(vec2<u32>(global2[_wgslsmith_index_u32(51749u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]) & vec2<u32>(1u, 4294967295u)) | (select(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(75648u, 26u)], 26u)], 28u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 26u)], 28u)], true) ^ ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 1u))), vec3<bool>(true, true, true), Struct_2(vec2<bool>(_wgslsmith_f_op_f32(select(1867f, 165f, false)) == _wgslsmith_f_op_f32(f32(-1f) * -1437f), true), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(0u, 31u)], Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), 361f), firstTrailingBit(max(u_input.a, vec4<i32>(u_input.b, u_input.b, 61476i, 2147483647i))))));
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.e.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.d.a) * 100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3137f * var_0.b.a)))), var_0.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, var_0.b.a, var_0.e.d.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.b.a, -396f) + vec3<f32>(468f, var_0.b.a, 2452f)))))));
    return any(!var_0.e.b.yz);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 31u)];
    var var_1 = _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(-1i, 19068i, arg_0.e.d.b.x) & vec3<i32>(arg_0.e.c.b.x, u_input.c, u_input.c)) >> (countOneBits(~vec3<u32>(arg_0.c.x, 54108u, 1u)) % vec3<u32>(32u)), countOneBits(-select(_wgslsmith_add_vec3_i32(u_input.a.ywz, u_input.a.yww), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, var_0.b.x, var_0.b.x), vec3<i32>(0i, -39341i, var_0.b.x)), false)));
    var var_2 = Struct_2(select(vec2<bool>(true || !arg_0.d.x, false), arg_0.e.b.zx, vec2<bool>(func_3(-97677i), true)), arg_0.e.b, global1[_wgslsmith_index_u32(arg_0.c.x, 31u)], Struct_1(arg_0.e.d.a, vec4<i32>(15540i, ~_wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(var_1.x, arg_0.a.x, var_1.x, -35770i)), select(abs(1529i), arg_0.a.x, true), 1i)));
    global0 = array<vec2<u32>, 28>();
    let var_3 = vec4<i32>(1368i ^ var_0.b.x, _wgslsmith_mod_i32(-u_input.b, 2147483647i) >> (0u % 32u), ~_wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(47046i, var_2.c.b.x, u_input.b, var_2.c.b.x), u_input.a)), vec4<i32>(-35471i, var_0.b.x, -var_1.x, _wgslsmith_div_i32(-1i, u_input.b))), _wgslsmith_div_i32(_wgslsmith_div_i32(-arg_0.a.x, 35840i), var_1.x));
    return 402f;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = array<vec2<u32>, 28>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-911f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2(Struct_3(vec3<i32>(u_input.c, u_input.a.x, 202i), global1[_wgslsmith_index_u32(arg_0.x, 31u)], arg_0.xz, vec3<bool>(false, false, true), Struct_2(vec2<bool>(true, true), vec3<bool>(true, false, false), Struct_1(-1693f, u_input.a), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 31u)])), true))), -764f)), -1175f, Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, true, true)), false), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(68263u, arg_0.x) << ((_wgslsmith_sub_u32(64544u, global2[_wgslsmith_index_u32(500u, 26u)]) | 12430u) % 32u), 31u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1246f - 927f) - _wgslsmith_f_op_f32(-237f + -2282f)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.b), _wgslsmith_div_i32(-1i, u_input.b), -1i ^ u_input.b, ~u_input.c))), Struct_3(abs(-vec3<i32>(-1i, 2147483647i, -44590i)), global1[_wgslsmith_index_u32(arg_0.x, 31u)], abs(min(abs(vec2<u32>(23845u, 6991u)), vec2<u32>(global2[_wgslsmith_index_u32(1u, 26u)], arg_0.x))), vec3<bool>(!any(vec4<bool>(false, true, false, true)), true, true), Struct_2(vec2<bool>(select(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, global2[_wgslsmith_index_u32(40955u, 26u)]), ~arg_0), 31u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(1518f + 1119f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1820f, 661f, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1720f - 211f), _wgslsmith_f_op_f32(func_2(Struct_3(vec3<i32>(42863i, u_input.b, 824i), Struct_1(-2003f, u_input.a), vec2<u32>(0u, arg_0.x), vec3<bool>(true, true, true), Struct_2(vec2<bool>(false, false), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 31u)], Struct_1(-1973f, u_input.a))), false))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1228f, -951f, 939f, -241f) * vec4<f32>(145f, -622f, 1691f, 1143f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, -708f, -878f, -1886f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 103f, -693f, -418f))))));
    let var_1 = var_0.d.c.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_0.e);
    global2 = array<u32, 26>();
    return StorageBuffer(reverseBits(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), 1024f, _wgslsmith_f_op_f32(f32(-1f) * -668f))));
    global2 = array<u32, 26>();
    global0 = array<vec2<u32>, 28>();
    var var_1 = false;
    let var_2 = Struct_1(-644f, u_input.a);
    let var_3 = abs(var_2.b.wzw);
    global0 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = func_1(abs(abs(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 26u)], 6159u) << (vec3<u32>(global2[_wgslsmith_index_u32(40215u, 26u)], 98397u, 4294967295u) % vec3<u32>(32u)))));
}

