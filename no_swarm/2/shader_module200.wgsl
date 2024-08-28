struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1386i, vec2<bool>(true, false), vec2<u32>(1u, 9829u), vec2<f32>(1124f, 362f), true);

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-872f, 307f), vec2<f32>(222f, -447f), vec2<f32>(-1660f, 1000f), vec2<f32>(-1645f, 1721f), vec2<f32>(492f, -732f), vec2<f32>(824f, 1369f), vec2<f32>(-808f, -533f), vec2<f32>(1000f, -1000f), vec2<f32>(663f, -1722f));

var<private> global2: array<vec3<i32>, 15>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = any(arg_0.a.b);
    global3 = !select(select(!vec3<bool>(true, arg_2.a.e, arg_2.d.e), select(vec3<bool>(false, global0.e, false), vec3<bool>(global0.e, false, arg_2.a.b.x), true), select(arg_2.a.b.x, false, false) | true), vec3<bool>(false, all(select(vec3<bool>(global0.e, false, global0.b.x), vec3<bool>(global0.e, true, global0.e), arg_0.d.b.x)), any(global0.b)), arg_0.d.e);
    global3 = vec3<bool>(true && any(!(!vec4<bool>(true, arg_0.a.e, global0.b.x, global0.e))), true, true);
    let var_1 = min(select(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.b, arg_0.d.c.x, arg_2.d.c.x), _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(global0.c.x, u_input.c.x)), ~arg_2.b), ~1u, arg_0.a.c.x, arg_0.d.c.x), _wgslsmith_add_vec4_u32(~vec4<u32>(global0.c.x, arg_0.d.c.x, u_input.a.x, 11939u), vec4<u32>(4294967295u, 19596u, 1u, u_input.c.x) >> (vec4<u32>(arg_0.d.c.x, 4294967295u, arg_2.b, 44144u) % vec4<u32>(32u))), global3.x), firstLeadingBit(~(~(~vec4<u32>(arg_0.a.c.x, 4294967295u, arg_0.a.c.x, 39270u)))));
    global0 = Struct_1(arg_1, select(global3.xx, vec2<bool>(!(global0.b.x != true), _wgslsmith_f_op_f32(f32(-1f) * -1190f) < _wgslsmith_f_op_f32(-arg_2.d.d.x)), arg_0.d.b.x), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.d.c ^ u_input.c, global0.c), arg_0.a.c << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 36885u), vec2<u32>(var_1.x, 32293u)) % vec2<u32>(32u))), arg_2.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, arg_0.c)))) == -521f);
    return !(!(!(!any(vec2<bool>(arg_2.d.b.x, true)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = Struct_1(-1i, vec2<bool>(arg_1, arg_0.x && arg_1), vec2<u32>(~4294967295u, max(_wgslsmith_sub_u32(u_input.a.x, global0.c.x) | ~u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(47815u, global0.c.x, u_input.a.x, u_input.c.x), ~vec4<u32>(global0.c.x, u_input.c.x, 52369u, 1u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2))) * global1[_wgslsmith_index_u32(global0.c.x, 9u)]), false);
    var var_1 = (any(select(!vec4<bool>(global3.x, arg_1, true, false), vec4<bool>(false, false, true, arg_1), true)) && all(!vec4<bool>(var_0.e, var_0.e, true, arg_0.x))) || global0.b.x;
    let var_2 = vec4<u32>(u_input.a.x, var_0.c.x, 70333u, ~(~4294967295u));
    var var_3 = Struct_1(1i, arg_0, ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 39797u), vec2<u32>(var_0.c.x, u_input.a.x)), reverseBits(var_2.wx)) | _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.x, u_input.c.x), vec2<u32>(u_input.c.x, var_0.c.x)), vec2<u32>(46229u, 0u) | global0.c, u_input.a.zy), ~vec2<u32>(1u, var_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, var_0.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.d.x, -173f)))))), global3.yx)), select(false, all(vec2<bool>(false, true)), global0.b.x) & false);
    var var_4 = vec4<bool>((all(!vec4<bool>(var_3.e, false, var_3.e, var_0.e)) & global0.b.x) | func_3(Struct_2(Struct_1(global0.a, vec2<bool>(true, false), var_2.wy, vec2<f32>(var_0.d.x, var_0.d.x), arg_0.x), max(0u, var_3.c.x), -196f, Struct_1(-1i, vec2<bool>(global0.e, arg_0.x), vec2<u32>(global0.c.x, 1u), var_3.d, true), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_dot_vec2_i32(u_input.b.wz, vec2<i32>(-1i, global0.a)), Struct_2(Struct_1(-31166i, vec2<bool>(true, global0.b.x), u_input.c, vec2<f32>(707f, -968f), false), ~var_3.c.x, -468f, Struct_1(u_input.b.x, vec2<bool>(true, false), var_0.c, var_0.d, true), var_0.d.x), -1i), all(!select(vec2<bool>(false, true), !global0.b, select(var_0.b, global3.yx, false))), true, !any(select(select(vec4<bool>(false, arg_0.x, false, var_3.e), vec4<bool>(true, true, false, var_3.b.x), vec4<bool>(global0.b.x, true, false, true)), !vec4<bool>(false, true, true, arg_0.x), vec4<bool>(global3.x, global3.x, true, var_0.b.x))));
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> bool {
    global1 = array<vec2<f32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(func_4(select(arg_1.b, select(arg_1.b, !arg_1.b, func_3(Struct_2(arg_1, global0.c.x, arg_1.d.x, Struct_1(-16454i, global3.yz, arg_1.c, vec2<f32>(244f, global0.d.x), true), arg_1.d.x), _wgslsmith_mod_i32(-44765i, arg_0), Struct_2(Struct_1(14622i, global0.b, global0.c, arg_1.d, false), 0u, -2668f, Struct_1(u_input.b.x, global3.yx, u_input.c, vec2<f32>(-357f, global0.d.x), true), 744f), -u_input.b.x)), global0.d.x <= global0.d.x), global0.d.x >= _wgslsmith_f_op_f32(floor(arg_1.d.x)), _wgslsmith_f_op_f32(-arg_1.d.x)));
    let var_1 = true;
    let var_2 = global0.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -561f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-arg_1.d.x)), -2078f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_2.x, -106f, -217f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1202f, 1014f, 2682f, 433f) + vec4<f32>(-843f, 760f, global0.d.x, 1045f)))), false)), func_3(Struct_2(Struct_1(arg_2, vec2<bool>(true, arg_3.x), u_input.c, arg_1.d, true), ~arg_1.c.x, _wgslsmith_f_op_f32(var_2.x * var_2.x), Struct_1(u_input.b.x, global0.b, vec2<u32>(u_input.c.x, global0.c.x), global0.d, false), _wgslsmith_f_op_f32(552f * arg_1.d.x)), arg_2, Struct_2(arg_1, _wgslsmith_dot_vec2_u32(u_input.c, arg_1.c), _wgslsmith_f_op_f32(max(-473f, -285f)), arg_1, arg_1.d.x), -(~u_input.b.x))))));
    return false;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_2.a;
    let var_0 = arg_2.a;
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    let var_1 = select(!(!select(vec2<bool>(arg_2.a.b.x, false), select(vec2<bool>(global3.x, global0.b.x), var_0.b, false), false)), vec2<bool>(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-global0.d.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.x))), global3.x | any(!vec3<bool>(arg_2.d.b.x, true, global3.x))), !(!(global0.c.x > 35039u)));
    return arg_2.d;
}

fn func_1() -> Struct_1 {
    let var_0 = select(!(!global3.xx), vec2<bool>(true, any(!vec4<bool>(global3.x, true, global3.x, global0.e)) || all(!vec3<bool>(global0.e, true, true))), true);
    global2 = array<vec3<i32>, 15>();
    let var_1 = -1000f;
    global2 = array<vec3<i32>, 15>();
    let var_2 = ~(-global2[_wgslsmith_index_u32(u_input.c.x, 15u)]);
    return func_5(reverseBits(min(abs(~vec3<u32>(global0.c.x, 4294967295u, 3429u)), ~_wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), select(~u_input.b, ~u_input.b, !vec4<bool>(all(vec4<bool>(global3.x, false, global3.x, global3.x)), true, func_2(var_2.x, Struct_1(var_2.x, var_0, global0.c, global0.d, global3.x), -25233i, global3.xx), true)), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.wxx, -vec3<i32>(25431i, var_2.x, -32393i)), vec2<bool>(false && var_0.x, true), global0.c, vec2<f32>(_wgslsmith_f_op_f32(max(1159f, 599f)), var_1), all(vec4<bool>(global3.x, false, true, global3.x))), _wgslsmith_dot_vec2_u32(min(global0.c, ~vec2<u32>(31191u, 51251u)), _wgslsmith_add_vec2_u32(reverseBits(u_input.a.xz), min(vec2<u32>(1u, global0.c.x), vec2<u32>(10189u, global0.c.x)))), _wgslsmith_f_op_f32(var_1 * var_1), Struct_1(-1i, global0.b, ~_wgslsmith_div_vec2_u32(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(global0.c.x, 9u)], vec2<f32>(-804f, 894f)), vec2<f32>(1000f, var_1), var_0.x)), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1)))));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = func_1();
    global2 = array<vec3<i32>, 15>();
    var var_0 = Struct_2(arg_0, _wgslsmith_clamp_u32(arg_0.c.x, firstTrailingBit(abs(59198u)), _wgslsmith_dot_vec3_u32(abs(~u_input.a), u_input.a)), -1436f, func_5(abs(select(vec3<u32>(4348u, 14666u, global0.c.x), ~vec3<u32>(1051u, 4011u, 26932u), !vec3<bool>(true, global3.x, true))), ~vec4<i32>(arg_2, 45710i, -arg_0.a, -14219i), Struct_2(func_5(vec3<u32>(global0.c.x, u_input.a.x, 0u), u_input.b & u_input.b, Struct_2(Struct_1(-1i, vec2<bool>(arg_0.b.x, true), u_input.a.xx, arg_0.d, global0.b.x), u_input.c.x, arg_0.d.x, Struct_1(0i, vec2<bool>(true, false), vec2<u32>(u_input.a.x, u_input.c.x), global0.d, global3.x), 328f)), 29251u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(global0.d.x, global0.d.x))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x))))), _wgslsmith_f_op_f32(func_5(vec3<u32>(40856u, 56352u, min(u_input.a.x, 32168u)), u_input.b, Struct_2(func_5(u_input.a, vec4<i32>(2147483647i, arg_2, u_input.b.x, 36347i), Struct_2(Struct_1(-2147483647i, global3.xx, vec2<u32>(global0.c.x, global0.c.x), global1[_wgslsmith_index_u32(4294967295u, 9u)], true), 18053u, arg_0.d.x, Struct_1(-22164i, vec2<bool>(true, true), global0.c, global0.d, true), 1042f)), 1u, 189f, Struct_1(0i, global3.yy, arg_0.c, global0.d, global3.x), _wgslsmith_f_op_f32(arg_0.d.x - 740f))).d.x * -922f));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)))) - vec3<f32>(1371f, _wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.x, -339f)))), _wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(212f + -1000f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-var_0.c), arg_0.b.x)))), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(select(-639f, global0.d.x, true)))))), 1000f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(vec3<u32>(~(~36641u), _wgslsmith_sub_u32(global0.c.x, ~global0.c.x), 39261u));
    var var_1 = func_6(func_1(), _wgslsmith_add_i32(-59076i, func_5(vec3<u32>(_wgslsmith_sub_u32(var_0.x, u_input.a.x), select(39709u, 1u, global3.x), 0u), vec4<i32>(reverseBits(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.a, 2147483647i, global0.a), u_input.b), -20607i), Struct_2(Struct_1(u_input.b.x, vec2<bool>(global3.x, true), var_0.zz, vec2<f32>(global0.d.x, global0.d.x), global3.x), 0u, global0.d.x, func_5(u_input.a, vec4<i32>(-43114i, 65391i, -13124i, u_input.b.x), Struct_2(Struct_1(0i, global3.zx, var_0.zz, vec2<f32>(global0.d.x, 463f), false), global0.c.x, global0.d.x, Struct_1(-2147483647i, vec2<bool>(true, true), vec2<u32>(global0.c.x, 44079u), global0.d, global0.e), 935f)), 806f)).a), -34474i);
    var_1 = Struct_1(func_5(u_input.a, -(~(~vec4<i32>(-2147483647i, u_input.b.x, global0.a, global0.a))), Struct_2(Struct_1(global0.a, func_1().b, vec2<u32>(21307u, 85302u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x)), false), 33030u, _wgslsmith_f_op_f32(-global0.d.x), func_5(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), reverseBits(vec4<i32>(33547i, var_1.a, global0.a, 1i)), Struct_2(Struct_1(-24818i, vec2<bool>(var_1.b.x, true), var_0.zy, var_1.d, global0.b.x), 41573u, global0.d.x, Struct_1(var_1.a, vec2<bool>(true, global0.e), vec2<u32>(1u, var_1.c.x), var_1.d, true), 256f)), var_1.d.x)).a, vec2<bool>(func_2(firstTrailingBit(global0.a), func_1(), _wgslsmith_add_i32(i32(-1i) * -4901i, u_input.b.x), !(!global3.yx)), !select(!global0.e, true, true)), global0.c, _wgslsmith_f_op_vec2_f32(round(var_1.d)), ~(~4294967295u) < var_0.x);
    let var_2 = Struct_1(-(~(-func_1().a)), !vec2<bool>(global3.x && global0.e, any(!vec3<bool>(var_1.b.x, false, global3.x))), var_0.yx, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1199f + _wgslsmith_f_op_f32(862f + 455f)), var_1.d.x), 2018f), 1u <= _wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.c.x, 4294967295u, var_0.x)), ~min(u_input.a, u_input.a)));
    var_1 = Struct_1(2147483647i, select(!var_1.b, !(!var_2.b), u_input.c.x != _wgslsmith_clamp_u32(var_2.c.x, _wgslsmith_sub_u32(var_2.c.x, 13465u), ~var_1.c.x)), func_1().c, var_1.d, !func_1().b.x);
    let var_3 = select(vec2<bool>(all(vec4<bool>(any(vec2<bool>(var_2.e, true)), any(vec4<bool>(var_2.e, var_1.e, false, false)), all(vec4<bool>(false, global0.b.x, true, var_1.e)), global3.x)), func_5(vec3<u32>(var_0.x, u_input.a.x, global0.c.x), u_input.b, Struct_2(Struct_1(0i, vec2<bool>(global0.e, var_2.e), global0.c, var_1.d, false), 33729u, 1000f, Struct_1(-1i, global0.b, vec2<u32>(var_0.x, u_input.c.x), vec2<f32>(1045f, 1294f), true), 1442f)).d.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * _wgslsmith_f_op_f32(-global0.d.x))), vec2<bool>(select(false, u_input.b.x <= u_input.b.x, var_2.e), global0.b.x), global0.e);
    let var_4 = Struct_1(~_wgslsmith_add_i32(-select(-38430i, 67216i, global3.x), u_input.b.x), !var_3, ~func_5(u_input.a | u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, global0.a, var_2.a), u_input.b), var_2.a, _wgslsmith_mod_i32(u_input.b.x, var_1.a), u_input.b.x), Struct_2(func_1(), var_2.c.x, _wgslsmith_f_op_f32(round(369f)), func_5(vec3<u32>(1u, var_2.c.x, 4294967295u), u_input.b, Struct_2(var_2, var_2.c.x, -514f, Struct_1(u_input.b.x, var_2.b, vec2<u32>(4294967295u, var_0.x), vec2<f32>(-1161f, -934f), var_1.e), -1309f)), var_1.d.x)).c, _wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, -296f), _wgslsmith_f_op_vec2_f32(-var_2.d)))), var_2.b.x);
    let var_5 = ~(_wgslsmith_clamp_u32(1u, 1u >> (var_4.c.x % 32u), firstTrailingBit(_wgslsmith_div_u32(63508u, var_4.c.x))) | ~99957u);
    let var_6 = Struct_2(Struct_1(var_4.a, select(vec2<bool>(false, any(vec3<bool>(global0.b.x, var_2.e, true))), vec2<bool>(true, true), !vec2<bool>(true, global0.e)), var_4.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(1958f, var_1.d.x) * global1[_wgslsmith_index_u32(select(func_6(Struct_1(-1i, vec2<bool>(global0.e, var_4.e), global0.c, global0.d, global0.b.x), global0.a, -2147483647i).c.x, var_1.c.x, false | var_1.b.x), 9u)]), any(vec2<bool>(var_1.e == var_4.e, var_2.b.x))), 7830u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f - global0.d.x) * _wgslsmith_f_op_f32(-var_4.d.x)))))), Struct_1(u_input.b.x, !global0.b, ~vec2<u32>(1u, 4294967295u) >> (~(var_0.xz ^ global0.c) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(4294967295u, 9u)])))), var_4.b.x), var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-48913i, _wgslsmith_f_op_f32(trunc(var_4.d.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1325f), 885f, _wgslsmith_f_op_f32(floor(-586f)), _wgslsmith_f_op_f32(round(448f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-919f, var_6.c, var_4.d.x, 927f), vec4<f32>(global0.d.x, -307f, var_6.e, 691f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-131f, var_4.d.x, 332f, -1729f) * vec4<f32>(global0.d.x, var_4.d.x, 1535f, -839f)))))), global2[_wgslsmith_index_u32(~max(~4294967295u, 1u), 15u)]);
}

