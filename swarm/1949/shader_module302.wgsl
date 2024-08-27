struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(26998i), Struct_1(2147483647i), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(-8672i), Struct_1(0i), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(1i), Struct_1(2147483647i), vec4<bool>(true, false, true, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_3.b;
    global2 = Struct_3(arg_3, global2.a, Struct_2(Struct_1(arg_3.b.a), global2.b.b, !select(vec4<bool>(arg_2, global1.x, arg_1.x, true), global2.c.c, arg_1.x)));
    global2 = Struct_3(Struct_2(Struct_1(21641i), global2.b.b, select(select(global2.b.c, global2.a.c, any(vec4<bool>(arg_2, false, arg_3.c.x, global1.x))), select(!arg_3.c, global2.c.c, vec4<bool>(global1.x, arg_3.c.x, true, global1.x)), all(vec3<bool>(false, arg_1.x, arg_3.c.x)))), global2.b, Struct_2(global2.b.b, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(48217i, arg_0.x) >> (vec2<u32>(0u, 31896u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(var_0.a, 0i)))), global2.a.c));
    var var_1 = _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_clamp_u32(~(~(~1u)), ~(~(~53045u)), 10944u));
    var_0 = Struct_1(-global0[_wgslsmith_index_u32(min(46950u, 127u), 24u)]);
    return vec2<i32>(global0[_wgslsmith_index_u32(~4294967295u, 24u)], firstTrailingBit(u_input.b));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = global2.c.b;
    var var_1 = Struct_5(_wgslsmith_div_vec2_i32(arg_2.xz, select(select(~arg_2.yz, _wgslsmith_clamp_vec2_i32(arg_2.xx, vec2<i32>(0i, var_0.a), arg_2.zy), select(vec2<bool>(true, global2.c.c.x), vec2<bool>(false, true), false)), -(~arg_2.zw), false)), 2684u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * 303f) * _wgslsmith_f_op_f32(ceil(arg_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1179f, -469f))))), ~87674u, Struct_4(Struct_1(var_0.a), arg_3.yxz));
    var var_2 = Struct_5(firstLeadingBit(abs(func_3(vec4<i32>(1i, -8282i, 26734i, global2.a.a.a), global1.xyw, false, arg_0) | ~vec2<i32>(-46250i, -2147483647i))), 1u, -493f, 27649u, var_1.e);
    let var_3 = Struct_3(arg_0, Struct_2(Struct_1(-37885i), global2.a.a, vec4<bool>(all(vec3<bool>(true, false, arg_1)), any(global1.zzx), true, global2.a.c.x)), global2.c);
    var var_4 = select(!var_3.b.c.x == global2.c.c.x, any(vec4<bool>(any(select(var_3.a.c.yxy, vec3<bool>(global2.b.c.x, arg_0.c.x, false), arg_0.c.x)), arg_0.c.x, var_1.c <= -272f, arg_1)), true);
    return ~(var_2.d & firstLeadingBit(_wgslsmith_sub_u32(var_2.d, reverseBits(var_2.b))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    global1 = vec4<bool>(!all(!vec4<bool>(true, global2.a.c.x, false, global1.x)), all(!select(global2.a.c, global2.c.c, true)), arg_1.c.x, global1.x);
    var var_0 = u_input.b;
    global1 = arg_1.c;
    return Struct_3(global2.b, global2.a, global2.a);
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_div_u32(43312u, ~func_2(global2.a, global1.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-12645i, -11074i, u_input.c, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], -9886i, global2.c.a.a, 2147483647i)), vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(global2.c.a, Struct_1(_wgslsmith_clamp_i32(-global2.c.a.a, ~(-48124i), 30942i)), vec4<bool>(_wgslsmith_clamp_u32(79385u, 46754u, 4294967295u) != 1u, true, true, all(global2.a.c.wy))));
    var_0 = func_4(firstLeadingBit(1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 3851u, 87039u, 17590u), vec4<u32>(9552u, 17662u, 38784u, 4294967295u))), func_4(~countOneBits(_wgslsmith_mult_u32(1u, 77784u)), Struct_2(func_4(1u, var_0.c).c.b, Struct_1(abs(var_0.b.b.a)), select(select(vec4<bool>(var_0.b.c.x, true, global1.x, global1.x), vec4<bool>(var_0.c.c.x, true, global2.a.c.x, var_0.b.c.x), global2.c.c), !var_0.c.c, vec4<bool>(false, true, global2.c.c.x, true)))).a);
    var var_1 = Struct_4(var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(197f, 763f, 1427f) - vec3<f32>(2404f, 1181f, 1910f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, -1254f, 327f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-717f, -857f, 242f))))))));
    global1 = !(!global2.a.c);
    let var_2 = Struct_5(func_3(abs(vec4<i32>(_wgslsmith_div_i32(var_1.a.a, global2.c.a.a), global0[_wgslsmith_index_u32(29036u, 24u)], global2.a.b.a, 1i)), global2.c.c.xzy, true, Struct_2(func_4(0u, global2.c).a.b, var_1.a, select(select(var_0.a.c, global2.b.c, global1.x), vec4<bool>(global1.x, true, global2.c.c.x, false), func_4(4294967295u, Struct_2(Struct_1(global2.c.b.a), var_0.a.a, global2.c.c)).b.c))), 1u, _wgslsmith_f_op_f32(-var_1.b.x), 1u, Struct_4(Struct_1(global2.b.a.a), _wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(_wgslsmith_f_op_f32(-133f + 649f), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(410f * var_1.b.x)))));
    return ~60553u | select(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_2.d, 4294967295u, var_2.b, var_2.b), vec4<u32>(1u, 0u, 1u, 4294967295u), global2.c.c), firstTrailingBit(select(vec4<u32>(var_2.d, 1u, var_2.d, var_2.d), vec4<u32>(91970u, 0u, 0u, 22638u), global2.b.c))), ~var_2.b, !(select(var_2.b, 0u, false) >= 0u));
}

fn func_5(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(~select(-1i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_1, 24u)], 0i), func_4(10816u, Struct_2(global2.b.b, global2.b.a, global2.a.c)).c.c.x), i32(-1i) * -max(63985i, 0i)), -(~(i32(-1i) * -38963i) ^ u_input.c), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27075u, arg_1, arg_1), vec3<u32>(47910u, arg_1, 88048u)), 24u)]), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-70788i, global2.b.b.a), vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global2.b.a.a))), firstTrailingBit(~vec2<i32>(1i, 23162i))));
    global2 = Struct_3(func_4(1676u, Struct_2(Struct_1(0i), global2.a.a, !(!global2.c.c))).a, func_4(func_1() | func_2(func_4(arg_1, Struct_2(global2.b.b, global2.a.b, global2.b.c)).a, global1.x, vec4<i32>(2147483647i, var_0.x, u_input.a, -40521i), _wgslsmith_div_vec4_f32(vec4<f32>(172f, arg_0, arg_0, 217f), vec4<f32>(arg_0, 1005f, arg_0, 1000f))), Struct_2(global2.b.a, Struct_1(-u_input.c), global2.c.c)).a, global2.c);
    let var_1 = !select(func_4(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1, 12630u, 18848u, 58433u), vec4<u32>(arg_1, arg_1, 116052u, arg_1)), select(vec4<u32>(52606u, arg_1, 1u, 13940u), vec4<u32>(arg_1, 79154u, 18397u, 2435u), vec4<bool>(true, global1.x, global1.x, global1.x))), global2.c).b.c.wz, !global1.yy, select(!select(global2.a.c.yw, global1.yy, true), select(global1.zy, vec2<bool>(false, global2.c.c.x), true), !(global1.x || false)));
    global2 = func_4(arg_1, Struct_2(func_4(_wgslsmith_clamp_u32(4294967295u, 4294967295u, _wgslsmith_add_u32(arg_1, arg_1)), global2.b).c.b, func_4(_wgslsmith_div_u32(~1u, arg_1 & arg_1), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 24u)]), Struct_1(global2.b.b.a), global2.a.c)).a.a, global2.c.c));
    global1 = global2.b.c;
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(abs(arg_1), _wgslsmith_sub_u32(57927u, 1u)) & vec2<u32>(abs(arg_1), _wgslsmith_div_u32(32998u, 1u))), ~vec2<u32>(_wgslsmith_add_u32(arg_1, abs(arg_1)), ~arg_1));
}

fn func_6(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec4<f32>) -> f32 {
    global2 = Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_1.x, 24u)]), func_4(arg_1.x, func_4(arg_0.d, Struct_2(Struct_1(global2.a.b.a), Struct_1(-22899i), global2.a.c)).b).a.a, select(select(vec4<bool>(false, global2.b.c.x, false, global1.x), func_4(arg_1.x, global2.a).c.c, func_4(32684u, global2.c).a.c), func_4(4294967295u, Struct_2(arg_0.e.a, Struct_1(2147483647i), global2.a.c)).b.c, vec4<bool>(true, global1.x, all(vec2<bool>(false, global1.x)), !global1.x))), Struct_2(Struct_1(~global0[_wgslsmith_index_u32(arg_0.b, 24u)]), func_4(min(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(4294967295u, arg_0.d, 5300u, arg_1.x)), 4294967295u), func_4(37384u, Struct_2(arg_0.e.a, Struct_1(1i), global2.b.c)).a).a.b, select(!vec4<bool>(false, false, true, global1.x), vec4<bool>(all(vec3<bool>(true, global2.c.c.x, global2.b.c.x)), func_4(arg_0.b, global2.b).b.c.x, true, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -348f) >= arg_0.c)), global2.c);
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~arg_0.d, arg_0.b), arg_1.x), vec2<u32>(56604u, 24980u));
    let var_2 = arg_1 ^ vec4<u32>(~(~arg_1.x), arg_0.d, ~min(select(10676u, arg_1.x, global2.b.c.x), ~arg_0.b), var_1.x);
    global1 = global2.a.c;
    return 730f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1946f * _wgslsmith_f_op_f32(func_6(Struct_5(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), func_5(_wgslsmith_div_f32(316f, -1000f), func_1()), 549f, _wgslsmith_clamp_u32(~4294967295u, 1u, ~29136u), Struct_4(global2.a.a, vec3<f32>(1f, 1f, 1f))), vec4<u32>(1u, 1u, 1u, 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(133f, -1388f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-127f)), _wgslsmith_f_op_f32(trunc(1863f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1245f, 277f) * 1336f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) - _wgslsmith_f_op_f32(abs(274f)))))));
    var var_1 = _wgslsmith_mod_u32(41531u, ~1317u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(f32(-1f) * -476f)))), var_0);
    var var_3 = ~(~select(~18245u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(23165u, 4294967295u, 46356u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), var_0 <= var_0));
    var var_4 = global2.a.c.x;
    let var_5 = Struct_3(func_4(firstLeadingBit(~37291u), Struct_2(func_4(~1u, global2.a).a.b, global2.a.a, vec4<bool>(true, global1.x && false, false, global1.x && true))).a, global2.b, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u) >> (_wgslsmith_div_vec2_u32(firstLeadingBit(max(vec2<u32>(1u, 0u), vec2<u32>(21961u, 0u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(27486u, 0u), abs(vec2<u32>(56859u, 0u)), ~vec2<u32>(44708u, 13150u))) % vec2<u32>(32u)));
}

