struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1 = Struct_1(1u, vec3<f32>(405f, -371f, 220f), vec4<f32>(-1000f, -1000f, 1046f, 490f));

var<private> global2: Struct_1 = Struct_1(1922u, vec3<f32>(1374f, 2927f, -228f), vec4<f32>(-1604f, 533f, 1363f, -1709f));

var<private> global3: Struct_1 = Struct_1(1u, vec3<f32>(612f, -264f, 427f), vec4<f32>(-265f, 114f, 120f, -193f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(76196u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1656f, _wgslsmith_div_f32(arg_0.b.x, arg_0.c.x), _wgslsmith_div_f32(629f, 1545f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global3.c.x, -1000f))))) + _wgslsmith_f_op_vec3_f32(-global3.b)), _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(floor(-1567f)), _wgslsmith_div_f32(502f, 1203f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, var_0.b.x, -387f, global1.b.x) - vec4<f32>(-1651f, var_0.b.x, var_0.c.x, global1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, arg_0.b.x, global1.c.x, var_0.c.x) + vec4<f32>(1480f, global2.c.x, global1.b.x, global2.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, 551f, 1000f, arg_0.c.x)))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = !select(!vec2<bool>(true, arg_0.x != arg_0.x), arg_0.xw, !(!vec2<bool>(global0.x, false)));
    return Struct_1(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_mult_u32(global2.a, _wgslsmith_div_u32(~u_input.b, ~global2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(103f + global3.b.x), _wgslsmith_f_op_f32(global3.b.x - global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(241f, global3.c.x, 1000f, -1516f))), _wgslsmith_f_op_vec4_f32(-global2.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c * global2.c) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2.a, vec3<f32>(global3.c.x, 1936f, -924f), vec4<f32>(global1.c.x, 434f, 292f, global2.b.x))))), vec4<bool>(true, arg_0.x, any(vec2<bool>(false, arg_0.x)), false))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_1.yz;
    return func_2(!vec4<bool>(false, arg_1.x, select(!global0.x, global0.x, arg_2.c.x <= 824f), true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global2 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(abs(func_2(select(vec4<bool>(true, global0.x, true, true), select(vec4<bool>(arg_0, global0.x, arg_0, global0.x), vec4<bool>(global0.x, true, true, arg_0), vec4<bool>(arg_0, false, arg_0, global0.x)), all(vec3<bool>(false, true, arg_0)))).b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, arg_2.c.x, 435f, arg_2.b.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec4<bool>(true, global0.x, global0.x, arg_0)).b.x, global3.c.x, -169f, arg_1.c.x))));
    global2 = arg_1;
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(abs(func_1(min(vec4<i32>(38586i, arg_3, 17986i, arg_3), u_input.a), !(!vec4<bool>(true, global0.x, global0.x, false)), func_2(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(global0.x, arg_0, false, global0.x), vec4<bool>(arg_0, global0.x, false, false)))).b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global1.c))) - _wgslsmith_f_op_vec4_f32(global1.c - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(459f, global3.c.x, 1215f, 389f)))))));
    var var_2 = arg_2;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global3 = func_4(true || ((~arg_2 & ~13466u) < ~_wgslsmith_mod_u32(67675u, 1u)), Struct_1(abs(min(global3.a, global2.a) << (~arg_0.a % 32u)), _wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-306f, -1108f, -340f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(681f - arg_1.b.x), _wgslsmith_f_op_f32(-1000f - global1.c.x), -139f) + _wgslsmith_f_op_vec4_f32(func_3(arg_1)))), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, -211f, global2.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -2240f, -1597f, global1.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_0.c, vec4<f32>(243f, arg_0.c.x, 1140f, -963f)))))), abs(-firstLeadingBit(u_input.c | u_input.c)));
    return Struct_1(global1.a, _wgslsmith_div_vec3_f32(func_2(!(!vec4<bool>(false, true, true, global0.x))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-610f, -1549f, -727f), vec3<f32>(global1.b.x, arg_0.b.x, arg_1.b.x))))))), func_1(vec4<i32>(select(u_input.a.x, min(u_input.a.x, 15253i), global0.x), u_input.c, u_input.c, u_input.c), vec4<bool>(all(!vec4<bool>(true, global0.x, true, global0.x)), !global0.x, global0.x, global0.x | any(vec3<bool>(global0.x, false, true))), func_2(vec4<bool>(!global0.x, global0.x, true, true))).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.d), ~1u, 72178u) & ~(~(~u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.c.x, global2.c.x)), 519f)), -418f, _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(global2.c.x * 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)));
    let var_1 = ~(~vec3<u32>(var_0.a, select(45052u, 4294967295u, global0.x), ~u_input.b)) & u_input.e;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c.zy, vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b.x + -723f))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1203f, 1331f)), global2.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x + -855f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))));
    var var_3 = func_5(func_4(any(!(!vec4<bool>(global0.x, false, false, true))), func_1(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, 1i, 28839i, u_input.c)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -10707i))), vec4<bool>(global0.x, global0.x, false, global0.x), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, global1.a, 26110u, var_1.x), vec4<u32>(138788u, global3.a, u_input.b, var_0.a)), _wgslsmith_f_op_vec3_f32(exp2(var_0.b)), vec4<f32>(var_2.x, var_0.b.x, -1983f, -590f))), func_1(vec4<i32>(u_input.a.x, -1968i, -5170i, u_input.a.x), vec4<bool>(!global0.x, !global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x & true), func_1(vec4<i32>(u_input.a.x, 0i, 0i, u_input.c), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, false)), func_1(u_input.a, vec4<bool>(false, global0.x, true, global0.x), Struct_1(var_0.a, vec3<f32>(global1.b.x, global1.b.x, -132f), global1.c)))), firstLeadingBit(2147483647i)), Struct_1(select(_wgslsmith_dot_vec3_u32(var_1, var_1) | var_1.x, global1.a, any(!vec3<bool>(global0.x, false, true))), vec3<f32>(-189f, _wgslsmith_f_op_vec4_f32(func_3(func_1(vec4<i32>(-1i, 1i, u_input.c, 46211i), vec4<bool>(global0.x, global0.x, false, false), Struct_1(101695u, global2.c.zyz, vec4<f32>(795f, 570f, -504f, global3.c.x))))).x, _wgslsmith_f_op_f32(-1f)), global2.c), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(34198u, global2.a, global3.a, 1u), vec4<u32>(4294967295u, global1.a, var_1.x, 31543u), vec4<u32>(1u, 1u, 22367u, 21194u))), min(select(vec4<u32>(78259u, 4294967295u, 1u, 1u), vec4<u32>(78734u, global3.a, 1u, 1u), false), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, global1.a), vec4<u32>(u_input.d, global3.a, global3.a, var_1.x))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, global2.a, global1.a, global1.a), vec4<u32>(40074u, var_1.x, var_0.a, 1u)))), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(35928u, 24349u, u_input.b, 74739u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global2.a, u_input.b, global2.a), vec4<u32>(48249u, 32400u, 4294967295u, 38145u))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~_wgslsmith_add_u32(23654u, 12144u))), min(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.wxy >> (u_input.e % vec3<u32>(32u)), -u_input.a.zzy), vec3<i32>(abs(u_input.a.x), 1i, -2147483647i))));
}

