struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(665f), Struct_1(855f), Struct_1(525f), Struct_1(758f), Struct_1(-1000f), Struct_1(-329f), Struct_1(323f), Struct_1(-2278f), Struct_1(-1000f), Struct_1(1595f), Struct_1(-1000f), Struct_1(-286f), Struct_1(698f), Struct_1(234f), Struct_1(-319f), Struct_1(1015f), Struct_1(525f), Struct_1(507f), Struct_1(-681f), Struct_1(1263f), Struct_1(-1147f), Struct_1(1317f), Struct_1(-250f), Struct_1(1000f), Struct_1(380f), Struct_1(173f), Struct_1(-158f), Struct_1(917f));

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false, vec4<bool>(false, false, false, true), -1030f), Struct_2(true, vec4<bool>(true, true, true, true), 754f), Struct_2(true, vec4<bool>(true, true, false, false), 340f), Struct_2(false, vec4<bool>(false, true, false, false), -998f), Struct_2(true, vec4<bool>(true, true, true, false), -151f), Struct_2(false, vec4<bool>(false, false, true, true), -336f), Struct_2(false, vec4<bool>(true, false, false, true), 785f), Struct_2(false, vec4<bool>(false, true, false, false), -259f), Struct_2(true, vec4<bool>(true, true, true, false), -1128f), Struct_2(false, vec4<bool>(false, false, false, true), 1000f), Struct_2(false, vec4<bool>(false, false, false, true), -455f), Struct_2(false, vec4<bool>(false, true, true, true), 1087f), Struct_2(true, vec4<bool>(false, false, false, false), -579f), Struct_2(true, vec4<bool>(false, true, false, false), -1465f), Struct_2(false, vec4<bool>(false, false, true, false), -1000f), Struct_2(false, vec4<bool>(false, true, false, false), -335f), Struct_2(false, vec4<bool>(true, true, true, true), -367f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<Struct_1, 28>();
    global2 = array<Struct_1, 11>();
    var var_0 = u_input.a.x;
    let var_1 = global2[_wgslsmith_index_u32(35781u, 11u)];
    let var_2 = var_1.a;
    return global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 28>();
    var var_0 = global1[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(~4499u, 15u)] | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24836u, 15u)], 15u)]), 28u)];
    var var_1 = func_2(-33699i);
    let var_2 = func_2(u_input.e.x);
    return Struct_1(var_1.a);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> f32 {
    return _wgslsmith_div_f32(arg_2, -575f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 32528u), 17u)], 1596f, func_2(64083i))), _wgslsmith_div_f32(1306f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a), u_input.e.x > 37604i)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), 900f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(377f, -875f), vec2<f32>(770f, var_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-633f, var_0.a) - vec2<f32>(var_0.a, -1383f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, var_0.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, 1584f) + vec2<f32>(277f, -1725f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-510f, 1554f)))))))));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~reverseBits(countOneBits(16260u)), 15u)] == firstLeadingBit(_wgslsmith_mult_u32(~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 15u)], 15u)])), vec4<bool>(all(vec4<bool>(any(vec2<bool>(false, true)), u_input.c != u_input.b.x, any(vec4<bool>(true, false, true, true)), true)), true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))) & all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), 27239u), _wgslsmith_dot_vec4_u32(max(~(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(106572u, 15u)], u_input.a.x, u_input.a.x) | vec4<u32>(44811u, 0u, 47837u, 31675u)), firstTrailingBit(abs(vec4<u32>(u_input.a.x, 7665u, u_input.a.x, 46487u)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(31090u, 15u)], 19697u, 4294967295u, 42801u)))), 15u)], 17u)];
    let var_4 = var_3.c;
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    var var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec2<u32>(1u, 1u))));
}

