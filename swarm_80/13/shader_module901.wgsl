struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: array<i32, 23>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global3: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(1000f, -3989i, Struct_1(false, 20589u, vec3<bool>(false, true, false))), Struct_3(-916f, 18235i, Struct_1(false, 16452u, vec3<bool>(true, true, false))), Struct_3(-502f, -21097i, Struct_1(true, 1u, vec3<bool>(false, false, true))), Struct_3(994f, -1i, Struct_1(false, 48194u, vec3<bool>(false, true, true))), Struct_3(1000f, -3821i, Struct_1(false, 1u, vec3<bool>(false, true, true))), Struct_3(-102f, 40135i, Struct_1(true, 42105u, vec3<bool>(false, true, false))), Struct_3(210f, -1i, Struct_1(true, 23669u, vec3<bool>(true, true, false))), Struct_3(-551f, 0i, Struct_1(false, 4294967295u, vec3<bool>(false, true, false))), Struct_3(-304f, 8379i, Struct_1(true, 1u, vec3<bool>(false, true, false))), Struct_3(-605f, -5121i, Struct_1(true, 0u, vec3<bool>(false, false, false))), Struct_3(-285f, 8701i, Struct_1(true, 4294967295u, vec3<bool>(true, true, false))), Struct_3(-570f, 1i, Struct_1(true, 1u, vec3<bool>(false, false, false))), Struct_3(1136f, 2147483647i, Struct_1(true, 0u, vec3<bool>(true, true, true))), Struct_3(1823f, 1i, Struct_1(true, 51243u, vec3<bool>(false, false, true))), Struct_3(244f, -21942i, Struct_1(false, 48346u, vec3<bool>(true, true, false))), Struct_3(1346f, -10324i, Struct_1(true, 4294967295u, vec3<bool>(true, true, false))), Struct_3(1017f, -5249i, Struct_1(true, 0u, vec3<bool>(false, true, true))), Struct_3(2040f, 2147483647i, Struct_1(true, 4294967295u, vec3<bool>(true, true, true))), Struct_3(-318f, 0i, Struct_1(false, 4294967295u, vec3<bool>(true, true, true))), Struct_3(1246f, i32(-2147483648), Struct_1(true, 40255u, vec3<bool>(false, false, false))), Struct_3(290f, 20989i, Struct_1(true, 1u, vec3<bool>(false, true, true))), Struct_3(-1000f, -33760i, Struct_1(false, 0u, vec3<bool>(true, true, true))), Struct_3(-689f, 10638i, Struct_1(false, 5931u, vec3<bool>(true, false, true))), Struct_3(-2440f, 2147483647i, Struct_1(true, 1u, vec3<bool>(true, true, false))), Struct_3(-423f, 29599i, Struct_1(false, 14034u, vec3<bool>(false, false, false))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    global1 = array<i32, 23>();
    var var_0 = arg_2.c;
    global1 = array<i32, 23>();
    var_0 = Struct_1(!(!(_wgslsmith_f_op_f32(trunc(arg_0)) == _wgslsmith_f_op_f32(round(arg_2.a)))), ~(~0u), select(!arg_2.c.c, select(global2.xzy, !(!vec3<bool>(arg_2.c.a, global2.x, true)), true), !(_wgslsmith_f_op_f32(-arg_2.a) > _wgslsmith_f_op_f32(f32(-1f) * -496f))));
    var_0 = arg_2.c;
    return arg_1;
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f - -448f)) * _wgslsmith_f_op_f32(-403f * 1f));
    var var_1 = Struct_4(Struct_1(true, u_input.d, arg_0.zyy), global2.x, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f) + var_0)), 2147483647i, Struct_1(true, 24940u, arg_0.xwz)), 11819i, any(vec3<bool>(true, any(global2.wz), global2.x | arg_0.x)) | false);
    global1 = array<i32, 23>();
    global2 = select(arg_0, arg_0, arg_0);
    let var_2 = _wgslsmith_add_u32(~1u, ~_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_f32(floor(var_1.c.a)), 0u, global3[_wgslsmith_index_u32(var_1.c.c.b >> (u_input.d % 32u), 25u)], !global2.wzy), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b, 9969u, 94828u, var_1.c.c.b), vec4<u32>(45758u, var_1.c.c.b, u_input.a, var_1.c.c.b))));
    return Struct_4(var_1.a, arg_0.x, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.d, var_2, var_1.c.c.b), _wgslsmith_add_vec3_u32(vec3<u32>(5826u, 17920u, 4720u), vec3<u32>(77955u, var_1.c.c.b, 23007u))), vec3<u32>(1u ^ u_input.a, var_1.a.b, _wgslsmith_mod_u32(50602u, 1838u)))), 25u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~abs(var_1.a.b)), 17784u), 23u)], arg_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    global3 = array<Struct_3, 25>();
    let var_0 = func_2(select(vec4<bool>(select(610f == arg_1.c.a, true, arg_0.c.c.b >= u_input.d), true, func_2(!vec4<bool>(global2.x, false, true, arg_0.e)).a.c.x, !any(vec4<bool>(arg_1.c.c.a, global2.x, arg_1.c.c.c.x, arg_0.b))), !select(!vec4<bool>(arg_0.b, arg_0.a.a, arg_2.x, arg_2.x), vec4<bool>(true, true, true, true), all(arg_1.a.c.xz)), true)).c.c;
    let var_1 = Struct_2(vec4<bool>(!global2.x, true | all(!vec3<bool>(false, var_0.a, true)), !select(false, arg_1.e, false) && arg_2.x, 557f == arg_1.c.a), func_2(vec4<bool>(select(true, true, false), any(!arg_0.a.c), any(vec2<bool>(arg_1.b, arg_0.c.c.c.x)), true)).c.c, Struct_1(any(arg_2), var_0.b, vec3<bool>(true, !(true && global2.x), all(global2.yy))), global0[_wgslsmith_index_u32(~arg_0.a.b, 23u)]);
    global3 = array<Struct_3, 25>();
    let var_2 = func_2(!(!select(vec4<bool>(false, false, arg_1.a.a, arg_1.a.c.x), select(vec4<bool>(var_1.c.a, true, arg_1.c.c.a, true), vec4<bool>(var_0.c.x, arg_0.a.c.x, true, false), vec4<bool>(true, false, var_1.a.x, true)), select(var_1.a, vec4<bool>(true, false, false, false), var_1.a)))).c;
    return var_1.c.c.x;
}

fn func_1() -> Struct_1 {
    global3 = array<Struct_3, 25>();
    global1 = array<i32, 23>();
    var var_0 = 0i;
    var var_1 = Struct_4(Struct_1(func_4(func_2(!vec4<bool>(false, false, global2.x, global2.x)), Struct_4(Struct_1(global2.x, u_input.a, global2.wzz), all(vec4<bool>(false, false, false, global2.x)), global3[_wgslsmith_index_u32(func_2(vec4<bool>(false, false, global2.x, global2.x)).a.b, 25u)], global1[_wgslsmith_index_u32(1u, 23u)], global2.x & global2.x), select(vec2<bool>(true, true), global2.wx, !global2.x)), ~func_2(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), true)).c.c.b, !global2.xwz), true, global3[_wgslsmith_index_u32(~func_2(select(select(vec4<bool>(true, false, false, false), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, true)), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, true, false), global2.x), !vec4<bool>(true, global2.x, false, global2.x))).c.c.b, 25u)], -23567i, global2.x);
    global1 = array<i32, 23>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    var var_0 = global2.yw;
    let var_1 = Struct_4(func_1(), var_0.x, func_2(!(!select(vec4<bool>(global2.x, global2.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(global2.x, global2.x, true, global2.x)))).c, u_input.c ^ _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b, global1[_wgslsmith_index_u32(u_input.d, 23u)]), vec3<i32>(global1[_wgslsmith_index_u32(96391u, 23u)], 0i, 2147483647i)), firstLeadingBit(vec3<i32>(2147483647i, 1i, -4477i)), func_1().c), vec3<i32>(-33059i, -7699i, abs(global1[_wgslsmith_index_u32(45048u, 23u)]))), global2.x);
    let var_2 = var_1.d;
    var var_3 = func_2(vec4<bool>(!all(func_2(vec4<bool>(global2.x, var_0.x, true, false)).a.c.yx), _wgslsmith_f_op_f32(ceil(var_1.c.a)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(207f + var_1.c.a))), true, true));
    let var_4 = Struct_2(select(vec4<bool>(any(!vec4<bool>(var_3.a.a, false, var_0.x, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(18499u, 23u)], -30294i), vec3<i32>(1i, 2147483647i, -2147483647i)) == -global1[_wgslsmith_index_u32(var_1.a.b, 23u)], global2.x, func_2(!vec4<bool>(var_0.x, var_1.c.c.c.x, global2.x, false)).b), !vec4<bool>(50706i > global1[_wgslsmith_index_u32(1u, 23u)], !var_3.a.c.x, true, any(vec3<bool>(true, false, var_3.a.c.x))), var_3.b), var_1.c.c, Struct_1(var_0.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.d, u_input.d), reverseBits(1u) & var_1.c.c.b), !var_1.a.c), vec2<i32>(max(i32(-1i) * -42688i, _wgslsmith_mod_i32(-15239i, var_1.d) >> (~4294967295u % 32u)), global1[_wgslsmith_index_u32(func_2(select(!vec4<bool>(var_1.b, true, var_3.c.c.a, false), !vec4<bool>(var_0.x, true, var_0.x, var_1.c.c.a), vec4<bool>(true, false, var_3.b, var_1.a.c.x))).a.b, 23u)]));
    let var_5 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_3.c.a)))), var_1.d << (max(firstLeadingBit(_wgslsmith_add_u32(1u, 13772u)), 0u) % 32u), var_3.a);
    var var_6 = Struct_4(func_2(vec4<bool>(global2.x, var_1.e, all(var_1.a.c), var_5.c.a)).c.c, global2.x, Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.c.a, -1000f)) * _wgslsmith_f_op_f32(sign(-1807f))))), var_4.d.x, func_1()), ~0i, all(var_4.a));
    let var_7 = (~vec4<u32>(abs(var_6.a.b), 1u, _wgslsmith_add_u32(57756u, 1u), 4294967295u << (u_input.d % 32u)) | countOneBits(~vec4<u32>(40254u, var_6.c.c.b, var_5.c.b, var_4.b.b))) | vec4<u32>(~(~(~var_3.a.b)), var_6.c.c.b, max(~countOneBits(var_3.a.b), ~(var_3.c.c.b & u_input.a)), 27786u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -global1[_wgslsmith_index_u32(75339u, 23u)], var_4.d.x, var_6.c.b, u_input.c), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_2, var_6.c.b, var_2, -330i), ~vec4<i32>(var_6.c.b, u_input.b, var_4.d.x, var_6.c.b), !var_6.b), abs(-vec4<i32>(67487i, 1i, 12073i, var_3.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.a, -1375f, 242f, 1176f))))));
}

