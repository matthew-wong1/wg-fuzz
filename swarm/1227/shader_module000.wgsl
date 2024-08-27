struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(1000f, -926f, 441f), vec3<f32>(1043f, -406f, -1000f), vec3<f32>(-1000f, 1555f, -573f), vec3<f32>(380f, -593f, 545f), vec3<f32>(1000f, 631f, 1049f), vec3<f32>(707f, -434f, -2034f), vec3<f32>(-215f, 1306f, -675f), vec3<f32>(770f, 330f, 234f), vec3<f32>(1000f, -1501f, -634f), vec3<f32>(1584f, -847f, -899f), vec3<f32>(1554f, -388f, -417f), vec3<f32>(-1737f, -103f, 183f), vec3<f32>(-1000f, -776f, -264f), vec3<f32>(1078f, -510f, 1259f), vec3<f32>(630f, 230f, 123f), vec3<f32>(983f, -1534f, 608f), vec3<f32>(649f, -164f, -1052f), vec3<f32>(-620f, 1118f, 370f), vec3<f32>(-750f, 331f, -674f), vec3<f32>(634f, 334f, 1463f), vec3<f32>(-1000f, 862f, -1000f));

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(0u, 17366u, 4294967295u), vec3<u32>(95032u, 0u, 0u), vec3<u32>(20558u, 4294967295u, 68066u), vec3<u32>(1u, 32582u, 0u), vec3<u32>(1u, 44576u, 1u), vec3<u32>(1u, 11534u, 0u), vec3<u32>(76633u, 1u, 1u), vec3<u32>(17907u, 13709u, 1u), vec3<u32>(0u, 45800u, 19068u), vec3<u32>(17868u, 4294967295u, 0u), vec3<u32>(6993u, 127953u, 119244u), vec3<u32>(0u, 13245u, 0u), vec3<u32>(4294967295u, 4294967295u, 32993u), vec3<u32>(4294967295u, 39495u, 107717u), vec3<u32>(4294967295u, 4294967295u, 18054u), vec3<u32>(0u, 38005u, 14887u), vec3<u32>(605u, 4294967295u, 4294967295u), vec3<u32>(0u, 17561u, 95574u), vec3<u32>(0u, 51887u, 2708u), vec3<u32>(1u, 4294967295u, 5950u), vec3<u32>(67971u, 1u, 38887u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 35940u, 0u), vec3<u32>(22308u, 4294967295u, 1u), vec3<u32>(110912u, 0u, 12161u), vec3<u32>(1u, 0u, 79062u), vec3<u32>(1u, 1u, 52839u), vec3<u32>(33201u, 1u, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1404f)))), 1069f, true)));
    global0 = array<Struct_2, 22>();
    global4 = array<vec3<u32>, 28>();
    let var_1 = countOneBits(u_input.e);
    return 1i;
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(min(reverseBits(vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.e)), abs(vec4<u32>(52715u, u_input.a.x, 0u, 54519u))), _wgslsmith_add_vec4_u32(vec4<u32>(24710u, u_input.e, 68127u, 52251u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, 49545u, 4294967295u), vec4<u32>(18147u, u_input.a.x, 47040u, 23258u))))), ~(~reverseBits(vec4<u32>(79310u, u_input.c.x, u_input.a.x, u_input.a.x))) & ~firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.e, 10099u))), 22u)];
    let var_1 = global0[_wgslsmith_index_u32(~u_input.c.x, 22u)];
    return 5858u;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> u32 {
    global0 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-563f, arg_2)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, arg_2, arg_2, 251f))))), ~1i);
    let var_2 = func_3();
    global2 = array<vec3<f32>, 21>();
    return ~abs(abs(min(26466u, var_2)) & abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3.a, vec3<f32>(813f, _wgslsmith_f_op_f32(global3.a * global3.a), -942f));
    var var_1 = vec4<bool>(-(-16661i >> (~u_input.c.x % 32u)) > _wgslsmith_mult_i32(func_1(-1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 54132i, u_input.d, u_input.b.x), vec4<i32>(u_input.d, -20892i, 22295i, 0i)), -1i), any(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), true)), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d, u_input.d, u_input.d, -58680i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(func_2(vec2<i32>(-33689i, u_input.d), u_input.b.x, 584f), 21u)]))), u_input.e, 24246u);
}

