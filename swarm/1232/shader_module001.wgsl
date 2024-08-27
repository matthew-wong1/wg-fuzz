struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(26938u >> (min(_wgslsmith_clamp_u32(4294967295u, 1u, u_input.b), abs(u_input.b)) % 32u), ~vec4<u32>(_wgslsmith_clamp_u32(35301u, u_input.b, 39341u), 1u, 1u, ~u_input.c) | ~vec4<u32>(max(u_input.c, u_input.b), 1u, 0u, ~u_input.b));
    global0 = !vec4<bool>(select(true, !(!global0.x), all(vec2<bool>(global0.x, global0.x))), 0u <= _wgslsmith_dot_vec2_u32(reverseBits(var_0.b.yw), vec2<u32>(32853u, 32307u) << (vec2<u32>(u_input.b, var_0.b.x) % vec2<u32>(32u))), !(!(global0.x || true)), u_input.d <= _wgslsmith_mult_i32(u_input.d, u_input.d));
    global0 = !(!vec4<bool>(any(!global0.wyz), false, any(vec2<bool>(true, global0.x)), all(select(vec2<bool>(global0.x, false), global0.yy, true))));
    var var_1 = Struct_4(Struct_2(11452u), Struct_2(~(~u_input.c)), firstLeadingBit(u_input.c));
    var_1 = Struct_4(var_1.a, Struct_2(reverseBits(_wgslsmith_sub_u32(4294967295u, var_0.b.x)) ^ abs(var_1.c)), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(160f)) + _wgslsmith_f_op_f32(abs(875f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -789f);
    global0 = vec4<bool>(true, all(vec4<bool>(global0.x, false, global0.x, 32891u >= (arg_3.c.a ^ 1008u))), true, !select(!arg_3.d.x, true != (global0.x || true), false));
    global0 = !select(vec4<bool>(global0.x, false, 156761u != min(arg_1.a, arg_1.a), any(vec3<bool>(arg_3.a, false, global0.x))), vec4<bool>(true, !(!global0.x), true, global0.x), select(vec4<bool>(all(vec2<bool>(false, true)), !global0.x, false, true), select(!vec4<bool>(global0.x, global0.x, false, arg_3.a), vec4<bool>(arg_3.d.x, false, true, false), !arg_3.a), select(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(false, global0.x, false, false), true), !vec4<bool>(false, false, global0.x, global0.x), arg_3.a || arg_3.a)));
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(select(~vec2<u32>(arg_3.c.a, 61607u), ~vec2<u32>(17739u, arg_1.a) ^ (vec2<u32>(22343u, arg_3.c.a) & vec2<u32>(arg_1.a, 18453u)), !(true | arg_3.d.x)), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(1u, 4294967295u)), ~(vec2<u32>(arg_1.a, 21044u) >> (vec2<u32>(4294967295u, arg_3.c.a) % vec2<u32>(32u))))), vec2<u32>(0u, 1u) >> (select(~(~vec2<u32>(arg_3.c.a, 0u)), select(~vec2<u32>(arg_3.c.a, 63663u), vec2<u32>(arg_3.c.a, 23396u), select(arg_3.d.xx, vec2<bool>(false, false), true)), !all(vec3<bool>(true, global0.x, false))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(~arg_1.a, arg_1.a), _wgslsmith_add_u32(~arg_3.c.a, u_input.b)) << (~vec2<u32>(_wgslsmith_mult_u32(87467u, arg_1.a), arg_3.c.a) % vec2<u32>(32u)));
    global0 = !vec4<bool>(all(vec3<bool>(!global0.x, global0.x, arg_3.d.x)), arg_1.a != _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.x, 12142u, 4294967295u), ~1u, arg_3.c.a), global0.x, false);
    return all(global0.wx);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global0 = !(!select(!vec4<bool>(false, global0.x, global0.x, global0.x), select(!vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, false, true, true), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, false, false), vec4<bool>(true, global0.x, false, false))), vec4<bool>(true, !global0.x, all(global0.ywx), global0.x)));
    global0 = select(select(vec4<bool>(-12098i == arg_0.x, false, (u_input.b >> (u_input.b % 32u)) < 52219u, any(global0.wxz)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)) && true, true, all(vec4<bool>(global0.x, global0.x, true, false))), true), vec4<bool>(true, true, (_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(1363f - 645f)) != any(!vec2<bool>(global0.x, false)), !global0.x), all(global0.yx));
    global0 = vec4<bool>(~(~1i) <= u_input.a.x, !global0.x, true, func_3(_wgslsmith_add_vec2_i32(arg_0.xw, min(~vec2<i32>(0i, 16265i), ~vec2<i32>(1i, -8856i))), Struct_2(~_wgslsmith_mod_u32(1u, 22884u)), 25353i, Struct_5(false, ~firstTrailingBit(u_input.a.wxw), Struct_2(u_input.b | u_input.b), global0.zyy)));
    let var_0 = Struct_4(Struct_2(_wgslsmith_mod_u32(u_input.b, 1u)), Struct_2(u_input.c), 4294967295u);
    return 1626f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!vec4<bool>(false, !all(vec4<bool>(global0.x, global0.x, true, true)), global0.x, global0.x));
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1160f) - _wgslsmith_f_op_f32(ceil(256f))) >= _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(25066i, -37725i, 2147483647i, -2147483647i), u_input.a))), all(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, true), global0.x)), global0.x, any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x), any(vec4<bool>(global0.x, global0.x, global0.x, true))))), vec4<bool>(global0.x, u_input.b <= u_input.b, global0.x, false), !(all(vec3<bool>(global0.x, global0.x, false)) && true));
    global0 = select(!(!(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, false)))), !select(!select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), all(vec4<bool>(global0.x, global0.x, global0.x, false)))), select(!(!select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, false, global0.x, false))), !select(!vec4<bool>(global0.x, false, true, true), vec4<bool>(true, true, global0.x, false), !vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(!(false || global0.x), !(!global0.x), global0.x, !global0.x)));
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.c, _wgslsmith_clamp_u32(1u, u_input.b, ~select(u_input.b, 0u, true))), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 22915u, u_input.b) | vec3<u32>(u_input.c, u_input.c, u_input.c), select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.b, 4294967295u, u_input.b), global0.x), vec3<u32>(4294967295u, u_input.b, u_input.c) ^ vec3<u32>(1u, u_input.b, u_input.b)), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(u_input.c, 47310u, 30089u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 724f, -439f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(284f, -1264f, 1415f) - vec3<f32>(198f, -1215f, 942f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-980f, -932f, 1904f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1598f, _wgslsmith_f_op_f32(abs(-504f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-660f * 691f), 443f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-766f)), _wgslsmith_f_op_f32(1000f + 123f)))))));
    var var_2 = true;
    let var_3 = Struct_1(abs(~(var_0.x | 1u)) < 1u, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_0.x), ~u_input.b, abs(var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 79416u)) >> (vec3<u32>(18367u, u_input.c, var_0.x) % vec3<u32>(32u))), 1u), u_input.a.wzy);
    var var_4 = !(!vec4<bool>(!(!var_3.a), false, var_3.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_1.x)));
}

