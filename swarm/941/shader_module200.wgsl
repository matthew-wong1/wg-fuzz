struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<bool>(false, false, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), false), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), false), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), false), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), false), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), false), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), true), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), false), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), true));

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<vec2<u32>, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = Struct_1(!select(select(arg_3.c.a.a, arg_3.d.a, arg_3.a.a.x), arg_3.a.a, select(vec4<bool>(true, true, global1.x, global1.x), !vec4<bool>(false, arg_2, false, false), !arg_3.a.a)));
    var var_1 = arg_3.c.a;
    var var_2 = i32(-1i) * -arg_0;
    let var_3 = arg_3.c;
    let var_4 = Struct_1(!vec4<bool>(all(!vec3<bool>(arg_2, false, false)), all(!global1.zz), select(u_input.c, 4740i, false) >= -arg_3.b, all(arg_3.a.a)));
    return vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -1122f) - -192f));
}

fn func_4(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(global2[_wgslsmith_index_u32(~(39681u ^ u_input.b.x), 29u)]), u_input.b) | (0u >> (~_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), 28u)];
    let var_1 = !(!select(var_0.a.a.xxx, var_0.a.a.yxz, true));
    var var_2 = var_0.a;
    var_2 = var_0.a;
    let var_3 = abs(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(14983i, -2147483647i, -28639i), 2147483647i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-6232i, 20067i), u_input.c, u_input.c), countOneBits(abs(u_input.c)), ~u_input.c)));
    return var_0.a.a.xxz;
}

fn func_2(arg_0: u32) -> bool {
    global1 = !func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(35004i, vec3<f32>(901f, 133f, -1000f), global1.x, Struct_3(Struct_1(vec4<bool>(global1.x, global1.x, true, false)), u_input.c, global0[_wgslsmith_index_u32(1u, 28u)], Struct_1(vec4<bool>(global1.x, global1.x, true, false)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-604f, -587f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(919f, 1736f))))));
    let var_0 = true;
    let var_1 = !(!func_4(vec2<f32>(_wgslsmith_f_op_f32(step(1225f, -775f)), -595f)));
    var var_2 = u_input.c;
    global2 = array<vec2<u32>, 29>();
    return true;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = vec3<f32>(-308f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_div_f32(-482f, 790f)) - 444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) + -484f) * -782f)), -249f);
    var var_1 = !arg_2;
    global1 = !(!vec3<bool>(!arg_1, false && global1.x, !any(vec3<bool>(global1.x, arg_1, true))));
    global0 = array<Struct_2, 28>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f - -538f) - var_0.x))));
    return Struct_1(!vec4<bool>(arg_1, true, any(vec3<bool>(arg_1, true, false)), true));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(33372u, 0u, 0u), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.a), 4294967295u, 0u << (u_input.a % 32u)))));
    var var_1 = Struct_3(arg_1, -28782i, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_div_u32(69931u, 1u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(67557u, 74768u), vec2<u32>(1u, var_0.x))), 28u)], func_5(var_0.x, true, 1i < _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, arg_0), _wgslsmith_mult_i32(arg_0, -19311i)), _wgslsmith_f_op_f32(-arg_3)));
    var_1 = Struct_3(func_5(abs(~(~30309u)), true, arg_2.x, arg_3), ~firstLeadingBit(arg_0), Struct_2(var_1.d, arg_3 < _wgslsmith_f_op_f32(sign(-286f))), Struct_1(!vec4<bool>(!var_1.c.b, var_1.b >= arg_0, global1.x, arg_1.a.x)));
    var_0 = abs(vec3<u32>(16268u, ~(~min(34907u, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 41015u) << (vec3<u32>(40991u, 32658u, 11756u) % vec3<u32>(32u)), ~vec3<u32>(1u, 37816u, var_0.x)))));
    var_1 = Struct_3(arg_1, 2147483647i, Struct_2(Struct_1(vec4<bool>(func_5(1u, false, global1.x, 446f).a.x, true, any(vec4<bool>(global1.x, var_1.c.a.a.x, false, arg_1.a.x)), false)), true), arg_1);
    return var_1.c.a;
}

fn func_7(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.a, ~u_input.a, abs(31024u));
    global1 = arg_0.d.a.xxx;
    var var_1 = Struct_3(Struct_1(vec4<bool>(false, true, global1.x, _wgslsmith_mult_i32(arg_1.x, u_input.c) == arg_0.b)), min((i32(-1i) * -arg_0.b) & ~_wgslsmith_sub_i32(-8636i, -1i), -1i), Struct_2(func_6(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, 0i, 2147483647i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, arg_0.b, u_input.c, 38858i), vec4<i32>(arg_0.b, 34640i, -1i, -1i))), arg_0.c.a, arg_0.c.a.a.wxz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) + _wgslsmith_f_op_f32(-266f + 678f))), true), arg_0.c.a);
    global1 = select(arg_0.c.a.a.yyx, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1044f, 1693f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1323f, -581f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1895f, 1691f)))))), vec3<bool>(!(false || any(global1.zz)), (firstTrailingBit(-1i) == arg_0.b) & arg_0.a.a.x, arg_0.b < max(-1i, 1i)));
    global1 = vec3<bool>(func_2(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), u_input.b))) & var_1.c.a.a.x, all(var_1.c.a.a.xxy), true);
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_7(Struct_3(func_6(firstTrailingBit(u_input.c) & -u_input.c, func_5(_wgslsmith_div_u32(u_input.b.x, u_input.a), func_2(u_input.b.x), false, -871f), !func_5(u_input.b.x, global1.x, true, 591f).a.wzy, _wgslsmith_f_op_f32(select(-695f, -1363f, global1.x))), u_input.c, Struct_2(Struct_1(!vec4<bool>(true, global1.x, global1.x, global1.x)), true), Struct_1(vec4<bool>(global1.x, func_6(0i, Struct_1(vec4<bool>(global1.x, global1.x, global1.x, true)), vec3<bool>(global1.x, global1.x, false), -1631f).a.x, 1i < u_input.c, select(true, global1.x, global1.x)))), vec3<i32>(~u_input.c, firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, 1i))), min(-1i, -_wgslsmith_clamp_i32(-1i, u_input.c, 22898i))));
    let var_1 = 12966u;
    global2 = array<vec2<u32>, 29>();
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(select(var_0.a, vec4<bool>(!(var_0.a.x | var_0.a.x), false, (u_input.a != 580u) || func_5(4294967295u, false, var_0.a.x, 1082f).a.x, any(var_0.a.zww)), vec4<bool>(countOneBits(1i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 9314i), vec2<i32>(u_input.c, u_input.c)), func_4(vec2<f32>(683f, 1119f)).x && var_0.a.x, true, var_0.a.x)));
    return Struct_1(func_6(_wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.c, u_input.c), max(-2147483647i, i32(-1i) * -2147483647i)), Struct_1(func_6(i32(-1i) * -2147483647i, func_7(Struct_3(Struct_1(var_0.a), 1i, global0[_wgslsmith_index_u32(var_1, 28u)], Struct_1(var_0.a)), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(var_0.a.x, global1.x, false), _wgslsmith_div_f32(-1218f, -727f)).a), !func_5(4294967295u, true, func_5(46634u, global1.x, true, 879f).a.x, _wgslsmith_f_op_f32(-566f + -1393f)).a.yyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f))).a);
}

fn func_8(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = func_6(i32(-1i) * -_wgslsmith_div_i32(1i, 34102i), Struct_1(func_6(u_input.c, Struct_1(func_7(arg_3, arg_0).a), vec3<bool>(true, true, all(arg_1.a.ywz)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(451f + 1561f), _wgslsmith_div_f32(489f, -1000f)))).a), !vec3<bool>(any(!arg_1.a), func_1().a.x, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1872f)) - -234f)), 180f))).a.zy;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -438f))), -323f));
    var var_2 = reverseBits(countOneBits(vec3<u32>(~(~u_input.a), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x), _wgslsmith_add_u32(~11392u, u_input.a))));
    global1 = select(!vec3<bool>(true, true, ~u_input.c != _wgslsmith_mod_i32(arg_0.x, 17538i)), arg_2.wxw, vec3<bool>(false, true, arg_3.c.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1989f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, true, true, true)), !(u_input.a > ~max(4294967295u, 0u)));
    let var_2 = -2147483647i;
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_3 = func_8(max(~(vec3<i32>(-1i) * -vec3<i32>(u_input.c, var_2, 14126i)), countOneBits(vec3<i32>(var_2, -55651i, var_2)) ^ (_wgslsmith_add_vec3_i32(vec3<i32>(var_2, var_2, -2147483647i), vec3<i32>(u_input.c, 2147483647i, u_input.c)) & ~vec3<i32>(0i, 1i, 0i))), func_1(), var_1.a.a, Struct_3(var_1.a, reverseBits(13128i), Struct_2(Struct_1(vec4<bool>(true, var_1.b, false, var_1.a.a.x)), true), Struct_1(select(var_1.a.a, !vec4<bool>(false, false, true, var_1.b), var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(-4i, var_2, var_3.x, -2147483647i)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 20034i, -1i, var_3.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 16713i, var_2, var_2), vec4<i32>(u_input.c, u_input.c, 31686i, var_2))), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.b.x, 110154u, u_input.b.x, 0u) >> (vec4<u32>(u_input.a, 79784u, u_input.a, u_input.b.x) % vec4<u32>(32u))), countOneBits(vec4<u32>(4294967295u, u_input.b.x, 109455u, 28456u)) ^ countOneBits(vec4<u32>(u_input.b.x, 7104u, u_input.b.x, 1u))) >> (firstLeadingBit(vec4<u32>(~8633u, u_input.a, u_input.a, 4294967295u & u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-138f - _wgslsmith_f_op_f32(select(142f, -292f, global1.x))), _wgslsmith_f_op_f32(floor(-1027f))))));
}

