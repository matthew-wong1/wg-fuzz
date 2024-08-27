struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> vec3<i32> {
    return vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(~(-2147483647i), 1i), _wgslsmith_mod_i32(arg_0.b.x, arg_0.c.a.b.x));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_add_u32(1u, abs(1u)), firstLeadingBit(vec3<u32>(8885u, select(82187u, _wgslsmith_div_u32(1u, 5732u), true), min(select(12791u, 28152u, true), 20685u << (1u % 32u)))), 50702i << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(51390u, 15985u, 1u)), vec3<u32>(21805u, _wgslsmith_div_u32(0u, 99342u), firstLeadingBit(4294967295u))) % 32u), true);
    var var_1 = vec2<i32>(-(~arg_1.x >> (var_0.a % 32u)), _wgslsmith_add_i32(arg_1.x & -(~var_0.c), arg_1.x));
    var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.c, var_0.c), u_input.a.yx) | ~u_input.a.zz, ~_wgslsmith_clamp_vec2_i32(arg_1.wy, u_input.a.xy, u_input.a.xx)), _wgslsmith_mod_i32(33689i, ~arg_1.x)));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x) | abs(-select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.a.x, var_0.c), vec2<bool>(var_0.d, false))), abs(u_input.a.zz), vec2<i32>(u_input.a.x >> (var_0.a % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.x, u_input.a.x << (35367u % 32u)), var_1.x)));
    let var_3 = ~var_0.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(1373f - -1184f)) - _wgslsmith_f_op_f32(arg_2.x * -1286f))) >= _wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.x)))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = ~1u << (~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(32702u, 1u, 21471u), firstLeadingBit(7886u)), ~9556u) % 32u);
    var var_1 = !vec3<bool>(_wgslsmith_div_u32(var_0, var_0) >= ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-142f))) <= 247f, func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), 983f), abs(-vec4<i32>(arg_0, arg_0, u_input.a.x, -741i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1146f, 2095f, -486f, 146f), vec4<f32>(-856f, 1056f, 561f, 1047f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1671f, -915f, -539f, -1783f) + vec4<f32>(-184f, 1344f, 686f, 1710f)))));
    var_1 = !(!(!(!(!vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var var_2 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_add_u32(~var_0, var_0), var_0), all(select(vec3<bool>(true, var_1.x, true), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), true), any(vec4<bool>(true, false, false, true))), var_1.x)), var_1.x, ~abs(vec4<u32>(var_0, var_0, 4294967295u, 55099u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 1u, var_0, 49753u), vec4<u32>(1u, 55031u, 13027u, 1u)) % vec4<u32>(32u))));
    let var_3 = Struct_3(Struct_2(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 45862i, -1i), -u_input.a.zwx), u_input.a.zyy));
    return select(select(select(!vec3<bool>(false, var_1.x, var_2.c), !vec3<bool>(false, var_2.c, true), !(!vec3<bool>(true, var_1.x, true))), !(!vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(true, func_3(vec2<f32>(-1251f, -624f), max(u_input.a, vec4<i32>(-2977i, u_input.a.x, 5971i, 2147483647i)), vec4<f32>(-722f, -1000f, 280f, 768f)), true)), vec3<bool>(0u <= ~var_2.d.x, var_2.b, func_1(Struct_4(Struct_2(vec3<i32>(-49173i, -4913i, -14208i), vec3<i32>(var_3.a.a.x, var_3.a.b.x, arg_0)), vec4<i32>(arg_1.x, 0i, arg_1.x, -15667i), var_3, arg_1.x, -974f), _wgslsmith_f_op_f32(-2102f - 439f), _wgslsmith_f_op_f32(ceil(376f))).x >= _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.x, arg_0, arg_1.x), arg_1.x >> (41879u % 32u))), !vec3<bool>(_wgslsmith_sub_u32(var_0, var_2.a) != var_2.d.x, false, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 582f;
    let var_1 = func_2(-reverseBits(u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.a.zxw, ~_wgslsmith_mod_vec3_i32(min(u_input.a.zxz, u_input.a.xyx), func_1(Struct_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yzw), vec4<i32>(2147483647i, -1i, 57999i, 2147483647i), Struct_3(Struct_2(u_input.a.zzw, vec3<i32>(12610i, -13001i, u_input.a.x))), u_input.a.x, 642f), 451f, -1506f))));
    var var_2 = 6459i;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(37782u, _wgslsmith_mult_u32(~40443u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u)))), max(1u, 1u)), 68742u);
    let var_4 = ~(~var_3);
    let var_5 = !(!var_1.x);
    var var_6 = Struct_1(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(46220u, 0u), ~vec2<u32>(1u, 1u), select(!var_1.yz, !var_1.zz, var_1.xy)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_3, 82207u)), ~vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(~vec2<u32>(var_3, 0u), vec2<u32>(30297u, var_3)))), _wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, 1u, 1u), vec3<u32>(var_3, 1u, var_4), vec3<u32>(133047u, var_3, var_4)) >> (~vec3<u32>(var_4, var_4, 4294967295u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(0u, var_3, 11463u)), firstTrailingBit(~vec3<u32>(var_4, 4294967295u, var_4)))), u_input.a.x, true);
    let var_7 = vec2<bool>(true, var_5);
    var var_8 = countOneBits(vec4<u32>(min(var_4, 1u) & ~max(14760u, 5238u), _wgslsmith_div_u32(1237u, _wgslsmith_div_u32(28427u, var_6.a) ^ ~var_3), max(var_3, _wgslsmith_div_u32(var_3 | var_6.b.x, _wgslsmith_mod_u32(4294967295u, var_6.b.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_6.b.x, 4294967295u)), var_6.b.zx), ~var_6.b.yy >> (vec2<u32>(var_3, var_3) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(162f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -707f) * -1224f)) * var_0), var_0, -2100f);
}

