struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(false, Struct_1(vec2<i32>(12447i, 4688i), 22208i, -43802i, vec3<f32>(-815f, -906f, -1471f)), -695f), Struct_4(true, Struct_1(vec2<i32>(-33854i, 2147483647i), -8784i, i32(-2147483648), vec3<f32>(469f, 172f, 1268f)), -1574f), Struct_4(false, Struct_1(vec2<i32>(2147483647i, -23797i), 2147483647i, -13891i, vec3<f32>(-980f, -1272f, 409f)), 2107f), Struct_4(false, Struct_1(vec2<i32>(i32(-2147483648), 34552i), 77067i, i32(-2147483648), vec3<f32>(-268f, -1009f, -1774f)), -250f), Struct_4(true, Struct_1(vec2<i32>(-19364i, -6220i), 11341i, -1i, vec3<f32>(1135f, -369f, -642f)), -533f), Struct_4(true, Struct_1(vec2<i32>(19595i, 1i), 2147483647i, 46238i, vec3<f32>(-1101f, -389f, -1524f)), 1262f), Struct_4(true, Struct_1(vec2<i32>(1i, 7684i), -22445i, 0i, vec3<f32>(-104f, 897f, 1000f)), -1424f));

var<private> global1: array<f32, 29> = array<f32, 29>(-117f, -131f, 470f, -2366f, 668f, 1000f, -541f, -496f, 1184f, 1352f, 515f, -177f, -639f, 751f, -264f, -1052f, -636f, 1495f, -1000f, -560f, -803f, 405f, -1000f, -1000f, 1000f, -286f, 215f, 393f, 2401f);

var<private> global2: array<i32, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(43512u, 29u)], arg_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global1[_wgslsmith_index_u32(28903u, 29u)])))))))), _wgslsmith_f_op_vec2_f32(arg_0 - arg_0), false));
    let var_1 = Struct_4(!select(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))), select(true, false, true) && true, true), Struct_1(-max(select(vec2<i32>(-1547i, global2[_wgslsmith_index_u32(1u, 32u)]), vec2<i32>(u_input.a, -19505i), vec2<bool>(false, true)), -vec2<i32>(15026i, 661i)), ~u_input.a, -2147483647i, vec3<f32>(868f, _wgslsmith_f_op_f32(1169f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)])), arg_0.x)), _wgslsmith_f_op_f32(floor(1420f)));
    global1 = array<f32, 29>();
    let var_2 = !select(!(!select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true), vec2<bool>(false, false))), !(!vec2<bool>(var_1.a, false)), false);
    global2 = array<i32, 32>();
    return _wgslsmith_f_op_f32(ceil(1617f));
}

fn func_2() -> Struct_3 {
    global1 = array<f32, 29>();
    global2 = array<i32, 32>();
    let var_0 = Struct_2(!(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 22876u), vec2<u32>(0u, 0u))), 29u)] != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(global1[_wgslsmith_index_u32(101664u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]))))), Struct_1(min(vec2<i32>(-90295i, -12254i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(21987u, 32u)])) & vec2<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(13126u, 32u)], global2[_wgslsmith_index_u32(12584u, 32u)]), u_input.a), min(-(~global2[_wgslsmith_index_u32(3986u, 32u)]), _wgslsmith_clamp_i32(_wgslsmith_add_i32(40672i, u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(35202u, 32u)], 41067i, 41738i), vec3<i32>(u_input.a, 0i, -1i)))), ~select(u_input.a, global2[_wgslsmith_index_u32(83359u, 32u)], true) << (~4294967295u % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-403f, 1454f, global1[_wgslsmith_index_u32(0u, 29u)])))))));
    var var_1 = Struct_3(var_0, ~vec2<u32>(firstTrailingBit(0u), _wgslsmith_mod_u32(max(1u, 7588u), _wgslsmith_mod_u32(49650u, 7068u))));
    var var_2 = Struct_1(var_1.a.b.a, _wgslsmith_dot_vec2_i32(var_1.a.b.a, ~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(7315i, var_1.a.b.a.x)))), _wgslsmith_sub_i32(~(global2[_wgslsmith_index_u32(1u, 32u)] >> (_wgslsmith_mod_u32(var_1.b.x, 4294967295u) % 32u)), var_1.a.b.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.b.d)))));
    return Struct_3(var_0, _wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(1u, var_1.b.x) ^ _wgslsmith_div_vec2_u32(vec2<u32>(43567u, 34112u), vec2<u32>(101990u, 10377u))), var_1.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = func_2().a.b.a.x;
    let var_1 = 4294967295u;
    global0 = array<Struct_4, 7>();
    global2 = array<i32, 32>();
    global1 = array<f32, 29>();
    return 0u;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 32u)] & ~(-1i);
    var var_1 = true;
    global1 = array<f32, 29>();
    global2 = array<i32, 32>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)])))))) + -246f);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(func_4(func_2(), func_2().a, abs(32640u), max(u_input.a, -2147483647i)), 1u, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(44084u, 59248u, 15161u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(3029u, 1u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 16538u, 4294967295u, 62548u), vec4<u32>(13099u, 4294967295u, 0u, 49391u), vec4<bool>(false, false, false, false)), ~vec4<u32>(0u, 25709u, 0u, 0u))), vec4<u32>(~38829u, ~23778u, func_1(false), ~4563u) & ~vec4<u32>(2094u, 27131u, 0u, 4294967295u));
    global1 = array<f32, 29>();
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, firstLeadingBit(4294967295u), reverseBits(0u), var_0.x) ^ ~(~countOneBits(var_0)), var_0);
    let var_2 = global0[_wgslsmith_index_u32(func_2().b.x & reverseBits(var_1.x), 7u)];
    let var_3 = -reverseBits(0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, 0i, reverseBits((0i | u_input.a) | 0i), func_2().a.b.d.yz);
}

