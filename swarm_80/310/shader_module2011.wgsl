struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_1(arg_1.x, 9155u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(892f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(955f + 624f))))), _wgslsmith_mod_u32(select(1u, ~u_input.d, true || all(vec3<bool>(true, false, arg_0.x))), u_input.d), _wgslsmith_f_op_f32(abs(787f)));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1745f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-425f, _wgslsmith_f_op_f32(-793f + var_0.e), !arg_0.x)) + var_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, 800f))), 385f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.e, var_0.c, false)), -452f))), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.a, 59348i, -2147483647i), arg_1.wzx), u_input.b), ~abs(abs(1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(-1000f))) + 233f), 30213u, _wgslsmith_f_op_f32(var_0.e + var_0.e)), var_0, Struct_1(-var_0.a, ~var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(trunc(140f))))), abs(abs(~var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), select(!vec3<bool>(false, true, arg_0.x), vec3<bool>(false, all(!vec3<bool>(false, arg_0.x, arg_0.x)), true), !(!select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true)))));
    let var_2 = var_1.b;
    var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(trunc(var_2.e)), 2453f), var_1.b, var_1.d, var_0, vec3<bool>(true, true, countOneBits(u_input.d) >= _wgslsmith_sub_u32(~var_2.d, 15142u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(var_1.a)), var_1.b, Struct_1(var_2.a, ~countOneBits(abs(u_input.d)), _wgslsmith_f_op_f32(sign(-1109f)), 8638u, _wgslsmith_f_op_f32(trunc(467f))), var_0, select(vec3<bool>(true, false, false), select(select(select(var_1.e, var_1.e, var_1.e), !vec3<bool>(arg_0.x, arg_0.x, var_1.e.x), var_1.e), vec3<bool>(var_1.d.a < var_1.b.a, true, all(vec3<bool>(var_1.e.x, true, false))), var_1.e), !(var_1.d.a != (-30807i | var_2.a))));
    return _wgslsmith_f_op_f32(f32(-1f) * -330f);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-112f)), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(floor(-740f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(abs(-890f))), _wgslsmith_f_op_f32(floor(410f)), _wgslsmith_div_f32(-189f, -757f) > _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<i32>(1i, u_input.a.x, -2484i, u_input.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-971f))))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), 646f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1063f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<i32>(u_input.b.x, 2147483647i, -2906i, u_input.a.x))))))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(~(-2147483647i), u_input.b.x), 71963u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2334f, var_0.x) - _wgslsmith_f_op_f32(-var_0.x))))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(955f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 474f)))));
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(678f, -196f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(210f, 210f))), 197f, true)), -413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * var_2.c)), Struct_1(-1i, 47563u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(var_2.b, u_input.c.x, u_input.c.x), u_input.c)), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -741f)), Struct_1(52384i, 25303u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - 1696f)))), firstTrailingBit(u_input.c.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)), Struct_1(i32(-1i) * -2147483647i, select(~var_2.d, var_2.d, true), -473f, _wgslsmith_div_u32(var_2.d, 0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f))))), vec3<bool>(all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), countOneBits(u_input.c.x) != _wgslsmith_mult_u32(0u, ~u_input.c.x), !all(vec2<bool>(true, true))));
    return Struct_1(firstTrailingBit(-2147483647i), ~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xx), ~25650u) << ((~var_3.d.d >> (var_2.b % 32u)) % 32u)), var_3.a.x, ~1u, 588f);
}

fn func_1() -> i32 {
    let var_0 = -(~(-_wgslsmith_div_vec4_i32(vec4<i32>(38735i, 2147483647i, u_input.b.x, -2886i), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, -3121i)) << (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 16547u, 4294967295u), vec4<u32>(u_input.d, u_input.c.x, 4174u, u_input.d), vec4<u32>(113514u, 4294967295u, u_input.d, 0u))) % vec4<u32>(32u))));
    var var_1 = func_2();
    var_1 = Struct_1(~(-var_1.a << (32921u % 32u)), _wgslsmith_add_u32(reverseBits(~firstTrailingBit(3490u)), abs(4294967295u >> (~var_1.b % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), ~4495u, _wgslsmith_f_op_f32(-var_1.e));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(true, true));
    var var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.a.x, 0i, u_input.b.x)), reverseBits(u_input.a), !var_0), select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), u_input.a, vec3<bool>(false, false, false)) << (u_input.c % vec3<u32>(32u))), _wgslsmith_sub_i32(-abs(u_input.b.x), func_1())), countOneBits(u_input.c.x), -870f, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(22847u, 18289u, u_input.d, 4294967295u))), select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, 76549u, 9329u), vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x)), vec4<u32>(u_input.d, u_input.c.x, 1u, 4294967295u), !vec4<bool>(var_0, true, var_0, var_0)), ~(~vec4<u32>(71055u, 4294967295u, 0u, 46043u)), var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1008f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, -484f, var_1.e))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.e + 497f), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-1185f * var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f))))));
    var var_3 = vec2<i32>(~18777i, i32(-1i) * -38422i);
    var_3 = vec2<i32>(-1i) * -(~(~min(vec2<i32>(-46532i, var_1.a), u_input.a.xz)));
    let var_4 = _wgslsmith_mod_u32(1u, ~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-443f))))), firstTrailingBit(firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 58517u, var_4, 24633u)))) ^ (vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zz), ~var_1.d, var_1.d) | select(vec4<u32>(37958u, 73598u, u_input.c.x, 0u), ~vec4<u32>(var_1.d, var_4, 3144u, 33840u), vec4<bool>(var_0, var_0, true, var_0))));
}

