struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1864i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!any(vec4<bool>(false, true, false, false))) && any(vec3<bool>(any(vec2<bool>(false, true)), true, true)));
    var var_1 = ~(1u & u_input.d.x);
    let var_2 = _wgslsmith_add_vec2_i32(firstTrailingBit(~(~(-vec2<i32>(u_input.b, u_input.a.x)))), vec2<i32>(0i, 10358i));
    let var_3 = 5732i;
    let var_4 = arg_0;
    return ~_wgslsmith_clamp_vec4_u32(~(u_input.d >> (vec4<u32>(u_input.c.x, var_4.a, u_input.e, u_input.d.x) % vec4<u32>(32u))), max(vec4<u32>(u_input.e, 12827u & u_input.d.x, 4294967295u, 7528u), firstTrailingBit(vec4<u32>(54020u, var_4.a, 4294967295u, 4294967295u))), vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.e, 54016u)), 63721u, abs(0u), u_input.d.x));
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(false, select(any(vec2<bool>(true, true)), !(_wgslsmith_mod_i32(u_input.b, 1i) < firstTrailingBit(0i)), firstTrailingBit(reverseBits(25110u)) > abs(~4294967295u)));
    var var_1 = select(func_3(Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1651f, -1073f)), -1000f)) & u_input.d, ~max(u_input.d, vec4<u32>(36089u, u_input.c.x, 4294967295u, u_input.d.x) >> (vec4<u32>(u_input.e, u_input.c.x, u_input.d.x, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_clamp_u32(countOneBits(4294967295u), ~u_input.e, ~u_input.d.x), 79609u, 4645u, 34350u), vec4<bool>(var_0.x, any(select(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(true, var_0.x, true, false), vec4<bool>(true, true, var_0.x, true)), vec4<bool>(var_0.x, false, true, var_0.x), false)), (func_3(Struct_1(1u, vec2<f32>(-166f, 1000f), -1000f)).x ^ 1u) >= 78217u, !(!select(var_0.x, true, var_0.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1369f, 1866f)), -1642f) + vec2<f32>(-192f, _wgslsmith_f_op_f32(-365f - 927f)))));
    let var_3 = Struct_1(~u_input.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -2026f)))), _wgslsmith_f_op_f32(-1f));
    var_0 = !(!(!select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x)), !vec2<bool>(false, var_0.x), any(vec4<bool>(false, true, true, true)))));
    return var_0.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)))) + arg_1.a.b);
    var var_1 = select(vec3<bool>(select(_wgslsmith_mult_u32(arg_1.c.a, 46075u) == (arg_1.a.a ^ 70595u), arg_0.x, func_2()), true, true), select(select(select(vec3<bool>(arg_1.e.x, false, true), vec3<bool>(arg_1.e.x, false, true), !vec3<bool>(false, true, arg_1.e.x)), select(vec3<bool>(false, true, false), select(arg_1.e, vec3<bool>(arg_0.x, arg_1.e.x, false), arg_0.x), vec3<bool>(arg_0.x, arg_1.e.x, arg_0.x)), all(select(vec2<bool>(true, arg_0.x), arg_0, vec2<bool>(false, true)))), vec3<bool>(!(arg_1.e.x & arg_1.e.x), true, false), arg_1.e), arg_1.e);
    global0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i | _wgslsmith_clamp_i32(u_input.b, -1i, 8385i), u_input.a.x, ~_wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.a.wx), u_input.b), u_input.a);
    var_1 = select(vec3<bool>(false, true, arg_1.b != _wgslsmith_f_op_f32(_wgslsmith_div_f32(1583f, var_0.x) - 227f)), !vec3<bool>(_wgslsmith_sub_i32(-14062i, u_input.b) != u_input.b, !(!arg_1.e.x), (-2772i == u_input.b) || any(vec4<bool>(true, arg_0.x, arg_0.x, true))), !(!any(select(var_1.yy, vec2<bool>(true, var_1.x), vec2<bool>(arg_1.e.x, false)))));
    var var_2 = arg_1.e.x;
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = vec3<u32>(~arg_1.d, u_input.d.x, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_1.a.a, u_input.d.x)), ~u_input.c));
    var var_2 = func_1(!(!func_1(select(vec2<bool>(false, arg_1.e.x), arg_1.e.zy, false), func_1(vec2<bool>(false, true), arg_1)).e.yy), arg_1).a;
    var_2 = arg_1.c;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) + arg_1.a.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c * -1065f)))))));
    return arg_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_2(func_1(arg_2.xz, func_1(!select(vec2<bool>(true, arg_2.x), arg_2.wx, arg_2.zx), Struct_2(func_4(-2147483647i, Struct_2(Struct_1(1u, vec2<f32>(arg_1.b.x, arg_1.b.x), arg_1.c), arg_1.b.x, Struct_1(4294967295u, arg_1.b, arg_1.b.x), u_input.c.x, vec3<bool>(false, false, arg_2.x))), arg_1.c, Struct_1(arg_1.a, vec2<f32>(arg_1.c, -954f), -751f), ~arg_3.x, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)))).c, arg_1.c, Struct_1(select(~(~u_input.c.x), _wgslsmith_add_u32(32413u, _wgslsmith_clamp_u32(43075u, arg_3.x, arg_3.x)), func_2()), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-767f, arg_1.c))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, -813f) * arg_1.b)))), arg_1.b.x), func_3(Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.b - vec2<f32>(arg_1.c, 233f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1769f, 260f))))), 332f)).x, select(select(!select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(false, false, false)), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(!arg_2.x, false, func_1(vec2<bool>(arg_2.x, arg_2.x), Struct_2(arg_1, arg_1.c, Struct_1(u_input.c.x, arg_1.b, 347f), arg_1.a, vec3<bool>(true, arg_2.x, arg_2.x))).e.x)), vec3<bool>(any(vec2<bool>(arg_2.x, true)) || (arg_1.c != arg_1.c), !(u_input.a.x != 46410i), arg_2.x), arg_2.wyw));
    var var_1 = 4294967295u;
    global0 = _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32(arg_0 ^ 2147483647i, u_input.b), firstTrailingBit(-8950i), ~_wgslsmith_mult_i32(arg_0, arg_0) & abs(arg_0), abs(50321i)));
    var_1 = arg_1.a;
    var var_2 = vec3<f32>(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return func_1(func_1(!(!(!vec2<bool>(var_0.e.x, true))), func_1(!(!vec2<bool>(true, var_0.e.x)), Struct_2(func_4(-1i, Struct_2(var_0.a, var_2.x, Struct_1(u_input.d.x, vec2<f32>(1000f, 859f), 895f), arg_1.a, vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(var_0.c.c * var_2.x), Struct_1(arg_3.x, var_0.c.b, -225f), u_input.d.x, !arg_2.zyy))).e.zy, Struct_2(Struct_1(1u, _wgslsmith_f_op_vec2_f32(var_2.yy - arg_1.b), 1088f), _wgslsmith_f_op_f32(f32(-1f) * -982f), func_1(vec2<bool>(1u == var_0.c.a, arg_2.x), func_1(var_0.e.zz, func_1(arg_2.zx, var_0))).c, ~(~(~u_input.e)), !arg_2.xxw)).e;
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_u32(4294967295u, func_1(!(!arg_1.zz), Struct_2(func_1(arg_1.zx, Struct_2(Struct_1(1u, arg_2.b, arg_2.c), 429f, Struct_1(u_input.c.x, arg_2.b, -2672f), arg_2.a, vec3<bool>(true, arg_0, arg_1.x))).c, _wgslsmith_f_op_f32(max(arg_2.b.x, arg_2.b.x)), Struct_1(u_input.d.x, vec2<f32>(arg_2.c, -602f), -1414f), _wgslsmith_add_u32(59356u, u_input.e), !vec3<bool>(arg_0, false, arg_0))).d, ~arg_2.a >> (u_input.c.x % 32u));
    let var_1 = arg_2;
    var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 1u, 82408u) & vec3<u32>(var_1.a, u_input.d.x, arg_2.a), ~vec3<u32>(u_input.e, 1u, 49064u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 1u), u_input.c))), ~u_input.d);
    let var_2 = Struct_2(Struct_1(~(31302u >> (select(84634u, var_1.a, false) % 32u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), func_4(u_input.b, Struct_2(arg_2, arg_2.b.x, Struct_1(arg_2.a, vec2<f32>(var_1.b.x, arg_2.c), 142f), u_input.d.x, arg_1)).b.x))), _wgslsmith_f_op_f32(abs(arg_2.c))), var_1.b.x, arg_2, 0u, !func_1(vec2<bool>(true, arg_0), func_1(arg_1.yz, func_1(vec2<bool>(false, arg_0), Struct_2(Struct_1(0u, var_1.b, -657f), var_1.c, arg_2, 18455u, arg_1)))).e);
    let var_3 = func_4(-u_input.a.x, func_1(var_2.e.zy, func_1(select(arg_1.zx, !arg_1.zx, vec2<bool>(var_2.e.x, false)), func_1(arg_1.zz, func_1(var_2.e.zz, Struct_2(Struct_1(var_2.a.a, vec2<f32>(593f, var_2.c.b.x), var_2.c.c), 1483f, Struct_1(var_2.a.a, vec2<f32>(717f, 911f), 372f), 4294967295u, var_2.e))))));
    return func_1(!func_1(!select(arg_1.zy, arg_1.xx, vec2<bool>(var_2.e.x, arg_1.x)), var_2).e.zx, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    global0 = u_input.a.x;
    global0 = select(u_input.a.x, 1i, false);
    var var_0 = func_6(true, func_5(1i, func_4(u_input.b, func_1(vec2<bool>(true, true), Struct_2(Struct_1(u_input.d.x, vec2<f32>(540f, 1169f), -964f), -1594f, Struct_1(u_input.c.x, vec2<f32>(-246f, -1453f), -817f), u_input.c.x, vec3<bool>(false, false, true)))), vec4<bool>(false, all(vec2<bool>(true, true)), -u_input.a.x > ~u_input.b, false), u_input.d), func_1(select(select(vec2<bool>(false, false), vec2<bool>(false, false), func_5(1i, Struct_1(u_input.c.x, vec2<f32>(-1757f, -780f), 846f), vec4<bool>(true, false, false, false), u_input.d).yy), vec2<bool>(true, true), true), Struct_2(func_1(vec2<bool>(true, true), func_1(vec2<bool>(false, false), Struct_2(Struct_1(1u, vec2<f32>(269f, -2008f), 1089f), -2467f, Struct_1(40799u, vec2<f32>(-555f, 146f), 1145f), u_input.e, vec3<bool>(true, true, false)))).a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-830f, 846f))), Struct_1(u_input.e >> (u_input.e % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(1236f, -1897f), vec2<f32>(-523f, 281f)), _wgslsmith_f_op_f32(ceil(438f))), u_input.c.x, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))).a);
    var_0 = Struct_2(func_4(~(-u_input.a.x), Struct_2(Struct_1(~0u, func_6(var_0.e.x, vec3<bool>(true, var_0.e.x, var_0.e.x), Struct_1(8695u, vec2<f32>(-448f, var_0.a.b.x), var_0.b)).c.b, _wgslsmith_f_op_f32(floor(448f))), -535f, var_0.a, 14139u, func_6(true || var_0.e.x, !vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), func_1(var_0.e.yy, Struct_2(var_0.a, var_0.b, Struct_1(u_input.e, var_0.a.b, -1412f), u_input.c.x, var_0.e)).a).e)), var_0.c.b.x, var_0.c, u_input.d.x, !vec3<bool>(all(select(vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, false, true), var_0.e.x)), _wgslsmith_div_f32(var_0.c.b.x, 799f) < _wgslsmith_f_op_f32(ceil(var_0.a.b.x)), func_1(var_0.e.xz, Struct_2(Struct_1(u_input.d.x, var_0.c.b, 1600f), var_0.c.c, var_0.c, u_input.c.x, var_0.e)).a.c < var_0.b));
    var var_1 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

