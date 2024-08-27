struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-2527f - arg_0)))), arg_0, true)) + arg_0);
    let var_1 = Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true))), ~1u);
    let var_2 = -1828f;
    return u_input.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = max(~_wgslsmith_add_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(68371u, var_0.b))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.b), u_input.d.zz), vec2<u32>(61847u, u_input.d.x) ^ u_input.d.yx)), select(select(firstTrailingBit(u_input.d.yx), countOneBits(vec2<u32>(36828u, 42649u)), !arg_0.a), _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), u_input.d.xy), vec2<u32>(var_0.b, u_input.d.x)), var_0.a.x));
    let var_2 = arg_2.x;
    var_1 = abs(_wgslsmith_div_vec2_u32(~(~vec2<u32>(57u, var_1.x)), ~min(u_input.d.xx, vec2<u32>(1u, arg_0.b)))) << (max(u_input.d.xz, ~(firstLeadingBit(vec2<u32>(0u, var_1.x)) | u_input.d.yz)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_1(vec2<bool>(true, true), u_input.d.x);
    var_0 = Struct_1(var_0.a, 0u);
    return !(!var_0.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_1(!(!select(vec2<bool>(arg_0.a.x, false), arg_0.a, true)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 92474u, 1u)), abs(select(vec3<u32>(1u, arg_0.b, arg_0.b), u_input.d, false) << (~u_input.d % vec3<u32>(32u)))));
    let var_1 = var_0;
    let var_2 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1226f, -801f)), select(vec2<i32>(0i, u_input.a), arg_1.yw, vec2<bool>(false, false)), func_3(-646f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(var_1.a.x, var_0.a.x), 21668u), vec2<f32>(335f, -109f), u_input.c, vec2<i32>(u_input.c.x, 1i))), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(558f - _wgslsmith_div_f32(814f, -3722f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1049f * 131f), _wgslsmith_f_op_f32(round(840f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1410f, _wgslsmith_f_op_f32(step(-510f, -112f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(312f, -965f, 1641f, 681f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1246f, -1576f, 1663f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(735f, 254f, 1000f, -1118f), vec4<f32>(-1000f, -372f, 1165f, 612f), arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(537f, -308f, 1146f, 714f) * vec4<f32>(106f, -142f, -2910f, 2575f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), 1f, 1552f, -136f), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(595f - -2292f), -224f, -647f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(478f, 751f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1348f)), 1531f), 788f, 684f)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1752f, -283f, true)))), -467f))));
    var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1752f, 1960f)), vec2<i32>(countOneBits(arg_1.x), -54961i), u_input.c)), 684f), true));
    return 37230u;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, u_input.d.x, arg_1, arg_1), vec4<u32>(~30440u, min(4294967295u, u_input.d.x), arg_1, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))), abs(~u_input.d.x)) <= ~(~_wgslsmith_div_u32(firstLeadingBit(arg_1), func_2(Struct_1(vec2<bool>(false, false), 23143u), u_input.b)));
    let var_1 = vec2<bool>(true, true);
    var var_2 = ~_wgslsmith_div_u32(4294967295u, arg_1);
    var_0 = var_1.x && (var_1.x && all(!(!vec4<bool>(true, false, var_1.x, false))));
    var var_3 = Struct_1(select(select(select(select(vec2<bool>(var_1.x, var_1.x), var_1, true), select(var_1, vec2<bool>(var_1.x, true), true), var_1.x | var_1.x), !var_1, any(vec4<bool>(var_1.x, true, false, false))), !(!(!vec2<bool>(var_1.x, var_1.x))), false), firstLeadingBit(_wgslsmith_add_u32(4294967295u, firstLeadingBit(arg_1))));
    return !select(vec4<bool>(!all(vec3<bool>(true, true, var_1.x)), true, all(vec3<bool>(true, true, true)), select(!var_1.x, true, var_1.x)), vec4<bool>(true, true, true && any(var_3.a), _wgslsmith_f_op_f32(-arg_0) >= -291f), vec4<bool>(var_3.a.x, !var_1.x, any(select(vec3<bool>(false, var_3.a.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false)), all(select(vec4<bool>(true, var_3.a.x, false, false), vec4<bool>(var_1.x, true, var_3.a.x, var_3.a.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(0u != u_input.d.x, all(func_1(_wgslsmith_f_op_f32(sign(-443f)), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))), true, true);
    let var_1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f * -733f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1249f, -1000f, var_0.x)), -1089f)))), !(firstTrailingBit(2147483647i) < u_input.c.x)));
    let var_2 = var_0.xz;
    let var_3 = Struct_1(select(var_0.xw, var_0.wz, vec2<bool>(func_1(1000f, ~u_input.d.x).x, var_2.x)), u_input.d.x);
    var var_4 = vec4<u32>(4294967295u, u_input.d.x, abs(1335u), _wgslsmith_mult_u32(func_2(var_3, vec4<i32>(-2147483647i, -52686i, -61135i, u_input.c.x)) | min(u_input.d.x, 27240u), 1u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, var_3.b, 16468u, var_3.b), vec4<u32>(82194u, var_3.b, 3734u, 1u)), reverseBits(vec4<u32>(1u, var_3.b, var_3.b, var_3.b))), vec4<u32>(max(6133u, u_input.d.x), 1u, 55875u, 0u)), max(select(vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(var_3.b, u_input.d.x, 38563u, 0u), var_0), ~vec4<u32>(u_input.d.x, 1u, 69907u, u_input.d.x)) >> (vec4<u32>(224u, u_input.d.x, 45316u << (u_input.d.x % 32u), 4294967295u) % vec4<u32>(32u)));
    var var_5 = -vec2<i32>(u_input.c.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1440f, 504f, var_1) * vec3<f32>(-1443f, 2463f, -148f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, 1000f, -1039f)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -724f), 1910f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(411f, var_1))), !vec3<bool>(true, var_0.x, func_1(var_1, 45812u).x))));
}

