struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(59764u, 4294967295u, 42219u), vec3<u32>(10850u, 3043u, 4294967295u), vec3<u32>(61966u, 1u, 3967u), vec3<u32>(1u, 3318u, 43877u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 42518u, 4539u), vec3<u32>(0u, 20000u, 50036u), vec3<u32>(35810u, 77612u, 1u), vec3<u32>(28986u, 14313u, 0u), vec3<u32>(0u, 14230u, 62474u), vec3<u32>(22428u, 0u, 4294967295u), vec3<u32>(2246u, 0u, 56884u));

var<private> global1: f32;

var<private> global2: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.zxz << (global0[_wgslsmith_index_u32(4294967295u, 12u)] % vec3<u32>(32u)), ~u_input.a.xwy), -vec3<i32>(u_input.a.x, -70303i, -1i)), abs(min(countOneBits(vec3<i32>(34127i, 0i, 1i)), vec3<i32>(1i, arg_1.x, u_input.a.x) ^ arg_1.xxy))), ~countOneBits(select(firstTrailingBit(vec2<u32>(arg_0, arg_0)), ~vec2<u32>(0u, arg_0), vec2<bool>(true, true))), ((vec2<u32>(arg_0, arg_0) << ((vec2<u32>(42287u, arg_0) | vec2<u32>(375u, arg_0)) % vec2<u32>(32u))) ^ ~(vec2<u32>(10818u, 0u) ^ vec2<u32>(arg_0, arg_0))) & ((~vec2<u32>(5460u, arg_0) & ~vec2<u32>(arg_0, 55780u)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(49939u, arg_0), ~vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-932f, 1692f, 380f, -855f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -100f, 404f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-618f, -145f, -1000f, -374f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(307f, -1000f, 856f, -893f))))))));
    let var_1 = !(!(!(!all(vec4<bool>(false, false, false, true)))));
    var var_2 = var_0.d.x;
    let var_3 = vec2<bool>(var_1, var_1);
    global2 = min(~(i32(-1i) * -61533i) >> ((~var_0.c.x << (~arg_0 % 32u)) % 32u), _wgslsmith_sub_i32(u_input.a.x, 1i));
    return ~min(~(~(~18195u)), select(firstLeadingBit(1u), arg_0, true));
}

fn func_2() -> vec3<bool> {
    var var_0 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(-u_input.a.zyy, countOneBits(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(80012u, 1u), func_3(4294967295u, u_input.a)), 0u)), (vec2<u32>(~18248u, ~0u) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), countOneBits(vec2<u32>(0u, 65902u))) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(min(0u, 4294967295u), 11899u), vec2<u32>(abs(55454u), ~4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-154f)), _wgslsmith_f_op_f32(round(-2040f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(202f, -1532f, true))), -1836f)));
    return !(!select(vec3<bool>(all(vec4<bool>(false, false, true, false)), var_1.a.x >= u_input.a.x, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true));
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1623f, -1171f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f + 2928f)) + _wgslsmith_f_op_f32(-1299f + _wgslsmith_f_op_f32(ceil(787f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1380f, -660f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1903f))))))));
    global0 = array<vec3<u32>, 12>();
    global0 = array<vec3<u32>, 12>();
    let var_0 = any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), func_2()), vec3<bool>(true, true, true)));
    global2 = -67564i;
    return Struct_1(u_input.a.yxx << (vec3<u32>(0u, 1u, _wgslsmith_add_u32(~46027u, firstTrailingBit(45402u))) % vec3<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~30683u, ~11714u), select(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(0u, 14613u)), !var_0)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(28007u, 37169u), ~0u, ~4294967295u), countOneBits(23998u))), ~vec2<u32>(max(1u, countOneBits(36035u)), 6635u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-343f, 1248f, 1755f, -244f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-739f, -939f, 826f, 792f), vec4<f32>(-1003f, 308f, -1099f, 532f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(558f, -1851f, -631f, -1223f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 414f, 1129f, 526f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, -993f, 409f, 679f) * vec4<f32>(1644f, -353f, -1474f, -288f)), _wgslsmith_div_vec4_f32(vec4<f32>(-616f, -515f, -279f, 1647f), vec4<f32>(1000f, -134f, -444f, 418f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 790f, -343f, 842f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -1043f, -290f, 330f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(-var_0.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - -1390f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))));
    global0 = array<vec3<u32>, 12>();
    global2 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)) + _wgslsmith_f_op_f32(-167f + -693f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-663f)), -943f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1348f, _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)) * -637f)), ~(-41762i), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(~var_0.a.x, var_1.a.x), -1i), var_0.a.x << (var_0.b.x % 32u)));
}

