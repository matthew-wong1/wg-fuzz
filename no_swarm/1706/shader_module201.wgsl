struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f))), 1f), _wgslsmith_add_u32(abs(~u_input.a), ~(u_input.a ^ u_input.a)), 968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-555f, 200f), ~4294967295u != u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.d)))), _wgslsmith_f_op_f32(sign(409f)), 1072f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, 370f, 444f, var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, -187f, 1521f, var_0.d) * vec4<f32>(var_0.d, -1195f, var_0.a, var_0.b.x)) * vec4<f32>(305f, -254f, var_0.d, var_0.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-766f, 2165f, var_0.d, 741f) * vec4<f32>(var_0.a, var_0.e, -1749f, -1593f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e, -1000f, var_0.b.x, -590f)))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))) - 1192f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.d, 478f, true)), 695f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f - var_0.d)), var_0.b.x);
    let var_2 = Struct_4(-437f, var_0.b, countOneBits(firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.a)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(13906u, var_0.c, var_0.c), vec3<u32>(var_0.c, 4294967295u, u_input.a)) % 32u)), var_1.x, 560f);
    let var_3 = min(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-u_input.d.x, ~u_input.c.x, -u_input.c.x)), abs(vec3<i32>(u_input.b, u_input.d.x, u_input.b)) ^ vec3<i32>(abs(u_input.d.x), _wgslsmith_add_i32(u_input.d.x, u_input.c.x), _wgslsmith_sub_i32(-2147483647i, -1i))), vec3<i32>(-_wgslsmith_mod_i32(u_input.c.x, u_input.d.x) << (~(var_2.c | u_input.a) % 32u), ~(-(~u_input.c.x)), -_wgslsmith_sub_i32(u_input.c.x, 1i) ^ 1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_1.x));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 1009f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-162f, 304f))))))), ~countOneBits(arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(782f, 1499f, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(349f - 326f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1660f)), 1554f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -1194f)), vec2<f32>(var_0.d, 374f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(880f, var_0.a) + vec2<f32>(var_0.a, var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1744f), var_0.e)), ~4294967295u, 1000f, _wgslsmith_f_op_f32(-385f * _wgslsmith_div_f32(var_0.d, 493f)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1671f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + -712f)))), vec2<f32>(900f, var_1.e), u_input.a, var_1.a, -354f);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(ceil(var_0.a))), -1000f, -1293f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1535f)), _wgslsmith_f_op_f32(step(var_0.a, 1931f)), false))))));
    let var_4 = Struct_3(-513f, vec3<bool>(any(vec4<bool>(true, var_3.x != -1000f, var_2.c >= 4294967295u, all(vec3<bool>(false, true, false)))), any(vec3<bool>(true, true, true)), true), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, var_0.c, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_2.c), vec3<u32>(11468u, 39065u, u_input.a))), abs(firstTrailingBit(var_1.c))), arg_0.x));
    return !var_4.b;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(1i, select(vec2<bool>(any(vec4<bool>(true, false, false, false)) | false, any(func_2(vec4<u32>(1u, u_input.a, 4294967295u, 0u)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(false, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f - -1000f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = -u_input.b;
    var_1 = -select(var_0.a >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 61069u), vec2<u32>(u_input.a, 17728u)) % 32u), u_input.d.x << (1u % 32u), any(!vec3<bool>(var_0.b.x, false, var_0.b.x)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1917f, var_0.c, var_0.c, var_0.c), vec4<f32>(-154f, 395f, 1759f, var_0.c), var_0.b.x))))) + vec4<f32>(var_0.c, _wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(-2017f - var_0.c)), var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2049f, 1710f, var_0.c, -739f) * vec4<f32>(1000f, 855f, 2457f, -308f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, var_0.c, var_0.c, var_0.c)), vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(min(2655f, var_0.c)), _wgslsmith_f_op_f32(-var_0.c), var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) * vec4<f32>(var_0.c, var_0.c, -2211f, var_0.c)))));
    var var_3 = Struct_4(_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -913f), 745f)), _wgslsmith_f_op_vec2_f32(-var_2.yw), firstTrailingBit(1u), var_0.c, _wgslsmith_div_f32(-559f, -1000f));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a & 94850u, u_input.a, firstLeadingBit(1u)), min(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 1u, u_input.a))));
    var_0 = _wgslsmith_div_vec3_u32(max(~_wgslsmith_mult_vec3_u32(max(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(5093u, u_input.a, 78823u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_0.x, u_input.a), vec3<u32>(93495u, 0u, 29901u), vec3<u32>(u_input.a, 0u, u_input.a))), vec3<u32>(_wgslsmith_mod_u32(func_1(), max(0u, 4294967295u)), abs(var_0.x ^ 1u), ~5245u >> (_wgslsmith_sub_u32(u_input.a, var_0.x) % 32u))), ~vec3<u32>(u_input.a, _wgslsmith_mult_u32(1u, 6162u), countOneBits(u_input.a)) & _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(0u, var_0.x, 4294967295u)), ~(~vec3<u32>(u_input.a, var_0.x, 0u))));
    var_0 = firstTrailingBit(~(vec3<u32>(u_input.a, var_0.x, u_input.a) ^ ~vec3<u32>(u_input.a, 4294967295u, u_input.a)) ^ _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(var_0.x, 23273u, u_input.a ^ 1u), ~max(vec3<u32>(u_input.a, u_input.a, 77021u), vec3<u32>(var_0.x, u_input.a, 0u))));
    let var_1 = Struct_2(Struct_1(u_input.c.x, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), func_2(vec4<u32>(var_0.x, 19118u, var_0.x, 34561u)).yy), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(940f)), _wgslsmith_f_op_f32(f32(-1f) * -862f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_0.x, 26912u), vec4<u32>(var_0.x, 4294967295u, 52824u, 0u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), vec4<u32>(var_0.x, 43362u, 73607u, 5755u))) & ~1u, var_1.a.c);
}

