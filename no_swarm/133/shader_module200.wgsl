struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(true, Struct_2(vec4<i32>(1i, -24187i, 1i, 9839i), 871f, vec4<u32>(5508u, 4294967295u, 27456u, 18476u), Struct_1(vec2<i32>(129968i, 1i), 357f), true), Struct_1(vec2<i32>(-2887i, -20736i), 1000f));

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    global1 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0.b.a, -arg_0.c.a), ~_wgslsmith_add_i32(global0.b.d.a.x, -2147483647i) & -2147483647i);
    global1 = i32(-1i) * -(_wgslsmith_div_i32(i32(-1i) * -39959i, 5465i) >> (u_input.c % 32u));
    var var_0 = false;
    let var_1 = min(1i, ~47358i);
    var var_2 = Struct_4(!(1i <= global0.b.a.x), Struct_2(_wgslsmith_sub_vec4_i32(global0.b.a, -(~vec4<i32>(arg_0.b.x, -1i, -12220i, 2147483647i))), _wgslsmith_f_op_f32(arg_1.b - -612f), arg_0.c.c, Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2636f)), _wgslsmith_div_f32(-1484f, arg_0.c.b), false))), global0.a), Struct_1(vec2<i32>(max(global0.c.a.x, max(var_1, 1i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(global0.b.d.a.x, var_1)))), _wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.d.b)))));
    return _wgslsmith_div_f32(arg_0.c.b, -244f);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -189f, _wgslsmith_f_op_f32(f32(-1f) * -412f), arg_0), ~(~(-global0.b.a << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 10594u, u_input.c, 48588u), global0.b.c) % vec4<u32>(32u)))), Struct_2(~(~select(global0.b.a, global0.b.a, global0.b.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(799f, 2392f, global0.c.b, 908f), vec4<i32>(44298i, -2147483647i, u_input.d.x, u_input.d.x), Struct_2(global0.b.a, global0.c.b, u_input.b, global0.b.d, global0.b.e)), global0.c)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.b.c.x, 36544u, 15395u), vec4<u32>(global0.b.c.x, 829u, 55953u, global0.b.c.x))), global0.b.d, !(~8750u != global0.b.c.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(var_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b, _wgslsmith_f_op_f32(186f * 681f))), _wgslsmith_div_f32(arg_0, 1000f), global0.c.b), !(!(!(!vec4<bool>(var_0.c.e, global0.a, true, false))))));
    var var_2 = ~(~vec2<u32>(_wgslsmith_clamp_u32(global0.b.c.x, ~var_0.c.c.x, u_input.b.x >> (10001u % 32u)), _wgslsmith_mod_u32(4294967295u, 10165u)));
    global0 = Struct_4(false, Struct_2(global0.b.a, _wgslsmith_div_f32(207f, 238f), select(select(~var_0.c.c, var_0.c.c, select(global0.b.e, global0.a, global0.b.e)), vec4<u32>(_wgslsmith_clamp_u32(var_0.c.c.x, var_2.x, 0u), 1u, ~1u, 1u), var_2.x != global0.b.c.x), Struct_1(_wgslsmith_mult_vec2_i32(select(var_0.c.d.a, vec2<i32>(-2147483647i, 31926i), vec2<bool>(false, var_0.c.e)), vec2<i32>(2147483647i, global0.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global0.b.b))), true == all(vec4<bool>(var_0.c.e, false, false, false))), global0.b.d);
    var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 457f, global0.c.b, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1730f, -1682f, global0.b.b)), var_0.c.e))), var_0.a), var_0.b, Struct_2(countOneBits(vec4<i32>(21139i, _wgslsmith_mod_i32(-26826i, var_0.c.a.x), global0.c.a.x ^ -31717i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), global0.b.d.b, ~vec4<u32>(_wgslsmith_add_u32(1u, 27672u), 4294967295u, ~var_0.c.c.x, abs(46380u)), global0.c, true));
    return Struct_1(min(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.yy, vec2<i32>(global0.b.a.x, -28191i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, 2147483647i, 2147483647i), var_0.c.a), var_0.b.x)), -u_input.d.yy), 298f);
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = u_input.b.zx;
    global0 = Struct_4(all(vec4<bool>(any(!vec3<bool>(true, global0.b.e, global0.b.e)), !all(vec3<bool>(global0.a, global0.b.e, true)), !global0.b.e, !any(vec3<bool>(false, global0.a, true)))), Struct_2(-_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.b.a, global0.b.a, vec4<i32>(10318i, 2147483647i, global0.b.a.x, global0.b.a.x)), vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, global0.b.d.a.x) | vec4<i32>(0i, global0.b.d.a.x, 3230i, -5255i), vec4<i32>(global0.b.a.x, var_0.a.x, global0.b.a.x, var_0.a.x) ^ global0.b.a), global0.c.b, vec4<u32>(1u, countOneBits(u_input.b.x), _wgslsmith_mult_u32(reverseBits(0u), 4294967295u), u_input.c), Struct_1(select(-vec2<i32>(17806i, u_input.d.x), max(vec2<i32>(var_0.a.x, global0.b.d.a.x), vec2<i32>(-89365i, var_0.a.x)), vec2<bool>(global0.b.e, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), true), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(620f, global0.c.b)), _wgslsmith_f_op_f32(sign(var_0.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-653f, 1000f, global0.a)) - _wgslsmith_f_op_f32(min(-419f, global0.b.b))))));
    var var_2 = false;
    var var_3 = _wgslsmith_mult_vec3_u32(u_input.a.xwz, vec3<u32>(var_1.x, 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.b.c.zzy, ~global0.b.c.zwy), var_1.x)));
    return select(!select(!select(vec4<bool>(global0.b.e, false, false, global0.a), vec4<bool>(global0.b.e, global0.a, global0.a, true), vec4<bool>(global0.a, global0.a, false, global0.a)), select(!vec4<bool>(global0.a, true, global0.b.e, global0.a), vec4<bool>(true, false, global0.a, false), vec4<bool>(global0.a, global0.b.e, true, global0.a)), vec4<bool>(true, global0.a, true, global0.a)), !select(!(!vec4<bool>(global0.b.e, global0.a, true, global0.b.e)), vec4<bool>(1u < var_1.x, true, all(vec3<bool>(global0.a, true, global0.b.e)), 2147483647i == var_0.a.x), vec4<bool>(true, global0.b.e & false, false, true)), global0.b.e != false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(select(vec3<bool>(!(!global0.a), any(!vec2<bool>(global0.b.e, true)), global0.b.e), vec3<bool>(false, any(select(vec4<bool>(global0.b.e, true, global0.b.e, true), vec4<bool>(true, false, false, global0.a), vec4<bool>(true, false, false, global0.b.e))), global0.b.e), vec3<bool>((global0.a || global0.b.e) & select(true, global0.a, global0.b.e), false, any(func_1()))), vec2<bool>(true, !(false || global0.a)), Struct_4(global0.a, Struct_2(-global0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b + global0.c.b) * _wgslsmith_f_op_f32(403f + global0.b.d.b)), vec4<u32>(_wgslsmith_add_u32(19295u, global0.b.c.x), reverseBits(0u), reverseBits(global0.b.c.x), _wgslsmith_dot_vec4_u32(u_input.a, global0.b.c)), global0.b.d, all(vec2<bool>(global0.b.e, global0.a))), Struct_1(abs(u_input.d.xx), -200f)), _wgslsmith_f_op_f32(-890f * global0.c.b));
    let var_1 = var_0.c.b;
    global0 = Struct_4(var_1.e, Struct_2(var_0.c.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(~vec4<u32>(52229u, u_input.c, var_0.c.b.c.x, 55007u)), var_1.d, var_1.e), Struct_1(-global0.b.a.yz << (select(vec2<u32>(0u, global0.b.c.x), vec2<u32>(u_input.b.x, 83976u), !var_1.e) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.b, global0.b.b)) + global0.b.d.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-835f + var_0.c.c.b)))))));
    let var_2 = Struct_5(vec3<bool>(!all(select(vec4<bool>(var_1.e, false, true, global0.b.e), vec4<bool>(true, var_1.e, var_0.b.x, true), true)), select(true, ~1i < (u_input.d.x >> (1u % 32u)), true), all(!select(vec4<bool>(true, global0.a, global0.b.e, var_0.a.x), vec4<bool>(global0.b.e, var_0.a.x, false, var_0.c.b.e), vec4<bool>(var_0.a.x, global0.b.e, true, global0.a)))), vec2<bool>(!(!(var_1.e && true)), var_0.c.a), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776f + _wgslsmith_f_op_f32(f32(-1f) * -252f))) - 758f));
    global0 = var_2.c;
    global0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1547f, _wgslsmith_f_op_f32(-1324f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.c.b, 780f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-899f, -1921f), _wgslsmith_f_op_f32(var_0.d + -582f)), 581f)), _wgslsmith_f_op_f32(sign(-1238f))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(min(var_2.c.c.a, var_2.c.c.a >> (vec2<u32>(1u, var_2.c.b.c.x) % vec2<u32>(32u))), ~(~vec2<i32>(var_1.d.a.x, 2110i))), global0.b.d.a, global0.b.d.a), ~(~_wgslsmith_add_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(u_input.b, var_2.c.b.c))), ~(global0.b.c.yzw >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.b.c.x, 4294967295u, 1u), vec3<u32>(var_1.c.x, var_2.c.b.c.x, 0u)) % vec3<u32>(32u))));
}

