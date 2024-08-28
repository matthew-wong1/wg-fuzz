struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2154f));
    var var_1 = ~(-1i);
    var var_2 = ~(-abs(~vec3<i32>(-9881i, 35758i, -2147483647i)));
    var_1 = var_2.x;
    return Struct_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x ^ ~var_2.x, var_2.x), vec2<i32>(~20223i, _wgslsmith_dot_vec2_i32(var_2.yy, vec2<i32>(2147483647i, 33286i))), ~var_2.zz), vec4<i32>(var_2.x, ~1i, 0i, -reverseBits(reverseBits(-4820i))), var_0.a, true & arg_0.x);
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = func_1(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), 1527f <= arg_0), countOneBits(vec2<u32>(abs(u_input.b) >> (57286u % 32u), 7346u)));
    var_0 = func_1(select(vec4<bool>(all(select(vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(true, true, false, var_0.d), true)), false, all(vec3<bool>(var_0.d, var_0.d, var_0.d)), _wgslsmith_clamp_u32(43769u, u_input.b, u_input.b) <= _wgslsmith_clamp_u32(u_input.a, 106592u, u_input.a)), select(select(select(vec4<bool>(false, var_0.d, false, var_0.d), vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(true, false, var_0.d, true)), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), false), vec4<bool>(true, var_0.d, var_0.d, any(vec3<bool>(false, var_0.d, var_0.d))), select(!vec4<bool>(false, false, var_0.d, var_0.d), !vec4<bool>(false, var_0.d, true, var_0.d), var_0.d)), true), countOneBits(vec2<u32>(~u_input.a, ~u_input.a)) | _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(5277u, u_input.b), vec2<u32>(1u, 1u)), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~30324u, u_input.b)));
    var_0 = Struct_4(vec2<i32>(-1i | _wgslsmith_mod_i32(firstLeadingBit(var_0.a.x), min(-10146i, -77428i)), ~_wgslsmith_mult_i32(-2147483647i, 0i)), vec4<i32>(-var_0.a.x, 2147483647i, ~var_0.a.x, var_0.a.x << (~42325u % 32u)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(arg_0 - 1000f)), !any(vec4<bool>(true, func_1(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), vec2<u32>(37974u, 12451u)).d, var_0.a.x != -50973i, true)));
    var var_1 = Struct_1(543f);
    var_1 = Struct_1(_wgslsmith_div_f32(-1363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(vec4<bool>(true, var_0.d, true, var_0.d), vec2<u32>(4294967295u, 74962u)).c), 850f)));
    return abs(vec4<i32>(var_0.a.x, var_0.a.x, _wgslsmith_clamp_i32(-22231i, 2147483647i, _wgslsmith_sub_i32(var_0.b.x, -2147483647i)), _wgslsmith_sub_i32(var_0.b.x, var_0.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> vec2<u32> {
    var var_0 = true;
    let var_1 = any(select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true), any(vec3<bool>(true, true, true)) || true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), 1i == arg_0.x), vec4<bool>(all(vec2<bool>(true, true)), false, true, true), vec4<bool>(func_1(vec4<bool>(true, true, false, false), vec2<u32>(1u, u_input.b)).d, all(vec2<bool>(false, false)), true, u_input.a < 34487u))));
    var_0 = ((var_1 && true) | var_1) && select(!var_1, false, var_1 && any(!vec2<bool>(var_1, false)));
    let var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1));
    return vec2<u32>(95664u, var_2);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = arg_1.d;
    let var_1 = Struct_2(vec3<bool>(true, true, true), arg_3.xx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1009f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))), !(!(!vec2<bool>(var_0, true))));
    var var_2 = ~arg_1.b.wx;
    var var_3 = select(var_1.a, var_1.a, arg_1.d);
    let var_4 = all(!vec2<bool>(var_1.d.x, var_0));
    return ~func_4(_wgslsmith_add_vec4_i32(func_3(-1000f) | vec4<i32>(1i, var_2.x, arg_1.a.x, -1i), countOneBits(arg_1.b)), _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(506f - -555f) - -516f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - -601f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.b, ~u_input.b))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 44856u), vec2<u32>(u_input.b, 1u))), func_2(min(u_input.a, u_input.a), func_1(vec4<bool>(false, true, false, false), vec2<u32>(u_input.a, u_input.a)), Struct_1(377f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1066f, -905f, 147f) * vec3<f32>(1056f, 1963f, -413f)))), ~firstLeadingBit(~vec2<u32>(4294967295u, 53000u))), abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.b), vec2<u32>(u_input.a, 1u) >> (vec2<u32>(34809u, u_input.b) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-601f, 1019f), _wgslsmith_f_op_f32(sign(126f)), -190f, 378f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1259f, -184f, 1161f, 192f)))))))));
    let var_2 = Struct_3(~4294967295u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), -1152f)))), reverseBits(max(-48146i, -2147483647i)), func_1(vec4<bool>(true, true, true, true), abs(~vec2<u32>(u_input.a, 0u))).d || (-563f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - var_1.x))), Struct_1(_wgslsmith_f_op_f32(-906f * 594f)));
    var_0 = ~vec2<u32>(1u, 873u);
    var_0 = firstTrailingBit(~(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 922u), vec2<u32>(u_input.a, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, var_0.x)))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2075f - 575f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.a) * var_1.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.a) + var_2.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-3748i, var_2.b.a, _wgslsmith_f_op_f32(-2298f + var_3.a), vec3<u32>(1u, reverseBits(4294967295u), 5320u));
}

