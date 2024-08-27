struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(59715u, 1u), vec2<u32>(70126u, 30242u), vec2<u32>(4294967295u, 62566u), vec2<u32>(50258u, 99080u), vec2<u32>(35798u, 31703u), vec2<u32>(1u, 10718u), vec2<u32>(11926u, 52529u), vec2<u32>(66144u, 1u), vec2<u32>(4294967295u, 4192u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 5812u), vec2<u32>(10862u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(35081u, 1u), vec2<u32>(11955u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(57405u, 1354u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u));

var<private> global2: array<vec3<u32>, 27>;

var<private> global3: u32 = 47051u;

var<private> global4: i32 = 0i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> u32 {
    global1 = array<vec2<u32>, 22>();
    let var_0 = false;
    global2 = array<vec3<u32>, 27>();
    global2 = array<vec3<u32>, 27>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(476f, 405f, _wgslsmith_f_op_f32(abs(arg_0.x)) > _wgslsmith_f_op_f32(select(-148f, 425f, var_0))))));
    return 0u;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    global1 = array<vec2<u32>, 22>();
    let var_0 = arg_1;
    var var_1 = Struct_2(arg_1.a);
    let var_2 = Struct_3(58718u, !var_1.a.c.x, Struct_2(Struct_1((vec3<u32>(19091u, 1u, 0u) << (var_0.a.a % vec3<u32>(32u))) ^ (vec3<u32>(43394u, 88172u, 1u) >> (var_0.a.e.zwz % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(716f, 1375f, -835f, arg_1.a.b.x), vec4<f32>(var_1.a.b.x, 596f, arg_0.x, var_0.a.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, 921f, arg_1.a.b.x, -670f) + arg_1.a.b))), vec2<bool>(false, var_0.a.c.x || false), -468f, _wgslsmith_div_vec4_u32(~arg_1.a.e, vec4<u32>(var_0.a.a.x, var_0.a.e.x, arg_1.a.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.a.x, 24u)], 24u)], 24u)])))));
    var var_3 = u_input.c;
    return arg_1.a.c.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(arg_2.c.a.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.a.b.x, arg_2.c.a.d, 726f, arg_2.c.a.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, arg_2.c.a.b.x, arg_2.c.a.d, -1104f))), arg_2.c.a.b), arg_2.c.a.b)), arg_2.c.a.c, arg_2.c.a.b.x, vec4<u32>(reverseBits(~func_2(arg_2.c.a.b.ywz, -161f, -56092i)), arg_1, arg_1, arg_2.c.a.e.x ^ 10949u));
    var var_1 = var_0.e;
    let var_2 = Struct_3(~(~arg_1), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) > arg_2.c.a.d), arg_2.c);
    let var_3 = countOneBits(~(~(~_wgslsmith_mult_u32(692u, var_2.a))));
    global3 = 4294967295u;
    return Struct_2(Struct_1(global2[_wgslsmith_index_u32(arg_1 << (max(select(1u, 104450u, false), var_0.a.x) % 32u), 27u)], _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.c.a.b.x - 177f), _wgslsmith_f_op_f32(var_2.c.a.d + -291f), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_2.c.a.d * -1739f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-859f, 994f, -1515f, var_2.c.a.b.x), arg_2.c.a.b))), select(vec2<bool>(func_3(vec2<f32>(-1238f, var_0.d), Struct_2(arg_2.c.a)), any(vec4<bool>(true, var_0.c.x, var_2.c.a.c.x, false))), vec2<bool>(func_3(var_0.b.wz, var_2.c), var_2.c.a.b.x >= 417f), true), 292f, _wgslsmith_add_vec4_u32(vec4<u32>(abs(29587u), _wgslsmith_mod_u32(1u, 4294967295u), abs(var_0.a.x), ~var_1.x), vec4<u32>(~var_2.c.a.a.x, _wgslsmith_mult_u32(22568u, var_1.x), arg_2.c.a.e.x & 12142u, 14185u))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<u32, 24>();
    return vec3<u32>(global0[_wgslsmith_index_u32(~(~abs(global0[_wgslsmith_index_u32(4294967295u, 24u)] | 0u)), 24u)], ~(~arg_2.a.e.x) & ~(~global0[_wgslsmith_index_u32(func_1(arg_1.x, arg_2.a.e.x, Struct_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25197u, 24u)], 24u)], true, arg_2), vec3<i32>(arg_1.x, -34775i, arg_1.x)).a.a.x, 24u)]), 0u);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global3 = global0[_wgslsmith_index_u32(~0u, 24u)];
    global2 = array<vec3<u32>, 27>();
    global3 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e >> (arg_2.a.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(global0[_wgslsmith_index_u32(52764u, 24u)]), ~global0[_wgslsmith_index_u32(arg_2.e.x, 24u)]), 24u)]), 24u)] | 0u;
    let var_0 = select(vec3<bool>(!(25925i > ~u_input.b), any(vec2<bool>(!arg_2.c.x, all(vec3<bool>(arg_1.x, false, arg_1.x)))), false), vec3<bool>(!(false | arg_1.x), all(arg_1), true), true);
    global0 = array<u32, 24>();
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -(i32(-1i) * -2147483647i);
    global1 = array<vec2<u32>, 22>();
    global4 = 62562i;
    global3 = u_input.d >> (~4294967295u % 32u);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-506f * -551f), _wgslsmith_f_op_f32(sign(-277f)), -460f, -2652f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(131f, -2030f, 1809f, -1000f), vec4<f32>(333f, -227f, 170f, 1000f))))), vec2<bool>(all(vec3<bool>(false, false, true)), true), Struct_1(func_4(true, vec2<i32>(u_input.b, -2147483647i), func_1(u_input.b, 7493u, Struct_3(32012u, false, Struct_2(Struct_1(global2[_wgslsmith_index_u32(2902u, 27u)], vec4<f32>(636f, -545f, -158f, -283f), vec2<bool>(true, true), -630f, vec4<u32>(1u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], u_input.c.x)))), vec3<i32>(2147483647i, 26833i, -2147483647i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-814f, -651f, -1511f, -1773f))))), vec2<bool>(any(vec2<bool>(false, false)), true), -277f, ~abs(vec4<u32>(u_input.a, u_input.e, 24531u, 123511u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, 1000f, _wgslsmith_mult_u32(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, -306f, -1312f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1588f, -1787f, 2113f) + vec3<f32>(-2151f, -1264f, -1866f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2152f, -197f, -523f)) * vec3<f32>(192f, 976f, -1541f))))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 24u)] & 0u, 1u, u_input.a)), vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.a), global0[_wgslsmith_index_u32(u_input.d >> (4294967295u % 32u), 24u)] ^ (0u ^ global0[_wgslsmith_index_u32(10916u, 24u)]), min(_wgslsmith_mod_u32(u_input.c.x, global0[_wgslsmith_index_u32(28517u, 24u)]), reverseBits(4294967295u)))));
}

