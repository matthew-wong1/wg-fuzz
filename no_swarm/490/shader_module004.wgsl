struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(-22554i, vec4<u32>(45853u, 18802u, 41367u, 1u)), -210f), Struct_3(Struct_1(2147483647i, vec4<u32>(1u, 47195u, 47602u, 4294967295u)), 749f), Struct_3(Struct_1(18450i, vec4<u32>(24178u, 50273u, 50939u, 64777u)), -468f), Struct_3(Struct_1(2147483647i, vec4<u32>(4294967295u, 4294967295u, 79575u, 1u)), -765f), Struct_3(Struct_1(0i, vec4<u32>(96958u, 3622u, 9398u, 15866u)), 751f), Struct_3(Struct_1(0i, vec4<u32>(4294967295u, 85912u, 33332u, 3891u)), 579f), Struct_3(Struct_1(0i, vec4<u32>(89u, 0u, 40734u, 17620u)), 1245f), Struct_3(Struct_1(-4998i, vec4<u32>(5400u, 39242u, 0u, 4294967295u)), 2754f), Struct_3(Struct_1(1i, vec4<u32>(62361u, 22370u, 0u, 25145u)), 2451f), Struct_3(Struct_1(2147483647i, vec4<u32>(0u, 42300u, 4294967295u, 1576u)), 599f), Struct_3(Struct_1(0i, vec4<u32>(33906u, 19136u, 0u, 103769u)), 156f), Struct_3(Struct_1(-18758i, vec4<u32>(46325u, 69725u, 0u, 97792u)), -571f), Struct_3(Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 65691u, 29112u, 0u)), 538f), Struct_3(Struct_1(-39296i, vec4<u32>(41536u, 4294967295u, 4294967295u, 41341u)), 252f), Struct_3(Struct_1(23589i, vec4<u32>(1u, 0u, 32895u, 0u)), -1000f), Struct_3(Struct_1(-16120i, vec4<u32>(2093u, 1u, 36290u, 0u)), 2369f), Struct_3(Struct_1(2147483647i, vec4<u32>(1u, 4294967295u, 23784u, 0u)), 1000f), Struct_3(Struct_1(-74023i, vec4<u32>(4294967295u, 51636u, 91118u, 1u)), -790f), Struct_3(Struct_1(0i, vec4<u32>(1u, 4294967295u, 41796u, 65383u)), -1224f), Struct_3(Struct_1(-44967i, vec4<u32>(1u, 0u, 1u, 30033u)), 657f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<f32> {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(613f - global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 255f) + vec2<f32>(_wgslsmith_f_op_f32(step(-1229f, 341f)), -1435f))));
    let var_0 = ~(~4294967295u);
    let var_1 = ~vec3<u32>(0u, var_0, ~firstTrailingBit(reverseBits(var_0)));
    let var_2 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(min(42088u, var_1.x) < ~53647u, any(vec4<bool>(true, true, true, false)), true), vec3<bool>(select(u_input.a, -18633i, false) <= _wgslsmith_mult_i32(1i, u_input.a), false, true), false), false);
    var var_3 = var_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_3, 20>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 417f) * vec2<f32>(global0.x, -1767f)) * vec2<f32>(global0.x, -483f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1793f, -1277f), _wgslsmith_f_op_vec2_f32(func_3()))));
    global1 = array<Struct_3, 20>();
    var var_0 = Struct_1(-reverseBits(-57680i), ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 22332u), vec2<u32>(0u, 1u)), 1u, _wgslsmith_mod_u32(12974u, 1u), abs(56110u))));
    let var_1 = -1062f;
    return Struct_1(firstLeadingBit(max(24198i ^ reverseBits(u_input.a), ~countOneBits(1i))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(var_0.b << (var_0.b % vec4<u32>(32u))), var_0.b), ~(~var_0.b) | var_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = (vec4<i32>(~arg_2.x, -4720i, 1i, 1i) ^ ~(~vec4<i32>(0i, 0i, u_input.a, -2147483647i))) << (vec4<u32>(arg_0.b.x, 72655u, _wgslsmith_mod_u32(abs(14173u), countOneBits(68890u)), 1u) % vec4<u32>(32u));
    var var_1 = Struct_1(arg_0.a, arg_0.b);
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.x)), global0.x)));
    return 0u;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(~func_4(func_2(), vec2<bool>(all(vec2<bool>(true, false)), true), _wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 2147483647i)), ~vec2<i32>(-44553i, 0i)))), 20u)];
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(round(arg_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 748f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, var_0.b) - vec2<f32>(var_0.b, -1782f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-132f, var_0.b)))) - vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(-132f))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a.b.x, var_0.a.b.x), 20u)];
    var var_2 = Struct_3(func_2(), -1028f);
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -822f));
    return StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, 18637i, var_1.a.a, -2147483647i), vec4<i32>(-13121i, 9892i, u_input.a, -1i)), func_2().a, u_input.a, func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 20>();
    let var_0 = u_input.a;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -451f))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, 407f), global0.x)))));
}

