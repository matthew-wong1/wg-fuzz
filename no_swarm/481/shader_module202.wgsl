struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(-1000f, vec4<f32>(816f, 1000f, 804f, 728f), vec3<u32>(1u, 0u, 4294967295u)));

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = arg_2;
    global0 = Struct_4(arg_0);
    var var_1 = Struct_1(arg_3.x, -(~(~(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i)))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(-2147483647i, 1i, _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x), max(u_input.a.x, 2147483647i)), vec4<i32>(-2147483647i, u_input.a.x, 12787i, 1i)), ~vec4<i32>(1i, 1i, 1i, 1i)));
    return select(vec4<i32>(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-39685i, -49895i << (arg_0.c.x % 32u)), u_input.a.zx), _wgslsmith_mod_i32(countOneBits(u_input.a.x) >> (abs(31629u) % 32u), -37176i), var_1.b.x), select(vec4<i32>(var_1.b.x, u_input.a.x, -(u_input.a.x & var_1.c.x), u_input.a.x), var_1.c, all(select(!vec4<bool>(false, false, false, arg_1), !arg_2, !arg_2.x))), !var_0);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_3(arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(select(641f, 393f, arg_0.b)), arg_0.a.a, _wgslsmith_f_op_f32(trunc(360f)))), vec3<u32>(23265u, _wgslsmith_sub_u32(4294967295u, global0.a.c.x), ~global0.a.c.x) & vec3<u32>(global0.a.c.x, _wgslsmith_clamp_u32(7859u & arg_1.a.c.x, global0.a.c.x, countOneBits(global0.a.c.x)), ~30688u >> (select(0u, arg_1.a.c.x, false) % 32u)));
    let var_1 = ~(~arg_1.a.c.x);
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.a.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a.b.x, global0.a.b.x))), select(true, true, false) & (true || arg_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1323f, global0.a.b.x, 745f, _wgslsmith_f_op_f32(floor(1000f)))), vec3<u32>(global0.a.c.x, global0.a.c.x, 1u | max(38656u, var_1))));
    let var_3 = true;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(583f, 1099f, all(vec4<bool>(false, false, arg_0.d, true))))), any(select(!vec3<bool>(false, var_3, arg_0.b), vec3<bool>(var_3, false, var_3), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_2.a.b, vec4<f32>(-1134f, _wgslsmith_f_op_f32(select(var_2.a.b.x, arg_1.a.a, var_3)), var_2.a.a, arg_1.a.b.x), vec4<bool>(any(vec2<bool>(false, var_3)), false, all(vec3<bool>(arg_0.b, false, true)), true))), var_0.b)), ~vec3<u32>(~(~global0.a.c.x), ~(~var_1), firstTrailingBit(1u)));
    return -countOneBits(vec4<i32>(-2147483647i, min(u_input.a.x, 1i), i32(-1i) * -1i, -2147483647i)) ^ arg_0.a.c;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_f32(abs(581f)), firstLeadingBit(vec4<i32>(26159i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39709i, arg_0, u_input.a.x, -18078i), vec4<i32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x)), arg_0 >> (6170u % 32u), _wgslsmith_add_i32(23101i, 3869i)) & ~vec4<i32>(-30562i, 63886i, var_0, -2147483647i)), func_4(Struct_2(Struct_1(global0.a.b.x, vec4<i32>(u_input.a.x, -23599i, -29887i, 29163i), vec4<i32>(32184i, -25010i, -1i, var_0)), true, -vec3<i32>(u_input.a.x, arg_0, u_input.a.x), global0.a.c.x == 81517u), Struct_4(global0.a), _wgslsmith_div_f32(global0.a.b.x, _wgslsmith_f_op_f32(930f + -938f)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 0i, -1i, var_0), func_3(Struct_3(global0.a.b.x, vec4<f32>(1288f, -1290f, 859f, -1295f), vec3<u32>(global0.a.c.x, 7554u, global0.a.c.x)), false, vec4<bool>(false, false, true, false), vec2<f32>(global0.a.b.x, 1307f)))) & vec4<i32>(-(i32(-1i) * -2147483647i), ~u_input.a.x, arg_0, 14521i));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<f32>) -> f32 {
    global1 = array<Struct_2, 22>();
    var var_0 = vec3<u32>(arg_0.a.c.x, global0.a.c.x, _wgslsmith_clamp_u32(global0.a.c.x, select(max(_wgslsmith_mult_u32(global0.a.c.x, global0.a.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.c.x, 4294967295u, arg_0.a.c.x), vec4<u32>(arg_0.a.c.x, global0.a.c.x, 1u, 4294967295u))), global0.a.c.x, true), arg_0.a.c.x));
    global1 = array<Struct_2, 22>();
    var var_1 = func_2(u_input.a.x);
    var var_2 = vec4<f32>(var_1.a, arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1661f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f - 899f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.a, -397f)), arg_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-145f, arg_1.a) - _wgslsmith_f_op_f32(f32(-1f) * -1057f))))));
    return -426f;
}

fn func_1() -> Struct_4 {
    let var_0 = vec3<u32>(global0.a.c.x, global0.a.c.x, abs(~global0.a.c.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_4(Struct_3(-1492f, global0.a.b, global0.a.c)), func_2(2147483647i), max(vec4<i32>(u_input.a.x, u_input.a.x, -59902i, u_input.a.x), vec4<i32>(49800i, 16221i, u_input.a.x, 41535i)), _wgslsmith_f_op_vec4_f32(select(global0.a.b, global0.a.b, vec4<bool>(true, true, false, true))))) * _wgslsmith_f_op_f32(f32(-1f) * -1231f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b.x), -1187f))) * 181f));
    let var_2 = _wgslsmith_div_i32(-35829i, 1i >> ((49859u >> (global0.a.c.x % 32u)) % 32u));
    let var_3 = func_2(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a.x, -2147483647i), _wgslsmith_add_i32(~abs(var_2), func_4(global1[_wgslsmith_index_u32(~var_0.x, 22u)], Struct_4(Struct_3(358f, vec4<f32>(global0.a.a, 209f, -422f, 1759f), var_0)), _wgslsmith_f_op_f32(f32(-1f) * -525f), u_input.a.x).x)));
    let var_4 = firstTrailingBit(_wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-22256i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, u_input.a.x, -2147483647i, var_2), vec4<i32>(var_2, 0i, 0i, -32529i))), ~(-33373i))));
    return Struct_4(global0.a);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-1860f, _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_3.a)), _wgslsmith_f_op_f32(f32(-1f) * -211f)))), 1000f, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3.a, _wgslsmith_div_f32(arg_1.a.b.x, 1864f), _wgslsmith_f_op_f32(floor(1445f)))) + vec4<f32>(_wgslsmith_f_op_f32(-1508f - _wgslsmith_f_op_f32(284f + 2071f)), _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-677f + global0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1279f), arg_0.x)))), firstLeadingBit(vec3<u32>(~1u, ~1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(30662u, arg_1.a.c.x), arg_1.a.c.zy)))));
    var var_1 = func_1().a;
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 22u)];
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    return Struct_4(func_1().a);
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = any(vec2<bool>(select(false, arg_1.a.c.x < _wgslsmith_mod_u32(1u, arg_1.a.c.x), any(vec2<bool>(true, true))), all(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = -1i >= -u_input.a.x;
    var_1 = all(vec3<bool>(func_7(global0.a.a, func_6(vec3<bool>(true, true, true), func_1(), vec3<f32>(global0.a.a, -1231f, var_0.b.x), Struct_1(-1723f, vec4<i32>(-35544i, 0i, -55785i, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))), 43182i, ~_wgslsmith_mod_i32(-19755i, u_input.a.x)), !func_7(var_0.b.x, Struct_4(global0.a), i32(-1i) * -2147483647i, firstLeadingBit(u_input.a.x)), true));
    let var_2 = ~var_0.c.x;
    var var_3 = var_0.c.x;
    let var_4 = abs(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, u_input.a.x), func_3(Struct_3(global0.a.a, var_0.b, vec3<u32>(1u, 51098u, 4104u)), false, vec4<bool>(true, true, true, false), var_0.b.yy).wwz)) >> (~(1u ^ _wgslsmith_mult_u32(var_0.c.x, 4294967295u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(max(-1000f, global0.a.b.x)), 1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_4, var_4, 0i), ~vec4<i32>(-52101i, u_input.a.x, -385i, -39599i)), vec4<i32>(~var_4, ~(-2147483647i), ~(-33529i), var_4)), ~max(u_input.a.x, u_input.a.x)));
}

