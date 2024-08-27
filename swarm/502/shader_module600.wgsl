struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: vec2<f32> = vec2<f32>(172f, -842f);

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(30662u, 19225u), 2147483647i, 262f, ~u_input.e);
    global0 = array<vec2<u32>, 12>();
    var var_1 = 40333i;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(722f, 216f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, -159f), vec2<f32>(arg_0.c, global1.x)))))));
    var var_2 = Struct_4(select(select(select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), !vec3<bool>(true, arg_2, true), !vec3<bool>(true, true, arg_2)), select(!vec3<bool>(arg_1.a.x, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_2, arg_1.a.x), vec3<bool>(arg_2, true, arg_1.a.x)), true), !select(vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_2, true))), select(!select(vec3<bool>(arg_1.a.x, arg_2, false), vec3<bool>(false, arg_1.a.x, arg_2), false), !select(vec3<bool>(arg_1.a.x, true, arg_2), vec3<bool>(arg_2, true, false), vec3<bool>(arg_1.a.x, arg_2, true)), !(!vec3<bool>(false, arg_1.a.x, arg_1.a.x))), vec3<bool>(false, !(arg_0.c >= 3656f), true && arg_1.a.x)), arg_1);
    return _wgslsmith_f_op_f32(f32(-1f) * -1988f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    global2 = true;
    global2 = false;
    let var_0 = !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(select(arg_0.x, -3098f, var_0.x)), _wgslsmith_f_op_f32(exp2(global1.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wzw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, 1103f))))));
    var var_2 = var_1.x;
    return 1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec4<bool> {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-(~u_input.c.x), i32(-1i) * -(u_input.c.x ^ 1i), _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(u_input.c.x, u_input.d | -1i))), func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(1u, u_input.d, arg_1, u_input.a.x), Struct_2(vec2<bool>(false, false), u_input.c), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.d, ~(-73921i)), _wgslsmith_mod_i32(u_input.d & u_input.c.x, max(0i, u_input.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 895f, 1316f), vec3<f32>(804f, -1437f, 1322f)))), arg_1), _wgslsmith_sub_i32(~(-u_input.c.x), ~2147483647i));
    let var_1 = ~4294967295u;
    global2 = false;
    global2 = false;
    var var_2 = Struct_4(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.d != -1i)), Struct_2(vec2<bool>(true, true), u_input.c));
    return !(!vec4<bool>(false || (var_1 > arg_0.x), var_2.b.a.x, select(true, false != var_2.a.x, u_input.b.x < 0u), !var_2.a.x));
}

fn func_1() -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-279f, _wgslsmith_f_op_f32(sign(294f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(341f, global1.x)))));
    global0 = array<vec2<u32>, 12>();
    let var_0 = select(!select(func_2(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u), -675f), !func_2(vec4<u32>(26435u, u_input.a.x, u_input.a.x, 4294967295u), -2111f), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(4933u, u_input.e, u_input.a.x, 1u), vec4<u32>(u_input.e, 0u, 1u, u_input.e)), _wgslsmith_f_op_f32(357f + -691f))), !vec4<bool>(_wgslsmith_f_op_f32(-global1.x) > global1.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 0u) <= u_input.a.x, !any(vec3<bool>(false, false, true)), -9892i != u_input.d), false);
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 403f))))));
    var var_1 = Struct_4(!(!vec3<bool>(!var_0.x, var_0.x, var_0.x)), Struct_2(!vec2<bool>(func_2(vec4<u32>(u_input.a.x, u_input.e, u_input.a.x, 4294967295u), 634f).x, all(var_0.wy)), u_input.c));
    return !vec2<bool>(!((17760u & u_input.b.x) < u_input.a.x), true);
}

fn func_5(arg_0: vec2<bool>) -> Struct_2 {
    global1 = vec2<f32>(global1.x, global1.x);
    global2 = arg_0.x;
    global0 = array<vec2<u32>, 12>();
    var var_0 = abs(_wgslsmith_dot_vec3_u32(u_input.a, ~countOneBits(vec3<u32>(u_input.e, u_input.e, 1u))));
    let var_1 = Struct_1(1u, u_input.c.x, _wgslsmith_div_f32(global1.x, global1.x), u_input.e);
    return Struct_2(func_2(vec4<u32>(10794u, _wgslsmith_clamp_u32(0u, u_input.a.x | 63759u, 1u), 43870u, ~abs(u_input.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.c)), -1235f))).zy, u_input.c & firstTrailingBit(select(-vec2<i32>(var_1.b, 2147483647i), u_input.c, select(vec2<bool>(arg_0.x, true), arg_0, arg_0.x))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(!vec3<bool>(true, true, select(true, true, arg_1.a.x & arg_1.a.x)), arg_1);
    let var_1 = true;
    global2 = (21623u <= u_input.a.x) & !var_1;
    global2 = arg_1.a.x;
    var var_2 = _wgslsmith_div_i32(0i | ~_wgslsmith_add_i32(-29114i, arg_3.b.b), arg_1.b.x) ^ ~_wgslsmith_clamp_i32(select(countOneBits(-17492i), var_0.b.b.x & var_0.b.b.x, 1i <= u_input.c.x), ~u_input.c.x, -1i);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f + 2272f) - -1213f)), _wgslsmith_div_f32(1000f, 1000f)));
    let var_1 = Struct_3(~u_input.e, func_6(min(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<u32>(86091u, u_input.b.x)) >> (~u_input.e % 32u), u_input.b.x), func_5(func_1()), Struct_1(~1u, 0i | u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), u_input.a.x), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 17475u), _wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(~u_input.a.x, -u_input.d, -411f, 81566u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 6757u, 1u), u_input.a), u_input.d, -979f, abs(4832u)))), Struct_1(_wgslsmith_add_u32(countOneBits(4294967295u), _wgslsmith_clamp_u32(4294967295u | u_input.e, u_input.a.x, ~u_input.e)), -u_input.d & _wgslsmith_add_i32(min(10254i, u_input.d), -27984i), _wgslsmith_f_op_f32(var_0.x * var_0.x), firstTrailingBit(u_input.e)));
    var var_2 = u_input.a;
    global0 = array<vec2<u32>, 12>();
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f * 268f)))));
    let var_3 = func_5(func_2(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(46644u, var_1.a, 34825u, u_input.b.x), vec4<u32>(var_1.a, var_2.x, u_input.b.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 1u, var_1.a, var_2.x)), ~vec4<u32>(var_2.x, u_input.a.x, var_1.b.d, 4294967295u)), vec4<u32>(1u, 42546u, ~84947u, u_input.e)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))))).wx);
    global2 = true;
    var_2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_1.c.d, _wgslsmith_clamp_u32(78026u, abs(36515u), u_input.e)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~73220u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-183f - var_1.b.c), _wgslsmith_f_op_f32(max(-909f, var_1.b.c))), global1.x))));
}

