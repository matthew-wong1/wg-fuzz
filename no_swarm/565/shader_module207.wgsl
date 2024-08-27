struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-500f, 17764u, 17060i, 15240u, vec4<u32>(1u, 4294967295u, 1u, 48347u)), Struct_1(-256f, 1u, 4355i, 24538u, vec4<u32>(0u, 1u, 1u, 4294967295u)), Struct_1(-1423f, 20281u, -39610i, 40287u, vec4<u32>(8994u, 36887u, 0u, 0u)), Struct_1(657f, 0u, 77626i, 87225u, vec4<u32>(0u, 1u, 13323u, 4294967295u)), Struct_1(-141f, 0u, 11865i, 4615u, vec4<u32>(4294967295u, 24550u, 0u, 35470u)), Struct_1(-359f, 50213u, -16523i, 1u, vec4<u32>(32708u, 1882u, 1u, 28929u)), Struct_1(831f, 27559u, 61820i, 4937u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(2284f, 34230u, -1i, 0u, vec4<u32>(4294967295u, 47961u, 1u, 21943u)), Struct_1(1337f, 83069u, -11653i, 1u, vec4<u32>(0u, 0u, 64419u, 0u)), Struct_1(-910f, 30172u, -1i, 29666u, vec4<u32>(1u, 98081u, 1u, 54663u)), Struct_1(-459f, 1u, i32(-2147483648), 4294967295u, vec4<u32>(0u, 4294967295u, 24347u, 1u)), Struct_1(1858f, 26903u, -36976i, 4294967295u, vec4<u32>(4294967295u, 40246u, 0u, 83907u)), Struct_1(492f, 1u, -45435i, 15687u, vec4<u32>(48019u, 21877u, 1u, 1u)), Struct_1(-1025f, 1u, 1i, 0u, vec4<u32>(4294967295u, 4294967295u, 64248u, 4294967295u)), Struct_1(-197f, 4641u, 13918i, 30202u, vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(1317f, 1u, 0i, 23681u, vec4<u32>(1284u, 42502u, 39217u, 7749u)), Struct_1(-1435f, 8713u, 1i, 0u, vec4<u32>(1u, 55012u, 4294967295u, 4294967295u)), Struct_1(-1474f, 10040u, 0i, 111651u, vec4<u32>(6733u, 26514u, 40429u, 1u)), Struct_1(317f, 7559u, 0i, 0u, vec4<u32>(0u, 56718u, 95267u, 4294967295u)), Struct_1(1675f, 20276u, 0i, 0u, vec4<u32>(1278u, 34573u, 1u, 1u)), Struct_1(1033f, 4294967295u, 9630i, 18714u, vec4<u32>(63068u, 10270u, 1u, 4001u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 18>();
    return _wgslsmith_mod_u32(~1u, global1.x);
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) - 793f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(434f - -361f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-174f))) * -128f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-708f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(512f + 1191f)), any(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(190f, _wgslsmith_f_op_f32(min(1243f, 459f))))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(197f)), -170f)))));
    var var_2 = global1.x;
    var var_3 = Struct_2(select(_wgslsmith_dot_vec2_i32(u_input.c.xw, ~u_input.c.xw) > u_input.a, -1079f != _wgslsmith_f_op_f32(-1883f - _wgslsmith_f_op_f32(var_0.x - var_0.x)), true), vec4<u32>(abs(_wgslsmith_div_u32(firstLeadingBit(global1.x), _wgslsmith_clamp_u32(global1.x, global1.x, 4294967295u))), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, global1.x), max(global1.x, global1.x)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(30495u, global1.x), u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(abs(global1.x | global1.x), global1.x | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(u_input.b.x, 21049u), 26569u, u_input.b.x, 0u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, 0u, global1.x, global1.x), abs(vec4<u32>(41019u, global1.x, global1.x, u_input.b.x)), firstTrailingBit(vec4<u32>(global1.x, global1.x, 4294967295u, 1u)))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), 43427u, 8857i, ~_wgslsmith_mod_u32(global1.x, u_input.b.x), vec4<u32>(firstTrailingBit(12981u), u_input.b.x, global1.x ^ ~79767u, 0u)));
    global1 = u_input.b;
    return select(false, var_3.a, any(select(vec4<bool>(any(vec3<bool>(var_3.a, false, false)), all(vec4<bool>(true, var_3.a, var_3.a, var_3.a)), !var_3.a, !var_3.a), select(vec4<bool>(var_3.a, var_3.a, false, true), vec4<bool>(true, true, true, true), true), (u_input.c.x != 2147483647i) & false)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_3(138105u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(664f)), -1002f, -1259f, _wgslsmith_f_op_f32(min(674f, -1442f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, 855f, 316f, 355f))) - vec4<f32>(-235f, _wgslsmith_f_op_f32(f32(-1f) * -1582f), 2089f, 272f)));
    var_0 = Struct_3(0u);
    global1 = ~_wgslsmith_sub_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.x, 28929u, 28237u), u_input.b));
    let var_2 = u_input.c;
    return !all(vec4<bool>(true, arg_0.x, false, 438f < var_1.x)) && func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    global1 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(66436u, reverseBits(16484u), _wgslsmith_sub_u32(~u_input.b.x, global1.x)), u_input.b), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(~36901u, func_1(Struct_2(false, vec4<u32>(u_input.b.x, 1u, 14916u, global1.x), vec4<u32>(0u, 37030u, u_input.b.x, 4294967295u), global0[_wgslsmith_index_u32(54273u, 18u)]), global2[_wgslsmith_index_u32(31357u, 21u)]), _wgslsmith_add_u32(16898u, global1.x)) ^ vec3<u32>(global1.x, u_input.b.x >> (global1.x % 32u), max(global1.x, u_input.b.x))), select(vec3<bool>(false, _wgslsmith_div_i32(u_input.c.x, 1377i) <= 15435i, all(vec4<bool>(true, true, true, true))), vec3<bool>(!any(vec3<bool>(false, false, true)), false, true), !vec3<bool>(true, func_2(vec3<bool>(true, false, true), vec2<u32>(global1.x, 54540u)), true)));
    var var_0 = 4294967295u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 306f))))) + -1851f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1286f + 799f), _wgslsmith_f_op_f32(953f + -420f), true)) - _wgslsmith_f_op_f32(trunc(-1000f))))));
    global2 = array<Struct_1, 21>();
    var_0 = 42140u;
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(~1i)) >> (~global1.x % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -614f) - _wgslsmith_f_op_f32(829f - -2473f)), _wgslsmith_f_op_f32(var_1.x - var_1.x), false)))));
}

