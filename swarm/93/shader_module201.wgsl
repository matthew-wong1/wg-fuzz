struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(50474u, 13583u, 4294967295u, 4294967295u), vec4<i32>(-1i, -13969i, -66052i, -1i), true, -30709i), Struct_1(vec4<u32>(44875u, 0u, 273u, 4294967295u), vec4<i32>(-44284i, 2147483647i, i32(-2147483648), 0i), false, 0i), Struct_1(vec4<u32>(3262u, 4294967295u, 53594u, 64640u), vec4<i32>(9957i, -48749i, 64678i, -8286i), false, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 23243u, 1u, 0u), vec4<i32>(0i, 46974i, 2147483647i, -10873i), false, -27772i), Struct_1(vec4<u32>(6504u, 1u, 80425u, 52086u), vec4<i32>(-46384i, -1i, i32(-2147483648), -1i), false, -24975i), Struct_1(vec4<u32>(663u, 4861u, 47801u, 6855u), vec4<i32>(-1i, 18736i, -86150i, 2147483647i), true, -1i), Struct_1(vec4<u32>(1u, 59087u, 4781u, 0u), vec4<i32>(-58263i, -45941i, 2147483647i, -7416i), false, 16383i), Struct_1(vec4<u32>(4294967295u, 90110u, 26888u, 29382u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1715i, 1i), false, -5939i), Struct_1(vec4<u32>(82967u, 9953u, 4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), 1i, 3659i, -37811i), true, 25520i), Struct_1(vec4<u32>(0u, 14287u, 16285u, 0u), vec4<i32>(45660i, -4260i, 0i, 9725i), false, 2147483647i), Struct_1(vec4<u32>(4294967295u, 135u, 18704u, 7950u), vec4<i32>(-1i, 2147483647i, 1312i, -10859i), false, -26855i), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 25401u), vec4<i32>(-206i, 6461i, -18799i, -30060i), true, -12877i), Struct_1(vec4<u32>(92457u, 0u, 0u, 6629u), vec4<i32>(-24320i, -24710i, 3616i, i32(-2147483648)), true, 55299i), Struct_1(vec4<u32>(0u, 21716u, 50492u, 6028u), vec4<i32>(20831i, 0i, i32(-2147483648), 47344i), true, -38249i), Struct_1(vec4<u32>(1u, 16602u, 1u, 70707u), vec4<i32>(11911i, 1i, 1i, 21313i), false, 28784i), Struct_1(vec4<u32>(15740u, 67235u, 20816u, 0u), vec4<i32>(1i, -4645i, -4146i, -43019i), true, 0i), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<i32>(1i, 80344i, i32(-2147483648), 1i), true, 62022i), Struct_1(vec4<u32>(0u, 2064u, 1u, 51778u), vec4<i32>(0i, -1i, 19847i, 27706i), true, 0i), Struct_1(vec4<u32>(76866u, 20007u, 15208u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, 39404i, 1i), true, -17219i), Struct_1(vec4<u32>(28369u, 0u, 5815u, 4294967295u), vec4<i32>(-21953i, -1i, -66035i, 1i), false, -1i), Struct_1(vec4<u32>(37286u, 0u, 19231u, 1u), vec4<i32>(10018i, 1i, i32(-2147483648), 24263i), true, 31405i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<i32> {
    global0 = array<Struct_1, 21>();
    var var_0 = true;
    var var_1 = !any(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0 == arg_0, 956f >= arg_0), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))));
    let var_2 = abs(vec2<u32>(27967u, max(1u, countOneBits(arg_1))));
    let var_3 = select(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(!all(vec2<bool>(true, false)), true, false, all(vec4<bool>(true, false, true, true)))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), !any(vec2<bool>(true, false)))));
    return u_input.c << (vec4<u32>(0u, 24623u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_2.x, 1u, var_2.x), _wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(17376u, arg_1))) << ((_wgslsmith_sub_u32(var_2.x, var_2.x) << (1u % 32u)) % 32u), var_2.x) % vec4<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = Struct_1(countOneBits(~var_0), func_3(arg_1, 32373u), arg_1 != arg_1, min(_wgslsmith_dot_vec3_i32(-countOneBits(u_input.a), u_input.c.xzz), 2147483647i));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, ~firstTrailingBit(25977u), u_input.e.x), 21u)];
    let var_3 = select(select(vec2<bool>(any(vec2<bool>(var_1.c, false)), var_2.c), !select(select(vec2<bool>(true, var_2.c), vec2<bool>(var_2.c, false), var_2.c), vec2<bool>(var_1.c, false), true), false), vec2<bool>(var_1.c, var_1.c), select(vec2<bool>(all(vec4<bool>(var_1.c, var_2.c, true, true)) & arg_0, true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), var_2.c), select(vec2<bool>(false, false), vec2<bool>(arg_0, var_2.c), vec2<bool>(false, arg_0)), arg_0 && var_1.c), select(!vec2<bool>(false, arg_0), !vec2<bool>(var_2.c, var_2.c), any(vec3<bool>(true, var_1.c, var_2.c))), !(!vec2<bool>(true, var_1.c))), any(select(vec3<bool>(arg_0, false, var_2.c), vec3<bool>(arg_0, true, true), arg_0))));
    let var_4 = true;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.yyx, _wgslsmith_add_vec3_u32(~vec3<u32>(52524u, _wgslsmith_div_u32(1u, var_2.a.x), ~34314u), ~_wgslsmith_mod_vec3_u32(var_0.zwz, var_2.a.yyw))), 21u)];
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(abs(u_input.e.x), 4294967295u)), 21u)];
    global0 = array<Struct_1, 21>();
    var var_1 = min(vec3<i32>(_wgslsmith_mod_i32(arg_0.d, -3007i), _wgslsmith_div_i32(u_input.c.x, 37654i), -34430i), firstLeadingBit(u_input.a) ^ ~select(var_0.b.wzy, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d, u_input.a.x, -51897i), u_input.c.zwz), vec3<bool>(var_0.c, true, arg_0.c)));
    var var_2 = !(!(!func_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(15289u, var_0.a.x, var_0.a.x, 4294967295u) ^ var_0.a).c));
    let var_3 = func_2(arg_0.c, _wgslsmith_f_op_f32(step(1343f, -1270f)), ~u_input.e);
    return ~var_0.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-976f, 207f, var_0) - vec3<f32>(882f, -186f, var_0)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, var_0), vec3<bool>(false, true, true))))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1178f - var_0))))));
    let var_2 = !(all(vec2<bool>(true, true)) || true);
    let var_3 = Struct_1(func_4(func_2(var_2, 1032f, _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.e.x, arg_0, 1u), ~u_input.e))), u_input.c, !var_2, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c << (u_input.e % vec4<u32>(32u))));
    global0 = array<Struct_1, 21>();
    return func_2(!(!var_2), _wgslsmith_f_op_f32(abs(205f)), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, -36841i), _wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(-24998i, u_input.a.x))) | u_input.a.x, u_input.c.x, 0i) << (~vec3<u32>(u_input.e.x, 0u, 1u) % vec3<u32>(32u));
    var var_1 = func_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_f32(f32(-1f) * -697f) < _wgslsmith_f_op_f32(select(391f, -1030f, var_1.c)), -1444f, ~vec4<u32>(u_input.d.x, u_input.d.x, var_1.a.x, var_1.a.x) << ((vec4<u32>(var_1.a.x, var_1.a.x, 19307u, u_input.e.x) << (firstLeadingBit(u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u))).a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-135f, _wgslsmith_f_op_f32(sign(-1000f)))))) * _wgslsmith_f_op_f32(ceil(1f))), 2916f, -265f);
}

