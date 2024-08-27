struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(Struct_1(true, vec4<u32>(firstTrailingBit(firstLeadingBit(1u)), reverseBits(~arg_1), arg_1, firstTrailingBit(arg_1))));
    let var_1 = select(vec4<bool>((_wgslsmith_mult_i32(u_input.a, u_input.a) >> (53473u % 32u)) < -_wgslsmith_dot_vec4_i32(arg_2, arg_2), var_0.a.a, all(vec4<bool>(!arg_0.a, true, any(vec4<bool>(arg_3.a.a, arg_3.a.a, true, true)), arg_3.a.a && false)), true), select(!select(select(vec4<bool>(arg_3.a.a, arg_0.a, var_0.a.a, true), vec4<bool>(true, var_0.a.a, true, false), vec4<bool>(arg_3.a.a, var_0.a.a, var_0.a.a, arg_0.a)), !vec4<bool>(false, false, arg_0.a, var_0.a.a), select(vec4<bool>(var_0.a.a, arg_3.a.a, arg_0.a, arg_3.a.a), vec4<bool>(arg_3.a.a, false, arg_0.a, true), vec4<bool>(true, arg_3.a.a, arg_3.a.a, true))), !(!(!vec4<bool>(var_0.a.a, true, false, false))), !select(!vec4<bool>(true, false, false, arg_3.a.a), vec4<bool>(false, true, arg_3.a.a, arg_0.a), arg_3.a.a | true)), !select(select(!vec4<bool>(true, arg_3.a.a, true, false), !vec4<bool>(arg_3.a.a, arg_3.a.a, false, var_0.a.a), !vec4<bool>(true, var_0.a.a, false, var_0.a.a)), vec4<bool>(true, any(vec2<bool>(arg_3.a.a, arg_3.a.a)), !arg_0.a, arg_3.a.a), select(!vec4<bool>(false, var_0.a.a, arg_0.a, false), select(vec4<bool>(arg_0.a, false, true, arg_3.a.a), vec4<bool>(arg_3.a.a, var_0.a.a, arg_0.a, false), false), true)));
    global0 = true;
    global0 = !arg_0.a;
    global0 = true;
    return -42326i;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = vec4<bool>(0u != arg_3.x, arg_0.x, all(select(!(!vec4<bool>(true, arg_0.x, true, arg_0.x)), !select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), true)), !(_wgslsmith_sub_u32(~64501u, countOneBits(arg_3.x)) <= 58398u));
    global0 = !(~(~4294967295u) <= ~(~arg_3.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))) + 135f);
    var var_2 = ~(~arg_3.x);
    return vec4<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 1181f)), 180f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, -416f))))), arg_2.x);
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(floor(868f))) - 1201f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(163f)), _wgslsmith_f_op_f32(210f + 693f)))), -657f, 774f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(true, true), _wgslsmith_mod_i32(countOneBits(u_input.a), -2147483647i | func_3(Struct_1(false, vec4<u32>(1u, 16600u, 1u, 50740u)), 0u, vec4<i32>(-2147483647i, u_input.a, u_input.a, 3789i), Struct_2(Struct_1(false, vec4<u32>(41282u, 4927u, 1u, 80168u))))), var_0.zy, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 55344u, 15984u, 11585u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(19415u, 4294967295u, 1u, 4294967295u), vec4<u32>(59375u, 0u, 21580u, 17724u))), 1u, countOneBits(select(0u, 1u, false)), 69743u))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1694f * 648f)), var_1.x, -610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * var_0.x))));
    var var_2 = abs(-(~vec3<i32>(1i, 1i, 1i)));
    var var_3 = select(select(vec3<bool>(true, any(vec3<bool>(true, false, false)) && true, true || (var_0.x < var_0.x)), vec3<bool>(!any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), vec3<bool>(var_0.x < var_0.x, false, false)), !select(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), false), true);
    return Struct_4(select(select(select(!vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(var_3.x, var_3.x, true, true)), vec4<bool>(true, true, var_3.x, true), !(1485f <= var_1.x)), select(vec4<bool>(var_3.x || true, true, var_3.x, var_3.x), vec4<bool>(-421f != var_1.x, any(vec3<bool>(false, var_3.x, false)), var_3.x, var_3.x), vec4<bool>(true, var_3.x, false, true)), !select(select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, false, var_3.x, true)), select(vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(false, true, var_3.x, var_3.x)), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    let var_0 = any(!select(vec4<bool>(true, false, false, true), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_2.a.a.a, true), select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), arg_1.a, arg_2.a.a.a))) && any(arg_1.a);
    global0 = any(func_2().a.wzy);
    global0 = true;
    var var_1 = arg_1.a.x;
    var var_2 = _wgslsmith_f_op_f32(1587f + _wgslsmith_f_op_vec4_f32(func_4(!(!func_2().a.yw), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1020f, -742f) - vec2<f32>(-1000f, 910f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(178f, -794f) + vec2<f32>(-453f, 673f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-548f, 1000f), vec2<f32>(-1068f, -244f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -500f)))), _wgslsmith_sub_vec4_u32((vec4<u32>(arg_0.x, arg_2.a.a.b.x, arg_0.x, 9051u) >> (vec4<u32>(arg_0.x, arg_2.a.a.b.x, 0u, arg_0.x) % vec4<u32>(32u))) >> (~vec4<u32>(arg_2.b.b.x, 11094u, 9476u, arg_0.x) % vec4<u32>(32u)), vec4<u32>(31234u, arg_2.b.b.x, ~53017u, max(4294967295u, arg_2.a.a.b.x))))).x);
    return -234f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global0 = any(!select(vec2<bool>(arg_0.a.a, any(vec3<bool>(arg_1.a, false, false))), vec2<bool>(!arg_0.a.a, arg_0.a.a), select(select(vec2<bool>(true, arg_0.a.a), vec2<bool>(arg_1.a, false), vec2<bool>(arg_0.a.a, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(select(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), 1u), arg_1.b.yz, select(select(vec2<bool>(true, true), vec2<bool>(false, arg_1.a), arg_0.a.a), vec2<bool>(arg_0.a.a, true), select(vec2<bool>(arg_0.a.a, arg_1.a), vec2<bool>(true, arg_0.a.a), true))), func_2(), Struct_3(arg_0, Struct_1(any(vec4<bool>(false, true, false, false)), vec4<u32>(arg_1.b.x, 83823u, arg_0.a.b.x, arg_1.b.x)), u_input.a, max(~vec4<i32>(-1i, u_input.a, 0i, u_input.a), select(vec4<i32>(-1i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, 1i, u_input.a, 1i), false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(max(-695f, 1461f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1196f))))), ~(arg_1.b.x & abs(arg_1.b.x)) != arg_0.a.b.x));
    global0 = true;
    let var_1 = Struct_2(Struct_1(4294967295u != (arg_0.a.b.x >> (arg_0.a.b.x % 32u)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(arg_1.b.x, arg_0.a.b.x, 6857u, arg_1.b.x), vec4<u32>(arg_1.b.x, 63784u, arg_0.a.b.x, 43960u), vec4<bool>(arg_0.a.a, true, true, arg_1.a)), vec4<u32>(arg_0.a.b.x, 1u, 66869u, _wgslsmith_div_u32(4294967295u, 50383u)))));
    var var_2 = func_2();
    return Struct_3(Struct_2(Struct_1(false, ~arg_1.b)), var_1.a, 2147483647i, _wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-11846i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, arg_1.b.x, arg_0.a.b.x, 18237u) % vec4<u32>(32u)), ~vec4<i32>(623i, u_input.a, -11150i, u_input.a)), any(vec4<bool>(arg_1.a, false, var_1.a.a, var_1.a.a))), firstTrailingBit(~(-vec4<i32>(2147483647i, u_input.a, 0i, -71770i)))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_4) -> Struct_2 {
    global0 = !(!(!arg_0.b.a) || any(vec3<bool>(arg_2.a.x, arg_2.a.x, false))) & true;
    global0 = arg_0.b.a;
    var var_0 = func_1(Struct_2(arg_0.a.a), arg_0.a.a).a.a;
    let var_1 = select(vec2<bool>(true, !var_0.a), vec2<bool>(all(!vec4<bool>(arg_0.a.a.a, arg_2.a.x, var_0.a, arg_2.a.x)), select(_wgslsmith_div_f32(arg_1.x, 682f) >= arg_1.x, arg_0.a.a.a, true)), arg_2.a.zy);
    var var_2 = -7079i;
    return func_1(func_1(Struct_2(Struct_1(arg_2.a.x, func_1(Struct_2(arg_0.a.a), arg_0.b).b.b)), arg_0.b).a, func_1(func_1(func_1(Struct_2(Struct_1(var_1.x, vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, var_0.b.x))), func_1(arg_0.a, arg_0.b).a.a).a, Struct_1(var_0.a, arg_0.a.a.b)).a, func_1(Struct_2(arg_0.a.a), arg_0.a.a).a.a).b).a;
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_4(!func_2().a);
    var_0 = func_2();
    let var_1 = ~min(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_1, arg_0.d.x), _wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(arg_1, arg_1, u_input.a, u_input.a))), u_input.a) >> (~4294967295u % 32u);
    global0 = 1540f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-811f, 1f, select(true, false, arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))));
    global0 = all(vec3<bool>(true, !(!(!arg_0.b.a)), 0i >= _wgslsmith_mult_i32(u_input.a, -1i)));
    return func_6(arg_0, vec3<f32>(747f, _wgslsmith_f_op_f32(ceil(1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1012f, -759f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f + -309f) - 141f))), Struct_4(select(vec4<bool>(arg_0.b.a, arg_0.a.a.a, !arg_0.a.a.a, true), !vec4<bool>(arg_2.a, arg_2.a, false, arg_0.b.a), !vec4<bool>(arg_2.a, var_0.a.x, arg_0.b.a, true)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(Struct_3(func_6(func_1(Struct_2(Struct_1(true, vec4<u32>(55693u, 42506u, 55507u, 38112u))), Struct_1(false, vec4<u32>(4294967295u, 1980u, 43542u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1298f, 1192f, -920f)), Struct_4(vec4<bool>(false, false, false, false))), func_6(func_1(Struct_2(Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 1u, 30123u))), Struct_1(false, vec4<u32>(44827u, 11961u, 12243u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, 111f, -321f)), Struct_4(vec4<bool>(false, true, false, false))).a, min(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), vec4<i32>(-2147483647i, firstTrailingBit(u_input.a), firstLeadingBit(u_input.a), 1i)), -min(u_input.a, 2147483647i) & u_input.a, Struct_1(true, max(~vec4<u32>(23940u, 4294967295u, 17506u, 0u), abs(vec4<u32>(0u, 13354u, 4294967295u, 4294967295u)))), vec4<u32>(49858u, 1u, 1u, ~43657u)));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, 74195i), u_input.a), (~u_input.a ^ u_input.a) & -1i);
    global0 = var_0.a.a;
    let var_2 = Struct_1(func_1(var_0, Struct_1(var_0.a.a || true, ~vec4<u32>(0u, 32344u, 1u, 4294967295u))).b.a, vec4<u32>(var_0.a.b.x, var_0.a.b.x, _wgslsmith_mod_u32(var_0.a.b.x, var_0.a.b.x), var_0.a.b.x));
    global0 = false;
    global0 = var_0.a.a;
    let var_3 = var_2;
    let var_4 = firstLeadingBit(var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_clamp_vec2_i32(~var_1, vec2<i32>(var_1.x, -2087i), _wgslsmith_mult_vec2_i32(var_1, vec2<i32>(-79130i, 6076i)))));
}

