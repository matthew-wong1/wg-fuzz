struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(vec2<u32>(1u, 45401u)), -813f), Struct_3(Struct_1(vec2<u32>(10393u, 68253u)), 687f), Struct_3(Struct_1(vec2<u32>(29212u, 1u)), 252f), Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u)), -336f), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u)), 750f), Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), -405f), Struct_3(Struct_1(vec2<u32>(0u, 0u)), -748f), Struct_3(Struct_1(vec2<u32>(18357u, 59540u)), 424f), Struct_3(Struct_1(vec2<u32>(35033u, 1u)), 462f), Struct_3(Struct_1(vec2<u32>(24036u, 1u)), -1608f), Struct_3(Struct_1(vec2<u32>(1214u, 50021u)), 1000f), Struct_3(Struct_1(vec2<u32>(33319u, 48948u)), -1000f), Struct_3(Struct_1(vec2<u32>(4294967295u, 68237u)), 742f), Struct_3(Struct_1(vec2<u32>(28847u, 42035u)), 323f), Struct_3(Struct_1(vec2<u32>(0u, 11000u)), 1731f), Struct_3(Struct_1(vec2<u32>(0u, 4155u)), -874f), Struct_3(Struct_1(vec2<u32>(28981u, 1u)), -1506f), Struct_3(Struct_1(vec2<u32>(28616u, 1u)), -259f), Struct_3(Struct_1(vec2<u32>(28166u, 1u)), 673f), Struct_3(Struct_1(vec2<u32>(0u, 0u)), 321f), Struct_3(Struct_1(vec2<u32>(4294967295u, 0u)), 644f), Struct_3(Struct_1(vec2<u32>(1u, 55737u)), -264f));

var<private> global1: array<f32, 9>;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_3(Struct_1(vec2<u32>(45407u, 4294967295u)), 1783f), Struct_1(vec2<u32>(7778u, 98954u)), vec2<u32>(0u, 21567u), vec2<f32>(172f, -1159f)), Struct_4(Struct_3(Struct_1(vec2<u32>(1u, 4294967295u)), 1235f), Struct_1(vec2<u32>(4294967295u, 1u)), vec2<u32>(12299u, 18596u), vec2<f32>(527f, -491f)), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 1u)), -334f), Struct_1(vec2<u32>(43265u, 1u)), vec2<u32>(0u, 1u), vec2<f32>(878f, 1000f)), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 1u)), -810f), Struct_1(vec2<u32>(17875u, 49792u)), vec2<u32>(0u, 0u), vec2<f32>(2572f, 181f)), Struct_4(Struct_3(Struct_1(vec2<u32>(41235u, 0u)), -1231f), Struct_1(vec2<u32>(0u, 4294967295u)), vec2<u32>(4294967295u, 21284u), vec2<f32>(346f, 803f)), Struct_4(Struct_3(Struct_1(vec2<u32>(535u, 25450u)), -260f), Struct_1(vec2<u32>(0u, 0u)), vec2<u32>(88051u, 35085u), vec2<f32>(389f, 647f)), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 9326u)), -1902f), Struct_1(vec2<u32>(4294967295u, 22192u)), vec2<u32>(32189u, 4294967295u), vec2<f32>(2081f, 1761f)), Struct_4(Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u)), -694f), Struct_1(vec2<u32>(4294967295u, 17071u)), vec2<u32>(4294967295u, 8089u), vec2<f32>(-1000f, -342f)), Struct_4(Struct_3(Struct_1(vec2<u32>(17013u, 74896u)), -454f), Struct_1(vec2<u32>(1u, 4294967295u)), vec2<u32>(32328u, 16454u), vec2<f32>(2393f, -981f)), Struct_4(Struct_3(Struct_1(vec2<u32>(5779u, 5077u)), -546f), Struct_1(vec2<u32>(4294967295u, 80100u)), vec2<u32>(4294967295u, 0u), vec2<f32>(1090f, 1000f)), Struct_4(Struct_3(Struct_1(vec2<u32>(45829u, 59883u)), 530f), Struct_1(vec2<u32>(1468u, 1u)), vec2<u32>(1304u, 30904u), vec2<f32>(1219f, 1000f)), Struct_4(Struct_3(Struct_1(vec2<u32>(49456u, 4294967295u)), 771f), Struct_1(vec2<u32>(1u, 4294967295u)), vec2<u32>(21710u, 1u), vec2<f32>(-2294f, -1000f)), Struct_4(Struct_3(Struct_1(vec2<u32>(15365u, 0u)), 678f), Struct_1(vec2<u32>(4294967295u, 24023u)), vec2<u32>(1u, 4294967295u), vec2<f32>(-214f, 456f)), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 0u)), -304f), Struct_1(vec2<u32>(84881u, 0u)), vec2<u32>(24950u, 21682u), vec2<f32>(298f, -566f)), Struct_4(Struct_3(Struct_1(vec2<u32>(1u, 1u)), -1011f), Struct_1(vec2<u32>(41809u, 0u)), vec2<u32>(51249u, 29071u), vec2<f32>(-815f, 552f)), Struct_4(Struct_3(Struct_1(vec2<u32>(0u, 1296u)), -1221f), Struct_1(vec2<u32>(23622u, 1u)), vec2<u32>(7325u, 42837u), vec2<f32>(-780f, -865f)), Struct_4(Struct_3(Struct_1(vec2<u32>(1u, 1u)), -419f), Struct_1(vec2<u32>(4294967295u, 58176u)), vec2<u32>(1u, 72952u), vec2<f32>(358f, -1633f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global2 = array<Struct_4, 17>();
    return u_input.b;
}

fn func_2() -> Struct_4 {
    let var_0 = true;
    global1 = array<f32, 9>();
    let var_1 = u_input.a;
    let var_2 = !all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)] > -415f, var_0, select(var_0, false, false)), select(!vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, true, false), select(vec3<bool>(var_0, false, true), vec3<bool>(true, true, var_0), vec3<bool>(true, var_0, var_0))), vec3<bool>(1449f >= global1[_wgslsmith_index_u32(1u, 9u)], var_0, true)));
    global0 = array<Struct_3, 22>();
    return Struct_4(Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 83320u) << (vec2<u32>(7252u, 88925u) % vec2<u32>(32u)), select(vec2<u32>(u_input.b, 44839u), vec2<u32>(1u, u_input.b), vec2<bool>(var_0, false)))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(func_3(~u_input.a), 9u)]))), Struct_1(vec2<u32>(9318u, 69833u)), _wgslsmith_mod_vec2_u32(reverseBits(~firstTrailingBit(vec2<u32>(22924u, u_input.b))), ~abs(vec2<u32>(u_input.b, 23515u)) | (select(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 9612u), true) << (_wgslsmith_mult_vec2_u32(vec2<u32>(17623u, 1u), vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(-576f)), global1[_wgslsmith_index_u32(17314u, 9u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(62042u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(8858u, 9u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(771f, global1[_wgslsmith_index_u32(11466u, 9u)])))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: bool) -> vec2<i32> {
    var var_0 = vec2<i32>(5689i, u_input.a);
    var var_1 = arg_3;
    let var_2 = !arg_3;
    let var_3 = vec2<bool>(arg_3, true);
    global0 = array<Struct_3, 22>();
    return vec2<i32>(-19725i, _wgslsmith_add_i32(i32(-1i) * -(~13995i), i32(-1i) * -max(-29422i, var_0.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec2_i32(~countOneBits(vec2<i32>(u_input.a, u_input.c)) | ~(~vec2<i32>(u_input.c, -1i)), (vec2<i32>(8254i, 0i) ^ firstLeadingBit(vec2<i32>(u_input.a, u_input.a))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, 56313u), min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 127470u))) % vec2<u32>(32u)));
    global2 = array<Struct_4, 17>();
    var_0 = func_4(func_2(), func_2(), 90613u, all(!vec3<bool>(all(vec3<bool>(true, false, true)), true, u_input.b > u_input.b)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(reverseBits(func_2().c), firstTrailingBit(vec2<u32>(0u, u_input.b)) ^ ~vec2<u32>(u_input.b, u_input.b))), any(vec3<bool>(true, true, true)));
    var_0 = firstTrailingBit(vec2<i32>(var_0.x, ~1i));
    return var_1.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    global1 = array<f32, 9>();
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~(~103427u) >> (1u % 32u), 9u)]));
    var var_2 = !(!(!select(vec2<bool>(true, true), !vec2<bool>(var_0.b, true), !vec2<bool>(var_0.b, false))));
    var var_3 = Struct_2(arg_2.a, arg_2.b);
    return vec4<f32>(_wgslsmith_f_op_f32(505f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1023f, var_1)), 447f))), -2112f, _wgslsmith_f_op_f32(-1f), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(372f, global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(13471u, 9u)], 607f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(2894u, 9u)], -776f, global1[_wgslsmith_index_u32(1u, 9u)]))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(20525u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), vec4<f32>(1459f, 320f, 144f, global1[_wgslsmith_index_u32(0u, 9u)]))) - _wgslsmith_div_vec4_f32(vec4<f32>(1225f, global1[_wgslsmith_index_u32(u_input.b, 9u)], 805f, global1[_wgslsmith_index_u32(u_input.b, 9u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(82902u, 9u)], 792f))), vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(74420u, 9u)] * global1[_wgslsmith_index_u32(u_input.b, 9u)]), _wgslsmith_f_op_f32(439f + global1[_wgslsmith_index_u32(u_input.b, 9u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(480u, 9u)] - global1[_wgslsmith_index_u32(u_input.b, 9u)])), vec4<bool>(true, true, true, true)))));
    global1 = array<f32, 9>();
    var var_1 = 214f;
    var_0 = vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(var_0.x, 132f))) - global1[_wgslsmith_index_u32(4294967295u, 9u)]))), global1[_wgslsmith_index_u32(37811u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 9u)] * global1[_wgslsmith_index_u32(1u, 9u)])))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1463f, var_0.x, global1[_wgslsmith_index_u32(21674u, 9u)], 585f) * vec4<f32>(var_0.x, 679f, global1[_wgslsmith_index_u32(28885u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(0u, 9u)], -280f, global1[_wgslsmith_index_u32(u_input.b, 9u)]) - vec4<f32>(var_0.x, -1546f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1759f, 1539f, -1802f, -2033f) * vec4<f32>(-1636f, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 9u)], 254f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 71248u, u_input.b)), ~vec3<u32>(u_input.b, 37483u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), func_1(), Struct_2(func_2().b, select(false, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], -1533f, -1016f, 1000f), vec4<f32>(var_0.x, -345f, 1485f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, var_0.x, 1356f, 983f) - vec4<f32>(-1618f, -988f, -233f, global1[_wgslsmith_index_u32(u_input.b, 9u)]))))), true || (_wgslsmith_clamp_u32(~20149u, ~48400u, u_input.b) == _wgslsmith_dot_vec3_u32(vec3<u32>(9678u, 115078u, u_input.b), ~vec3<u32>(0u, u_input.b, u_input.b)))));
    let var_2 = func_2();
    let var_3 = Struct_2(func_2().a.a, -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, u_input.c)), ~vec2<i32>(0i, 1i)) < min(1i, _wgslsmith_sub_i32(u_input.a, -13869i)));
    global0 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 9u)] * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(2072f)), var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(var_0.x - -698f)) * 193f), 1f), reverseBits(abs(vec2<u32>(var_2.c.x, var_3.a.a.x) << (var_3.a.a % vec2<u32>(32u)))), global1[_wgslsmith_index_u32(~(~var_3.a.a.x), 9u)], vec4<i32>(func_4(func_2(), var_2, _wgslsmith_mult_u32(~u_input.b, var_3.a.a.x), !(!var_3.b)).x, -firstLeadingBit(-18616i | u_input.a), 1i | (-2147483647i >> (min(var_3.a.a.x, var_2.c.x) % 32u)), -34714i));
}

