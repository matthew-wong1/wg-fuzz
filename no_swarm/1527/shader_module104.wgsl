struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_1(vec2<u32>(arg_3.d, max(arg_3.d, ~0u) & 1u), vec2<bool>(!select(-708f >= arg_3.b.a.x, true, false), !(_wgslsmith_f_op_f32(-arg_3.b.a.x) <= _wgslsmith_div_f32(1000f, arg_3.b.a.x))), vec4<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.d, arg_3.d), vec2<u32>(arg_3.d, arg_3.d)), _wgslsmith_sub_u32(arg_3.d, 4294967295u), false), ~arg_3.d, firstTrailingBit(arg_3.d), 0u) ^ min(vec4<u32>(82764u, ~arg_3.d, 56923u, 141848u), firstTrailingBit(~vec4<u32>(arg_3.d, arg_3.d, 0u, arg_3.d))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.d, ~arg_3.d) << (abs(~vec2<u32>(0u, arg_3.d)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.d, ~arg_3.d), ~vec2<u32>(20125u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(arg_3.b.a, vec4<f32>(arg_3.b.a.x, -591f, 773f, 254f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.a.x, -1930f, arg_1.x, arg_3.b.a.x)))))));
    var_0 = Struct_1(var_0.c.zy, !vec2<bool>(-410f == _wgslsmith_f_op_f32(-2430f + arg_0.x), var_0.b.x), var_0.c, select(firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(arg_3.d, 3410u, 1u), ~13478u)), countOneBits(var_0.a), var_0.b), var_0.e);
    let var_1 = arg_3;
    var_0 = Struct_1(max(firstTrailingBit(var_0.d), vec2<u32>(min(var_1.d, var_0.d.x), _wgslsmith_sub_u32(arg_3.d, var_1.d)) & vec2<u32>(min(var_0.d.x, arg_3.d), 1u)), vec2<bool>(!var_0.b.x || var_0.b.x, all(!select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(true, false, true), true))), var_0.c, firstTrailingBit(var_0.c.yx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, -369f, arg_0.x))))));
    let var_2 = vec3<i32>(1i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, -2147483647i, 2147483647i, arg_2), vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, -1i)), var_1.a), _wgslsmith_add_i32(-arg_2, ~(-1i))), 4046i);
    return 0u;
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<f32> {
    let var_0 = ~vec3<i32>(~45016i, u_input.c.x, u_input.c.x) >> (~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 1639u), func_3(vec3<f32>(-409f, -1065f, arg_1), vec3<f32>(-1902f, arg_1, -403f), u_input.a.x, Struct_3(u_input.c, Struct_2(vec4<f32>(arg_1, 1000f, -1121f, 618f)), -74145i, 4294967295u))), 0u, ~_wgslsmith_add_u32(14382u, 24559u)) % vec3<u32>(32u));
    return vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-464f - -940f), _wgslsmith_f_op_f32(arg_1 - -209f))), _wgslsmith_f_op_f32(-arg_1))) * arg_1), arg_1);
}

fn func_1() -> u32 {
    var var_0 = Struct_3(-vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(31308i, u_input.b), 14845i), 1i, _wgslsmith_clamp_i32(-1i, 4557i, ~u_input.c.x), u_input.c.x), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(true, _wgslsmith_div_f32(1145f, 735f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1033f, 884f, -213f)))))), 20254i, 4294967295u);
    var var_1 = var_0.a.ywy;
    var_1 = select(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(-2147483647i, var_1.x)) ^ firstLeadingBit(var_0.a.wx), ~u_input.c.yw), -1i >> (1u % 32u)), vec3<i32>(21733i ^ ~_wgslsmith_dot_vec4_i32(var_0.a, u_input.c), firstLeadingBit(select(26583i, _wgslsmith_sub_i32(var_1.x, -6186i), any(vec2<bool>(false, true)))), abs(u_input.a.x)), !vec3<bool>(true, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var_1 = firstTrailingBit(u_input.c.wyw);
    var_1 = ~(-var_0.a.yxx) & vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_0.a, var_0.a), _wgslsmith_mult_i32(~(-2147483647i), firstTrailingBit(u_input.a.x))), 0i, var_1.x << (var_0.d % 32u));
    return ~select(~(~(var_0.d & var_0.d)), _wgslsmith_add_u32(~2375u, _wgslsmith_sub_u32(1u, var_0.d)), !(!all(vec4<bool>(false, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() ^ ~(~_wgslsmith_mod_u32(abs(0u), min(4294967295u, 1u)));
    let var_1 = vec4<u32>(1u, abs(1u), min(firstTrailingBit(~1u), _wgslsmith_mult_u32(~(~4294967295u), ~4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(45716u, _wgslsmith_clamp_u32(~64325u, 60221u, abs(90435u)), ~func_1(), 87024u), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(33592u, 0u, 0u, 0u))), 36113u, ~1u)));
    let var_2 = _wgslsmith_dot_vec2_u32(~(~var_1.xw), var_1.ww) | ~var_1.x;
    var var_3 = vec3<u32>(4294967295u, _wgslsmith_mod_u32(abs(var_1.x), _wgslsmith_mult_u32(~1u, var_1.x)), 0u);
    var var_4 = any(vec4<bool>(true, true, select(true, true, any(vec2<bool>(false, true))) || true, all(vec3<bool>(true, true, true))));
    var_0 = var_3.x;
    let var_5 = vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 41375i), 26467i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)) * _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1f)))))), _wgslsmith_div_vec4_u32(vec4<u32>(~var_3.x, firstLeadingBit(var_1.x), var_1.x, min(var_3.x, var_3.x)), firstLeadingBit(var_1)) >> (var_1 % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(193f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-866f, 3187f))), -266f, _wgslsmith_f_op_f32(round(-1071f))))), vec2<i32>(-2147483647i, ~2147483647i) & -_wgslsmith_clamp_vec2_i32(var_5.xx | u_input.c.xy, u_input.c.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_5.x, 2147483647i), u_input.a, var_5.yy)));
}

