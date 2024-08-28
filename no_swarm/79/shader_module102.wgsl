struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 699f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    let var_0 = vec2<i32>(~(-arg_2.b), ~(-22777i ^ u_input.e));
    return -756f;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global0 = 1964f;
    let var_0 = Struct_5(_wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-566f, vec2<f32>(1013f, -1449f), Struct_2(vec3<f32>(-297f, -837f, 2099f), -2147483647i, true, true, Struct_1(vec2<f32>(-925f, 1593f), vec4<f32>(835f, 1142f, 1817f, 361f))), vec4<bool>(false, false, true, false)))))), true, 1f, !any(vec2<bool>(true, true)));
    global0 = var_0.a;
    let var_1 = select(vec3<bool>(false, min(0u, u_input.b) > (u_input.a & u_input.b), false), !(!(!(!vec3<bool>(false, true, var_0.b)))), !(!select(select(vec3<bool>(var_0.b, false, var_0.d), vec3<bool>(false, true, true), vec3<bool>(var_0.d, false, false)), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, false, var_0.d), true), !var_0.b)));
    global0 = _wgslsmith_f_op_f32(floor(var_0.a));
    return Struct_3(var_1.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_4 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1381f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f), _wgslsmith_f_op_f32(f32(-1f) * -2401f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(675f - _wgslsmith_f_op_f32(func_3(-977f, vec2<f32>(936f, 1658f), Struct_2(vec3<f32>(-653f, -921f, 1222f), u_input.d, true, arg_2.a, Struct_1(vec2<f32>(-2315f, 1000f), vec4<f32>(-374f, -2314f, 960f, 809f))), vec4<bool>(arg_2.a, true, true, arg_2.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, 1459f)), vec2<f32>(522f, -350f), !vec2<bool>(arg_2.a, arg_2.a))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1490f, -1142f, -327f))), -2147483647i, true, all(vec2<bool>(false, arg_2.a)), Struct_1(vec2<f32>(128f, 158f), vec4<f32>(-308f, 1285f, 999f, 1009f))), !(!vec4<bool>(true, arg_2.a, false, true)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(round(493f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-445f, _wgslsmith_f_op_f32(min(542f, -1230f)))))))));
    var var_0 = -1520f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1463f))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f - -2332f)))));
    let var_1 = ~vec2<u32>(_wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 60796u, u_input.b, u_input.b), vec4<u32>(75933u, u_input.a, u_input.b, 35107u)), min(u_input.a, u_input.b)), u_input.a), 13043u);
    return Struct_4(Struct_3(true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(370f + 1201f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-228f))))), vec4<f32>(1126f, 1325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -105f))));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global0 = -519f;
    var var_0 = func_4(func_2(min(abs(vec4<i32>(u_input.d, 14956i, u_input.e, 0i)), vec4<i32>(_wgslsmith_div_i32(0i, u_input.c), u_input.e, -u_input.c, i32(-1i) * -1i))), ~vec4<i32>(_wgslsmith_clamp_i32(-19267i, u_input.d, -2147483647i), firstLeadingBit(u_input.e), -1i << (u_input.a % 32u), u_input.e) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~47742u, ~u_input.b, 1u, 26543u), abs(vec4<u32>(u_input.a, 4294967295u, 1u, 0u) >> (vec4<u32>(u_input.b, u_input.a, 0u, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)), func_2(firstLeadingBit(select(-vec4<i32>(6640i, 45873i, u_input.e, -1i), -vec4<i32>(u_input.e, -1i, u_input.e, u_input.e), true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_0.b.b.xy))))));
    global0 = var_0.b.b.x;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1408f))), 794f, var_0.a.a)), u_input.c > abs(min(-1i, ~49065i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b.x))))), var_0.a.a);
    return -select(u_input.c, -35843i, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(_wgslsmith_mod_i32(~(-2147483647i), u_input.c) == func_1(vec4<f32>(-426f, 373f, -1148f, -661f)), false, !any(vec4<bool>(false, true, true, false)) & (true || func_4(Struct_3(false), vec4<i32>(1i, u_input.e, u_input.c, u_input.c), Struct_3(true)).a.a)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<bool>(true, any(vec2<bool>(true, all(vec2<bool>(false, true)))), select(func_4(Struct_3(true), ~vec4<i32>(2147483647i, 2147483647i, u_input.e, u_input.e), func_4(Struct_3(true), vec4<i32>(21705i, -16834i, u_input.e, -1i), Struct_3(false)).a).a.a, all(vec2<bool>(true, true)), false)));
    var var_1 = vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.e, u_input.c, u_input.d)), vec3<i32>(u_input.e, -2147483647i, 1i) >> (vec3<u32>(u_input.a, 93293u, u_input.a) % vec3<u32>(32u))), u_input.c), abs(-2147483647i));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1557f)) + _wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(388f, 1000f))), Struct_2(vec3<f32>(-374f, -1452f, -347f), -1i, false, false, Struct_1(vec2<f32>(-1647f, 1262f), vec4<f32>(1163f, -1127f, 279f, 1127f))), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_f32(select(-959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(-554f, vec2<f32>(-523f, -552f), Struct_2(vec3<f32>(621f, -571f, -1940f), u_input.d, var_0.x, false, Struct_1(vec2<f32>(945f, 1159f), vec4<f32>(626f, -173f, -1176f, -175f))), vec4<bool>(var_0.x, false, var_0.x, false))))) + _wgslsmith_f_op_f32(min(-670f, _wgslsmith_f_op_f32(2112f * 1136f)))), !var_0.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1121f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(877f)) + func_4(Struct_3(var_0.x), vec4<i32>(-1i, 1i, 0i, u_input.d), Struct_3(true)).b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 1680f))), var_2, -675f));
    let var_4 = vec4<bool>(all(!select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.x, false))), func_4(Struct_3(true), vec4<i32>(_wgslsmith_div_i32(var_1.x, u_input.e), -_wgslsmith_div_i32(-2147483647i, -32001i), abs(select(24998i, var_1.x, var_0.x)), u_input.e), func_2(max(vec4<i32>(u_input.e, 8953i, -2147483647i, u_input.d), reverseBits(vec4<i32>(2147483647i, -10653i, 2587i, 31769i))))).a.a, var_0.x, (!func_4(Struct_3(var_0.x), vec4<i32>(-1i, u_input.d, u_input.c, -1i), Struct_3(var_0.x)).a.a && false) | func_4(func_2(vec4<i32>(34138i, -2147483647i, 1i, var_1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.x, 2147483647i, var_1.x), select(vec4<i32>(2147483647i, 14460i, u_input.e, u_input.e), vec4<i32>(25089i, var_1.x, 1i, -47759i), vec4<bool>(true, false, var_0.x, var_0.x))), func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.c, var_1.x), vec4<i32>(18929i, -2147483647i, 2147483647i, var_1.x), vec4<i32>(u_input.d, 2491i, u_input.c, -234i)))).a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -135f)), 1u);
}

