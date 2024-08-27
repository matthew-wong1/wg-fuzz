struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = select(!select(vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), true), vec4<bool>(any(vec2<bool>(true, all(vec3<bool>(false, true, false)))), true, _wgslsmith_f_op_f32(min(arg_0.c.a, _wgslsmith_f_op_f32(trunc(-808f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + 448f) - _wgslsmith_f_op_f32(-576f - arg_1.x)), false), !all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))));
    var var_1 = ~min(~u_input.b, u_input.b);
    return (vec4<u32>(_wgslsmith_clamp_u32(0u, 21832u, 1u), ~4294967295u, _wgslsmith_mult_u32(arg_2.a.b.c, ~0u), 57035u) | (vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.a.b.b.zzy, arg_2.c.b.yyw), _wgslsmith_div_u32(4294967295u, arg_0.e.c), ~arg_0.a.a.c, 1u) | max(~vec4<u32>(arg_0.c.b.x, u_input.a, arg_2.c.b.x, 1u), _wgslsmith_div_vec4_u32(arg_0.a.a.b, vec4<u32>(arg_0.e.b.x, 74044u, 1u, arg_0.c.b.x))))) ^ (vec4<u32>(~4294967295u | ~arg_0.c.c, ~arg_0.c.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2.e.c, 6185u), arg_2.c.b) | 0u, 40121u) ^ arg_0.c.b);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(-154f, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 23121u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 15515u)) >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 25779u, 33517u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -135f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f + -1221f) * _wgslsmith_f_op_f32(-arg_1)), vec4<u32>(u_input.a, 18302u, 56372u, 12617u) & (vec4<u32>(u_input.a, 58325u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 0u, 3918u) % vec4<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_add_u32(10897u, u_input.a), u_input.a), vec2<f32>(arg_1, -1000f)), u_input.b.x, arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)), func_3(Struct_3(Struct_2(Struct_1(566f, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), u_input.a, vec2<f32>(1358f, 1257f)), Struct_1(arg_1, vec4<u32>(1u, u_input.a, 0u, u_input.a), 72061u, vec2<f32>(arg_1, -1482f)), u_input.b.x, arg_1, Struct_1(arg_1, vec4<u32>(u_input.a, u_input.a, 35189u, u_input.a), 4294967295u, vec2<f32>(arg_1, 417f))), arg_1, Struct_1(arg_1, vec4<u32>(50379u, u_input.a, u_input.a, 28570u), u_input.a, vec2<f32>(arg_1, -644f)), vec4<f32>(1000f, -299f, arg_1, 192f), Struct_1(arg_1, vec4<u32>(u_input.a, u_input.a, u_input.a, 10486u), u_input.a, vec2<f32>(-168f, 554f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), Struct_3(Struct_2(Struct_1(-1489f, vec4<u32>(5312u, u_input.a, u_input.a, u_input.a), 5912u, vec2<f32>(arg_1, arg_1)), Struct_1(arg_1, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), 1u, vec2<f32>(-518f, -558f)), 0i, arg_1, Struct_1(1312f, vec4<u32>(u_input.a, 0u, 0u, 64543u), 4294967295u, vec2<f32>(arg_1, arg_1))), arg_1, Struct_1(1600f, vec4<u32>(57140u, 4294967295u, u_input.a, u_input.a), u_input.a, vec2<f32>(arg_1, arg_1)), vec4<f32>(1569f, arg_1, -1335f, arg_1), Struct_1(1000f, vec4<u32>(1u, u_input.a, 11238u, 1883u), u_input.a, vec2<f32>(arg_1, -1199f)))), countOneBits(9625u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1048f, arg_1))))), arg_1, Struct_1(_wgslsmith_div_f32(-1168f, _wgslsmith_f_op_f32(f32(-1f) * -549f)), ~abs(vec4<u32>(13290u, 21972u, 24223u, u_input.a)), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -2092f) * vec2<f32>(arg_1, -2184f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_1, 1000f, -620f), vec4<f32>(arg_1, arg_1, 324f, arg_1), false)))))), Struct_1(_wgslsmith_f_op_f32(-arg_1), ~reverseBits(vec4<u32>(4981u, u_input.a, 32810u, 4294967295u)), 0u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, arg_1)))))));
    var_0 = Struct_3(var_0.a, var_0.e.a, var_0.e, var_0.d, Struct_1(-1056f, var_0.c.b, var_0.e.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.e.d * var_0.a.a.d) - vec2<f32>(-103f, arg_1)))));
    var var_1 = !(!(!select(vec4<bool>(arg_3, false, false, false), vec4<bool>(false, false, true, true), true || arg_2)));
    let var_2 = arg_3;
    var var_3 = select(u_input.a << (28182u % 32u), ~(select(abs(var_0.e.b.x), ~var_0.e.b.x, all(vec2<bool>(arg_2, var_2))) | var_0.a.a.b.x), any(!vec3<bool>(true, arg_2, false)) | false);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.x, -1000f), _wgslsmith_f_op_f32(ceil(-947f)))), 1000f))), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(~var_0.a.a.b.www), ~var_0.c.b.xxx), var_0.e.b.x, func_3(Struct_3(Struct_2(Struct_1(103f, var_0.c.b, 3805u, vec2<f32>(arg_1, -1060f)), var_0.c, var_0.a.c, arg_1, var_0.e), _wgslsmith_f_op_f32(-535f - 1000f), Struct_1(2675f, vec4<u32>(u_input.a, 53867u, 0u, 0u), 0u, vec2<f32>(-324f, 705f)), var_0.d, var_0.a.a), vec2<f32>(_wgslsmith_f_op_f32(-1141f - -212f), _wgslsmith_f_op_f32(trunc(var_0.b))), Struct_3(Struct_2(Struct_1(arg_1, vec4<u32>(1u, 4294967295u, 60795u, u_input.a), 72569u, vec2<f32>(493f, var_0.d.x)), var_0.e, 2147483647i, 295f, Struct_1(arg_1, vec4<u32>(0u, 0u, 1u, var_0.e.c), 1u, var_0.a.a.d)), var_0.d.x, var_0.e, vec4<f32>(arg_1, var_0.b, arg_1, 721f), Struct_1(var_0.e.d.x, vec4<u32>(0u, u_input.a, var_0.c.b.x, u_input.a), var_0.c.b.x, var_0.a.a.d))).x), var_0.c.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, arg_1)))), var_1.yx)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = true;
    var var_1 = Struct_1(913f, arg_0.b, arg_0.c, _wgslsmith_f_op_vec2_f32(-arg_0.d));
    let var_2 = Struct_3(Struct_2(arg_0, Struct_1(var_1.d.x, _wgslsmith_div_vec4_u32(min(vec4<u32>(arg_0.c, u_input.a, 29092u, 0u), arg_0.b), reverseBits(var_1.b)), arg_0.c, var_1.d), _wgslsmith_dot_vec2_i32(abs(u_input.b.yz), u_input.b.xy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(-448f + 106f))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, arg_0.a))) - _wgslsmith_f_op_f32(-arg_0.d.x)), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), 612f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, _wgslsmith_f_op_f32(floor(-833f)), _wgslsmith_f_op_f32(min(arg_0.a, var_1.d.x)), 1458f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, -392f, var_1.d.x, 498f), vec4<f32>(-687f, var_1.d.x, -1057f, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 695f, var_1.a, var_1.d.x))))), func_2(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1442f), var_0, 20661u < _wgslsmith_clamp_u32(arg_0.b.x, u_input.a, 0u)));
    var var_3 = Struct_3(var_2.a, _wgslsmith_f_op_f32(step(1000f, -412f)), func_2(any(vec2<bool>(!var_0, var_0 & var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) + _wgslsmith_f_op_f32(floor(var_2.b))))), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0, false, false), !var_0)), var_0), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.d + var_2.d))), var_2.d))), var_2.a.a);
    let var_4 = false;
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, 4294967295u, 52069u) ^ ~vec3<u32>(12353u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 0u) ^ arg_0.b.yzz), _wgslsmith_mult_vec3_u32(~(vec3<u32>(var_1.c, 11710u, 1u) & arg_0.b.xzw), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, 0u, var_2.e.b.x), abs(vec3<u32>(var_1.c, var_2.e.c, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(u_input.a, 16188u)), func_1(Struct_1(-1453f, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), u_input.a, vec2<f32>(552f, -886f)), 22808i), u_input.a)));
    let var_1 = ~abs(vec3<i32>(-1i, u_input.b.x, _wgslsmith_mult_i32(firstTrailingBit(0i), u_input.b.x)));
    let var_2 = 892f;
    var var_3 = u_input.b;
    var var_4 = ~abs(firstLeadingBit(~select(vec2<i32>(var_3.x, u_input.b.x), var_3.zx, true)));
    let var_5 = var_2;
    var var_6 = _wgslsmith_clamp_i32(var_4.x, u_input.b.x, -1i);
    var_4 = reverseBits(max(_wgslsmith_add_vec2_i32(var_3.zx, _wgslsmith_mult_vec2_i32(u_input.b.zw, var_3.zw)), ~vec2<i32>(var_4.x, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(-12578i >> (var_0.x % 32u), -(~var_4.x), 1i)), ~(-82420i));
}

