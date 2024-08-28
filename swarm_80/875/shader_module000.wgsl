struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<f32, 26> = array<f32, 26>(183f, -166f, 2091f, -1000f, 307f, -179f, 1448f, -1153f, -452f, 351f, 427f, -1000f, 183f, -799f, -143f, -767f, 1265f, -1544f, 692f, -479f, 640f, 440f, 1375f, -1895f, -384f, 1161f);

var<private> global2: array<bool, 27>;

var<private> global3: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(-373f));

var<private> global4: array<f32, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(14455u, 0u);
    return Struct_1(1000f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 26u)])), vec4<u32>(1u, ~(~(~0u)), 21406u, 1820u), select(abs(_wgslsmith_add_vec2_u32(max(vec2<u32>(64728u, u_input.b), vec2<u32>(var_0.x, 119836u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 26948u), vec2<u32>(var_0.x, 0u)))), vec2<u32>(u_input.c, u_input.c), !(!(1u == var_0.x))));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global4 = array<f32, 13>();
    var var_0 = !select(select(!select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 27u)], false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false), global2[_wgslsmith_index_u32(4294967295u, 27u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.d.x, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)]), global2[_wgslsmith_index_u32(u_input.b, 27u)] == global2[_wgslsmith_index_u32(arg_0.d.x, 27u)]), false), !vec2<bool>(arg_0.b < arg_0.a, true), all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 27u)], true, global2[_wgslsmith_index_u32(108683u, 27u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.d.x, 27u)], true, global2[_wgslsmith_index_u32(u_input.c, 27u)]), true)) || global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(1u, arg_0.c.x, global2[_wgslsmith_index_u32(u_input.c, 27u)]), 30932u, 1620u), 27u)]);
    let var_1 = u_input.d << (func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-986f, arg_0.a), _wgslsmith_div_f32(-1949f, 155f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 13u)]))), _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0.a, global4[_wgslsmith_index_u32(1u, 13u)], -412f), false, vec2<bool>(false, var_0.x)).b - global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(62922u, arg_0.d.x, arg_0.c.x), 13u)]) != -342f, select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, false), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(global2[_wgslsmith_index_u32(1277u, 27u)], var_0.x), vec2<bool>(var_0.x, false)), all(vec2<bool>(true, true))))).c % vec4<u32>(32u));
    let var_2 = !global2[_wgslsmith_index_u32(28593u ^ (firstTrailingBit(88233u) << (u_input.c % 32u)), 27u)] | !any(select(!vec3<bool>(false, true, var_0.x), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b, 27u)]), vec3<bool>(false, true, false)));
    let var_3 = var_2;
    return func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(190f, -1543f, global1[_wgslsmith_index_u32(arg_0.c.x, 26u)]) * vec3<f32>(arg_0.a, arg_0.b, global4[_wgslsmith_index_u32(u_input.b, 13u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, global4[_wgslsmith_index_u32(u_input.b, 13u)], -871f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, global1[_wgslsmith_index_u32(20302u, 26u)], 650f)))), vec3<f32>(_wgslsmith_f_op_f32(176f * func_2(vec3<f32>(global1[_wgslsmith_index_u32(37823u, 26u)], -279f, global4[_wgslsmith_index_u32(u_input.c, 13u)]), false, vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], true)).a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(36247u, 13u)]), var_2)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24966u, arg_0.c.x, 53598u, arg_0.c.x), arg_0.c), 26u)], _wgslsmith_f_op_f32(694f * -565f))))), any(!vec4<bool>(any(vec2<bool>(false, var_3)), any(vec2<bool>(var_3, false)), 1i >= global0[_wgslsmith_index_u32(arg_0.d.x, 6u)], var_2)), !(!vec2<bool>(!var_3, true)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 27>();
    let var_0 = u_input.e;
    global4 = array<f32, 13>();
    let var_1 = Struct_2(any(select(vec4<bool>(true, true, !global2[_wgslsmith_index_u32(0u, 27u)], !global2[_wgslsmith_index_u32(8587u, 27u)]), vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(5555u, 27u)], global2[_wgslsmith_index_u32(26578u, 27u)])), true, true, global2[_wgslsmith_index_u32(25463u, 27u)] == global2[_wgslsmith_index_u32(9547u, 27u)]), vec4<bool>(true, arg_0.d.x >= arg_0.c.x, true, global2[_wgslsmith_index_u32(u_input.b, 27u)]))), Struct_1(305f, -2029f, vec4<u32>(u_input.b, func_3(Struct_1(-195f, global1[_wgslsmith_index_u32(8055u, 26u)], vec4<u32>(42281u, 77351u, arg_0.c.x, arg_0.c.x), vec2<u32>(9362u, 34882u))).d.x, ~arg_0.c.x, u_input.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.b)) ^ ((vec2<u32>(arg_0.c.x, arg_0.d.x) << (vec2<u32>(19898u, 307u) % vec2<u32>(32u))) | vec2<u32>(u_input.b, 1u))), !(!vec4<bool>(var_0 != u_input.a.x, global2[_wgslsmith_index_u32(65347u ^ u_input.b, 27u)], -2147483647i >= var_0, true)));
    var var_2 = all(!var_1.c);
    return var_1.b;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global4 = array<f32, 13>();
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(~(select(0u, u_input.b, true) >> (u_input.b % 32u)) >> (u_input.b % 32u), 13u)]);
    global1 = array<f32, 26>();
    var var_1 = Struct_4(Struct_2(true, func_4(func_3(func_2(vec3<f32>(global1[_wgslsmith_index_u32(51553u, 26u)], global4[_wgslsmith_index_u32(4294967295u, 13u)], 703f), global2[_wgslsmith_index_u32(u_input.c, 27u)], vec2<bool>(true, false)))), !vec4<bool>(any(vec3<bool>(false, true, false)), arg_0, !arg_1, select(false, true, false))), func_3(func_3(func_4(Struct_1(386f, 1249f, vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.c), vec2<u32>(u_input.b, 1u))))).a, -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, -400f, global1[_wgslsmith_index_u32(26951u, 26u)], -1549f)) * vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-543f - 1037f), 713f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 26u)], 1349f, global4[_wgslsmith_index_u32(u_input.c, 13u)], 867f) * vec4<f32>(var_0.a, global1[_wgslsmith_index_u32(0u, 26u)], var_0.a, var_0.a)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, -339f, -1281f, 1085f) + vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 13u)], -1324f, 309f, var_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(25232u, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], global4[_wgslsmith_index_u32(67250u, 13u)], 1000f), vec4<f32>(global4[_wgslsmith_index_u32(87410u, 13u)], global4[_wgslsmith_index_u32(u_input.b, 13u)], -1746f, -759f)))))), func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(16812u, 13u)] - var_0.a) + _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(25465u, 13u)], 1962f))), 264f, ~vec4<u32>(23810u, 39140u, 91894u, u_input.c), vec2<u32>(u_input.c << (5987u % 32u), func_4(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 26u)], global4[_wgslsmith_index_u32(68019u, 13u)], vec4<u32>(u_input.c, 1u, 5603u, u_input.c), vec2<u32>(14062u, u_input.c))).d.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 13u)], -622f, -1000f), vec3<f32>(-1561f, -2134f, -1026f)) * vec3<f32>(-1000f, global4[_wgslsmith_index_u32(0u, 13u)], var_1.e.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.xzx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, -970f, 719f), var_1.d.yyz, vec3<bool>(true, false, false))))), vec3<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 1f, -1181f))));
    return func_3(var_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(1u, 27u)] & global2[_wgslsmith_index_u32(abs(u_input.b), 27u)], func_1(_wgslsmith_mult_u32(1u, u_input.b) >= reverseBits(~u_input.c), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18864u, u_input.c), 26u)], 709f) < -1000f), !select(vec4<bool>(global2[_wgslsmith_index_u32(~u_input.b, 27u)], !global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(~u_input.b, 27u)], true), vec4<bool>(select(true, false, global2[_wgslsmith_index_u32(4294967295u, 27u)]), false, true, true), select(select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(42790u, 27u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(54514u, 27u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], false, global2[_wgslsmith_index_u32(75164u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)])), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], false, true, global2[_wgslsmith_index_u32(15262u, 27u)]), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], false, global2[_wgslsmith_index_u32(u_input.c, 27u)], true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(func_4(var_0.b).a, _wgslsmith_f_op_f32(round(571f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.b.c, var_0.b.c), 26u)], _wgslsmith_f_op_f32(f32(-1f) * -1015f)))), firstTrailingBit(-reverseBits(0i)), u_input.d.yzz ^ select(~vec3<i32>(1i, 3540i, 2147483647i), vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(20600u, 6u)]), u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b.d.x, var_0.b.d.x), 6u)]), select(true && var_0.c.x, global2[_wgslsmith_index_u32(~var_0.b.d.x, 27u)], var_0.c.x)));
}

