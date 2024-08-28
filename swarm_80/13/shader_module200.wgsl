struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec2<f32>(335f, -1001f), false), Struct_1(true, vec2<f32>(2572f, -413f), false));

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -20074i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> vec2<u32> {
    global0 = Struct_2(arg_0.a.b, global0.a);
    global2 = !(!any(vec2<bool>(true, arg_0.a.a.c)));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2501f, global0.a.b.x, false)) * _wgslsmith_div_f32(811f, arg_2.c.a.b.x)), _wgslsmith_div_f32(218f, arg_2.d.x)))));
    var var_1 = -1755f;
    var var_2 = Struct_4(countOneBits(select(arg_3.a, arg_3.a, vec2<bool>(true, true))));
    return ~(~var_2.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = global0.b.b.x;
    var var_1 = any(select(vec3<bool>(false | (445f < arg_1.x), all(vec2<bool>(global0.a.a, false)), all(!vec2<bool>(true, global0.b.a))), vec3<bool>(select(false, true, true), true, true), global0.b.b.x > 547f));
    let var_2 = Struct_4(vec2<u32>(arg_2.a.x, 48950u) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.a.x), firstLeadingBit(vec2<u32>(arg_2.a.x, 1u)), arg_2.a), max(vec2<u32>(arg_2.a.x, 39168u), abs(arg_2.a))) % vec2<u32>(32u)));
    var var_3 = Struct_5(_wgslsmith_sub_u32(~(_wgslsmith_clamp_u32(3335u, 37650u, 4294967295u) << (max(var_2.a.x, 15820u) % 32u)), min(var_2.a.x, 1414u ^ arg_2.a.x)));
    let var_4 = vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1421f - global0.a.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(588f))), _wgslsmith_f_op_f32(arg_1.x + -1000f)))));
    return _wgslsmith_mod_u32(4294967295u, ~23329u);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    let var_0 = vec4<f32>(-1198f, 348f, -159f, _wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2450f))));
    let var_1 = func_4(u_input.b.xxy, global0.b.b, Struct_4(max(func_3(Struct_3(Struct_2(Struct_1(false, global0.a.b, arg_1), Struct_1(global0.b.c, vec2<f32>(var_0.x, global0.b.b.x), false)), 0u, Struct_2(Struct_1(arg_3, vec2<f32>(global0.a.b.x, global0.b.b.x), false), global0.b), var_0.wy), Struct_2(global0.b, global0.b), Struct_3(Struct_2(Struct_1(arg_3, global0.a.b, global0.a.c), Struct_1(true, var_0.zz, true)), 13525u, Struct_2(Struct_1(false, vec2<f32>(var_0.x, var_0.x), arg_3), Struct_1(false, vec2<f32>(187f, global0.a.b.x), false)), var_0.yy), Struct_4(vec2<u32>(0u, 1u))), abs(firstLeadingBit(vec2<u32>(1u, 1u))))));
    return Struct_3(Struct_2(Struct_1(arg_1, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))), arg_3), global0.b), _wgslsmith_mod_u32(0u << (var_1 % 32u), ~var_1), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1106f, -344f), vec2<f32>(var_0.x, -933f), select(arg_2, vec2<bool>(arg_3, false), arg_1))), _wgslsmith_f_op_f32(var_0.x - global0.b.b.x) != _wgslsmith_f_op_f32(round(var_0.x))), global0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, global0.b.b.x)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(exp2(global0.b.b.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.yw, vec2<f32>(global0.b.b.x, global0.a.b.x)))), global0.a.b), arg_2)));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = false;
    var var_1 = firstLeadingBit(3871i);
    let var_2 = !(!vec3<bool>(true, false, !(arg_0.c.a.a & false)));
    var var_3 = Struct_4(func_3(arg_0, arg_2.a, func_2(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, -1i, -2147483647i)), ~u_input.b.yww), true, select(vec2<bool>(false, false), vec2<bool>(true, true), false), func_2(firstTrailingBit(vec3<i32>(1i, u_input.b.x, 0i)), any(vec4<bool>(true, arg_1, false, false)), var_2.yy, false | arg_1).a.b.a), Struct_4(~vec2<u32>(1u, 1u))));
    var_3 = Struct_4(var_3.a);
    return false;
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = select(u_input.b.yzw, u_input.b.wxw, false);
    let var_2 = select(vec4<bool>(false, global0.b.c, !(select(13244u, 35790u, false) <= _wgslsmith_mod_u32(3571u, 4294967295u)), global0.b.c), vec4<bool>(true | global0.a.c, true, global0.b.c, func_5(func_2(abs(u_input.b.ywx), global0.a.c | global0.b.a, !vec2<bool>(global0.a.a, global0.a.c), true), global0.a.c, Struct_3(Struct_2(Struct_1(true, vec2<f32>(global0.a.b.x, arg_0), global0.a.c), global0.a), 0u, func_2(var_0.yxz, true, vec2<bool>(true, global0.b.a), false).c, global0.a.b), global0.b.c)), func_2(~vec3<i32>(24971i, var_1.x, 2147483647i) >> (select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !vec3<bool>(true, global0.a.a, true)) % vec3<u32>(32u)), func_2(vec3<i32>(-u_input.a.x, _wgslsmith_add_i32(global3.x, global3.x), 1i), global0.a.c, !(!vec2<bool>(false, global0.b.c)), true).c.b.c, vec2<bool>(true, true), func_2(firstTrailingBit(vec3<i32>(0i, var_0.x, -5372i)), true, vec2<bool>(true, true), global0.a.a).c.a.c || ((false && global0.a.c) & all(vec4<bool>(false, false, global0.a.a, global0.a.a)))).a.a.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.b.x - _wgslsmith_f_op_f32(trunc(global0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b.x, arg_0))))));
    global3 = _wgslsmith_div_vec2_i32(var_0.xz, max(-(-var_0.zw >> (~vec2<u32>(55179u, 0u) % vec2<u32>(32u))), vec2<i32>(var_1.x, var_0.x)));
    return func_2(vec3<i32>(~47397i, 3987i << (_wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(72298u, 4294967295u, 4294967295u, 29529u), vec4<u32>(0u, 28910u, 4294967295u, 4294967295u))) % 32u), var_1.x), !global0.a.c, var_2.zy, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1005f;
    let var_1 = func_1(global0.b.b.x);
    var var_2 = func_1(_wgslsmith_f_op_f32(step(140f, var_0)));
    var var_3 = Struct_3(Struct_2(Struct_1((global0.a.b.x >= var_1.c.b.b.x) != !var_1.a.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0))), !var_1.a.b.a), Struct_1(var_2.a.a.a, vec2<f32>(_wgslsmith_f_op_f32(386f + var_1.c.a.b.x), var_2.a.a.b.x), true)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(func_3(var_1, func_1(-186f).a, func_1(var_0), Struct_4(vec2<u32>(2136u, var_2.b))).x, var_1.b), _wgslsmith_mult_u32(var_2.b, 4604u)), var_2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, _wgslsmith_f_op_f32(-var_0)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.b.x))))));
    global3 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(-68761i, -9278i), reverseBits(select(vec2<i32>(global3.x, 1i), vec2<i32>(-1i, 26519i), var_2.c.a.a))), -min(vec2<i32>(u_input.a.x, 10802i), -vec2<i32>(global3.x, global3.x))) << (select(~(~vec2<u32>(1u, 1u)), ~select(~vec2<u32>(var_3.b, 4294967295u), vec2<u32>(var_3.b, 77027u), select(vec2<bool>(true, true), vec2<bool>(global0.b.c, true), global0.a.c)), !(!select(vec2<bool>(var_2.c.a.a, false), vec2<bool>(true, var_1.c.b.a), var_2.a.a.c))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.b.x, -1000f), vec2<f32>(531f, -224f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a.b.x, var_3.c.b.b.x) * vec2<f32>(784f, -835f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.x, _wgslsmith_f_op_f32(max(var_0, var_2.a.b.b.x))))), firstTrailingBit(var_1.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-934f, var_1.a.a.b.x, 728f) + vec3<f32>(var_0, -839f, var_0)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1209f, 449f, -1313f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(343f, var_2.a.b.b.x, -152f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.b.x, var_1.d.x, var_2.c.b.b.x) * vec3<f32>(-893f, global0.a.b.x, -162f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1085f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(638f, -910f))), -1000f), select(!select(vec3<bool>(false, var_1.a.b.a, true), vec3<bool>(var_1.c.b.c, global0.a.c, var_3.a.b.a), vec3<bool>(var_1.c.a.a, global0.b.c, true)), select(vec3<bool>(var_2.a.a.a, var_1.a.a.a, false), select(vec3<bool>(false, true, global0.a.a), vec3<bool>(global0.a.a, global0.a.c, var_3.a.a.a), false), global0.b.a), vec3<bool>(914f < global0.b.b.x, var_2.a.a.b.x > 427f, true)))));
}

