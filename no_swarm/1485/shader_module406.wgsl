struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(0u, Struct_1(vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec3<i32>(0i, -11140i, -3463i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(1u, 59374u), vec2<u32>(16412u, 72813u), vec3<i32>(22076i, -51892i, 1i), vec4<bool>(false, true, false, false))), vec4<bool>(false, false, false, true), false), Struct_3(79764u, Struct_1(vec2<u32>(4294967295u, 15590u), vec2<u32>(1u, 12705u), vec3<i32>(-46738i, -1i, 38988i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<u32>(7759u, 0u), vec2<u32>(25639u, 17412u), vec3<i32>(0i, i32(-2147483648), 56119i), vec4<bool>(false, false, false, false))), vec4<bool>(false, false, false, false), true), Struct_3(66704u, Struct_1(vec2<u32>(70174u, 38372u), vec2<u32>(13164u, 1u), vec3<i32>(84044i, -38650i, 16106i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<u32>(24672u, 58107u), vec2<u32>(43632u, 59711u), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec4<bool>(false, false, true, false))), vec4<bool>(true, false, true, false), true), Struct_3(1u, Struct_1(vec2<u32>(26953u, 50840u), vec2<u32>(28807u, 1u), vec3<i32>(14978i, -1386i, i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 16825u), vec2<u32>(4294967295u, 84084u), vec3<i32>(1i, 38960i, 2209i), vec4<bool>(true, true, false, true))), vec4<bool>(false, true, true, false), true), Struct_3(0u, Struct_1(vec2<u32>(73826u, 53345u), vec2<u32>(0u, 36813u), vec3<i32>(i32(-2147483648), -1i, -78181i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<u32>(4294967295u, 23605u), vec2<u32>(1u, 0u), vec3<i32>(-1i, -13534i, -11434i), vec4<bool>(false, false, false, false))), vec4<bool>(false, false, false, true), false), Struct_3(84815u, Struct_1(vec2<u32>(1u, 33879u), vec2<u32>(1u, 1u), vec3<i32>(0i, -1i, -1i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec2<u32>(1u, 39199u), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(9204i, -10190i, -13070i), vec4<bool>(false, false, true, false))), vec4<bool>(false, false, true, false), false), Struct_3(57397u, Struct_1(vec2<u32>(15486u, 0u), vec2<u32>(1u, 4294967295u), vec3<i32>(0i, -13616i, -1i), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec2<u32>(1u, 38771u), vec2<u32>(120518u, 18258u), vec3<i32>(24631i, -49474i, 1i), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, false, true), true), Struct_3(1u, Struct_1(vec2<u32>(58398u, 0u), vec2<u32>(17470u, 3070u), vec3<i32>(-8521i, 0i, 14440i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 19979u), vec3<i32>(-51469i, -27794i, 6179i), vec4<bool>(false, false, false, true))), vec4<bool>(false, true, true, true), true), Struct_3(16866u, Struct_1(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec3<i32>(-1052i, 670i, 44745i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec2<u32>(11840u, 7918u), vec2<u32>(58051u, 1u), vec3<i32>(-1i, -12996i, -41168i), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, false), false), Struct_3(32744u, Struct_1(vec2<u32>(45743u, 1u), vec2<u32>(0u, 70744u), vec3<i32>(1i, i32(-2147483648), 0i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(78286u, 16957u), vec2<u32>(1u, 1u), vec3<i32>(23291i, -1i, i32(-2147483648)), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, false, true), true), Struct_3(11738u, Struct_1(vec2<u32>(49254u, 131837u), vec2<u32>(29801u, 4294967295u), vec3<i32>(0i, 2147483647i, 2147483647i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(66219u, 29584u), vec2<u32>(27762u, 1u), vec3<i32>(0i, 2147483647i, 24556i), vec4<bool>(false, false, false, false))), vec4<bool>(false, false, true, true), true), Struct_3(26427u, Struct_1(vec2<u32>(56304u, 40229u), vec2<u32>(4294967295u, 0u), vec3<i32>(0i, -5057i, 1i), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec2<u32>(4294967295u, 66306u), vec2<u32>(70629u, 0u), vec3<i32>(2147483647i, i32(-2147483648), 72632i), vec4<bool>(false, false, false, false))), vec4<bool>(false, false, false, true), true), Struct_3(4294967295u, Struct_1(vec2<u32>(44777u, 0u), vec2<u32>(0u, 28337u), vec3<i32>(-1547i, 3947i, -7640i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec2<u32>(1570u, 36630u), vec2<u32>(4294967295u, 0u), vec3<i32>(2147483647i, 2147483647i, 25775i), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), false), Struct_3(4151u, Struct_1(vec2<u32>(13181u, 4294967295u), vec2<u32>(0u, 1u), vec3<i32>(-1i, i32(-2147483648), 5229i), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec2<u32>(64462u, 1u), vec2<u32>(46322u, 91248u), vec3<i32>(65431i, 1i, 1i), vec4<bool>(true, false, true, true))), vec4<bool>(true, false, false, false), true), Struct_3(4294967295u, Struct_1(vec2<u32>(1u, 40804u), vec2<u32>(14436u, 0u), vec3<i32>(1i, -44939i, -16204i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(6816u, 49791u), vec2<u32>(70215u, 16599u), vec3<i32>(14801i, 1i, -3411i), vec4<bool>(true, false, true, true))), vec4<bool>(false, true, false, true), false), Struct_3(39609u, Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(34973u, 41828u), vec3<i32>(0i, 2147483647i, 2147483647i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 4795u), vec2<u32>(27733u, 47095u), vec3<i32>(0i, 25369i, -37028i), vec4<bool>(false, true, false, false))), vec4<bool>(false, false, true, true), true), Struct_3(40405u, Struct_1(vec2<u32>(786u, 4294967295u), vec2<u32>(0u, 1u), vec3<i32>(-20510i, i32(-2147483648), 2147483647i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec2<u32>(77898u, 37158u), vec2<u32>(1u, 36188u), vec3<i32>(-20623i, 22577i, -1i), vec4<bool>(true, false, false, false))), vec4<bool>(false, false, false, true), false), Struct_3(0u, Struct_1(vec2<u32>(0u, 39711u), vec2<u32>(0u, 39861u), vec3<i32>(-30653i, 45868i, 1i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(29957u, 37809u), vec3<i32>(5208i, -2784i, -23799i), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, false, false), true), Struct_3(880u, Struct_1(vec2<u32>(53889u, 34443u), vec2<u32>(1964u, 0u), vec3<i32>(-229i, -1i, 1i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec2<u32>(75640u, 1u), vec3<i32>(14084i, 2147483647i, 625i), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, false, true), true), Struct_3(4294967295u, Struct_1(vec2<u32>(71811u, 4294967295u), vec2<u32>(43283u, 1u), vec3<i32>(-9153i, 13361i, -1i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(65101u, 6005u), vec2<u32>(69068u, 1u), vec3<i32>(1i, -76733i, 3343i), vec4<bool>(false, true, true, true))), vec4<bool>(false, false, false, false), true), Struct_3(4294967295u, Struct_1(vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec3<i32>(24184i, 3195i, 1i), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec2<u32>(31771u, 75898u), vec2<u32>(1u, 0u), vec3<i32>(-43265i, -11765i, 24281i), vec4<bool>(false, true, true, false))), vec4<bool>(true, false, true, true), true), Struct_3(32855u, Struct_1(vec2<u32>(0u, 1u), vec2<u32>(28332u, 4294967295u), vec3<i32>(2147483647i, -12039i, -1i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<u32>(1u, 13023u), vec3<i32>(2147483647i, -6425i, 60993i), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true), Struct_3(7289u, Struct_1(vec2<u32>(4294967295u, 88392u), vec2<u32>(0u, 0u), vec3<i32>(5996i, -11026i, -1i), vec4<bool>(true, false, false, true)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec2<u32>(81343u, 1u), vec3<i32>(2147483647i, -5349i, 31738i), vec4<bool>(false, false, false, false))), vec4<bool>(false, false, true, false), false));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(37937u, 0u), vec2<u32>(39361u, 1u), vec3<i32>(31379i, 37010i, i32(-2147483648)), vec4<bool>(true, true, false, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = vec4<u32>(u_input.b, ~(~(func_3(Struct_4(global1.a.d.x, Struct_3(global1.a.a.x, arg_1.a, Struct_2(Struct_1(global1.a.a, u_input.a.xx, vec3<i32>(global1.a.c.x, -2147483647i, -1i), vec4<bool>(arg_1.a.d.x, false, arg_1.a.d.x, true))), arg_1.a.d, global1.a.d.x))) >> (0u % 32u))), u_input.b, max(u_input.d, global1.a.b.x));
    let var_1 = !(var_0.x <= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(126192u, 1u, var_0.x, u_input.d), vec4<u32>(64078u, 39932u, 30641u, 0u))));
    var var_2 = arg_1;
    global0 = array<Struct_3, 23>();
    var_2 = Struct_2(global1.a);
    return vec3<i32>(var_2.a.c.x, -22938i, arg_1.a.c.x);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.a.x, global1.a.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.b.x, u_input.a.x), vec2<u32>(50152u, 10449u)))), u_input.a.zz >> ((vec2<u32>(_wgslsmith_mult_u32(39657u, global1.a.b.x), abs(u_input.d)) >> (~_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.yx) % vec2<u32>(32u))) % vec2<u32>(32u)), -func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f * 1179f) - _wgslsmith_f_op_f32(-637f + -1970f)), Struct_2(Struct_1(u_input.a.xx, u_input.a.zz, vec3<i32>(-8767i, 1i, global1.a.c.x), vec4<bool>(false, global1.a.d.x, false, global1.a.d.x)))), select(vec4<bool>(!(arg_1.a.d.x && true), false, arg_0, true), vec4<bool>(arg_0, true, any(vec4<bool>(true, true, arg_0, arg_0)), true), select(global1.a.d, select(!vec4<bool>(arg_0, true, true, false), arg_1.a.d, select(arg_1.a.d, vec4<bool>(arg_0, false, true, false), true)), false)));
    var var_1 = arg_1.a;
    global0 = array<Struct_3, 23>();
    var_1 = Struct_1(abs(global1.a.a), firstLeadingBit(select(arg_1.a.b, reverseBits(var_1.a), var_1.d.x)), select(_wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x, -16541i, arg_1.a.c.x), vec3<i32>(var_0.c.x, 20570i, -1i)), -var_1.c), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(Struct_1(vec2<u32>(1u, 0u), arg_1.a.a, arg_1.a.c, vec4<bool>(var_1.d.x, arg_0, true, false)))), true), vec4<bool>(all(!select(vec3<bool>(arg_0, true, false), vec3<bool>(false, false, arg_1.a.d.x), var_1.d.x)), true, true, arg_1.a.d.x));
    let var_2 = Struct_2(Struct_1(countOneBits(~var_0.a), vec2<u32>(var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(9022u, 31690u, var_1.a.x, 6862u), vec4<u32>(u_input.c, 0u, global1.a.a.x, 11755u)) >> (~33011u % 32u)), ~select(vec3<i32>(global1.a.c.x, var_1.c.x, var_0.c.x), vec3<i32>(global1.a.c.x, var_1.c.x, -2147483647i), var_1.d.x), select(var_1.d, var_1.d, select(global1.a.d, select(vec4<bool>(arg_1.a.d.x, true, var_1.d.x, var_0.d.x), vec4<bool>(global1.a.d.x, false, var_1.d.x, false), arg_1.a.d), !global1.a.d))));
    return Struct_2(arg_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(487f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-642f, 773f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-389f * 117f), -779f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-145f)) + 430f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1690f, 1030f)) * -350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-345f)) + 1f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 1325f, -1291f, 411f))))));
    global0 = array<Struct_3, 23>();
    let var_1 = Struct_4(!(!any(vec3<bool>(global1.a.d.x, arg_1.c.a.d.x, true))), Struct_3(19979u, Struct_1(vec2<u32>(global1.a.b.x, 21033u), ~abs(global1.a.b), vec3<i32>(func_2(-555f, arg_1.c).x, arg_1.b.c.x & -29075i, func_1(arg_1.e, arg_1.c).a.c.x), arg_1.d), arg_1.c, !vec4<bool>(var_0.x == -633f, false, true, global1.a.d.x), false));
    let var_2 = Struct_1(select(~_wgslsmith_mod_vec2_u32(~var_1.b.b.b, arg_1.b.b), vec2<u32>(63603u, var_1.b.b.a.x) & _wgslsmith_sub_vec2_u32(~arg_1.b.b, func_1(var_1.b.b.d.x, var_1.b.c).a.a), 857f > _wgslsmith_f_op_f32(round(1589f))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(4294967295u, 19510u), vec2<u32>(var_1.b.c.a.a.x, u_input.c)), ~vec2<u32>(var_1.b.b.b.x, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a, 61350u), vec2<u32>(arg_1.c.a.b.x, arg_0.a.a.x), vec2<u32>(global1.a.b.x, arg_0.a.a.x))), vec2<u32>(~u_input.c, ~arg_0.a.b.x)), _wgslsmith_mod_u32(1u, global1.a.b.x)), arg_1.b.c, vec4<bool>(false, global1.a.d.x, !(all(arg_1.c.a.d.yy) & (global1.a.c.x != 39893i)), false));
    global1 = arg_1.c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_4(func_1(global1.a.c.x < (i32(-1i) * -6805i), Struct_2(global1.a)), Struct_3(u_input.a.x, Struct_1(_wgslsmith_mod_vec2_u32(u_input.a.zz, global1.a.a), abs(vec2<u32>(14160u, u_input.a.x)), firstTrailingBit(global1.a.c), !vec4<bool>(false, false, true, global1.a.d.x)), Struct_2(func_1(false, Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.c), u_input.a.xx, global1.a.c, global1.a.d))).a), global1.a.d, any(!global1.a.d.xzy))));
    let var_0 = Struct_2(func_4(Struct_2(global1.a), global0[_wgslsmith_index_u32(0u, 23u)]));
    global0 = array<Struct_3, 23>();
    global1 = var_0;
    var var_1 = global1.a.c.x;
    var var_2 = Struct_3(var_0.a.a.x, var_0.a, Struct_2(Struct_1(vec2<u32>(func_4(var_0, global0[_wgslsmith_index_u32(global1.a.b.x, 23u)]).a.x, global1.a.b.x), u_input.a.yx, var_0.a.c, global1.a.d)), func_1(var_0.a.d.x, Struct_2(func_4(Struct_2(var_0.a), global0[_wgslsmith_index_u32(0u, 23u)]))).a.d, !global1.a.d.x & false);
    let var_3 = global0[_wgslsmith_index_u32(~u_input.d, 23u)];
    global0 = array<Struct_3, 23>();
    var_2 = Struct_3(1u, var_3.b, Struct_2(func_4(func_1(select(false, var_0.a.d.x, var_0.a.d.x), var_3.c), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a, ~4294967295u), 23u)])), !(!func_1(all(vec3<bool>(var_0.a.d.x, global1.a.d.x, global1.a.d.x)), var_3.c).a.d), -176f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(872f, -1287f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-446f, 1005f, var_0.a.d.x))))));
}

