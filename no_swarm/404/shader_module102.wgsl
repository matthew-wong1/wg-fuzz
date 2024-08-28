struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 54686u;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(48318u, 0u), vec3<bool>(true, false, false), -1000f, vec4<u32>(4294967295u, 0u, 1u, 57649u)), Struct_1(vec2<u32>(27973u, 46490u), vec3<bool>(true, false, false), -731f, vec4<u32>(0u, 12340u, 20029u, 0u)), vec3<i32>(0i, 25543i, -1i), Struct_1(vec2<u32>(1u, 9431u), vec3<bool>(false, false, true), 483f, vec4<u32>(5740u, 8760u, 0u, 0u)), vec4<i32>(2147483647i, -60911i, i32(-2147483648), -30530i)), Struct_1(vec2<u32>(0u, 58019u), vec3<bool>(false, true, true), 670f, vec4<u32>(17810u, 4294967295u, 74648u, 15533u)));

var<private> global2: f32 = -1492f;

var<private> global3: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> bool {
    global2 = global1.a.a.c;
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(169f * _wgslsmith_f_op_f32(729f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - global1.a.b.c) * _wgslsmith_f_op_f32(select(global1.a.d.c, 931f, false)))))));
    var var_0 = Struct_3(global1.a, Struct_1(vec2<u32>(global1.b.a.x, _wgslsmith_clamp_u32(global1.b.d.x, global1.a.d.a.x, _wgslsmith_dot_vec2_u32(global1.a.a.a, global1.b.d.zy))), vec3<bool>(true | all(vec4<bool>(global1.b.b.x, global1.b.b.x, arg_0, true)), global1.a.a.b.x, global1.a.d.b.x | false), _wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.x)))), global1.b.d));
    global2 = -1000f;
    global2 = 1095f;
    return global1.a.a.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-808f - -555f))))), _wgslsmith_f_op_f32(-1343f - global1.b.c), !(!func_3(global1.b.b.x, global1.a.e.wyy, arg_0.e.xw, vec2<f32>(arg_0.a.c, arg_0.a.c))))), 796f);
    let var_1 = !select(all(select(vec2<bool>(false, false), global1.a.d.b.xx, arg_0.d.b.yy)), !any(arg_0.b.b.xy), true) && true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c * 109f), -1000f, 1116f)))));
    let var_3 = u_input.a.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(ceil(var_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(510f, 533f, global1.b.c), _wgslsmith_f_op_vec3_f32(-var_2))))));
    return Struct_3(global1.a, global1.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec3<bool> {
    global0 = ~arg_0.a.a.a.x;
    var var_0 = func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(global1.b, global1.a.b, vec3<i32>(arg_0.a.c.x, 43251i, 0i), arg_0.a.a, arg_0.a.e), false, u_input.a.x, global1.b).b, func_2(Struct_2(Struct_1(vec2<u32>(arg_0.b.d.x, arg_0.b.a.x), vec3<bool>(arg_0.a.a.b.x, arg_0.a.a.b.x, true), 2586f, global1.a.b.d), Struct_1(global1.b.a, global3[_wgslsmith_index_u32(1u, 15u)], arg_0.b.c, arg_0.b.d), vec3<i32>(u_input.a.x, -13288i, -12093i), Struct_1(global1.a.b.a, global3[_wgslsmith_index_u32(0u, 15u)], -1056f, vec4<u32>(1u, 60827u, global1.a.a.a.x, arg_0.a.d.a.x)), arg_0.a.e), false, 2147483647i, Struct_1(vec2<u32>(global1.b.a.x, 4294967295u), vec3<bool>(global1.b.b.x, arg_0.a.d.b.x, false), -647f, arg_0.a.a.d)).b, vec3<i32>(-2147483647i, -25974i, -1i), Struct_1(vec2<u32>(1u, global1.a.a.d.x), global3[_wgslsmith_index_u32(arg_0.a.d.d.x, 15u)], 519f, global1.b.d), vec4<i32>(-24889i, global1.a.c.x, 44694i, global1.a.e.x) | arg_0.a.e), 4294967295u < arg_0.b.a.x, ~(~2147483647i), Struct_1(~arg_0.b.d.wy, select(arg_1, vec3<bool>(false, arg_0.a.d.b.x, arg_0.a.d.b.x), true), global1.b.c, vec4<u32>(arg_0.a.b.a.x, 88089u, arg_0.b.d.x, arg_0.a.a.d.x) >> (global1.a.b.d % vec4<u32>(32u)))).b, func_2(func_2(Struct_2(Struct_1(global1.a.d.d.zx, global1.a.d.b, arg_0.a.a.c, global1.a.d.d), Struct_1(vec2<u32>(8470u, arg_0.a.d.a.x), vec3<bool>(true, global1.a.d.b.x, arg_1.x), 529f, vec4<u32>(0u, arg_0.a.d.a.x, 50573u, global1.b.a.x)), vec3<i32>(1i, -2147483647i, global1.a.c.x), arg_0.a.d, global1.a.e), true, global1.a.c.x, func_2(global1.a, arg_0.a.d.b.x, -2147483647i, Struct_1(vec2<u32>(global1.b.a.x, 1u), vec3<bool>(false, false, global1.b.b.x), 785f, vec4<u32>(arg_0.a.d.a.x, arg_0.a.a.d.x, global1.a.d.d.x, arg_0.b.d.x))).b).a, arg_1.x, arg_0.a.e.x, Struct_1(vec2<u32>(global1.a.d.d.x, arg_0.b.d.x), select(vec3<bool>(true, arg_0.b.b.x, global1.b.b.x), arg_0.a.a.b, arg_1.x), _wgslsmith_f_op_f32(global1.b.c + global1.b.c), ~arg_0.b.d)).b, global1.a.e.zzw, arg_0.a.b, -select(vec4<i32>(u_input.a.x, -2147483647i, -1i, global1.a.c.x), global1.a.e, !vec4<bool>(global1.b.b.x, global1.b.b.x, false, arg_0.b.b.x))), arg_0.a.b.b.x, ~min(0i, 2147483647i), global1.a.b).b;
    let var_1 = ~var_0.d.x;
    let var_2 = select(select(!select(vec4<bool>(var_0.b.x, var_0.b.x, true, true), select(vec4<bool>(global1.b.b.x, false, true, arg_0.b.b.x), vec4<bool>(var_0.b.x, true, false, arg_1.x), vec4<bool>(false, global1.b.b.x, var_0.b.x, global1.a.b.b.x)), !vec4<bool>(true, global1.b.b.x, true, false)), vec4<bool>(select(true, global1.b.b.x != arg_0.a.b.b.x, true), arg_1.x, true, !(var_0.c < global1.a.d.c)), func_2(Struct_2(Struct_1(vec2<u32>(global1.b.d.x, 1u), vec3<bool>(var_0.b.x, false, arg_0.b.b.x), global1.b.c, vec4<u32>(1u, var_0.d.x, 51800u, 30338u)), Struct_1(vec2<u32>(1u, global1.b.d.x), arg_0.a.b.b, arg_0.a.d.c, global1.a.b.d), vec3<i32>(1i, u_input.a.x, -2317i), Struct_1(vec2<u32>(arg_0.a.a.d.x, 1u), vec3<bool>(global1.b.b.x, arg_0.a.a.b.x, true), 1000f, arg_0.a.d.d), vec4<i32>(arg_0.a.c.x, 2147483647i, arg_0.a.c.x, u_input.a.x)), arg_0.b.b.x, 0i, func_2(Struct_2(arg_0.a.d, Struct_1(vec2<u32>(62379u, 0u), vec3<bool>(arg_1.x, global1.b.b.x, var_0.b.x), -892f, arg_0.a.d.d), arg_0.a.c, arg_0.b, vec4<i32>(arg_0.a.e.x, -18127i, -69576i, -37866i)), arg_0.a.a.b.x, -24889i, Struct_1(vec2<u32>(arg_0.a.d.d.x, var_1), arg_0.a.b.b, 923f, arg_0.a.a.d)).a.b).b.c != -1563f), vec4<bool>(true, !any(!vec4<bool>(false, var_0.b.x, arg_1.x, arg_1.x)), true, true), !vec4<bool>(global1.a.e.x < arg_0.a.e.x, true, arg_0.a.b.b.x, false));
    var var_3 = func_2(func_2(Struct_2(Struct_1(vec2<u32>(arg_0.a.d.a.x, 13020u) ^ vec2<u32>(10511u, var_1), !vec3<bool>(false, arg_1.x, false), _wgslsmith_div_f32(729f, -1633f), vec4<u32>(44886u, var_1, 0u, 1u) | vec4<u32>(0u, 28565u, var_1, 4294967295u)), global1.a.a, ~global1.a.c, Struct_1(var_0.d.wx, vec3<bool>(true, var_0.b.x, global1.a.b.b.x), var_0.c, vec4<u32>(global1.a.a.d.x, global1.b.a.x, var_0.d.x, 77794u)), _wgslsmith_mod_vec4_i32(-arg_0.a.e, vec4<i32>(-784i, 46860i, 0i, arg_0.a.c.x))), any(vec3<bool>(arg_0.b.b.x == arg_1.x, true, arg_1.x)), arg_0.a.c.x, Struct_1(~(var_0.d.xz ^ vec2<u32>(0u, 19777u)), select(var_2.xzz, global3[_wgslsmith_index_u32(var_0.d.x, 15u)], arg_0.b.b.x), _wgslsmith_f_op_f32(723f - _wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_clamp_vec4_u32(var_0.d, var_0.d, select(vec4<u32>(4294967295u, 1u, arg_0.a.d.d.x, 1658u), vec4<u32>(45388u, var_1, 9782u, 2390u), vec4<bool>(var_0.b.x, arg_0.b.b.x, false, true))))).a, false, _wgslsmith_mod_i32(0i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.c.x, arg_0.a.c.x, global1.a.c.x, arg_0.a.e.x), global1.a.e), u_input.a.x) ^ _wgslsmith_mult_i32(i32(-1i) * -17523i, u_input.a.x)), global1.b);
    return var_0.b;
}

fn func_1() -> bool {
    return !any(!func_4(func_2(global1.a, global1.a.a.b.x, global1.a.c.x, Struct_1(global1.b.a, global3[_wgslsmith_index_u32(global1.a.d.a.x, 15u)], global1.b.c, vec4<u32>(global1.b.d.x, 9677u, global1.b.a.x, 3685u))), func_2(global1.a, false, -7806i, global1.b).b.b));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    var var_1 = _wgslsmith_f_op_f32(max(900f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.b.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(205f))))))));
    var var_2 = select(!select(select(select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(global1.a.b.b.x, global1.b.b.x, arg_0.x, arg_0.x), vec4<bool>(true, global1.b.b.x, false, var_0.x)), vec4<bool>(arg_0.x, global1.a.b.b.x, arg_0.x, arg_0.x), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(true, true, false, true), vec4<bool>(arg_0.x, true, false, false))), select(!vec4<bool>(var_0.x, true, false, arg_0.x), vec4<bool>(global1.a.b.b.x, global1.a.d.b.x, false, var_0.x), !vec4<bool>(var_0.x, true, false, arg_0.x)), !(!arg_0.x)), vec4<bool>(all(select(select(vec4<bool>(global1.b.b.x, var_0.x, false, false), vec4<bool>(global1.a.b.b.x, false, arg_0.x, var_0.x), arg_0.x), select(vec4<bool>(var_0.x, arg_0.x, false, true), vec4<bool>(true, true, arg_0.x, var_0.x), vec4<bool>(true, arg_0.x, true, true)), vec4<bool>(false, false, false, false))), any(select(select(vec4<bool>(arg_0.x, global1.a.d.b.x, global1.a.d.b.x, global1.b.b.x), vec4<bool>(true, false, var_0.x, false), arg_0.x), !vec4<bool>(global1.b.b.x, global1.a.d.b.x, var_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false))), func_4(Struct_3(global1.a, func_2(global1.a, arg_0.x, global1.a.c.x, global1.b).b), !(!vec3<bool>(arg_0.x, true, arg_0.x))).x, func_4(func_2(func_2(global1.a, false, u_input.a.x, global1.a.b).a, arg_0.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), global1.b), select(!global3[_wgslsmith_index_u32(global1.b.a.x, 15u)], func_2(Struct_2(global1.a.a, global1.a.a, vec3<i32>(-8458i, u_input.a.x, global1.a.c.x), global1.a.d, global1.a.e), false, 1i, global1.b).b.b, select(vec3<bool>(arg_0.x, true, var_0.x), vec3<bool>(var_0.x, false, arg_0.x), false))).x), false);
    let var_3 = global1.b.a.x;
    var_2 = !select(vec4<bool>(~1u < firstTrailingBit(arg_1.x), false, true, !(!var_0.x)), vec4<bool>(var_2.x, select(global1.a.e.x, 37547i, var_0.x) == ~(-5217i), global1.b.b.x, -10708i >= u_input.a.x), arg_0.x);
    return func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(arg_1, vec3<bool>(true, true, global1.a.a.b.x), -1106f, vec4<u32>(global1.b.a.x, 50180u, arg_1.x, 1u)), Struct_1(vec2<u32>(16537u, arg_1.x), vec3<bool>(false, var_2.x, var_0.x), -721f, vec4<u32>(39717u, 3487u, arg_1.x, global1.b.d.x)), global1.a.c, Struct_1(global1.b.a, global3[_wgslsmith_index_u32(4294967295u, 15u)], 407f, vec4<u32>(35898u, global1.b.d.x, 1u, arg_1.x)), vec4<i32>(-11319i, 0i, 1i, u_input.a.x)), any(vec4<bool>(var_2.x, arg_0.x, true, global1.b.b.x)), 1i, func_2(Struct_2(global1.b, Struct_1(vec2<u32>(4294967295u, 19679u), vec3<bool>(false, false, false), -804f, vec4<u32>(45114u, 4294967295u, 4294967295u, arg_1.x)), vec3<i32>(1i, 0i, -17342i), Struct_1(global1.a.b.d.xx, vec3<bool>(true, var_2.x, var_0.x), 761f, vec4<u32>(61262u, 39145u, arg_1.x, 15088u)), global1.a.e), var_0.x, global1.a.c.x, Struct_1(vec2<u32>(arg_1.x, global1.b.a.x), var_2.yyx, -1000f, vec4<u32>(91992u, 0u, 22008u, 120468u))).a.d).a, all(func_2(global1.a, true, global1.a.c.x, global1.b).b.b.zy), 1i, func_2(func_2(global1.a, var_0.x, u_input.a.x, global1.b).a, 15570u > arg_1.x, global1.a.e.x, func_2(global1.a, arg_0.x, -1i, Struct_1(global1.a.d.d.wz, vec3<bool>(true, false, arg_0.x), global1.b.c, vec4<u32>(75766u, 10635u, 1u, 8454u))).a.d).a.d).b, Struct_1(arg_1, var_2.yxw, -387f, ~global1.b.d), max(abs(global1.a.e.zyx), global1.a.e.wyw), Struct_1(~arg_1, select(!vec3<bool>(var_0.x, arg_0.x, global1.a.b.b.x), select(vec3<bool>(arg_0.x, true, global1.b.b.x), global3[_wgslsmith_index_u32(global1.a.b.d.x, 15u)], vec3<bool>(true, true, global1.a.a.b.x)), vec3<bool>(var_0.x, true, false)), global1.a.d.c, _wgslsmith_mod_vec4_u32(global1.b.d, ~vec4<u32>(arg_1.x, global1.a.b.a.x, global1.b.d.x, 1u))), vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.a, global1.a.c.zx), -9819i >> (abs(global1.b.a.x) % 32u), -49158i & u_input.a.x, -(i32(-1i) * -23248i))), true, 30821i, global1.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(!select(vec2<bool>(func_1(), false), vec2<bool>(false, select(global1.b.b.x, global1.b.b.x, global1.b.b.x)), !all(global3[_wgslsmith_index_u32(global1.b.d.x, 15u)])), global1.b.a ^ vec2<u32>(~_wgslsmith_add_u32(0u, global1.b.d.x), global1.b.a.x >> ((1u << (global1.a.b.d.x % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(!func_5(!vec2<bool>(global1.b.b.x, global1.b.b.x), global1.b.d.wx).a.a.b.zx, vec2<u32>(reverseBits(global1.a.a.d.x), global1.b.a.x)).a.c.x, _wgslsmith_add_i32(global1.a.e.x, u_input.a.x), vec4<i32>(_wgslsmith_sub_i32(0i, 19772i), _wgslsmith_mod_i32(1i, firstTrailingBit(u_input.a.x)), -2147483647i, 2147483647i), abs(global1.a.e), global1.b.c);
}

