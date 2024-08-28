struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(4294967295u, 4294967295u, 44914u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 76111u, 74432u), vec3<u32>(0u, 11744u, 116713u), vec3<u32>(2070u, 100880u, 22544u), vec3<u32>(1u, 1u, 36616u), vec3<u32>(1389u, 4294967295u, 4294967295u), vec3<u32>(1u, 11649u, 4294967295u), vec3<u32>(7672u, 19333u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(26926u, 4294967295u, 1u), vec3<u32>(15970u, 0u, 46566u), vec3<u32>(44287u, 0u, 4294967295u), vec3<u32>(2778u, 4294967295u, 0u), vec3<u32>(18780u, 4294967295u, 13749u), vec3<u32>(0u, 2218u, 4294967295u), vec3<u32>(33977u, 1u, 1u), vec3<u32>(85399u, 4294967295u, 1u), vec3<u32>(51668u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(108252u, 15526u, 15393u), vec3<u32>(1u, 0u, 9583u), vec3<u32>(40850u, 46493u, 0u), vec3<u32>(45773u, 1u, 75667u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(floor(1600f)));
    let var_1 = Struct_3(Struct_2(Struct_1(arg_0, arg_0.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -106f, arg_0.x) * arg_0)))), Struct_1(arg_0, _wgslsmith_f_op_f32(sign(var_0)))), u_input.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(abs(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(687f)) - var_0)), vec4<i32>(_wgslsmith_sub_i32(abs(u_input.b.x), -20781i), 1i, abs(firstLeadingBit(2147483647i)), min(~(-57943i), firstTrailingBit(u_input.b.x))) ^ ~(-(vec4<i32>(u_input.b.x, 39975i, -2147483647i, u_input.b.x) >> (vec4<u32>(u_input.a.x, 54586u, u_input.c, 62558u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = var_1.a;
    return var_2.c.a.x;
}

fn func_2() -> vec4<bool> {
    global0 = array<vec3<u32>, 25>();
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(113f, -643f, -1598f, 225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, -1075f, 100f, -144f))))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-273f, 294f, -1189f, 544f))), _wgslsmith_f_op_f32(func_3(vec4<f32>(-1476f, 575f, 486f, 1000f))))), -1i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(877f, 184f, 3134f, -545f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(546f, -416f, -1689f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -786f, 1053f, -378f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<i32>(firstTrailingBit(firstLeadingBit(12728i)), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.b, -vec2<i32>(u_input.b.x, u_input.b.x)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-15788i, u_input.b.x, 1i), vec3<i32>(0i, u_input.b.x, -27206i)))), -693f);
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.c.a, _wgslsmith_f_op_vec4_f32(-var_0.c.a)))), _wgslsmith_f_op_vec4_f32(-var_0.c.a)))));
    global0 = array<vec3<u32>, 25>();
    global0 = array<vec3<u32>, 25>();
    return !vec4<bool>(true, false, any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), var_1 < 810f)), (0u > u_input.c) && !any(vec3<bool>(false, false, true)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.d.yz, _wgslsmith_mod_vec2_u32(u_input.d.yw, vec2<u32>(u_input.d.x, reverseBits(~u_input.a.x))));
    var var_1 = select(func_2(), vec4<bool>(true, all(!func_2()), !all(vec3<bool>(false, true, false)), false), any(func_2().wxz) && (arg_0.a.c.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f - -1970f))));
    var var_2 = Struct_3(arg_0.a, 0i, Struct_1(arg_0.c.a, arg_0.c.b), ~(-arg_0.d >> (vec4<u32>(countOneBits(var_0.x), u_input.d.x, _wgslsmith_mod_u32(4294967295u, 76620u), 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) + _wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(arg_0.c.b + _wgslsmith_f_op_f32(select(1000f, -605f, var_1.x))))));
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.a.x), arg_0.a.b.x, 1359f, var_2.a.b.x), 313f);
    return arg_0;
}

fn func_4(arg_0: Struct_3) -> i32 {
    global0 = array<vec3<u32>, 25>();
    var var_0 = arg_0.a;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.c.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.b, arg_0.a.a.a.x, var_0.c.b, 309f), vec4<f32>(-1428f, var_0.c.a.x, 1228f, var_0.a.a.x), true)) + _wgslsmith_f_op_vec4_f32(-arg_0.c.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-298f, _wgslsmith_f_op_f32(-511f * 106f), true))))), _wgslsmith_f_op_vec4_f32(max(arg_0.a.a.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x - var_0.c.a.x) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.a.x * -1462f)), _wgslsmith_f_op_f32(round(arg_0.c.b))))), func_1(func_1(Struct_3(arg_0.a, 1i, func_1(Struct_3(arg_0.a, 32939i, Struct_1(vec4<f32>(arg_0.a.a.b, var_0.b.x, -696f, -1540f), 508f), arg_0.d, -925f)).a.c, reverseBits(vec4<i32>(u_input.b.x, arg_0.d.x, u_input.b.x, 2147483647i)), _wgslsmith_f_op_f32(max(arg_0.a.c.a.x, arg_0.e))))).a.a);
    var var_1 = u_input.d.xx;
    var_0 = Struct_2(arg_0.a.c, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b, arg_0.c.b, var_0.a.b, arg_0.a.c.b) - vec4<f32>(var_0.a.b, -1346f, -1000f, -133f)))), _wgslsmith_f_op_f32(f32(-1f) * -724f), var_0.c.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x), _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.b)))))), var_0.c);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(max(1876i, func_4(func_1(Struct_3(Struct_2(Struct_1(vec4<f32>(500f, -843f, 1000f, -1796f), -254f), vec4<f32>(-477f, -180f, -543f, 471f), Struct_1(vec4<f32>(-1742f, 549f, 560f, -457f), -181f)), -16584i, Struct_1(vec4<f32>(2204f, 695f, 372f, -471f), 1187f), vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), 1353f)))), _wgslsmith_dot_vec2_i32(~(-u_input.b), -u_input.b), 0i, -2147483647i);
    var_0 = countOneBits(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(2775i, 1i, -10379i, u_input.b.x), vec4<i32>(16483i, -56796i, -5236i, u_input.b.x))));
    var var_1 = select(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, func_2().x), vec3<bool>(all(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)))), select(select(func_2().wyz, vec3<bool>(true, true, any(vec3<bool>(false, false, true))), false), func_2().wyy, !(min(var_0.x, -2147483647i) <= (i32(-1i) * -11891i))), vec3<bool>(false, true, true | func_2().x));
    var_0 = firstTrailingBit(vec4<i32>(-1i, 0i & (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 23606i, var_0.x), vec4<i32>(0i, 1i, var_0.x, 11500i)) ^ u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, -2147483647i, 1i, u_input.b.x)), vec4<i32>(var_0.x, -44900i, u_input.b.x, u_input.b.x) ^ vec4<i32>(52841i, var_0.x, u_input.b.x, var_0.x)), vec4<i32>(var_0.x, var_0.x, 1i, 0i)), select(abs(var_0.x), abs(39835i), true)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1827f)) * func_1(Struct_3(Struct_2(Struct_1(vec4<f32>(-777f, 1307f, 1966f, -2543f), -763f), vec4<f32>(194f, -1127f, 633f, -1000f), Struct_1(vec4<f32>(2616f, -925f, 1708f, 640f), -265f)), u_input.b.x, Struct_1(vec4<f32>(-528f, 799f, -1000f, -529f), 429f), vec4<i32>(var_0.x, 1i, var_0.x, -20180i), 448f)).c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), true & select(!var_1.x, true, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-518f - -1341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-714f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)), func_1(Struct_3(Struct_2(Struct_1(vec4<f32>(456f, -491f, -826f, -622f), 194f), vec4<f32>(960f, -670f, 248f, 1000f), Struct_1(vec4<f32>(-1000f, 1000f, -1000f, 1000f), -637f)), -345i, Struct_1(vec4<f32>(360f, 1419f, -1526f, -717f), 215f), vec4<i32>(u_input.b.x, 9483i, 2147483647i, u_input.b.x), 124f)).a.a.b)));
}

