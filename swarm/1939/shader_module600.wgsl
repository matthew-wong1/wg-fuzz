struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: Struct_1 = Struct_1(55843u, false, vec2<bool>(false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global2: vec3<f32> = vec3<f32>(2720f, -420f, 551f);

var<private> global3: Struct_5 = Struct_5(1i, Struct_4(vec4<f32>(-296f, -2098f, 930f, -1525f)), Struct_4(vec4<f32>(-223f, 879f, -1000f, -284f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_3(Struct_1(arg_1, false, vec2<bool>(any(select(vec3<bool>(true, global1.c.x, global1.e.x), vec3<bool>(arg_2.x, arg_2.x, true), arg_2)), global1.e.x), !(!vec3<bool>(false, global1.e.x, global1.e.x)), vec3<bool>(!global1.c.x, global1.c.x, arg_2.x)), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.wy, ~vec2<u32>(global1.a, 4294967295u)), _wgslsmith_dot_vec2_u32(~u_input.b.yy, u_input.b.wx)), arg_2.x, vec2<bool>(arg_2.x, arg_2.x), !(!select(vec3<bool>(true, false, global1.d.x), global1.e, vec3<bool>(arg_2.x, arg_2.x, true))), vec3<bool>(_wgslsmith_mult_u32(21448u, 38613u) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 7561u), vec2<u32>(19859u, 45487u)), !(global1.d.x & arg_2.x), (-1i & u_input.c.x) <= (i32(-1i) * -28485i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.b.a.xx), vec2<f32>(arg_0, 877f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(ceil(global2.zx)))))), Struct_2(Struct_1(u_input.b.x, false, vec2<bool>(false, true), select(vec3<bool>(arg_2.x, arg_2.x, global1.c.x), vec3<bool>(global1.d.x, global1.d.x, arg_2.x), global1.e), vec3<bool>(!global1.d.x, true, all(arg_2.zx))), abs(_wgslsmith_div_u32(71952u, global1.a)) & ~(~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2015f), global2.x)) * _wgslsmith_f_op_f32(step(-332f, _wgslsmith_f_op_f32(step(arg_0, arg_0))))), ~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(global1.a, u_input.b.x)), abs(u_input.b.zxx)));
    global0 = array<Struct_4, 25>();
    let var_1 = ~(~vec3<u32>(firstLeadingBit(31097u), 4294967295u, 0u));
    var var_2 = _wgslsmith_div_f32(-295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a.x)));
    global0 = array<Struct_4, 25>();
    return abs(~abs(reverseBits(u_input.b.x))) >> (15332u % 32u);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_4 {
    global3 = Struct_5(10762i, global3.b, Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 418f, 490f)) - vec4<f32>(393f, 1259f, 1207f, -398f))))));
    let var_0 = Struct_5(19079i, global0[_wgslsmith_index_u32(14903u, 25u)], Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.a.x, 840f, global3.b.a.x, global2.x)))));
    global0 = array<Struct_4, 25>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34932u, 97034u, 1u), 25u)];
    global1 = Struct_1(~func_3(_wgslsmith_f_op_f32(-1213f * 682f), 0u, vec3<bool>(true, any(vec4<bool>(arg_1, global1.e.x, arg_1, global1.c.x)), global1.d.x)), all(vec3<bool>(!(u_input.b.x <= u_input.b.x), all(vec4<bool>(global1.c.x, false, true, false)), all(vec4<bool>(global1.b, false, arg_1, arg_1)))), !vec2<bool>(true, all(select(vec4<bool>(global1.b, true, arg_1, arg_1), vec4<bool>(arg_1, global1.d.x, global1.e.x, global1.c.x), vec4<bool>(global1.d.x, arg_1, true, false)))), vec3<bool>(!all(global1.d), false, true), global1.e);
    return global0[_wgslsmith_index_u32(1u, 25u)];
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> bool {
    global1 = arg_2;
    let var_0 = Struct_2(arg_2, reverseBits(~(global1.a & _wgslsmith_mod_u32(global1.a, global1.a))), 1201f, 51333u, select(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12081u, 56826u, arg_2.a, u_input.b.x), u_input.b), _wgslsmith_sub_u32(arg_2.a, 9842u), _wgslsmith_add_u32(0u, 1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 28095u, 37791u), u_input.b.zwz), _wgslsmith_mult_u32(1u, global1.a), ~global1.a)), u_input.b.xww, !all(!vec4<bool>(arg_2.d.x, true, global1.d.x, true))));
    let var_1 = Struct_5(-(-2147483647i << (var_0.e.x % 32u)), func_2(_wgslsmith_f_op_vec2_f32(global2.xz - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.a.wy - vec2<f32>(global2.x, arg_0.a.x))))), !global1.b), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1371f, arg_0.a.x))), !global1.c.x));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(global3.c.a.zx)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(349f)), var_1.b.a.x))), func_2(global2.yz, any(vec4<bool>(global1.c.x != arg_2.e.x, true, true, true))).a.ww);
    let var_3 = arg_2;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(global1.d.x, func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.zx + vec2<f32>(-313f, global2.x)) + global2.xx), !global1.e.x), global3.a, Struct_1(global1.a, true, select(global1.d.zz, !vec2<bool>(global1.d.x, false), !global1.e.zz), global1.d, select(select(global1.e, global1.d, true), !vec3<bool>(global1.c.x, global1.c.x, global1.b), any(vec4<bool>(true, global1.e.x, global1.e.x, true))))), global1.c.x, true);
    global0 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(global3.b.a.yxw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a.x - global3.b.a.x)), _wgslsmith_f_op_f32(global2.x - global3.b.a.x), global3.c.a.x))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * var_1.x);
    return Struct_1(1u, select(!select(var_0.x, var_0.x, any(vec2<bool>(false, var_0.x))), !var_0.x, var_0.x), select(!select(var_0.yy, global1.e.xz, true), global1.c, -min(5303i, u_input.a.x) == 28767i), vec3<bool>(all(!vec4<bool>(global1.b, true, var_0.x, var_0.x)) && global1.b, var_0.x, abs(61664u) >= global1.a), var_0.yxy);
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = -(~vec3<i32>(abs(abs(u_input.c.x)), global3.a, global3.a));
    global0 = array<Struct_4, 25>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.c.a.zwy, vec3<f32>(global2.x, -540f, 337f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.a.wxy), _wgslsmith_f_op_vec3_f32(global3.c.a.yww - vec3<f32>(368f, 539f, global2.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.c.a.zwz))))), global3.b.a.xzz);
    var var_2 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2718f, 333f)))), true).a.x - -604f);
    var var_3 = Struct_5(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(var_0.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(-46309i, -11788i), vec2<i32>(global3.a, var_0.x)))), global0[_wgslsmith_index_u32(~countOneBits(~2387u | ~arg_0.a), 25u)], global3.c);
    return StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(var_0.xx, vec2<i32>(-4743i, 8818i)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.a.zz) & vec2<i32>(u_input.c.x, 2147483647i))), var_3.b.a.wyw, abs(5856u) | countOneBits(arg_0.a), ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b.x, 21811u), u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(~44681u, 38869u), (vec2<u32>(u_input.b.x, 0u) | vec2<u32>(u_input.b.x, 16942u)) & reverseBits(u_input.b.zz << (u_input.b.yw % vec2<u32>(32u))), abs(_wgslsmith_clamp_vec2_u32(u_input.b.ww, u_input.b.yw, u_input.b.xx) << (u_input.b.zw % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = func_5(func_1());
}

