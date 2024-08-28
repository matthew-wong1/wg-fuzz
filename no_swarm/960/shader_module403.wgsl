struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15>;

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec3<f32>(983f, -306f, 1196f), Struct_1(vec4<bool>(false, true, false, false)), 2147483647i, vec3<bool>(true, true, false));

var<private> global3: bool = false;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x * arg_0.b.x), _wgslsmith_f_op_f32(-1000f - 1060f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-671f)) + _wgslsmith_f_op_f32(abs(arg_0.b.x))))));
    global0 = array<vec4<bool>, 15>();
    var var_1 = firstTrailingBit(47718u);
    var var_2 = Struct_1(select(select(select(!global2.c.a, select(vec4<bool>(arg_0.a.a.x, false, true, arg_0.c.a.x), global2.a.a, arg_0.a.a.x), any(vec4<bool>(false, global2.a.a.x, arg_0.a.a.x, global2.e.x))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, global2.c.a.x, arg_0.c.a.x, arg_0.c.a.x), vec4<bool>(global2.a.a.x, true, global2.e.x, global2.e.x)), vec4<bool>(any(arg_0.a.a.wxx), arg_0.e.x, any(arg_0.c.a.xz), true)), select(vec4<bool>(u_input.b == u_input.b, false, true, !global2.c.a.x), select(select(vec4<bool>(false, false, global2.e.x, true), vec4<bool>(false, global2.e.x, true, true), true), select(vec4<bool>(arg_0.e.x, global2.a.a.x, true, true), vec4<bool>(arg_0.a.a.x, arg_0.e.x, true, global2.a.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.c.a.x, global2.c.a.x, true, false), global2.e.x)), global0[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(true, !all(global2.c.a.wwx), !global2.a.a.x, arg_0.e.x)));
    let var_3 = Struct_4(select(select(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), select(global2.a.a.yxw, vec3<bool>(arg_0.a.a.x, var_2.a.x, true), var_2.a.x)), ~vec3<u32>(34708u, u_input.b, 0u), false) >> (u_input.a % vec3<u32>(32u)), select(var_2.a.x, true && arg_0.c.a.x, false) || !global2.c.a.x, Struct_3(Struct_1(select(global2.c.a, var_2.a, any(var_2.a))), arg_0, Struct_2(Struct_1(!arg_0.c.a), vec3<f32>(_wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.c, 1i, select(arg_0.c.a.xww, global2.e, true || global2.c.a.x))), vec4<f32>(140f, arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -879f)));
    return vec3<bool>(any(var_2.a.xx), false, arg_0.e.x);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(global2.b, global2.b));
    let var_1 = _wgslsmith_f_op_f32(exp2(global2.b.x));
    global1 = any(vec3<bool>(1u <= u_input.b, all(global2.a.a.zy), !(0u == ~u_input.b)));
    global1 = global2.e.x;
    global2 = Struct_2(global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(373f, -727f, -454f))), vec3<f32>(-815f, 481f, global2.b.x)))))), global2.a, -31629i, select(vec3<bool>(global2.a.a.x, false && any(global2.a.a.wyz), all(!vec4<bool>(false, global2.c.a.x, true, global2.c.a.x))), func_3(Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1138f, 1139f, var_1), global2.b, global2.c.a.wyz)), Struct_1(global2.c.a), -8674i, vec3<bool>(true, global2.a.a.x, false))), global2.e.x));
    return 2147483647i & -_wgslsmith_div_i32(global2.d, global2.d);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    global1 = true;
    let var_0 = arg_1.c.c;
    var var_1 = vec4<i32>(firstLeadingBit(-global2.d), 17313i, var_0.d, 2147483647i);
    var_1 = -vec4<i32>(var_1.x & (global2.d << (0u % 32u)), i32(-1i) * -1724i, var_0.d, (i32(-1i) * -19273i) >> (u_input.b % 32u));
    let var_2 = select(vec4<bool>(true, any(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), _wgslsmith_mult_u32(~u_input.b, 1u) > (min(arg_1.a.x, arg_1.a.x) << (arg_1.a.x % 32u)), !(!any(global2.c.a))), vec4<bool>(select(true, false, 491f >= _wgslsmith_f_op_f32(var_0.b.x - 829f)), !arg_0, select(!any(var_0.e), u_input.b == 0u, _wgslsmith_f_op_f32(1000f - global2.b.x) > 1131f), false), !global0[_wgslsmith_index_u32(arg_1.a.x, 15u)]);
    return Struct_1(select(global2.a.a, !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_2.x, arg_2.x, true), false), !vec4<bool>(false, arg_1.c.a.a.x, var_0.a.a.x, false), var_2.x), var_0.e.x));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    let var_0 = 43180u;
    global1 = global2.c.a.x;
    global1 = global2.a.a.x;
    let var_1 = ~arg_1;
    var var_2 = Struct_3(func_4(~abs(34983i) >= func_2(), Struct_4(~(~vec3<u32>(var_1.x, var_0, 30556u)), true, Struct_3(Struct_1(vec4<bool>(global2.c.a.x, false, false, true)), Struct_2(global2.a, vec3<f32>(arg_0, global2.b.x, 1981f), Struct_1(global0[_wgslsmith_index_u32(64330u, 15u)]), global2.d, global2.a.a.xzx), Struct_2(Struct_1(global2.c.a), global2.b, global2.a, global2.d, global2.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, 273f, global2.b.x, 563f), vec4<f32>(847f, 136f, -1672f, -1147f))))), global2.e.xy), Struct_2(global2.a, vec3<f32>(-789f, _wgslsmith_f_op_f32(f32(-1f) * -197f), 174f), Struct_1(!select(global0[_wgslsmith_index_u32(var_1.x, 15u)], global2.c.a, global0[_wgslsmith_index_u32(1u, 15u)])), -_wgslsmith_mult_i32(select(2147483647i, -29461i, global2.e.x), -1i >> (arg_1.x % 32u)), vec3<bool>(!(!global2.c.a.x), true, true)), Struct_2(Struct_1(!vec4<bool>(global2.c.a.x, global2.e.x, global2.a.a.x, true)), global2.b, global2.c, -(~(-global2.d)), !select(vec3<bool>(global2.c.a.x, global2.c.a.x, global2.a.a.x), global2.a.a.wzy, true)));
    return _wgslsmith_f_op_f32(arg_0 - -1656f);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = !global2.c.a.ww;
    global0 = array<vec4<bool>, 15>();
    let var_1 = Struct_4(abs(vec3<u32>(_wgslsmith_mod_u32(99603u, arg_0), ~0u, arg_0) >> (vec3<u32>(abs(arg_0), arg_3, _wgslsmith_mod_u32(1u, 4294967295u)) % vec3<u32>(32u))), global2.e.x, Struct_3(Struct_1(select(!global2.a.a, global2.a.a, vec4<bool>(true, true, true, true))), Struct_2(func_4(true, Struct_4(vec3<u32>(u_input.a.x, arg_3, 16931u), var_0.x, Struct_3(Struct_1(vec4<bool>(arg_1, false, false, false)), Struct_2(global2.a, global2.b, Struct_1(global2.a.a), global2.d, vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(arg_1, false, global2.e.x, true)), global2.b, Struct_1(vec4<bool>(true, false, global2.a.a.x, arg_1)), global2.d, global2.c.a.wxz)), vec4<f32>(585f, arg_2, global2.b.x, arg_2)), global2.a.a.xx), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), arg_2, _wgslsmith_f_op_f32(1328f - 526f)), global2.a, 1i, !global2.c.a.xzy), Struct_2(func_4(all(vec2<bool>(true, true)), Struct_4(vec3<u32>(4294967295u, u_input.b, 1u), var_0.x, Struct_3(Struct_1(vec4<bool>(false, arg_1, false, arg_1)), Struct_2(global2.a, global2.b, global2.c, global2.d, global2.e), Struct_2(global2.c, vec3<f32>(517f, -1576f, arg_2), Struct_1(global2.c.a), global2.d, vec3<bool>(false, false, false))), vec4<f32>(global2.b.x, 1113f, -216f, -667f)), global2.c.a.zw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-583f, arg_2, -747f)) - global2.b), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 1u), vec4<u32>(u_input.b, arg_0, arg_0, 0u)), 15u)]), _wgslsmith_clamp_i32(-2872i, 31342i, min(global2.d, global2.d)), global2.a.a.xwz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1010f, arg_2)), arg_2, -496f, -1694f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1160f, arg_2, 207f, -150f), vec4<f32>(-355f, global2.b.x, global2.b.x, global2.b.x)) - vec4<f32>(arg_2, 316f, 1065f, global2.b.x)))));
    return global2.c;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global0 = array<vec4<bool>, 15>();
    var var_0 = Struct_3(func_5(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, 34887u)), vec2<u32>(63733u, u_input.a.x))), arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(582f)), 727f))), u_input.b), Struct_2(Struct_1(vec4<bool>(false, arg_1.a.x | global2.a.a.x, arg_1.a.x & arg_1.a.x, true)), global2.b, arg_1, -2147483647i, global2.a.a.zzw), Struct_2(arg_1, vec3<f32>(global2.b.x, 1800f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + _wgslsmith_f_op_f32(-global2.b.x))), Struct_1(select(vec4<bool>(arg_1.a.x, false, true, false), vec4<bool>(true, false, arg_1.a.x, global2.e.x), arg_1.a.x || global2.a.a.x)), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(global2.d, 0i, 0i, 54169i), vec4<i32>(arg_2.x, 19069i, global2.d, global2.d), vec4<bool>(global2.e.x, arg_1.a.x, arg_1.a.x, false)), vec4<i32>(0i, global2.d, abs(global2.d), global2.d ^ 69254i)), vec3<bool>(all(func_4(global2.c.a.x, Struct_4(vec3<u32>(u_input.b, 8029u, 54507u), false, Struct_3(arg_1, Struct_2(Struct_1(arg_1.a), global2.b, Struct_1(vec4<bool>(true, true, true, true)), 1i, vec3<bool>(arg_1.a.x, true, arg_1.a.x)), Struct_2(global2.a, global2.b, Struct_1(arg_1.a), -2147483647i, vec3<bool>(true, global2.e.x, true))), vec4<f32>(329f, global2.b.x, global2.b.x, global2.b.x)), vec2<bool>(global2.c.a.x, arg_1.a.x)).a), global2.c.a.x, arg_1.a.x)));
    var var_1 = Struct_4(~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0, arg_0, 33026u), firstLeadingBit(u_input.a), vec3<u32>(4294967295u, arg_0, arg_0))), all(var_0.a.a.wz), Struct_3(arg_1, var_0.b, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(global2.b.x, vec3<u32>(u_input.a.x, 49861u, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -407f), var_0.b.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.b.x + -256f)))) - vec4<f32>(-769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f - 643f) - _wgslsmith_f_op_f32(-1000f - var_0.b.b.x)), _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(step(236f, 1497f))), -1472f)));
    return Struct_1(global0[_wgslsmith_index_u32(arg_0, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-555f, global2.b.x, -743f), global2.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.b, vec3<f32>(global2.b.x, -262f, global2.b.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.b))))));
    let var_1 = (i32(-1i) * -global2.d) ^ -68456i;
    let var_2 = Struct_4(u_input.a, true, Struct_3(func_6(min(countOneBits(u_input.a.x), 25268u), func_5(firstLeadingBit(u_input.a.x), !global2.e.x, _wgslsmith_f_op_f32(func_1(-1335f, u_input.a)), 0u << (0u % 32u)), -firstTrailingBit(vec4<i32>(global2.d, -3179i, -49277i, var_1))), Struct_2(Struct_1(vec4<bool>(global2.a.a.x, true, false, global2.a.a.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b.x, var_0.x, -1405f), vec3<f32>(global2.b.x, -923f, 779f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 182f, global2.b.x)))), global2.a, -44774i, vec3<bool>(false, global2.e.x, !global2.c.a.x)), Struct_2(func_5(u_input.b, !global2.a.a.x, _wgslsmith_f_op_f32(-global2.b.x), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b * vec3<f32>(-308f, var_0.x, 1000f))), global2.a, var_1, global2.a.a.zyw)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global2.b.x)), -1000f, global2.b.x, _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - global2.b.x), -774f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-3176f * global2.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, 745f, -1417f, var_0.x) + vec4<f32>(1425f, var_0.x, -1000f, -954f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, -1445f, -1084f), vec4<f32>(global2.b.x, global2.b.x, 2130f, -1672f))))), !func_4(global2.a.a.x && true, Struct_4(u_input.a, true, Struct_3(global2.c, Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 15u)]), global2.b, Struct_1(global2.a.a), global2.d, global2.e), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global2.b, global2.a, 548i, global2.a.a.zzx)), vec4<f32>(var_0.x, 1990f, var_0.x, 1084f)), func_4(global2.c.a.x, Struct_4(vec3<u32>(57751u, 23690u, 24818u), global2.c.a.x, Struct_3(global2.c, Struct_2(Struct_1(vec4<bool>(true, true, true, global2.a.a.x)), vec3<f32>(var_0.x, var_0.x, -1557f), global2.c, global2.d, global2.c.a.xzw), Struct_2(global2.a, global2.b, Struct_1(vec4<bool>(false, global2.a.a.x, true, true)), -29542i, vec3<bool>(global2.c.a.x, true, global2.e.x))), vec4<f32>(var_0.x, var_0.x, global2.b.x, 701f)), global2.a.a.yy).a.zx).a)));
    let var_3 = Struct_1(!(!(!vec4<bool>(true, false, var_2.c.c.e.x, global2.c.a.x))));
    let var_4 = Struct_4(countOneBits(select(~var_2.a, countOneBits(~var_2.a), select(func_6(4294967295u, global2.a, vec4<i32>(var_1, 19431i, 45534i, var_1)).a.xxx, select(var_3.a.wxx, vec3<bool>(false, true, var_2.c.c.c.a.x), true), func_6(7560u, var_3, vec4<i32>(2147483647i, var_2.c.c.d, 78354i, 22580i)).a.wwz))), global2.a.a.x & func_5(16954u, true, 913f, var_2.a.x).a.x, Struct_3(Struct_1(func_6(min(1311u, u_input.a.x), var_2.c.a, vec4<i32>(2147483647i, var_1, global2.d, -2147483647i)).a), Struct_2(var_3, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global2.b.x, var_2.c.b.b.x), var_2.c.b.b), Struct_1(func_4(false, Struct_4(vec3<u32>(0u, 0u, 24960u), true, Struct_3(Struct_1(global0[_wgslsmith_index_u32(var_2.a.x, 15u)]), var_2.c.b, var_2.c.c), vec4<f32>(-546f, var_2.c.b.b.x, var_0.x, var_2.c.b.b.x)), vec2<bool>(global2.e.x, var_2.c.c.c.a.x)).a), -1i, !select(global2.c.a.xyz, var_2.c.b.c.a.wwz, true)), Struct_2(func_5(0u, global2.c.a.x, _wgslsmith_f_op_f32(100f + var_0.x), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.b, var_2.c.b.b)), Struct_1(select(vec4<bool>(var_2.c.b.e.x, global2.e.x, false, true), var_2.c.a.a, vec4<bool>(var_3.a.x, false, true, var_3.a.x))), ~2147483647i << (var_2.a.x % 32u), vec3<bool>(true, any(vec2<bool>(global2.e.x, false)), true))), var_2.d);
    let var_5 = var_2.c;
    let var_6 = var_5.a.a.x;
    var var_7 = 32305i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_4.c.b.b), firstTrailingBit(firstLeadingBit(vec2<i32>(var_4.c.c.d, var_1))) | ~vec2<i32>(i32(-1i) * -747i, 1i), 1i, select(_wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.a.x, 0u), var_2.a.yy, vec2<u32>(51703u, var_2.a.x))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 49876u), vec2<u32>(60271u, 1u) & vec2<u32>(var_4.a.x, 95515u))), var_4.a.yz, true), var_2.c.c.d);
}

