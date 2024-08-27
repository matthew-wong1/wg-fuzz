struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, 4294967295u, Struct_1(-1193f));

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: vec2<bool>;

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = select(global4.yz, select(vec2<bool>(global4.x, !all(vec4<bool>(global3.x, true, true, global3.x))), vec2<bool>(false, true), select(true, global4.x, global3.x)), !vec2<bool>(true, !global3.x));
    let var_1 = countOneBits(_wgslsmith_mult_u32(~global2.b, u_input.b) ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global0.b, u_input.b)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.b, global0.b), vec2<u32>(24235u, arg_1.b), vec2<u32>(34078u, arg_1.b)), ~vec2<u32>(global0.b, global2.b) | vec2<u32>(u_input.d, 35205u)));
    var var_2 = global0.c;
    var_2 = Struct_1(global0.c.a);
    global1 = _wgslsmith_f_op_f32(-arg_1.c.a);
    return 82507u;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.a + _wgslsmith_f_op_f32(arg_1.c.a - global2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a - _wgslsmith_f_op_f32(428f - global0.c.a)))));
    var var_1 = global0.a;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -579f);
    var var_2 = arg_1.a;
    var var_3 = arg_0;
    return _wgslsmith_add_i32(-40815i >> (u_input.b % 32u), abs(-2102i));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = 8499u;
    var var_1 = global0.c;
    let var_2 = ~(~func_4(false, Struct_2(-18705i, func_3(global0.a, Struct_2(-15974i, global0.b, Struct_1(-1317f))), global0.c)));
    global1 = _wgslsmith_div_f32(global2.c.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.a, _wgslsmith_f_op_f32(-116f + global0.c.a), global3.x))))));
    global2 = Struct_2(_wgslsmith_div_i32(-var_2, -1i << (_wgslsmith_add_u32(_wgslsmith_sub_u32(global2.b, 67108u), _wgslsmith_add_u32(global0.b, global0.b)) % 32u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(5028u, arg_0) & _wgslsmith_mult_vec2_u32(vec2<u32>(64421u, 4294967295u), vec2<u32>(0u, arg_0))), vec2<u32>(1u, global0.b << (firstTrailingBit(arg_0) % 32u))), Struct_1(global0.c.a));
    return !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) >= _wgslsmith_f_op_f32(-global2.c.a), global4.x, true, global4.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> f32 {
    global3 = func_2(_wgslsmith_add_u32(arg_1, 10988u)).yz;
    global0 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(global2.a, -13334i, global0.a, u_input.a.x)), vec4<i32>(u_input.a.x, arg_2, abs(arg_2), -7463i)), 0i), 4294967295u, global2.c);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.a, _wgslsmith_f_op_f32(min(global2.c.a, _wgslsmith_f_op_f32(f32(-1f) * -568f)))))) - 987f);
    let var_1 = Struct_2(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(global0.b), u_input.b, reverseBits(global2.b), ~u_input.d), vec4<u32>(1u, ~global0.b, u_input.d ^ 4294967295u, 27382u)) % 32u), ~arg_1, global0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1072f, var_1.c.a, -734f), vec3<f32>(var_0, global2.c.a, var_0), global3.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.a, var_1.c.a, global0.c.a), vec3<f32>(var_1.c.a, 1464f, -1597f))), true | global3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, global0.c.a, var_1.c.a) + vec3<f32>(628f, -576f, -618f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, var_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a, var_0, 1301f) * vec3<f32>(-407f, global0.c.a, var_1.c.a))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-552f, 116f, 468f))))))), !vec3<bool>(select(-49550i, 33221i, global3.x) < _wgslsmith_mod_i32(-1i, global2.a), !global3.x, arg_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f - _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1091f, 734f) - _wgslsmith_f_op_f32(max(var_1.c.a, global2.c.a))) * 745f)));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: i32) -> Struct_2 {
    global4 = !select(func_2(24837u).zzw, select(!select(vec3<bool>(true, global4.x, true), vec3<bool>(false, true, true), false), select(select(vec3<bool>(global4.x, global3.x, global4.x), vec3<bool>(false, global3.x, global4.x), true), vec3<bool>(true, true, true), vec3<bool>(false, true, global3.x)), !(!vec3<bool>(global3.x, true, false))), !(u_input.d >= countOneBits(41604u)));
    global2 = Struct_2(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(~(-27020i), _wgslsmith_clamp_i32(1i, global2.a, global2.a)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(8666i, arg_2) << (vec2<u32>(global2.b, global0.b) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-32730i, global0.a), -u_input.c.yw, vec2<i32>(global0.a, 2147483647i)))), 1u, global2.c);
    let var_0 = select(!select(func_2(global2.b).zwy, vec3<bool>(any(vec3<bool>(global4.x, false, global4.x)), func_2(arg_1).x, global3.x || true), select(func_2(u_input.b).xyx, vec3<bool>(global4.x, false, global3.x), !vec3<bool>(global3.x, global3.x, false))), select(vec3<bool>(global3.x | false, all(func_2(0u).yw), global4.x), !func_2(~arg_1).yyx, !vec3<bool>(global3.x, false, true)), vec3<bool>(global4.x, true, (34969u | ~global2.b) >= arg_1));
    var var_1 = global0.c;
    let var_2 = Struct_2(~(0i) >> (func_3(abs(-67160i), Struct_2(~9905i, arg_1, Struct_1(global2.c.a))) % 32u), u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-599f, -1913f)), _wgslsmith_f_op_f32(step(global0.c.a, arg_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.a)) - -1000f))));
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = ~u_input.d;
    let var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(~global2.b), ~(~1002u), max(firstTrailingBit(-2147483647i), ~0i)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~global0.b, max(u_input.d, var_0), 24202u), ~min(vec3<u32>(4294967295u, 1u, 26501u), vec3<u32>(u_input.b, 1u, u_input.b)) & (~vec3<u32>(63362u, 0u, 26107u) & vec3<u32>(global0.b, 0u, 10115u))), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(-4309i, u_input.c.x), u_input.a.x), _wgslsmith_add_i32(~(~(-1i)), firstTrailingBit(-7865i) & ~(-63097i))));
    var var_2 = vec4<i32>(var_1.a, -arg_1.x, global2.a, -(var_1.a ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, arg_1.x, -24266i, 5415i), vec4<i32>(9848i, -17018i, 2147483647i, -1i)), vec4<i32>(0i, u_input.a.x, u_input.c.x, 30787i))));
    global3 = vec2<bool>(!(var_2.x <= _wgslsmith_div_i32(arg_1.x, -13603i)) && false, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.a), arg_2, _wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.c.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a, -412f, var_1.c.a, global2.c.a) * vec4<f32>(arg_2, 957f, 889f, 195f))), vec4<f32>(_wgslsmith_f_op_f32(var_1.c.a - global2.c.a), _wgslsmith_f_op_f32(-global0.c.a), _wgslsmith_f_op_f32(-global0.c.a), _wgslsmith_f_op_f32(-global2.c.a)), select(true, arg_0.x & false, any(arg_0.yxw)))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.a, global0.c.a) + vec2<f32>(global0.c.a, -2291f)), vec2<f32>(699f, -347f))), vec2<f32>(_wgslsmith_f_op_f32(select(global2.c.a, global0.c.a, true)), global0.c.a))))));
    global1 = global0.c.a;
    let var_1 = Struct_2(firstTrailingBit(func_1(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global4.x, global4.x, global3.x), vec4<bool>(false, true, global3.x, false)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(5057i, global2.a, -2147483647i), vec3<i32>(global2.a, 1i, -1i) >> (vec3<u32>(54209u, u_input.b, 41050u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-46236i, -2147483647i, 2147483647i), vec3<i32>(u_input.a.x, 0i, 2147483647i))), -208f, false)), ~37876u, global0.c);
    let var_2 = vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), !global4.x)), global4.x);
    let var_3 = Struct_1(var_1.c.a);
    var var_4 = global0.b;
    global0 = Struct_2(-1413i, ~1u, func_6(224f, global2.b, u_input.a.x).c);
    global4 = !vec3<bool>(var_2.x, true, all(!vec4<bool>(false, var_2.x, global3.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~global0.a, var_1.a, global2.a, -_wgslsmith_dot_vec4_i32(~u_input.c, -vec4<i32>(-1i, global2.a, 16311i, 1i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1.c.a, var_1.c.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1115f, -2302f, var_3.a, var_1.c.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a, global0.c.a, global2.c.a, global0.c.a)))))), u_input.a);
}

