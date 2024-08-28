struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1000f, 855f, -387f, 776f), vec4<f32>(-111f, -770f, -1297f, 626f), vec4<f32>(202f, -316f, 433f, 1000f), vec4<f32>(993f, -282f, 561f, 2897f), vec4<f32>(1084f, -351f, -1000f, -704f), vec4<f32>(-1309f, -1606f, 405f, 670f), vec4<f32>(1214f, 917f, -815f, 213f), vec4<f32>(375f, 1764f, -1000f, 901f), vec4<f32>(165f, 476f, -1000f, -1000f), vec4<f32>(1000f, 375f, 430f, -1406f), vec4<f32>(1000f, 324f, -1350f, 1376f), vec4<f32>(1093f, 557f, -659f, 1012f), vec4<f32>(-1457f, 563f, 560f, 1012f), vec4<f32>(397f, 490f, -1320f, -1659f), vec4<f32>(873f, 344f, -1169f, -1000f), vec4<f32>(911f, 386f, -1039f, -142f), vec4<f32>(-1413f, 795f, -1501f, -279f), vec4<f32>(1529f, 230f, -1332f, -955f), vec4<f32>(315f, -156f, -1000f, 474f), vec4<f32>(-1070f, 1075f, 113f, -1021f), vec4<f32>(256f, 864f, 566f, 1545f), vec4<f32>(754f, 1000f, 927f, -603f), vec4<f32>(544f, -140f, -1456f, -788f), vec4<f32>(-321f, -1604f, 105f, -628f), vec4<f32>(1000f, -719f, 359f, 1144f), vec4<f32>(-123f, 1000f, -342f, -686f), vec4<f32>(244f, 1589f, 550f, 507f));

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(112758u, 4294967295u, 135093u, 0u), vec4<u32>(34626u, 28891u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 23078u, 4294967295u), vec4<u32>(8544u, 0u, 1u, 0u), vec4<u32>(45147u, 4294967295u, 82453u, 8431u), vec4<u32>(40182u, 24641u, 4294967295u, 1u), vec4<u32>(46996u, 1u, 89866u, 42885u), vec4<u32>(1u, 1u, 1977u, 20125u), vec4<u32>(0u, 30612u, 5523u, 1u), vec4<u32>(1u, 9591u, 4294967295u, 4294967295u), vec4<u32>(0u, 20131u, 25729u, 41383u), vec4<u32>(48924u, 4294967295u, 0u, 4294967295u), vec4<u32>(22380u, 4294967295u, 1u, 0u), vec4<u32>(52640u, 57197u, 84640u, 2459u), vec4<u32>(85198u, 44370u, 4294967295u, 0u), vec4<u32>(4294967295u, 63067u, 23287u, 1u), vec4<u32>(50332u, 536u, 1u, 13126u), vec4<u32>(1u, 18962u, 17401u, 1u), vec4<u32>(1u, 50968u, 6069u, 4683u), vec4<u32>(0u, 19453u, 4294967295u, 65011u), vec4<u32>(4294967295u, 99073u, 35623u, 1u), vec4<u32>(50796u, 32214u, 9112u, 4294967295u), vec4<u32>(0u, 74531u, 1u, 0u), vec4<u32>(1u, 0u, 52879u, 4871u), vec4<u32>(0u, 4294967295u, 37436u, 7505u), vec4<u32>(4294967295u, 53780u, 0u, 20255u), vec4<u32>(4294967295u, 4294967295u, 294u, 99065u), vec4<u32>(77210u, 23974u, 15118u, 25198u), vec4<u32>(32368u, 4294967295u, 0u, 36792u));

var<private> global2: Struct_2;

var<private> global3: vec4<f32> = vec4<f32>(1498f, -632f, 1238f, -135f);

var<private> global4: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<f32>(-175f, -651f), -1882f), Struct_3(vec2<f32>(-132f, -370f), 1098f), Struct_3(vec2<f32>(739f, -935f), -413f), Struct_3(vec2<f32>(-601f, -340f), -1072f), Struct_3(vec2<f32>(-799f, 497f), 996f), Struct_3(vec2<f32>(300f, 995f), 1000f), Struct_3(vec2<f32>(-1126f, 1281f), 182f), Struct_3(vec2<f32>(-329f, 937f), -1203f), Struct_3(vec2<f32>(521f, -1012f), 383f), Struct_3(vec2<f32>(-467f, -1000f), -1000f), Struct_3(vec2<f32>(-2139f, 122f), 107f), Struct_3(vec2<f32>(-1415f, -1734f), -2109f), Struct_3(vec2<f32>(623f, 1461f), 107f), Struct_3(vec2<f32>(445f, -807f), 745f), Struct_3(vec2<f32>(-1942f, 731f), 1050f), Struct_3(vec2<f32>(2670f, -1198f), -269f), Struct_3(vec2<f32>(869f, -571f), 276f), Struct_3(vec2<f32>(866f, -1061f), 238f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = -1533f;
    let var_1 = ~_wgslsmith_add_u32(arg_1.x, arg_1.x) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(global1[_wgslsmith_index_u32(global2.d, 29u)], global1[_wgslsmith_index_u32(global2.a.x, 29u)]), countOneBits(vec4<u32>(arg_1.x, u_input.c.x, 4294967295u, arg_1.x))) ^ ~(vec4<u32>(global2.d, 16625u, 57250u, arg_1.x) & vec4<u32>(44796u, arg_1.x, u_input.b.x, arg_1.x)), ~vec4<u32>(global2.d, arg_1.x, 10175u, 99347u) & ~select(vec4<u32>(arg_1.x, 22307u, 38968u, 23233u), vec4<u32>(u_input.c.x, global2.a.x, 1u, u_input.c.x), vec4<bool>(global2.c.x, true, true, false)));
    var var_2 = true;
    var var_3 = u_input.d;
    var var_4 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(45335u, 80619u, 44742u)), u_input.c), 0u), firstLeadingBit(reverseBits(vec2<u32>(~u_input.c.x, min(39287u, arg_1.x)))));
    return Struct_2(~abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(42914u, var_1)))), select(vec3<bool>(all(select(vec4<bool>(false, global2.c.x, global2.c.x, true), vec4<bool>(true, true, true, global2.c.x), vec4<bool>(global2.b.x, false, true, global2.b.x))), true, !all(vec4<bool>(true, global2.b.x, global2.b.x, false))), vec3<bool>(select(global2.c.x, all(global2.b.xx), !global2.c.x), false, true), vec3<bool>(true, true, true)), select(vec2<bool>(global2.b.x, !(var_3.x > u_input.d.x)), vec2<bool>(abs(22619i) > (u_input.d.x & var_3.x), true), vec2<bool>(any(global2.c), true)), reverseBits(u_input.a));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = u_input.d.x;
    global4 = array<Struct_3, 18>();
    global4 = array<Struct_3, 18>();
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x + 1136f), _wgslsmith_f_op_f32(-global3.x), all(vec4<bool>(false, arg_0.c.x, arg_0.c.x, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f * global3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), 2362f, all(vec4<bool>(true, global2.c.x, arg_0.c.x, arg_0.c.x))))) * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.a.x, 27u)]));
    global3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1388f), -555f, global3.x, 707f))));
    return Struct_1(~vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(-1i, -1i)), firstTrailingBit(u_input.d.x), _wgslsmith_dot_vec3_i32(abs(u_input.d), ~u_input.d)), vec3<f32>(-207f, -1756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)))), -7376i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.xzx))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global3.x, global3.x) + _wgslsmith_f_op_vec3_f32(exp2(global3.yxy))))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.d.x, u_input.d.x) ^ u_input.d.yy), u_input.d.xx), max(firstTrailingBit(u_input.d.yz), vec2<i32>(57191i, 1i)) & select(~vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(0i, 8274i), arg_0.c.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_5) -> vec4<f32> {
    var var_0 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(129f)))) + arg_0.b.x), arg_3.c.x)), -363f, 1630f, 2643f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(func_2(func_1(global4[_wgslsmith_index_u32(global2.a.x, 18u)], global2.a)), ~u_input.b ^ vec2<u32>(1u, global2.a.x), func_1(global4[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_mult_vec2_u32(vec2<u32>(global2.d, 22145u), vec2<u32>(u_input.b.x, 63108u))), Struct_5(select(vec4<i32>(-29256i, -53379i, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, -1i, 0i, 29402i), vec4<bool>(true, global2.b.x, global2.c.x, global2.b.x)), vec2<bool>(false, false), global0[_wgslsmith_index_u32(firstLeadingBit(61299u), 27u)])))), global0[_wgslsmith_index_u32(4294967295u, 27u)]);
    global0 = array<vec4<f32>, 27>();
    var var_0 = Struct_4(-1326f, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -26522i), -2147483647i, i32(-1i) * -41932i, -64847i)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)));
    var var_1 = Struct_4(global3.x, 1i);
    global2 = func_1(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.wx), _wgslsmith_f_op_vec2_f32(min(global3.zw, global3.zw))), var_0.a), ~(~vec2<u32>(18360u, ~2156u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global2.d, ~(~(~18958u))), vec3<i32>(~(i32(-1i) * -19126i), -var_0.b, var_1.b));
}

