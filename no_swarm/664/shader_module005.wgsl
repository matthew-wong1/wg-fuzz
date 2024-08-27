struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<f32>(-1063f, 1506f, 1048f), 237f, Struct_1(0u, 4294967295u, -1475f, vec2<u32>(66316u, 0u))), Struct_2(vec3<f32>(963f, -513f, -511f), 1076f, Struct_1(0u, 10233u, 1447f, vec2<u32>(1u, 1u))), Struct_2(vec3<f32>(-614f, 1484f, -863f), 523f, Struct_1(20505u, 1u, 1000f, vec2<u32>(21151u, 36217u))), Struct_2(vec3<f32>(-1577f, 234f, -500f), -1000f, Struct_1(21800u, 1u, 542f, vec2<u32>(1u, 4294967295u))), Struct_2(vec3<f32>(1654f, 894f, -1029f), -932f, Struct_1(64769u, 0u, 488f, vec2<u32>(0u, 66401u))), Struct_2(vec3<f32>(1314f, -1490f, 642f), -549f, Struct_1(15132u, 4294967295u, -223f, vec2<u32>(4294967295u, 146080u))), Struct_2(vec3<f32>(851f, -861f, 1106f), 994f, Struct_1(0u, 4294967295u, -329f, vec2<u32>(1u, 44138u))), Struct_2(vec3<f32>(278f, 1546f, 1426f), 120f, Struct_1(60207u, 50027u, 629f, vec2<u32>(49088u, 34627u))), Struct_2(vec3<f32>(1873f, 970f, 450f), -1678f, Struct_1(1u, 113704u, -173f, vec2<u32>(21266u, 55768u))), Struct_2(vec3<f32>(-1939f, 767f, -126f), -1185f, Struct_1(0u, 3426u, 164f, vec2<u32>(25941u, 0u))), Struct_2(vec3<f32>(-1000f, -234f, -1651f), 792f, Struct_1(48684u, 4294967295u, 763f, vec2<u32>(0u, 1u))), Struct_2(vec3<f32>(237f, 870f, -798f), 116f, Struct_1(1u, 15u, 524f, vec2<u32>(60977u, 39190u))), Struct_2(vec3<f32>(235f, -199f, -490f), 1000f, Struct_1(50358u, 1u, -292f, vec2<u32>(4294967295u, 13961u))), Struct_2(vec3<f32>(-1575f, 1414f, 669f), -1000f, Struct_1(4294967295u, 16640u, -1679f, vec2<u32>(0u, 1u))), Struct_2(vec3<f32>(-144f, -679f, 1000f), 747f, Struct_1(0u, 17938u, 2577f, vec2<u32>(0u, 1u))), Struct_2(vec3<f32>(-584f, -1232f, 378f), 119f, Struct_1(20750u, 59253u, 1411f, vec2<u32>(98654u, 0u))), Struct_2(vec3<f32>(-1591f, 2065f, -640f), -362f, Struct_1(4294967295u, 1u, -330f, vec2<u32>(1u, 15867u))), Struct_2(vec3<f32>(-366f, 162f, -391f), 1435f, Struct_1(0u, 0u, -1095f, vec2<u32>(0u, 29498u))), Struct_2(vec3<f32>(395f, -648f, -1442f), 393f, Struct_1(4294967295u, 32628u, -658f, vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec3<f32>(709f, -718f, -1846f), 645f, Struct_1(22893u, 16288u, 520f, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<f32>(-1000f, -1000f, 1041f), -510f, Struct_1(1u, 1u, -1211f, vec2<u32>(1u, 42106u))), Struct_2(vec3<f32>(683f, -436f, 394f), 650f, Struct_1(4294967295u, 59898u, 714f, vec2<u32>(1u, 1u))), Struct_2(vec3<f32>(-1299f, -497f, 316f), -1525f, Struct_1(1u, 1u, 377f, vec2<u32>(0u, 4294967295u))));

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<i32, 18>;

var<private> global4: Struct_3 = Struct_3(vec4<bool>(true, false, false, true), Struct_1(1u, 123694u, 409f, vec2<u32>(4294967295u, 29627u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = 283f;
    var var_1 = Struct_3(!select(!select(vec4<bool>(false, false, true, true), global4.a, global2.x), select(vec4<bool>(true, true, false, global4.a.x), global4.a, all(vec4<bool>(global4.a.x, true, global4.a.x, false))), !all(global4.a)), global4.b);
    var var_2 = var_1.b.d;
    global1 = array<Struct_2, 23>();
    var_2 = u_input.a;
    return false;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global3 = array<i32, 18>();
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~firstLeadingBit(global4.b.d.x) ^ firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, arg_0.x)), 4705u, u_input.a.x), 36923u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.b.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f + 1232f))), -719f, any(vec3<bool>(true, false & global4.a.x, global2.x)))), global4.b.d);
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(countOneBits(4294967295u), select(11711u, var_0.d.x, global4.a.x)) ^ arg_0.x, 18u)] | -2147483647i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.c - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-526f + global4.b.c))))), 775f);
    let var_3 = global4.b;
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = arg_1.yz;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global4.b.a >> (arg_0.c.a % 32u), 4294967295u), arg_2), ~vec2<u32>(~0u, arg_2.x)), ~func_3(arg_2), _wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, global4.b.d.x), ~min(vec2<u32>(7661u, arg_0.c.a), max(vec2<u32>(19235u, global4.b.d.x), vec2<u32>(1u, 19111u)))));
    let var_2 = Struct_1(u_input.a.x, global4.b.b, 311f, firstTrailingBit(_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_1.d, vec2<u32>(41213u, 1u), global4.b.d), vec2<u32>(~69075u, ~var_1.d.x), _wgslsmith_sub_vec2_u32(select(vec2<u32>(global4.b.d.x, arg_0.c.d.x), global4.b.d, false), vec2<u32>(54679u, var_1.d.x)))));
    global3 = array<i32, 18>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c, var_1.c, var_2.c, 573f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, -1016f, 2261f, global0[_wgslsmith_index_u32(86313u, 12u)]))))), vec4<f32>(arg_0.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b.c * -136f), 313f), var_2.c, var_2.c), select(select(!vec4<bool>(true, arg_1.x, true, arg_1.x), global4.a, !global4.a), !vec4<bool>(global2.x, false, global2.x, false), select(vec4<bool>(true, false, false, global2.x), vec4<bool>(var_0.x, global2.x, false, false), global4.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_2.c, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], var_2.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_2.c, var_2.c, var_1.c), vec4<f32>(-974f, global4.b.c, -415f, var_2.c), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2000f, 1745f, global4.b.c, -1105f), vec4<f32>(var_1.c, global0[_wgslsmith_index_u32(var_1.b, 12u)], 1000f, 1043f)))))))));
    return ~firstLeadingBit(~select(vec2<u32>(57023u, 0u) >> (vec2<u32>(arg_0.c.a, 0u) % vec2<u32>(32u)), vec2<u32>(global4.b.d.x, 0u), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    let var_0 = Struct_1(~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(max(1u, global4.b.a), 76533u)), 0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-404f * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 12u)]))) + 759f))), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], !vec3<bool>(1i < global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, func_1(65313u)), ~global4.b.d));
    var var_1 = ~countOneBits(vec3<i32>(i32(-1i) * -2147483647i, global3[_wgslsmith_index_u32(44039u, 18u)] >> (var_0.b % 32u), -(~53033i)));
    global2 = vec3<bool>(global4.a.x, global2.x, true);
    var var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(~vec3<u32>(var_0.b, 2056u, u_input.a.x)), abs(select(vec3<u32>(4294967295u, 4294967295u, 124702u), vec3<u32>(global4.b.d.x, 12841u, 66426u), vec3<bool>(false, global2.x, global2.x)))), reverseBits((vec3<u32>(0u, var_0.a, u_input.a.x) ^ vec3<u32>(u_input.a.x, 1u, 7645u)) & vec3<u32>(1u, 8452u, 35450u)), abs(max(vec3<u32>(1871u, 1u, 21470u), vec3<u32>(var_0.d.x, 36593u, 1u))) | vec3<u32>(max(global4.b.a, global4.b.b), global4.b.a, 0u)) >> (~vec3<u32>(~(var_0.b << (u_input.a.x % 32u)), func_3(u_input.a >> (u_input.a % vec2<u32>(32u))), ~7230u) % vec3<u32>(32u));
    global2 = vec3<bool>(true, true, true & ((func_3(global4.b.d) | 49914u) <= 4294967295u));
    var var_3 = 0i;
    global3 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~reverseBits(vec4<u32>(global4.b.b, 29207u, 83068u, 21491u))), -1i >> (global4.b.d.x % 32u), global3[_wgslsmith_index_u32(firstLeadingBit(28077u), 18u)]);
}

