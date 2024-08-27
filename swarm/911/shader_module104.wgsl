struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = reverseBits(20466u);
    var var_1 = max(abs(1u), 40923u);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-460f, 1169f, false)), _wgslsmith_f_op_f32(select(1274f, 1186f, true)))), _wgslsmith_f_op_f32(trunc(183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(323f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(max(-1175f, 172f))), -1250f)));
    var_0 = ~21270u;
    var_0 = ~(arg_0 << (u_input.e.x % 32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)), -1529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 2512f)))))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~(~arg_0.a), reverseBits(arg_0.b), countOneBits(vec3<u32>(_wgslsmith_sub_u32(1u, arg_0.a.x), ~12808u, u_input.e.x)), !(!arg_0.d));
    let var_1 = ~(~_wgslsmith_sub_u32(4294967295u, 4294967295u));
    var_0 = Struct_1(~var_0.a, _wgslsmith_mod_i32(-1i, -33951i), countOneBits(~var_0.c) | (vec3<u32>(var_0.c.x >> (arg_0.c.x % 32u), 35080u, firstLeadingBit(6583u)) & vec3<u32>(~0u, var_0.c.x, 29665u)), var_0.d);
    var var_2 = Struct_1(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11174u, 0u, var_0.c.x, 4294967295u), arg_0.a >> (arg_0.a % vec4<u32>(32u))), ~(~4294967295u), u_input.e.x, 24405u)), var_0.b, vec3<u32>(var_0.c.x, 0u, abs(~_wgslsmith_dot_vec4_u32(var_0.a, var_0.a))), vec2<bool>(-2147483647i > arg_0.b, !any(vec2<bool>(var_0.d.x, arg_0.d.x))));
    let var_3 = u_input.d;
    return var_0.d;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(511f, -1000f, _wgslsmith_f_op_f32(ceil(-183f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(567f, -536f, 746f), vec3<f32>(1431f, 735f, -1375f)) - _wgslsmith_f_op_vec3_f32(func_2(u_input.e.x)))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.e.x, 34136u, u_input.c, 0u))), ~vec4<u32>(u_input.e.x, 13557u, u_input.d, 4294967295u) ^ (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 38180u)) << ((vec4<u32>(77858u, u_input.e.x, 0u, 4294967295u) << (vec4<u32>(10072u, 37685u, 2232u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)))), ~(-(~u_input.b)), u_input.e, func_3(Struct_1(abs(countOneBits(vec4<u32>(8022u, u_input.e.x, u_input.c, u_input.c))), _wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(34185i, u_input.b, u_input.b, 2147483647i), vec4<i32>(-3260i, u_input.b, -49291i, 1i)), i32(-1i) * -2147483647i), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(7156u, u_input.e.x, 57422u), vec3<u32>(0u, 18496u, 0u))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var var_2 = u_input.a.zz;
    let var_3 = var_1.d.x;
    var var_4 = vec2<f32>(256f, var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -349f)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(vec4<u32>(35588u, ~(0u << (1u % 32u)), ~0u, 9448u), -1i, _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.e.x ^ ~u_input.c, arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, arg_1.x), 1u, 0u)), u_input.e), func_3(Struct_1(abs(vec4<u32>(arg_1.x, u_input.c, 92890u, u_input.d)), u_input.b, countOneBits(u_input.e), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1230f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-323f, _wgslsmith_f_op_f32(-1012f - 1000f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(370f + 980f), 1395f)))));
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, abs(var_0.b), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_1.b, 32063i, var_1.b) | vec4<i32>(var_1.b, -176i, u_input.a.x, 2115i), firstLeadingBit(vec4<i32>(var_0.b, 2147483647i, 2147483647i, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_0.b, var_1.b, var_1.b), vec4<i32>(var_1.b, var_1.b, 2147483647i, var_0.b)) ^ vec4<i32>(2147483647i, u_input.b, var_1.b, u_input.b)), 41536i), countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-35235i, -1i, 0i, 2147483647i), -vec4<i32>(2147483647i, 0i, -28263i, var_0.b), vec4<i32>(-9185i, -1i, select(7310i, 1i, false), -u_input.a.x))), vec4<i32>(select(u_input.b, var_0.b, all(select(vec4<bool>(true, true, var_0.d.x, var_0.d.x), vec4<bool>(true, true, true, false), false))), abs(-9745i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, 1i, 2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, var_1.b, 0i, 1i)), 1i, 1i, -var_0.b)), 46288i));
    let var_4 = var_0;
    return !select(!vec4<bool>(all(vec4<bool>(true, true, arg_0, false)), true, true, true), select(select(vec4<bool>(var_0.d.x, true, var_0.d.x, arg_0), select(vec4<bool>(arg_0, var_0.d.x, var_1.d.x, arg_0), vec4<bool>(true, var_1.d.x, var_0.d.x, arg_0), false), var_4.d.x), !vec4<bool>(var_0.d.x, false, arg_0, true), true), !vec4<bool>(true, false && var_4.d.x, var_1.d.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(false, false, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))), !func_4(func_1(), ~vec3<u32>(u_input.d, u_input.e.x, 0u)), select(vec4<bool>(true, true, true, u_input.a.x > -12014i), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_4(true, u_input.e), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), func_4(false, u_input.e), vec4<bool>(true, false, true, true))));
    let var_1 = 2147483647i;
    var_0 = func_4((u_input.c > 23043u) && func_4(!var_0.x, countOneBits(abs(vec3<u32>(21040u, 90437u, u_input.e.x)))).x, min(vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e), u_input.e), 46606u >> (select(41428u, 6241u, true) % 32u), u_input.e.x), select(min(u_input.e, min(u_input.e, vec3<u32>(8515u, 4294967295u, 1u))), vec3<u32>(_wgslsmith_add_u32(u_input.e.x, 27673u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(38288u, u_input.d, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.e.x), vec4<u32>(u_input.d, 0u, 27557u, u_input.e.x))), select(var_0.wwz, select(vec3<bool>(true, var_0.x, false), var_0.zzz, vec3<bool>(true, true, var_0.x)), any(var_0.zx)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(62312u)).x * 645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(346f)) * _wgslsmith_f_op_f32(round(1447f)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(956f - 1500f), -518f) * _wgslsmith_f_op_f32(1f + 1097f))));
    var var_3 = Struct_1(vec4<u32>(1u, u_input.d & ~40838u, u_input.c, u_input.e.x), -_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1, var_1), vec3<i32>(var_1, -1i, var_1))) | ~min(u_input.b, ~1i), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.e.x, ~4294967295u, ~1u), u_input.c, 1u)), var_0.yx);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1156f, -3532f, var_2.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_2.x, var_2.x, 871f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -606f, 1384f, -599f)))));
    var var_4 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -var_3.b, firstTrailingBit(select(var_4.x ^ var_4.x, -33310i, true))), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))), ~max(1u, _wgslsmith_clamp_u32(var_3.a.x, ~4294967295u, 1u)), countOneBits(abs(-firstLeadingBit(var_3.b))));
}

