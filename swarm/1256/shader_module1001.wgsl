struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = ~(~min(~(vec4<u32>(arg_0.x, 10962u, arg_0.x, arg_0.x) | vec4<u32>(arg_0.x, 0u, arg_0.x, 70413u)), firstLeadingBit(~vec4<u32>(106124u, arg_0.x, 3099u, arg_0.x))));
    let var_1 = arg_0.x;
    let var_2 = Struct_1(-select(vec4<i32>(reverseBits(0i), firstLeadingBit(u_input.a.x), u_input.a.x, -39071i), -min(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(53643i, u_input.a.x, 0i, 1i)), true));
    let var_3 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.a.x >= -var_2.a.x)));
    var var_4 = Struct_1(vec4<i32>(countOneBits(countOneBits(~var_2.a.x)), ~(-1i), _wgslsmith_mult_i32(i32(-1i) * -777i, 1i), _wgslsmith_dot_vec2_i32(countOneBits(select(vec2<i32>(0i, u_input.a.x), u_input.a.xx, var_3)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(var_2.a.yy), vec2<i32>(u_input.a.x, var_2.a.x), u_input.a.xz << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))))));
    return _wgslsmith_clamp_i32(-(~(-49359i)), -(i32(-1i) * -var_2.a.x), -49584i);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> vec4<i32> {
    var var_0 = ~(arg_2 | ~max(~arg_2, _wgslsmith_add_u32(1u, arg_2)));
    var_0 = max(arg_2, ~(~arg_2));
    let var_1 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x != _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, -2147483647i), u_input.a), true, true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_dot_vec2_u32(~(~(~firstTrailingBit(vec2<u32>(arg_2, 7219u)))), ~vec2<u32>(arg_2, arg_2));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1881f))))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-928f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - -1708f))))));
    return abs((select(vec4<i32>(49442i, 0i, u_input.a.x, -22423i), vec4<i32>(-18605i, 2147483647i, -1i, arg_1), vec4<bool>(var_1, var_1, false, var_1)) & vec4<i32>(-2147483647i, arg_0.x, arg_0.x & -28164i, u_input.a.x & u_input.a.x)) & (vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, arg_0.x), vec4<i32>(-22554i, 0i, -1i, 2147483647i))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(func_4(vec3<i32>(-1i << (1u % 32u), abs(u_input.a.x), u_input.a.x >> (80257u % 32u)), select(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), func_3(vec3<u32>(1u, 1031u, 4294967295u)), any(vec3<bool>(false, true, true))), 1u), ~(~(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 68482i) | vec4<i32>(u_input.a.x, 36187i, u_input.a.x, 34141i))), vec4<i32>(u_input.a.x | _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(func_3(vec3<u32>(1u, 33059u, 0u)), -u_input.a.x), u_input.a.x, max(func_3(vec3<u32>(4294967295u, 0u, 11318u)), -u_input.a.x))));
    var var_1 = Struct_1(var_0.a);
    let var_2 = Struct_1(var_0.a);
    var_0 = var_2;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(429f, 1349f) + vec2<f32>(-792f, 1470f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -595f) + _wgslsmith_div_f32(2119f, -173f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-591f, -316f) + 511f)))));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = func_2();
    var var_3 = ~(~select(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, arg_2, 1u, 38895u), vec4<u32>(arg_2, arg_2, 11227u, 0u), vec4<u32>(4294967295u, arg_2, 0u, 4294967295u))), select(vec4<u32>(21548u, arg_2, arg_2, arg_2) << (vec4<u32>(arg_2, 0u, arg_2, arg_2) % vec4<u32>(32u)), abs(vec4<u32>(arg_2, 35478u, arg_2, arg_2)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_4 = vec3<i32>(~(~15131i), -52304i, arg_1.a.x);
    return ~23758u << (_wgslsmith_dot_vec2_u32(~(var_3.xx >> (var_3.yw % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, arg_2), vec3<u32>(arg_2, var_3.x, arg_2)), abs(0u)), ~vec2<u32>(var_3.x, ~7571u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1719f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(108f)) - _wgslsmith_f_op_f32(f32(-1f) * -611f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -249f))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(764f))))) + 411f), -299f);
    let var_1 = select(firstTrailingBit(u_input.a.x), max(~abs(~1i), 25445i), true);
    let var_2 = Struct_1(-vec4<i32>(-2147483647i, var_1, firstLeadingBit(-35650i), _wgslsmith_sub_i32(u_input.a.x, 1i)));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(3174u, 13356u, 4294967295u, 31692u))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1291u, 48013u, 0u), vec4<u32>(4294967295u, 22282u, 4294967295u, 0u), vec4<u32>(52722u, 129648u, 1278u, 4294967295u)) | vec4<u32>(7256u, 0u, 58594u, 52277u))), (func_1(var_2, Struct_1(vec4<i32>(-1i, -29235i, var_2.a.x, u_input.a.x)), 1u) & abs(19049u)) | (firstLeadingBit(reverseBits(1u)) >> (reverseBits(firstTrailingBit(59408u)) % 32u)), 1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(93138u, 0u, 2146u), vec3<u32>(4294967295u, 1u, 36543u)), vec3<u32>(1u, 1u, 1u))) << (~max(~42938u, ~106923u) % 32u));
    var_3 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(55144u, 4294967295u), 36529u, abs(29293u)), _wgslsmith_add_vec3_u32(var_3.xww, ~var_3.zzx)), var_3.x & var_3.x, _wgslsmith_dot_vec2_u32(~var_3.xx, var_3.xz), abs(~_wgslsmith_clamp_u32(var_3.x, var_3.x, 0u)));
    var var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3.x, var_3.x, var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 4294967295u, 103932u), vec3<u32>(var_3.x, var_3.x, 46879u))), reverseBits(min(firstTrailingBit(vec4<u32>(var_3.x, 18125u, var_3.x, 1u)), ~vec4<u32>(var_3.x, var_3.x, 1u, var_3.x)))), (~firstLeadingBit(vec4<u32>(36874u, 69263u, var_3.x, var_3.x)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 25340u, var_3.x, var_3.x), vec4<u32>(26124u, 0u, 0u, 34518u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_3.x), var_3.x, ~58873u, 29284u), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_3.x, var_3.x, 4294967295u, 4294967295u)), ~vec4<u32>(0u, 0u, 41156u, var_3.x), ~vec4<u32>(var_3.x, 58920u, var_3.x, var_3.x))));
    let var_5 = vec4<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-351f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-521f + var_0.x), _wgslsmith_div_f32(673f, -335f)))))), -405f, var_0.x);
    var_3 = vec4<u32>(reverseBits(~(~(~var_3.x))), var_3.x, var_4.x, 4294967295u & _wgslsmith_mult_u32(~firstTrailingBit(var_3.x), 56135u >> (0u % 32u)));
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(277f, var_0.x, false)))) - var_0.xz), -22629i, ~_wgslsmith_add_i32(var_1 << (38273u % 32u), -var_2.a.x) << (56599u % 32u), var_1, ~vec4<u32>(var_4.x, ~4294967295u, var_3.x, ~64555u) >> (vec4<u32>(min(abs(var_4.x), 699u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_4.wwy, vec3<u32>(var_4.x, 1u, var_3.x)), vec3<u32>(77334u, var_3.x, var_4.x)), var_4.x, func_1(func_2(), func_2(), 44501u ^ var_4.x)) % vec4<u32>(32u)));
}

