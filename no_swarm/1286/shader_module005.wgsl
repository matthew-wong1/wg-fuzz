struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), 11467u, vec2<i32>(-8200i, -43398i), true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(global0.b.xx, global0.b, u_input.b, global0.d, false);
    global0 = var_0;
    var var_1 = global0.c & ~var_0.c;
    let var_2 = 422f;
    global0 = Struct_1(select(!select(var_0.a, !var_0.b.zz, !var_0.a), select(vec2<bool>(true, any(var_0.b.xx)), select(select(vec2<bool>(global0.b.x, false), vec2<bool>(global0.e, global0.a.x), false), select(var_0.b.yx, vec2<bool>(false, var_0.b.x), false), vec2<bool>(global0.a.x, global0.e)), any(select(global0.b, vec3<bool>(false, false, true), true))), vec2<bool>(global0.a.x, global0.b.x)), !(!var_0.b), _wgslsmith_mod_u32(u_input.b, ~_wgslsmith_add_u32(~global0.c, ~32696u)), abs(vec2<i32>(u_input.c, _wgslsmith_mult_i32(u_input.a << (33498u % 32u), ~var_0.d.x))), var_0.e);
    return u_input.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    var var_0 = 8643u | global0.c;
    global0 = Struct_1(select(global0.b.yz, vec2<bool>(true, true), !arg_2.x), vec3<bool>(false, global0.b.x, any(arg_2.yz)), func_3(), global0.d, !(true & (arg_0.x <= 1000f)));
    global0 = Struct_1(!(!select(global0.a, select(arg_2.zz, global0.a, vec2<bool>(arg_2.x, false)), vec2<bool>(global0.e, false))), select(vec3<bool>(~u_input.b == 10788u, arg_2.x, abs(29463u) <= ~global0.c), vec3<bool>(firstLeadingBit(global0.d.x) != _wgslsmith_sub_i32(1i, global0.d.x), (true != arg_2.x) || true, false), false), max(_wgslsmith_mod_u32(~70156u, select(abs(global0.c), 1u ^ u_input.b, true)), global0.c), global0.d, false);
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~min(vec4<u32>(u_input.b, 44444u, u_input.b, u_input.b), vec4<u32>(2476u, u_input.b, u_input.b, global0.c)) ^ ~abs(vec4<u32>(9044u, 33094u, u_input.b, 4294967295u))), vec4<u32>(func_3(), ~(~4294967295u), global0.c, 1u), select(vec4<u32>(0u, ~func_3(), _wgslsmith_mult_u32(u_input.b, u_input.b) | _wgslsmith_mod_u32(10863u, u_input.b), max(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b)), vec4<u32>(u_input.b, 1u, ~u_input.b, 4294967295u), false));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(777f, 1891f)), -746f, false)), arg_0.x, !vec4<bool>(global0.d.x != global0.d.x, all(vec3<bool>(true, true, arg_1.x)), true, false), vec3<bool>(true, arg_1.x, !arg_2.x), Struct_2(~(~u_input.c), Struct_1(select(global0.b.zy, global0.b.yz, arg_1.x), !vec3<bool>(global0.e, global0.b.x, arg_1.x), reverseBits(1530u), global0.d, false), vec3<i32>(1i, -global0.d.x, 2147483647i), vec4<i32>(reverseBits(-1i), firstLeadingBit(u_input.a), 0i, ~(-2147483647i)), arg_0.zyy)), Struct_2(_wgslsmith_mod_i32(2147483647i, global0.d.x), Struct_1(arg_2.zy, select(select(global0.b, vec3<bool>(true, arg_2.x, false), global0.a.x), select(global0.b, vec3<bool>(arg_1.x, arg_1.x, arg_2.x), vec3<bool>(global0.a.x, global0.e, arg_2.x)), !arg_1.x), 0u, global0.d, true), -_wgslsmith_mult_vec3_i32(vec3<i32>(-46961i, u_input.c, global0.d.x), vec3<i32>(u_input.c, u_input.c, u_input.a)) << (vec3<u32>(global0.c << (4294967295u % 32u), ~global0.c, 1u) % vec3<u32>(32u)), ~vec4<i32>(~global0.d.x, firstLeadingBit(-34207i), global0.d.x, ~global0.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, arg_0.x)))), _wgslsmith_mult_vec2_u32(var_1.yy, vec2<u32>(~select(62905u, global0.c, false), u_input.b)), firstLeadingBit(_wgslsmith_mult_i32(global0.d.x, global0.d.x)), arg_0.x);
    return _wgslsmith_div_f32(1766f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -3040f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-709f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-125f, -596f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(-671f + _wgslsmith_f_op_f32(1000f - 573f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-306f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(399f, -1000f, -807f, -841f))), !vec4<bool>(true, true, true, global0.e), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, global0.b.x, global0.a.x, true), vec4<bool>(global0.a.x, global0.e, false, global0.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(863f, 225f)) + _wgslsmith_f_op_f32(ceil(-1154f)))));
    var var_2 = Struct_1(var_0.xx, !global0.b, u_input.b, global0.d, !(!global0.b.x));
    var var_3 = Struct_2(-2147483647i, Struct_1(var_2.a, !(!(!vec3<bool>(var_2.b.x, false, global0.a.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(31303u, global0.c)), ~vec2<u32>(global0.c, 9750u)), select(vec2<u32>(u_input.b, 21931u), vec2<u32>(4294967295u, 36199u), var_0.x) | _wgslsmith_div_vec2_u32(vec2<u32>(79601u, 0u), vec2<u32>(1u, 11575u))), vec2<i32>(-1i) * -global0.d, any(vec3<bool>(all(vec4<bool>(global0.e, true, var_2.e, global0.a.x)), any(var_0.zy), !var_2.e))), -countOneBits(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c, 15203i, var_2.d.x)), vec3<i32>(-1i, var_2.d.x, 39861i))), _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -2147483647i, global0.d.x, -1i), abs(vec4<i32>(u_input.c, global0.d.x, -2147483647i, var_2.d.x))), select(countOneBits(countOneBits(vec4<i32>(-47837i, global0.d.x, 0i, var_2.d.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.d.x, var_2.d.x, global0.d.x, 7630i), vec4<i32>(u_input.c, var_2.d.x, u_input.a, global0.d.x))), vec4<bool>(global0.a.x, any(vec2<bool>(var_2.e, true)), true, true))), var_1.xxz);
    var var_4 = Struct_1(vec2<bool>(any(!vec4<bool>(global0.b.x, false, global0.a.x, global0.b.x)), true), select(!(!vec3<bool>(false, true, var_0.x)), select(select(global0.b, select(global0.b, var_3.b.b, true), global0.a.x), global0.b, global0.b), any(!select(vec4<bool>(false, var_0.x, true, var_2.a.x), vec4<bool>(true, var_0.x, false, var_3.b.b.x), vec4<bool>(var_2.e, var_0.x, global0.a.x, var_3.b.e)))), ~(~(~4294967295u)), vec2<i32>(-1i) * -max(abs(vec2<i32>(u_input.c, 57168i)), _wgslsmith_sub_vec2_i32(var_2.d, global0.d)), var_3.b.b.x);
    return Struct_1(!global0.b.xz, var_4.b, ~(min(_wgslsmith_mult_u32(var_4.c, 1u), _wgslsmith_div_u32(var_4.c, 9851u)) ^ var_3.b.c), max(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_3.c.zy, _wgslsmith_add_vec2_i32(vec2<i32>(var_2.d.x, u_input.c), vec2<i32>(2147483647i, var_3.c.x))), vec2<i32>(~var_4.d.x, ~(-1i))), -select(var_3.d.zz, vec2<i32>(var_3.d.x, var_2.d.x), true) ^ select(countOneBits(var_4.d), var_4.d, vec2<bool>(true, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = global0.e;
    var var_1 = !func_1().a;
    global0 = func_1();
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(-682f, _wgslsmith_f_op_f32(f32(-1f) * -377f), any(!vec4<bool>(true, false, var_1.x, global0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-2609f, -1627f, -993f, 161f), vec4<bool>(var_1.x, global0.e, global0.a.x, var_1.x), vec4<bool>(true, true, var_1.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -284f)), select(vec4<bool>(var_1.x, false, false, !var_1.x), vec4<bool>(true, true, global0.a.x, all(vec3<bool>(false, false, false))), !(!vec4<bool>(var_1.x, false, global0.a.x, true))), func_1().b, Struct_2(_wgslsmith_div_i32(~(-2147483647i), -6556i), Struct_1(vec2<bool>(var_1.x, true), !vec3<bool>(var_1.x, true, true), global0.c, vec2<i32>(-1i, -14906i), true), abs(vec3<i32>(global0.d.x, 11525i, global0.d.x)) & _wgslsmith_add_vec3_i32(vec3<i32>(-45140i, global0.d.x, 0i), vec3<i32>(global0.d.x, -16991i, 14886i)), vec4<i32>(~66784i, global0.d.x, 12704i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, 2147483647i, global0.d.x), vec4<i32>(9385i, global0.d.x, u_input.a, 1i))), vec3<f32>(1f, 1f, 1f))), Struct_2(_wgslsmith_div_i32(27293i, 28659i), Struct_1(global0.b.yy, global0.b, ~0u, vec2<i32>(min(0i, -778i), 1i), any(!vec3<bool>(global0.a.x, false, true))), max(vec3<i32>(13806i, global0.d.x, 2147483647i) & vec3<i32>(0i, 18105i, -27836i), vec3<i32>(global0.d.x, 13733i, global0.d.x)) ^ _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.d.x, u_input.c, global0.d.x)), vec3<i32>(0i, u_input.c, global0.d.x)), vec4<i32>(global0.d.x, 0i, countOneBits(-15485i), -_wgslsmith_mult_i32(u_input.c, global0.d.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -215f), _wgslsmith_f_op_f32(563f + _wgslsmith_div_f32(-523f, 1292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(229f))))), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.c, _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(86693u, 4294967295u))), select(vec2<u32>(34078u, u_input.b), reverseBits(firstTrailingBit(vec2<u32>(global0.c, 45320u))), false)), _wgslsmith_clamp_i32(global0.d.x, ~1i, -43857i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f * 304f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f + -1000f) * _wgslsmith_div_f32(1267f, 218f)))));
    var var_3 = -(~reverseBits(var_2.a.e.c.xz) | var_2.b.b.d);
    var var_4 = Struct_4(Struct_3(458f, var_2.e, var_2.a.c, var_2.b.b.b, Struct_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 1i), 1i), var_2.b.b, -min(var_2.b.c, var_2.b.c), vec4<i32>(-1i) * -var_2.b.d, var_2.b.e)), var_2.b, var_2.c, firstLeadingBit(~u_input.a), var_2.b.e.x);
    var var_5 = Struct_3(_wgslsmith_f_op_f32(633f - 819f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(605f)) + _wgslsmith_f_op_f32(f32(-1f) * -827f)))))), var_4.a.c, !var_2.a.c.xww, var_2.b);
    let var_6 = Struct_1(var_5.d.xx, func_1().b, var_2.a.e.b.c, vec2<i32>(max(global0.d.x, 1i), -2147483647i), true & select(var_4.b.b.b.x, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(1472f, var_4.c);
}

