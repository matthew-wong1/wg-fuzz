struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(22780u), u_input.e);
    let var_1 = Struct_1(arg_1.x, all(select(vec2<bool>(any(vec2<bool>(arg_0, false)), true), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), true), select(select(vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, false)), !vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)))), _wgslsmith_f_op_f32(sign(arg_2.x)), any(select(vec2<bool>(arg_0, arg_0), !select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, false)), vec2<bool>(any(vec3<bool>(false, arg_0, false)), !arg_0))), vec3<bool>(true, false, any(select(!vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), u_input.b >= u_input.d.x))));
    var var_2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2954f * _wgslsmith_f_op_f32(-arg_2.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(262f - 452f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x - 1213f), _wgslsmith_div_f32(arg_2.x, 281f), var_1.d)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))))));
    var_0 = u_input.e;
    var_2 = -1457f;
    return _wgslsmith_f_op_f32(1108f * _wgslsmith_f_op_f32(floor(445f)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + 141f) - -330f), _wgslsmith_f_op_f32(771f - _wgslsmith_f_op_f32(func_3(true, vec2<f32>(487f, -1172f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-812f, arg_0.a)))))), any(select(!vec4<bool>(arg_0.d, false, arg_0.d, arg_0.b), vec4<bool>(arg_0.d, true, false, arg_0.e.x), true | arg_0.e.x)))), arg_0.e.x, -3504f, false, select(select(select(vec3<bool>(arg_0.e.x, true, true), arg_0.e, arg_0.e.x), select(!vec3<bool>(true, false, arg_0.b), !vec3<bool>(arg_0.e.x, false, true), true), !(!arg_0.e)), arg_0.e, !vec3<bool>(all(arg_0.e), arg_0.d, any(arg_0.e))));
    let var_1 = !select(false, false, 46351i <= ~(~u_input.c));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - -102f) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-678f + var_0.c), arg_0.c), true)))), !(!any(!vec4<bool>(arg_0.d, true, var_0.d, var_1))), _wgslsmith_f_op_f32(sign(var_0.c)), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 43329u, u_input.d.x), vec3<u32>(u_input.b, 1462u, 24641u)), _wgslsmith_div_u32(11338u, u_input.a.x), all(var_0.e)) >= ~(~(u_input.e & u_input.b)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(var_0.d, true, var_0.e.x), vec3<bool>(false, var_0.b, true)), all(vec2<bool>(var_0.d, false)))));
    let var_3 = countOneBits(countOneBits(~abs(countOneBits(vec2<i32>(u_input.c, u_input.c)))));
    let var_4 = var_0;
    return var_4.e;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-920f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f + arg_0.c)))), any(select(vec3<bool>(arg_3, arg_2.x, false), func_2(arg_0), all(vec3<bool>(false, false, arg_2.x)))) && !arg_2.x, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.a)) + _wgslsmith_f_op_f32(-arg_0.a))), arg_3, vec3<bool>(!arg_2.x, !all(arg_0.e) & true, !select(any(arg_2.wx), u_input.c <= 21080i, !arg_2.x)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, var_0.c)))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1425f, arg_0.c))))))));
    var_0 = arg_0;
    var var_2 = arg_0;
    var var_3 = vec2<i32>(~abs(abs(u_input.c)), countOneBits(-(~countOneBits(arg_1.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1610f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(335f, -155f) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1348f, 370f))))), select(select(select(false, false, false), true, func_1(Struct_1(1411f, false, 1429f, true, vec3<bool>(true, false, false)), vec4<i32>(u_input.c, u_input.c, u_input.c, 62839i), vec4<bool>(false, true, false, true), false)) | false, any(vec2<bool>(true, true)), !func_2(Struct_1(1000f, false, -163f, false, vec3<bool>(false, true, false))).x), _wgslsmith_f_op_f32(154f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f - 246f)))), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), select(select(!func_2(Struct_1(-1194f, true, 991f, true, vec3<bool>(false, true, false))), func_2(Struct_1(-489f, false, -2358f, true, vec3<bool>(true, true, true))), func_2(Struct_1(-348f, true, -966f, false, vec3<bool>(false, true, false)))), vec3<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), 1f > _wgslsmith_f_op_f32(func_3(false, vec2<f32>(1000f, -1527f), vec2<f32>(-1746f, 1061f)))), vec3<bool>(true, true, true)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + -300f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, var_0.c)) * 1910f))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(min(-2010f, var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) + -1085f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -190f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.c)))))), var_0.b, !(!select(var_0.e, vec3<bool>(false, var_0.b, true), var_0.e)));
    let var_1 = countOneBits(reverseBits(vec4<i32>(u_input.c, 24321i, u_input.c, ~select(u_input.c, u_input.c, true))));
    var var_2 = ~firstLeadingBit(select(var_1.wz, vec2<i32>(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-12567i, var_1.x, var_1.x), vec3<i32>(17713i, 2147483647i, -2897i))), select(func_2(Struct_1(var_0.c, var_0.e.x, -516f, false, vec3<bool>(var_0.d, var_0.d, var_0.b))).zy, var_0.e.yy, var_0.d)));
    var var_3 = Struct_1(1173f, _wgslsmith_sub_u32(0u, ~(u_input.d.x >> (4294967295u % 32u))) == (u_input.a.x << (~min(4294967295u, 0u) % 32u)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), false, vec3<bool>(var_0.e.x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x ^ (var_1.x >> ((abs(u_input.e) >> (~u_input.a.x % 32u)) % 32u)), firstLeadingBit(vec4<u32>(14618u, _wgslsmith_sub_u32(19650u, u_input.a.x), 37824u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.a.x, 0u)), vec4<u32>(u_input.b, 12562u, u_input.a.x, 24610u) >> (vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, 0u) % vec4<u32>(32u))))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, max(reverseBits(1u), ~u_input.b)), ~_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), 1u)), countOneBits(var_1));
}

