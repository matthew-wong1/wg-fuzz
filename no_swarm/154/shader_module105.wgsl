struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) * _wgslsmith_div_f32(623f, _wgslsmith_f_op_f32(ceil(451f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(380f, 201f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2014f, -1593f) * 584f)), _wgslsmith_div_f32(505f, 1023f), false)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-383f * 499f), 1134f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1293f - 1144f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c, -30292i, -2147483647i), -vec2<i32>(u_input.c, 1i), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.c), 0u, 4856u))), _wgslsmith_f_op_f32(f32(-1f) * -920f), u_input.c <= -645i)));
    let var_2 = Struct_2(~_wgslsmith_clamp_vec2_u32(u_input.a.xy, firstLeadingBit(u_input.a.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 0u), u_input.a.xy)) | (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0, 0u), vec2<u32>(u_input.a.x, 0u), firstTrailingBit(u_input.a.xx)) << (countOneBits(firstTrailingBit(vec2<u32>(var_0, 0u))) % vec2<u32>(32u))), !select(vec2<bool>(true, true), vec2<bool>(1u >= u_input.a.x, all(vec2<bool>(true, false))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1831f, 1000f, 448f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1190f, -599f, -687f) * vec3<f32>(-838f, 1000f, -620f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(718f, -807f, -749f) + vec3<f32>(-415f, 117f, -806f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-758f, 1123f, -595f) + vec3<f32>(-349f, -2445f, 162f))))), true);
    var_1 = false;
    let var_3 = _wgslsmith_div_vec2_i32(u_input.b.zx, abs(-(vec2<i32>(8099i, u_input.c) << (firstTrailingBit(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)))));
    return Struct_1(!(!select(select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(var_2.d, var_2.b.x), var_2.b), var_2.b, true)), select(~(select(u_input.b, vec4<i32>(-2611i, 1i, 0i, var_3.x), var_2.b.x) >> (~vec4<u32>(var_2.a.x, var_0, var_0, 4294967295u) % vec4<u32>(32u))), abs(abs(u_input.b)), var_2.d), ~(~var_0), 13730u);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.b.x;
    var var_1 = func_2();
    let var_2 = arg_3;
    var_1 = func_2();
    let var_3 = 1u;
    return !(arg_1.c.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) * _wgslsmith_f_op_f32(-arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-881f, -248f, true))) * _wgslsmith_f_op_f32(f32(-1f) * -915f)))));
    var var_1 = Struct_2(~u_input.a.xz ^ ~(~(~u_input.a.xx)), select(vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), false), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), func_1(~1u, Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(10010u, u_input.a.x), u_input.a.yz), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, 237f, 468f) + vec3<f32>(-291f, -286f, 678f)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, 889f, 1523f, -1054f))), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, false), false), firstLeadingBit(vec4<i32>(1i, 63022i, u_input.c, -1i)), firstLeadingBit(4294967295u), u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1736f, -1022f), vec3<f32>(-315f, 1893f, 2283f), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(771f, 1531f, -294f) - vec3<f32>(1000f, -293f, -1994f))))), true);
    let var_2 = ~vec3<i32>(~9856i, ~u_input.c, u_input.b.x);
    let var_3 = Struct_2(~(~vec2<u32>(0u, ~var_1.a.x)), !(!select(!vec2<bool>(true, var_1.d), !var_1.b, vec2<bool>(var_1.b.x, var_1.d))), var_1.c, func_2().a.x);
    let var_4 = true;
    let var_5 = var_3;
    let var_6 = Struct_1(func_2().a, _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_2.x >> (18088u % 32u), func_2().b.x, u_input.c, 1i)), -u_input.b), 43966u, _wgslsmith_sub_u32(var_3.a.x, 39432u));
    var var_7 = var_3;
    let var_8 = abs(vec4<i32>(u_input.c, abs(-u_input.b.x) & ~(-1i), firstLeadingBit(firstLeadingBit(_wgslsmith_div_i32(var_2.x, 2147483647i))), abs(7455i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(var_3.c.zz, vec2<f32>(var_1.c.x, 698f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f - -1725f)), 1544f)), ~(~u_input.a), _wgslsmith_add_u32(_wgslsmith_div_u32(38890u, abs(var_3.a.x)), 14577u), max(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_6.c, var_7.a.x), firstLeadingBit(vec2<u32>(var_7.a.x, var_6.d))), var_3.a), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.yy, var_3.a, var_5.a) << (~var_5.a % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a.x, 4294967295u), vec2<u32>(var_6.c, 0u), var_7.a), (vec2<u32>(4294967295u, 0u) ^ var_7.a) >> (abs(var_5.a) % vec2<u32>(32u)))));
}

