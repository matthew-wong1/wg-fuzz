struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-1247f, -709f, 925f, 2556f), vec4<f32>(-792f, -976f, -1230f, 512f), vec4<f32>(1064f, 1652f, 845f, -479f), vec4<f32>(-779f, 1590f, -320f, -809f), vec4<f32>(-146f, 1118f, -811f, 442f), vec4<f32>(1123f, 1135f, -1000f, -1673f), vec4<f32>(-318f, -754f, 809f, -286f), vec4<f32>(-921f, -1274f, -282f, 697f), vec4<f32>(-629f, -1649f, 1514f, -745f), vec4<f32>(1708f, -1294f, 995f, 722f));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(true, true), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(false, false), Struct_1(false, false), Struct_1(true, true), Struct_1(true, true), Struct_1(true, false), Struct_1(true, true), Struct_1(false, true), Struct_1(true, true), Struct_1(true, true), Struct_1(false, true), Struct_1(true, true), Struct_1(true, true), Struct_1(false, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(true, true), Struct_1(true, false), Struct_1(true, false), Struct_1(false, false), Struct_1(true, false), Struct_1(false, true), Struct_1(false, true));

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    return select(1u, 1u, any(select(select(!vec2<bool>(global0.d.a, false), !global3.wz, any(global3.xyz)), select(!vec2<bool>(true, global0.e.x), vec2<bool>(global3.x, true), global0.a.x != u_input.c), !vec2<bool>(true, global0.e.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = !select(global3.x, any(select(arg_0.b.xyy, select(vec3<bool>(false, arg_0.b.x, true), global3.wwz, true), false)), any(vec4<bool>(19408u < global0.a.x, global0.c <= 0i, true, any(vec3<bool>(global0.d.b, true, false)))));
    var var_1 = arg_2;
    var_0 = global0.e.x;
    var var_2 = Struct_2(vec2<u32>(83257u >> ((_wgslsmith_clamp_u32(4294967295u, 2831u, 27725u) >> (func_3() % 32u)) % 32u), 0u), 2566f, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -18234i), _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), abs(global0.c)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -37635i), vec2<i32>(global0.c, global0.c), vec2<i32>(0i, 2147483647i))))), Struct_1(arg_0.b.x, global3.x), !vec3<bool>(!arg_2.a, !(!var_1.a), var_1.a));
    var var_3 = var_2.c;
    return firstLeadingBit(~var_2.c);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = !select(vec4<bool>(!(!global0.e.x), true, !arg_0, !arg_2.b), !vec4<bool>(!arg_3, !arg_2.a, u_input.c < u_input.b, arg_1.b), vec4<bool>(~global0.c <= func_2(Struct_3(vec2<f32>(-682f, -589f), vec4<bool>(true, true, global0.d.a, false)), vec2<u32>(global0.a.x, u_input.c), global0.d, vec3<u32>(global0.a.x, 0u, global0.a.x)), false, any(vec3<bool>(true, false, arg_2.a)) | arg_0, any(!global3.xy)));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    global2 = array<Struct_1, 28>();
    let var_0 = vec4<u32>(arg_1.x >> (global0.a.x % 32u), _wgslsmith_add_u32(~arg_1.x, _wgslsmith_mult_u32(97170u, arg_1.x | global0.a.x)), 1u, 32642u ^ arg_1.x);
    global2 = array<Struct_1, 28>();
    let var_1 = vec4<u32>(global0.a.x, ~(~13213u), ~global0.a.x, 12594u);
    var var_2 = var_0.x;
    return Struct_2(countOneBits(arg_1), 2175f, _wgslsmith_add_i32(-(0i & u_input.a.x), -17555i), func_1(global0.d.b, func_1(!(-20883i <= global0.c), Struct_1(true, false), global0.d, any(vec3<bool>(arg_3.x, global0.e.x, false))), arg_2, var_1.x >= 13997u), select(!arg_3, select(arg_3, select(arg_3, global0.e, vec3<bool>(arg_2.a, false, global3.x)), ~0i > global0.c), !(!arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(select(select(global0.a, vec2<u32>(u_input.b, 0u), false), global0.a, select(vec2<bool>(global0.d.a, global3.x), vec2<bool>(false, true), vec2<bool>(true, global0.e.x))), vec2<u32>(126650u, global0.a.x) >> (vec2<u32>(10847u, u_input.c) % vec2<u32>(32u)), ~(~global0.a)), ~vec2<u32>(u_input.c, u_input.b)), func_1(any(!select(vec4<bool>(global0.d.a, false, global3.x, global3.x), vec4<bool>(false, global3.x, false, false), vec4<bool>(true, global0.e.x, global0.e.x, true))), global2[_wgslsmith_index_u32(global0.a.x, 28u)], global0.d, true), !select(select(select(global3.ywz, vec3<bool>(true, false, false), vec3<bool>(global3.x, true, global0.e.x)), vec3<bool>(false, false, global0.d.a), select(vec3<bool>(global0.d.b, global0.e.x, global3.x), global3.xxz, global0.e)), global0.e, true));
    global3 = vec4<bool>(!(global0.a.x <= ~_wgslsmith_div_u32(u_input.c, 61576u)), select(all(!(!global3.zwy)), global0.d.b, false), true, func_4(-276f, _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, var_0.a.x), vec2<u32>(37314u, global0.a.x) >> (var_0.a % vec2<u32>(32u))), Struct_1(func_4(-602f, global0.a, var_0.d, var_0.e).e.x, false), func_4(global0.b, vec2<u32>(27189u, 4294967295u), var_0.d, !global0.e).e).b <= global0.b);
    var_0 = Struct_2(firstTrailingBit(~var_0.a), -339f, select(var_0.c, -(~_wgslsmith_mult_i32(var_0.c, global0.c)), func_1(!any(global0.e), var_0.d, global0.d, func_1(any(global3.wyw), Struct_1(true, global0.d.b), Struct_1(var_0.d.b, false), global3.x).a).a), func_1(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-823f, global0.b, true)), _wgslsmith_f_op_f32(ceil(-971f))), vec2<u32>(4294967295u, var_0.a.x), func_4(_wgslsmith_f_op_f32(var_0.b + global0.b), vec2<u32>(50900u, 0u), Struct_1(var_0.e.x, var_0.e.x), global3.xxw).d, select(global3.xww, vec3<bool>(global0.d.a, false, global3.x), all(vec3<bool>(global0.e.x, true, global3.x)))).e.x, func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), var_0.b, false)), ~vec2<u32>(1u, var_0.a.x), Struct_1(true, true), vec3<bool>(all(vec4<bool>(false, var_0.e.x, false, true)), any(vec4<bool>(true, false, false, false)), true)).d, Struct_1(false, firstTrailingBit(45766u) > max(40595u, 0u)), !func_1(global0.b < var_0.b, global2[_wgslsmith_index_u32(global0.a.x >> (var_0.a.x % 32u), 28u)], func_1(global0.e.x, Struct_1(global0.e.x, true), global2[_wgslsmith_index_u32(10114u, 28u)], true), var_0.e.x).b), !select(select(func_4(var_0.b, vec2<u32>(global0.a.x, 121u), global2[_wgslsmith_index_u32(u_input.c, 28u)], vec3<bool>(global3.x, false, var_0.d.b)).e, global3.ywx, var_0.e), global3.xxw, var_0.e.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-696f, _wgslsmith_f_op_f32(-var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(sign(-1488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(570f)), _wgslsmith_f_op_f32(exp2(global0.b))))))));
    var_0 = Struct_2(~(~select(vec2<u32>(4294967295u, var_0.a.x), ~var_0.a, global0.b <= 670f)), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1515f, 1542f)) + -985f), 631f)), var_0.c, func_1(var_0.e.x, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 53024u, u_input.b), firstTrailingBit(vec4<u32>(var_0.a.x, 0u, 0u, u_input.b))), 28u)], var_0.d, !(true | (true & global3.x))), select(var_0.e, !vec3<bool>(func_4(global0.b, var_0.a, var_0.d, global3.yzx).d.b, all(var_0.e), false), vec3<bool>(any(select(vec4<bool>(var_0.e.x, global0.d.a, global0.d.b, false), vec4<bool>(true, true, global3.x, true), false)), false, !(global3.x && true))));
    var_0 = func_4(_wgslsmith_f_op_f32(sign(-1000f)), select(vec2<u32>(~(~global0.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u), vec3<u32>(5118u, global0.a.x, 1u)), countOneBits(vec3<u32>(u_input.b, 1u, u_input.b)))), var_0.a, 894f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -272f), 1352f)), global2[_wgslsmith_index_u32(103534u, 28u)], func_4(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-193f - global0.b), _wgslsmith_f_op_f32(min(-1524f, var_1.x)))), var_0.a, Struct_1(false | global0.d.a, var_0.d.b), !global0.e).b, vec2<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 1u, 1102u, 4294967295u) >> (vec4<u32>(var_0.a.x, var_0.a.x, u_input.b, 13829u) % vec4<u32>(32u)), ~vec4<u32>(var_0.a.x, global0.a.x, var_0.a.x, global0.a.x))), func_1(true, global2[_wgslsmith_index_u32(~(~4294967295u), 28u)], func_4(global0.b, ~var_0.a, global0.d, func_4(771f, vec2<u32>(var_0.a.x, 1u), global0.d, var_0.e).e).d, any(select(vec3<bool>(global3.x, global3.x, global0.e.x), global0.e, var_0.d.b))), vec3<bool>(true, any(select(global3.xzz, global3.xyz, global0.e.x)), all(!global0.e.zy))).e);
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-405f, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 509f) * vec2<f32>(-113f, -288f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b, -1142f))))))), select(select(!(!vec4<bool>(global3.x, false, global3.x, false)), select(!vec4<bool>(global3.x, global0.d.a, true, global0.d.a), vec4<bool>(false, true, false, false), vec4<bool>(false, var_0.e.x, var_0.d.a, true)), select(!vec4<bool>(global0.d.a, true, var_0.d.b, true), vec4<bool>(true, false, true, global3.x), false)), select(select(select(vec4<bool>(false, false, true, global3.x), vec4<bool>(true, false, global0.e.x, global0.e.x), true), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.e.x, global3.x, global0.d.a, true), vec4<bool>(false, true, global3.x, false), vec4<bool>(global0.e.x, true, true, var_0.d.b))), !vec4<bool>(global0.e.x, global0.d.b, true, global0.d.a), vec4<bool>(!global3.x, true, !global0.d.a, func_4(-190f, vec2<u32>(5691u, u_input.c), global0.d, vec3<bool>(true, global3.x, var_0.e.x)).d.a)), vec4<bool>(firstLeadingBit(1i) < u_input.a.x, all(vec2<bool>(false, var_0.e.x)), func_4(var_0.b, vec2<u32>(global0.a.x, 0u), Struct_1(false, true), vec3<bool>(var_0.d.a, var_0.e.x, global0.d.b)).e.x, !all(vec4<bool>(global3.x, global3.x, global0.d.b, global3.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1131f), var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-925f, -1809f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - 499f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.x, var_2.a.x, func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-383f, 152f)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(global3.x, true, true, true), var_2.b, var_2.b), !global0.e.x)), global0.a, func_4(var_0.b, global0.a, Struct_1(!global0.d.b, select(false, var_2.b.x, false)), var_0.e).d, vec3<u32>(23336u, 23488u, 1u)));
}

