struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<bool>(false, true), 17386i, true), 1570f, Struct_1(vec2<bool>(false, false), i32(-2147483648), true), Struct_1(vec2<bool>(true, true), -1i, false), Struct_1(vec2<bool>(true, false), 0i, true)), Struct_2(Struct_1(vec2<bool>(true, false), -1i, false), -596f, Struct_1(vec2<bool>(true, true), 2147483647i, true), Struct_1(vec2<bool>(false, false), -6182i, true), Struct_1(vec2<bool>(false, true), 0i, true)), Struct_2(Struct_1(vec2<bool>(false, true), -1i, true), -558f, Struct_1(vec2<bool>(false, false), 2147483647i, true), Struct_1(vec2<bool>(false, false), 0i, true), Struct_1(vec2<bool>(false, true), -1i, true)), Struct_2(Struct_1(vec2<bool>(false, true), -20936i, true), 1670f, Struct_1(vec2<bool>(true, true), -9052i, false), Struct_1(vec2<bool>(true, false), 25681i, false), Struct_1(vec2<bool>(false, true), -8281i, true)), Struct_2(Struct_1(vec2<bool>(false, false), 56716i, false), 553f, Struct_1(vec2<bool>(false, true), -18268i, false), Struct_1(vec2<bool>(true, true), 21410i, false), Struct_1(vec2<bool>(true, false), -3844i, false)), Struct_2(Struct_1(vec2<bool>(true, true), 54075i, false), -1000f, Struct_1(vec2<bool>(false, true), 0i, true), Struct_1(vec2<bool>(true, false), i32(-2147483648), true), Struct_1(vec2<bool>(false, true), -1i, true)), Struct_2(Struct_1(vec2<bool>(false, false), -1i, false), 1471f, Struct_1(vec2<bool>(false, false), 2170i, false), Struct_1(vec2<bool>(false, true), -14319i, false), Struct_1(vec2<bool>(true, true), -1i, false)), Struct_2(Struct_1(vec2<bool>(true, false), -5618i, true), -818f, Struct_1(vec2<bool>(false, false), -19347i, false), Struct_1(vec2<bool>(true, false), -67130i, false), Struct_1(vec2<bool>(false, true), 1i, true)), Struct_2(Struct_1(vec2<bool>(true, true), 16316i, true), 519f, Struct_1(vec2<bool>(false, false), 59041i, true), Struct_1(vec2<bool>(false, false), -7839i, false), Struct_1(vec2<bool>(false, true), 2147483647i, true)), Struct_2(Struct_1(vec2<bool>(false, false), 23374i, false), -1120f, Struct_1(vec2<bool>(true, false), 26629i, true), Struct_1(vec2<bool>(false, false), 2147483647i, true), Struct_1(vec2<bool>(true, true), -19602i, false)), Struct_2(Struct_1(vec2<bool>(false, false), 1i, true), -525f, Struct_1(vec2<bool>(true, true), 18535i, true), Struct_1(vec2<bool>(true, true), -1i, false), Struct_1(vec2<bool>(false, true), 13053i, true)), Struct_2(Struct_1(vec2<bool>(false, true), 0i, true), 1682f, Struct_1(vec2<bool>(true, true), -1i, true), Struct_1(vec2<bool>(false, true), -24517i, false), Struct_1(vec2<bool>(false, true), 1i, true)), Struct_2(Struct_1(vec2<bool>(true, false), 27078i, false), -1085f, Struct_1(vec2<bool>(false, true), i32(-2147483648), true), Struct_1(vec2<bool>(true, true), -4317i, true), Struct_1(vec2<bool>(true, true), -62025i, true)), Struct_2(Struct_1(vec2<bool>(false, false), 26043i, true), -1469f, Struct_1(vec2<bool>(false, false), 1i, false), Struct_1(vec2<bool>(false, true), i32(-2147483648), false), Struct_1(vec2<bool>(false, false), 23914i, true)), Struct_2(Struct_1(vec2<bool>(true, false), 0i, true), -335f, Struct_1(vec2<bool>(false, true), 0i, false), Struct_1(vec2<bool>(false, false), 2147483647i, true), Struct_1(vec2<bool>(true, false), -44129i, false)), Struct_2(Struct_1(vec2<bool>(false, true), i32(-2147483648), false), -1098f, Struct_1(vec2<bool>(true, true), -17685i, true), Struct_1(vec2<bool>(false, true), 2147483647i, true), Struct_1(vec2<bool>(true, true), -10830i, false)), Struct_2(Struct_1(vec2<bool>(false, true), 2147483647i, false), -387f, Struct_1(vec2<bool>(true, false), 1i, false), Struct_1(vec2<bool>(false, false), 1i, true), Struct_1(vec2<bool>(true, false), i32(-2147483648), false)), Struct_2(Struct_1(vec2<bool>(false, true), -20583i, true), 636f, Struct_1(vec2<bool>(false, false), 2147483647i, false), Struct_1(vec2<bool>(true, true), 23228i, true), Struct_1(vec2<bool>(true, true), 1i, true)), Struct_2(Struct_1(vec2<bool>(true, false), -1i, true), -103f, Struct_1(vec2<bool>(true, false), 44039i, false), Struct_1(vec2<bool>(false, false), 5430i, true), Struct_1(vec2<bool>(true, true), -1i, false)), Struct_2(Struct_1(vec2<bool>(true, true), -1i, false), 648f, Struct_1(vec2<bool>(false, false), 1i, false), Struct_1(vec2<bool>(true, false), 0i, true), Struct_1(vec2<bool>(true, false), 37083i, true)), Struct_2(Struct_1(vec2<bool>(true, false), 2147483647i, false), 127f, Struct_1(vec2<bool>(false, true), -12080i, true), Struct_1(vec2<bool>(true, false), 30006i, true), Struct_1(vec2<bool>(true, false), -24948i, false)), Struct_2(Struct_1(vec2<bool>(true, true), -84603i, true), 945f, Struct_1(vec2<bool>(true, false), -5518i, true), Struct_1(vec2<bool>(true, false), 0i, true), Struct_1(vec2<bool>(false, true), 0i, false)), Struct_2(Struct_1(vec2<bool>(true, false), -1i, true), 711f, Struct_1(vec2<bool>(true, false), 2147483647i, false), Struct_1(vec2<bool>(false, false), i32(-2147483648), false), Struct_1(vec2<bool>(false, true), i32(-2147483648), true)), Struct_2(Struct_1(vec2<bool>(true, false), 2147483647i, false), -965f, Struct_1(vec2<bool>(false, true), -1i, false), Struct_1(vec2<bool>(false, false), -16623i, true), Struct_1(vec2<bool>(true, true), 1i, true)), Struct_2(Struct_1(vec2<bool>(false, false), 0i, false), -1796f, Struct_1(vec2<bool>(true, false), 2147483647i, false), Struct_1(vec2<bool>(false, true), -28174i, true), Struct_1(vec2<bool>(false, true), 2147483647i, true)));

var<private> global4: vec4<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    global3 = array<Struct_2, 25>();
    let var_0 = Struct_4(true, u_input.b.x, Struct_2(arg_1, -521f, Struct_1(global2.zx, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, global0.x), vec3<i32>(-11214i, u_input.b.x, u_input.b.x)), true), arg_1, Struct_1(global2.yx, ~global0.x, any(vec4<bool>(false, true, arg_1.a.x, true)))), Struct_3(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.a.x, arg_2, true), vec3<bool>(true, arg_2, true), vec3<bool>(false, global2.x, arg_1.a.x)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(global2.x, arg_2, false))), arg_1, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, 31954u), 25u)], arg_1, arg_1.a.x || (true && (global4.x == global4.x))), _wgslsmith_f_op_f32(-global4.x) <= global4.x);
    global4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b, var_0.d.c.b, 1439f, global4.x), vec4<f32>(global4.x, 1822f, 1638f, global4.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.b, var_0.d.c.b, global4.x, -294f), vec4<f32>(global4.x, global4.x, -373f, -1409f))))), vec4<f32>(-319f, -261f, -175f, _wgslsmith_f_op_f32(-var_0.d.c.b)))))));
    global1 = array<vec4<bool>, 28>();
    global2 = select(select(vec3<bool>(29100i > -global0.x, true && (arg_0.x != 1u), any(vec2<bool>(global2.x, var_0.e))), vec3<bool>(true, ~63677i > select(2147483647i, -1i, var_0.a), select(arg_1.a.x && false, var_0.e | false, var_0.d.b.c)), true), vec3<bool>(all(select(select(var_0.d.a, var_0.d.a, global2.x), !vec3<bool>(arg_2, global2.x, true), !global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(abs(global4.x))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(782f)), _wgslsmith_f_op_f32(-global4.x))), !global2.x), var_0.e);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1187f)), 917f, 649f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    var var_0 = Struct_3(select(vec3<bool>(global2.x, arg_0.d.c, all(!vec2<bool>(global2.x, false))), select(vec3<bool>(global2.x, arg_0.a.c, all(vec2<bool>(true, arg_0.d.c))), vec3<bool>(any(global2.xz), true, all(vec3<bool>(arg_0.d.a.x, false, false))), !all(vec3<bool>(false, true, false))), false), Struct_1(vec2<bool>(true, true), 2147483647i, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37883u), vec4<u32>(u_input.a.x, 1u, 1092u, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u)), firstLeadingBit(vec4<u32>(4294967295u, 1u, u_input.a.x, 162011u))) >= _wgslsmith_dot_vec2_u32(select(vec2<u32>(21816u, 72021u), u_input.a.yz, arg_0.c.a), ~u_input.a.yx)), Struct_2(Struct_1(global2.zz, arg_0.d.b, arg_0.d.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global4.x)), 1663f, global2.x)))), Struct_1(vec2<bool>(arg_0.d.c, 0u == u_input.a.x), _wgslsmith_div_i32(i32(-1i) * -2147483647i, 2147483647i << (u_input.a.x % 32u)), false), Struct_1(global2.xz, -_wgslsmith_mod_i32(u_input.b.x, -2147483647i), -158f != arg_0.b), arg_0.e), Struct_1(vec2<bool>(false, true), u_input.b.x, any(vec4<bool>(all(vec2<bool>(false, false)), false, u_input.a.x < 17459u, arg_0.e.c))), arg_0.e.a.x);
    let var_1 = Struct_4(var_0.a.x, global0.x, arg_0, Struct_3(select(!(!vec3<bool>(global2.x, var_0.b.c, false)), select(!var_0.a, vec3<bool>(arg_0.e.a.x, global2.x, arg_0.e.c), false & var_0.e), select(var_0.a, var_0.a, var_0.e)), arg_0.e, var_0.c, Struct_1(!select(global2.yz, vec2<bool>(false, false), arg_0.d.a.x), firstTrailingBit(-9629i), global2.x), var_0.b.a.x), !(!(!all(var_0.b.a))));
    var var_2 = select(vec4<bool>(true, !arg_0.a.c, true, false), select(select(vec4<bool>(true, true, global2.x, any(var_1.d.a)), vec4<bool>(true, any(var_0.a), true, false), vec4<bool>(var_0.a.x, all(var_1.d.a), true, var_0.c.a.a.x | var_1.e)), select(vec4<bool>(any(var_0.a), true, any(vec3<bool>(var_1.e, true, var_1.a)), var_0.b.c), !vec4<bool>(arg_0.a.a.x, true, true, true), true), vec4<bool>(true, !all(arg_0.d.a), all(vec2<bool>(true, true)), any(var_0.a))), true);
    let var_3 = max(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 4781i, u_input.b.x, 2147483647i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.x, 2147483647i, -64656i, -1i), vec4<i32>(2147483647i, arg_0.a.b, global0.x, global0.x) ^ vec4<i32>(-7343i, -2147483647i, global0.x, -17409i), firstTrailingBit(vec4<i32>(-1i, u_input.b.x, var_1.b, global0.x))))), var_1.d.d.b);
    let var_4 = true || any(var_1.d.a);
    return var_2.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = abs(arg_0);
    var var_0 = 1u;
    let var_1 = ~_wgslsmith_sub_u32(u_input.a.x, 34831u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~vec2<u32>(13727u, 0u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.zwz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(global4.yzz, _wgslsmith_f_op_vec3_f32(vec3<f32>(1236f, 664f, global4.x) + vec3<f32>(global4.x, global4.x, global4.x)), !global2.x))))), false));
    global2 = vec3<bool>(false, func_4(global3[_wgslsmith_index_u32(reverseBits(32926u), 25u)], _wgslsmith_f_op_vec3_f32(func_3(u_input.a.zx, Struct_1(global2.zy, arg_0.x, global2.x), false))), all(select(vec2<bool>(true, !global2.x), global2.yx, true)));
    return Struct_1(global2.zy, _wgslsmith_mod_i32(-45398i, -1i), _wgslsmith_f_op_f32(1174f * _wgslsmith_f_op_f32(1725f + global4.x)) != _wgslsmith_f_op_f32(var_2.x + var_2.x));
}

fn func_1() -> Struct_3 {
    let var_0 = max(49476i, (u_input.b.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 65584u)) % 32u)) | -62410i);
    global1 = array<vec4<bool>, 28>();
    global3 = array<Struct_2, 25>();
    var var_1 = func_2(vec3<i32>(_wgslsmith_mod_i32(abs(u_input.b.x) | global0.x, -u_input.b.x), _wgslsmith_div_i32(-2147483647i, u_input.b.x) & ~global0.x, ~select(_wgslsmith_mult_i32(var_0, -45787i), -2147483647i, !global2.x)));
    return Struct_3(vec3<bool>(var_1.c, global2.x, false), func_2(vec3<i32>(i32(-1i) * -21066i, func_2(vec3<i32>(61517i, 15804i, 2147483647i)).b, firstTrailingBit(i32(-1i) * -11022i))), global3[_wgslsmith_index_u32(~1u, 25u)], Struct_1(global2.xz, 1i, !global2.x), false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(global4.zxw));
    global3 = array<Struct_2, 25>();
    var var_1 = _wgslsmith_add_i32(0i, i32(-1i) * -1i);
    global3 = array<Struct_2, 25>();
    let var_2 = arg_1.d;
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 28>();
    global2 = !(!func_5(global3[_wgslsmith_index_u32(48443u, 25u)], func_1(), func_1().a, Struct_4(true, global0.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 25u)], func_1(), !global2.x)));
    global2 = !vec3<bool>((u_input.b.x ^ _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(2147483647i, -37991i))) > _wgslsmith_sub_i32(func_1().b.b, global0.x), true, global2.x);
    var var_0 = func_1().b;
    global3 = array<Struct_2, 25>();
    global1 = array<vec4<bool>, 28>();
    var_0 = Struct_1(vec2<bool>(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -61403i, 35792i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 40063u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, 11594i, -20393i), vec3<i32>(var_0.b, -6937i, global0.x), vec3<i32>(u_input.b.x, global0.x, 1i)))).c, true), func_2(vec3<i32>(-1i) * -select(vec3<i32>(-11700i, var_0.b, 1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), false)).b, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-2147483647i), select(-(~var_0.b), 4412i, func_4(Struct_2(Struct_1(vec2<bool>(true, true), -1i, var_0.c), 177f, Struct_1(global2.xx, u_input.b.x, global2.x), Struct_1(vec2<bool>(var_0.c, var_0.a.x), global0.x, global2.x), Struct_1(vec2<bool>(true, global2.x), 2137i, global2.x)), _wgslsmith_f_op_vec3_f32(-global4.wwz))), -u_input.b.x, u_input.b.x));
}

