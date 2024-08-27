struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
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

var<private> global0: f32 = 1288f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(70032u, u_input.b.x, u_input.b.x), u_input.b.wxz)), 56794u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.a)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, 402f, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1275f, 331f)))))));
    let var_2 = arg_0;
    var var_3 = u_input.b.x;
    return var_1;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(abs(3330f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a + func_2(arg_1, true).a));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_2.a.x, arg_2.a.x))))));
    var_1 = func_2(arg_1, true).a;
    return var_2;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(countOneBits(u_input.a.x), abs(reverseBits(~countOneBits(u_input.b))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1962f)))), 746f))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1402f, -917f, 1425f)))), any(vec2<bool>(!arg_1, false))), func_2(func_3((u_input.b.x ^ u_input.b.x) & ~u_input.b.x, func_2(Struct_1(vec3<f32>(-988f, 527f, -861f)), arg_1), func_2(func_2(Struct_1(vec3<f32>(-1458f, -1398f, -491f)), arg_1), true)), all(!vec2<bool>(arg_1, false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-712f, 1000f, true))) + _wgslsmith_f_op_f32(step(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2411f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(681f)))))));
    var_0 = Struct_2(-_wgslsmith_div_i32(-var_0.a, _wgslsmith_div_i32(0i, _wgslsmith_mult_i32(40040i, var_0.a))), max(~vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b.x), u_input.b.x ^ u_input.b.x, _wgslsmith_add_u32(55088u, u_input.b.x), 0u | arg_0), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, 0u, arg_0), ~u_input.b), firstLeadingBit(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)))), var_0.c, var_0.d, func_3(select(0u, ~var_0.b.x, false), var_0.e, func_2(var_0.d, true)));
    let var_1 = var_0.e.a.x;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.d.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-552f + 754f), -2203f)) + _wgslsmith_f_op_f32(max(-1352f, _wgslsmith_f_op_f32(var_0.c + var_0.e.a.x)))), 313f))));
    return Struct_2(_wgslsmith_div_i32(var_0.a, var_0.a), var_0.b, var_0.e.a.x, var_0.d, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.a * var_0.d.a))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = -930f;
    global0 = 983f;
    var var_0 = all(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), func_1(arg_1.b.x, true).a <= max(0i, 0i), false && all(vec2<bool>(false, true))), vec4<bool>(false, true, true, arg_2.a.x != _wgslsmith_f_op_f32(f32(-1f) * -1041f))));
    var var_1 = Struct_2(-20098i, vec4<u32>(1u, 1u, ~firstLeadingBit(arg_1.b.x), ~(~1u)) | (vec4<u32>(48839u, arg_1.b.x, u_input.b.x >> (34982u % 32u), _wgslsmith_div_u32(0u, 43118u)) | _wgslsmith_sub_vec4_u32(select(vec4<u32>(81233u, arg_1.b.x, arg_1.b.x, 4294967295u), arg_1.b, false), u_input.b)), _wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - arg_1.d.a.x))), func_3(_wgslsmith_add_u32(_wgslsmith_add_u32(121336u, abs(1u)), abs(arg_1.b.x)), func_1(arg_1.b.x, !any(vec2<bool>(true, false))).e, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, 1071f, arg_2.a.x), vec3<f32>(arg_1.e.a.x, -144f, arg_2.a.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, -1174f, arg_1.d.a.x) * arg_1.e.a), vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<bool>(true, true, false))) * func_2(Struct_1(arg_2.a), all(vec4<bool>(true, true, false, false))).a)));
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f * arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<i32>(-2147483647i, u_input.e.x), func_1(u_input.b.x, false), Struct_1(vec3<f32>(-564f, -639f, 1078f)))))));
    global0 = _wgslsmith_f_op_f32(-func_3(4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(725f, 2287f, 1000f), vec3<f32>(1000f, -1780f, 1270f))))), func_3(countOneBits(u_input.b.x), Struct_1(vec3<f32>(1431f, -146f, 2015f)), func_1(u_input.b.x, true).e)).a.x);
    global0 = -639f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2(Struct_1(vec3<f32>(213f, 1521f, 2469f)), true).a.x))));
    var var_0 = ~_wgslsmith_mod_vec3_u32(max(abs(u_input.b.xzy), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.zyw, u_input.b.zww), ~u_input.b.yzy));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_3(countOneBits(reverseBits(u_input.b.x)), func_2(Struct_1(vec3<f32>(2038f, 1043f, 1000f)), false), func_3(~u_input.b.x, Struct_1(vec3<f32>(-882f, -1020f, -1000f)), func_3(u_input.b.x, Struct_1(vec3<f32>(1051f, 1753f, -645f)), Struct_1(vec3<f32>(-149f, 1000f, 1498f))))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(1i, 1i), Struct_2(u_input.a.x, u_input.b, 902f, Struct_1(vec3<f32>(363f, -1193f, -1000f)), Struct_1(vec3<f32>(-1030f, 1498f, 252f))), Struct_1(vec3<f32>(-978f, 163f, 2608f)))) - 2002f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.d.yw, Struct_2(u_input.e.x, vec4<u32>(30564u, 32251u, 1u, u_input.b.x), -508f, Struct_1(vec3<f32>(-114f, -2090f, 189f)), Struct_1(vec3<f32>(-1000f, -894f, 1466f))), Struct_1(vec3<f32>(-490f, -553f, -302f)))) + _wgslsmith_div_f32(867f, 1608f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(932f + -171f))))));
    var var_1 = func_3(~var_0.x, Struct_1(func_1(_wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(0u, u_input.b.x, 1u)) >> (1u % 32u), all(vec2<bool>(true, true))).e.a), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(1495f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(-392f + 368f))), -494f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

