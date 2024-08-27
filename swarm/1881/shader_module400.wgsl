struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = firstTrailingBit(vec2<i32>(~_wgslsmith_div_i32(-arg_0.c.c, ~u_input.a), u_input.a));
    let var_1 = Struct_4(Struct_2(any(select(select(vec2<bool>(arg_0.a, false), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, false)), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, arg_0.a), vec2<bool>(true, true)), !arg_0.a)), ~17309u, arg_0.c), vec2<bool>(arg_0.a, true), Struct_3(min(max(vec4<i32>(-2147483647i, -14578i, 65078i, -15398i), vec4<i32>(u_input.a, u_input.a, -51383i, var_0.x)), abs(vec4<i32>(u_input.a, 27950i, -1i, 18717i))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, arg_0.b), countOneBits(vec3<u32>(4294967295u, arg_0.b, arg_0.c.a))), (_wgslsmith_f_op_f32(-arg_0.c.b) >= arg_0.c.b) || true, abs(_wgslsmith_mult_u32(arg_0.b & arg_0.c.a, 0u))), Struct_1(~arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(421f)) + arg_0.c.b), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(9265i, 0i, -2147483647i, var_0.x), vec4<i32>(u_input.a, 1i, 0i, var_0.x)), 30475i)));
    var var_2 = select(vec4<bool>(var_1.c.c, _wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(abs(1410f))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1903f)), var_1.d.b)), false, true), vec4<bool>(any(select(!vec3<bool>(arg_0.a, true, false), !vec3<bool>(false, arg_0.a, true), true)), any(!select(vec2<bool>(false, arg_0.a), vec2<bool>(true, false), false)), !(!select(false, var_1.a.a, var_1.c.c)), any(var_1.b)), var_1.c.c | !(select(false, arg_0.a, var_1.b.x) && any(vec3<bool>(true, var_1.a.a, arg_0.a))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, 412f, 895f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.b, 1000f, 847f))) - vec3<f32>(_wgslsmith_f_op_f32(1521f - arg_0.c.b), var_1.d.b, arg_0.c.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.b, -396f, -124f)) * vec3<f32>(arg_0.c.b, -845f, _wgslsmith_f_op_f32(trunc(243f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b, arg_0.c.b, 467f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, arg_0.c.b, var_1.a.c.b) * vec3<f32>(-1159f, var_1.d.b, arg_0.c.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1015f, arg_0.c.b, 1000f))))))));
    var_2 = !select(vec4<bool>(true, var_1.a.a, arg_0.a, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), arg_0.a || (-528f > _wgslsmith_f_op_f32(-var_3.x)));
    return _wgslsmith_f_op_f32(193f - -270f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~35662u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(Struct_2(true, 22681u, Struct_1(1u, -596f, u_input.a))))) * _wgslsmith_f_op_f32(f32(-1f) * -1532f)), 0i);
    let var_1 = !(!(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(false, true, false, true)))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~firstTrailingBit(~vec2<u32>(var_0.a, 32139u)), reverseBits(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, 345f)) * var_0.b)), 13356i);
    let var_2 = Struct_2(11356u == max(abs(105226u), ~var_0.a), var_0.a, Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, var_0.a, 59669u), vec3<u32>(1u, 37769u, 39964u))), _wgslsmith_f_op_f32(sign(var_0.b)), 1i));
    let var_3 = Struct_5(70791u, ~vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(24440u, 51952u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(23967u, var_0.a, var_0.a), vec3<u32>(6904u, 25386u, 0u), vec3<u32>(1u, 1u, 1u))), var_2.c.a), Struct_1(~_wgslsmith_div_u32(min(1u, var_2.b), _wgslsmith_div_u32(var_0.a, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, var_0.b), var_2.c.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(var_2)))), var_1.x)), ~(~var_0.c)), Struct_4(Struct_2(any(!vec3<bool>(var_1.x, false, true)), countOneBits(max(var_0.a, var_0.a)), var_2.c), vec2<bool>(var_1.x, -37908i > min(var_0.c, var_2.c.c)), Struct_3(vec4<i32>(11509i, 1i, var_2.c.c, max(-4853i, var_0.c)), var_0.a, false, reverseBits(~var_0.a)), var_2.c));
    return Struct_1(_wgslsmith_add_u32(0u ^ var_2.c.a, var_3.d.c.b), 227f, var_3.d.d.c);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.c.b + arg_0.d.b))))));
    let var_1 = Struct_1(arg_0.a.c.a ^ ~(~0u), _wgslsmith_f_op_f32(sign(arg_0.a.c.b)), countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.c.a.ww, -vec2<i32>(u_input.a, arg_0.c.a.x)), 4374i)));
    var_0 = var_1.b;
    var_0 = arg_0.d.b;
    var_0 = var_1.b;
    return func_2();
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    let var_0 = Struct_5(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36360u, 105703u, 4294967295u, 12242u), ~vec4<u32>(20560u, 0u, 33181u, 31659u)), ~(~1u), 1u), ~(~(~25088u)), true == arg_0.x), ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(45785u, 56183u), max(vec2<u32>(1u, 4294967295u), vec2<u32>(44163u, 11820u))), ~1u), func_4(Struct_4(Struct_2(arg_0.x, ~1u, func_2()), vec2<bool>(true, true), Struct_3(abs(vec4<i32>(u_input.a, u_input.a, 1360i, u_input.a)), 1u, any(arg_0.wxy), _wgslsmith_div_u32(1u, 16562u)), func_2()), !select(select(arg_0, arg_0, true), arg_0, false)), Struct_4(Struct_2(false, _wgslsmith_mod_u32(1u, firstLeadingBit(93965u)), Struct_1(1u, arg_1, abs(u_input.a))), arg_0.yy, Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 15266i, u_input.a, u_input.a) & vec4<i32>(0i, u_input.a, 1i, 28536i), select(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(58527i, -1i, u_input.a, -19842i), true)), 4294967295u, (u_input.a << (61962u % 32u)) > u_input.a, ~1u), func_4(Struct_4(Struct_2(arg_0.x, 1u, Struct_1(29168u, arg_1, u_input.a)), vec2<bool>(false, arg_0.x), Struct_3(vec4<i32>(-27027i, u_input.a, -49750i, -4808i), 18428u, true, 0u), Struct_1(647u, 1972f, 2147483647i)), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0), arg_0))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a, 1u, ~(~0u), _wgslsmith_sub_u32(~(~var_0.a), abs(_wgslsmith_div_u32(4294967295u, 4294967295u)))), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.a, 1u, 1u, var_0.c.a), vec4<u32>(0u, 1u, 1u, var_0.c.a), vec4<u32>(var_0.d.a.c.a, 0u, 55844u, var_0.a)), vec4<u32>(var_0.d.d.a, 4943u, 1u, var_0.a) & countOneBits(vec4<u32>(var_0.b.x, var_0.d.d.a, var_0.b.x, 789u))));
    let var_2 = var_0.d.a;
    let var_3 = true;
    var var_4 = var_0.d.c;
    return _wgslsmith_sub_u32(0u, firstLeadingBit(var_2.b));
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> vec2<bool> {
    let var_0 = ~vec2<u32>(reverseBits(max(arg_2.x, 21437u)), ~(~arg_2.x) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, arg_2.x), vec2<u32>(arg_2.x, arg_2.x)), func_4(Struct_4(Struct_2(true, arg_3, Struct_1(arg_3, 1000f, u_input.a)), arg_0, Struct_3(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 16259u, false, arg_2.x), Struct_1(arg_2.x, 1102f, -20325i)), vec4<bool>(true, true, arg_0.x, arg_0.x)).a));
    var var_1 = func_4(Struct_4(Struct_2(!any(vec4<bool>(arg_0.x, arg_1, arg_0.x, arg_1)), abs(~arg_2.x), func_2()), arg_0, Struct_3(~vec4<i32>(u_input.a, u_input.a, 2147483647i, -59585i) | -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), var_0.x, arg_1, (var_0.x >> (4294967295u % 32u)) >> (_wgslsmith_mult_u32(46801u, arg_3) % 32u)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(arg_3, 40661u)), _wgslsmith_add_u32(1u, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1623f))), -1i)), select(select(vec4<bool>(true, true, false, arg_0.x), !vec4<bool>(false, true, arg_1, arg_0.x), !(!vec4<bool>(arg_1, arg_1, true, arg_1))), select(!vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(true, arg_1 || arg_1, all(vec3<bool>(false, false, arg_1)), false), !select(arg_1, arg_0.x, true)), vec4<bool>(select(!arg_0.x, false, !arg_1), any(!vec4<bool>(arg_0.x, arg_1, true, arg_1)), any(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_1, arg_0.x), vec2<bool>(true, arg_1))), any(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_1, true), arg_1)))));
    var_1 = func_2();
    var_1 = Struct_1(~arg_2.x, -1000f, _wgslsmith_add_i32(-2633i, u_input.a));
    var var_2 = !(!(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-20844i, -2147483647i), vec2<i32>(u_input.a, 1i)), ~vec2<i32>(u_input.a, var_1.c)) != u_input.a));
    return !select(!vec2<bool>(all(vec2<bool>(arg_1, arg_0.x)), any(vec4<bool>(true, arg_0.x, true, arg_1))), !vec2<bool>(true, any(vec3<bool>(arg_0.x, true, arg_1))), !(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), all(vec3<bool>(true, true, true)), abs(vec4<u32>(~51868u, ~12061u, 0u, 1u)), func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-1106f))));
    let var_1 = Struct_5(_wgslsmith_div_u32(1u, func_4(Struct_4(Struct_2(false, 4294967295u, Struct_1(0u, 1061f, u_input.a)), var_0, Struct_3(vec4<i32>(-2147483647i, -38548i, 18946i, u_input.a), 1u, var_0.x, 4294967295u), func_4(Struct_4(Struct_2(var_0.x, 0u, Struct_1(1u, 1196f, u_input.a)), var_0, Struct_3(vec4<i32>(u_input.a, 2147483647i, 0i, 15108i), 3649u, true, 51621u), Struct_1(4294967295u, 1000f, -25579i)), vec4<bool>(true, true, true, true))), !(!vec4<bool>(false, var_0.x, false, false))).a), abs(select(vec2<u32>(1u, _wgslsmith_mod_u32(1u, 4294967295u)), ~vec2<u32>(1u, 1u), false)), Struct_1(_wgslsmith_mod_u32(105509u, 1u), -634f, ~_wgslsmith_sub_i32(-80257i, -1i)), Struct_4(Struct_2(true & all(vec3<bool>(false, var_0.x, true)), countOneBits(~68371u), Struct_1(~4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1592f), -1i)), var_0, Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 35389i, 40852i, u_input.a) | vec4<i32>(u_input.a, u_input.a, -11501i, u_input.a), -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), abs(0u), var_0.x, 10662u), func_4(Struct_4(Struct_2(true, 4294967295u, Struct_1(4294967295u, -177f, -11534i)), !var_0, Struct_3(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), 56171u, true, 20730u), func_4(Struct_4(Struct_2(var_0.x, 25186u, Struct_1(0u, 238f, 18843i)), vec2<bool>(var_0.x, false), Struct_3(vec4<i32>(-1i, u_input.a, 27485i, u_input.a), 1u, var_0.x, 0u), Struct_1(13857u, 787f, u_input.a)), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), !select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x))));
    let var_2 = 755f;
    let var_3 = Struct_3(var_1.d.c.a, _wgslsmith_clamp_u32(13447u, var_1.d.d.a, 0u), var_1.d.b.x | false, ~(27774u ^ ~var_1.d.d.a));
    var var_4 = Struct_5(func_1(vec4<bool>(false, true, false, var_1.d.c.c), _wgslsmith_f_op_f32(floor(var_1.d.a.c.b))), vec2<u32>(24537u, var_1.a), var_1.c, Struct_4(Struct_2(select(!var_0.x, false, var_0.x), ~abs(var_3.d), Struct_1(~var_3.d, 1000f, u_input.a)), var_1.d.b, var_1.d.c, var_1.d.a.c));
    var_4 = var_1;
    var_4 = var_1;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(139f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.a.c.b))), 604f)), !((u_input.a <= -1i) && var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.c.b, var_2, 400f) - vec3<f32>(var_1.d.a.c.b, -1000f, -304f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.c.b, var_4.d.d.b, -120f), vec3<f32>(370f, var_2, -1197f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_4.c.b, var_2, -2666f), vec3<f32>(var_1.c.b, 1000f, var_1.c.b)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-303f, -380f, 805f), vec3<f32>(-635f, 925f, var_4.c.b), var_3.c | var_3.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(687f, var_4.c.b, 740f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-877f, -1954f, 560f) - vec3<f32>(var_2, -1005f, -622f))))));
}

