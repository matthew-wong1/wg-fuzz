struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<bool, 19>;

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(439f))), arg_0.c.x, _wgslsmith_f_op_f32(-1f), arg_0.c.x), arg_0.d));
    global0 = array<Struct_2, 18>();
    global1 = array<bool, 19>();
    let var_1 = u_input.b;
    return (33798u << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 49945u), vec2<u32>(1u, 1u)), firstTrailingBit(34314u)) % 32u)) != ~(~90262u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f)), arg_2.b.d.x);
    global1 = array<bool, 19>();
    let var_1 = vec4<i32>(-1i, -_wgslsmith_mod_i32(abs(arg_2.a), arg_0), 2147483647i, arg_0) | -(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, 42689i, arg_2.a, arg_0)), abs(vec4<i32>(2147483647i, -47811i, arg_0, -1i))) ^ vec4<i32>(-u_input.b.x, arg_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.b.x, arg_2.a), vec3<i32>(47369i, -41249i, -9493i)), ~arg_2.a));
    let var_2 = true;
    global0 = array<Struct_2, 18>();
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    global2 = array<Struct_3, 13>();
    let var_0 = abs(abs(u_input.b.x));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 54090i, 29147i, u_input.b.x), vec4<i32>(2147483647i, -2147483647i, var_0, -1i)), abs(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 2147483647i)), all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], false, true))) | _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_0, var_0, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, 44442i, var_0, var_0), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], arg_0.b, global1[_wgslsmith_index_u32(1u, 19u)], false)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0, var_0, -27652i), vec4<i32>(1i, -2147483647i, var_0, -23619i))), -vec4<i32>(_wgslsmith_clamp_i32(var_0, var_0, 7378i), countOneBits(-13573i), u_input.a >> (9754u % 32u), u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_0.d.ywz, arg_0.c)), global1[_wgslsmith_index_u32(max(arg_1.x, _wgslsmith_dot_vec3_u32(select(arg_1, vec3<u32>(6224u, arg_1.x, 0u), vec3<bool>(arg_0.b, global1[_wgslsmith_index_u32(34208u, 19u)], true)), reverseBits(vec3<u32>(59582u, arg_1.x, 21043u)))), 19u)], vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), 1778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(841f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.d.x, 1146f, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.x, -1520f, arg_0.a.x, arg_0.c.x))))));
    global0 = array<Struct_2, 18>();
    return !all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(19120u, 19u)]), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 19u)])), !all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], arg_0.b))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    global0 = array<Struct_2, 18>();
    global2 = array<Struct_3, 13>();
    let var_0 = Struct_3(4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1)) - arg_1), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -890f, arg_1.x)))), func_3(-2147483647i, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(16171u, 19u)])), global0[_wgslsmith_index_u32(~17825u, 18u)]), arg_1, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-283f * arg_1.x), -1000f, _wgslsmith_div_f32(753f, -1285f))), vec3<u32>(14684u, ~var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, arg_3.a), reverseBits(vec2<u32>(var_0.a, arg_3.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -202f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -566f, -580f))) * _wgslsmith_f_op_vec3_f32(-arg_1))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -915f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, arg_1.x), arg_1.x)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1220f - arg_1.x) - -1641f)), _wgslsmith_f_op_f32(select(arg_2, arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_3.a, var_0.a, var_0.a), 19u)]))));
    let var_2 = vec3<bool>(func_4(Struct_1(var_1.c, false, vec3<f32>(-169f, arg_2, _wgslsmith_f_op_f32(383f - -471f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1000f, arg_1.x, -410f) * vec4<f32>(-176f, 1397f, -178f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(183f, -660f, 397f, arg_2) - var_1.d), vec4<bool>(true, var_1.b, var_1.b, false)))), abs(~vec3<u32>(1u, 25038u, 23851u))), false, var_0.a == _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a, arg_3.a, var_0.a)), vec3<u32>(min(4294967295u, arg_3.a), 4294967295u, var_0.a >> (var_0.a % 32u))));
    return vec4<bool>(!(arg_0 >= -14683i), true, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!any(vec4<bool>(false, global1[_wgslsmith_index_u32(26890u, 19u)], global1[_wgslsmith_index_u32(17398u, 19u)], true)), global1[_wgslsmith_index_u32(43774u, 19u)], global1[_wgslsmith_index_u32(~(~(~0u)), 19u)], all(vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 19u)], false, all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(33953u, 19u)])), func_1(Struct_1(vec3<f32>(1000f, -1006f, 1000f), global1[_wgslsmith_index_u32(32710u, 19u)], vec3<f32>(-440f, 967f, 1729f), vec4<f32>(-932f, -1505f, 321f, -554f)))))), !select(select(!vec4<bool>(global1[_wgslsmith_index_u32(18318u, 19u)], global1[_wgslsmith_index_u32(8593u, 19u)], global1[_wgslsmith_index_u32(44037u, 19u)], false), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(53876u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(70581u, 19u)], false, global1[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(8374u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], false, true)), func_2(0i, vec3<f32>(-1484f, 2694f, -803f), -352f, Struct_3(0u))), vec4<bool>(true, true, true, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]))), vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(~14287u, 19u)], false, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, false)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(select(vec3<u32>(16255u, 0u, 29845u), vec3<u32>(1u, 28751u, 4294967295u), global1[_wgslsmith_index_u32(1u, 19u)]))), min(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, 70909u, 4294967295u)), select(vec3<u32>(38199u, 1u, 0u), vec3<u32>(0u, 29616u, 61634u), true)), ~(~vec3<u32>(1u, 4294967295u, 1u)))), 19u)]);
    let var_1 = vec3<i32>(u_input.b.x, u_input.a, -26100i);
    var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(~0u, 19u)], !all(!vec4<bool>(true, global1[_wgslsmith_index_u32(135090u, 19u)], true, global1[_wgslsmith_index_u32(16862u, 19u)])), all(!var_0.xwz), (u_input.a > ~var_1.x) || (82298u >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41388u, 0u, 15539u), vec4<u32>(133022u, 0u, 49018u, 32977u)))), !vec4<bool>(true, global1[_wgslsmith_index_u32(min(4294967295u, ~6489u), 19u)], !global1[_wgslsmith_index_u32(1u, 19u)], min(-2147483647i, 59062i) <= ~u_input.a), true);
    var_0 = !func_2(~(-(0i << (0u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1897f + -1000f), 1331f), _wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1938f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-311f - -1524f) - _wgslsmith_f_op_f32(floor(502f)))), Struct_3(56555u));
    var_0 = func_2(select(countOneBits(-12083i), i32(-1i) * -var_1.x, all(!select(var_0.xz, var_0.yz, vec2<bool>(global1[_wgslsmith_index_u32(53310u, 19u)], true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, 248f, 1705f) + vec3<f32>(-1850f, -1653f, -604f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-245f, -731f, 625f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2469f))), -1659f)), Struct_3(_wgslsmith_add_u32(~90970u, select(~1u, 9108u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(5001u, 1u), 19u)]))));
    global1 = array<bool, 19>();
    var var_2 = ~_wgslsmith_sub_u32(4667u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(-var_1.zx, abs(var_1.yz))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1253f * -309f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f * -791f))))), select(u_input.a, u_input.b.x, any(select(var_0.xw, var_0.xz, true))), firstTrailingBit(8959u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-155f)))));
}

