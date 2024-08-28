struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = array<Struct_1, 26>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(34241u, u_input.b, 44161u), vec3<u32>(arg_0.d, 20323u, 41745u)), arg_1.d) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d, 1u, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.b, 1u, 7561u), vec3<u32>(u_input.b, 1u, arg_1.d))) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(93510u, 31713u), vec2<u32>(u_input.b, arg_0.d)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, 12634u), vec2<u32>(arg_0.d, arg_0.d))), u_input.b)), arg_0.d, arg_1.d, arg_0.d << ((countOneBits(select(72074u, arg_1.d, true)) | ~1u) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(arg_1.b.zyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(arg_1.b.wyz)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(490f))), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * -1463f) * -220f)))));
    var var_2 = firstLeadingBit(~(~vec3<u32>(~1u, ~arg_0.d, 4294967295u)));
    var var_3 = 0i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, _wgslsmith_div_f32(-494f, arg_0.b.x), var_1.x, 1493f), vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(819f)), arg_1.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, 122f, var_1.x, var_1.x) * vec4<f32>(439f, 1097f, arg_1.b.x, -949f)))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 26>();
    var var_0 = global0[_wgslsmith_index_u32(~arg_0.d, 26u)];
    global0 = array<Struct_1, 26>();
    var var_1 = 12767u;
    var var_2 = reverseBits(~(~abs(reverseBits(vec2<u32>(u_input.b, 10911u)))));
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(621f)), _wgslsmith_f_op_f32(var_0.a.x - 271f)), -1658f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * arg_0.b.wy)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -386f, 781f, var_0.b.x), vec4<f32>(-1124f, arg_0.b.x, var_0.b.x, 198f), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(39223u, 26u)], Struct_1(vec2<f32>(var_0.b.x, 993f), arg_0.b, vec4<i32>(-1i, var_0.c.x, 2147483647i, -106085i), var_2.x, 2147483647i), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(arg_0.a.x, -1968f), vec4<f32>(-521f, arg_0.a.x, var_0.b.x, arg_0.a.x), vec4<i32>(4995i, arg_0.c.x, 0i, var_0.e), u_input.b, 81153i), Struct_1(arg_0.a, vec4<f32>(arg_0.a.x, -1000f, var_0.a.x, var_0.a.x), vec4<i32>(arg_0.c.x, u_input.a, 11710i, 0i), 1u, u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)))), vec4<i32>(-1i) * -arg_0.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(46270u >> (var_2.x % 32u)), var_2.x), var_0.d), 1i >> (~(~_wgslsmith_div_u32(0u, 7004u)) % 32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_1, 26>();
    var var_0 = true;
    var var_1 = func_2(global0[_wgslsmith_index_u32(1u, 26u)]);
    global0 = array<Struct_1, 26>();
    let var_2 = func_2(func_2(func_2(Struct_1(vec2<f32>(var_1.b.x, -532f), vec4<f32>(1069f, 429f, var_1.b.x, var_1.b.x), vec4<i32>(-1i, var_1.e, 9052i, 0i), var_1.d, var_1.c.x & 1i))));
    return func_2(func_2(func_2(func_2(func_2(global0[_wgslsmith_index_u32(var_1.d, 26u)])))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = ~(~(arg_0.c.x & ~15110i)) << (4294967295u % 32u);
    var_0 = countOneBits(func_1(vec2<u32>(1u, arg_1.x), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, false, false)))).c.x);
    var var_1 = func_1(min((~vec2<u32>(arg_2, u_input.b) >> (abs(arg_1.yz) % vec2<u32>(32u))) & (_wgslsmith_mult_vec2_u32(arg_1.zz, arg_1.xy) << ((arg_1.zz & vec2<u32>(arg_2, arg_1.x)) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(arg_1.zy, vec2<u32>(u_input.b, 21104u))), false);
    var var_2 = arg_0.c.x;
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0.d, arg_0.d, 1u, 1u)), vec4<u32>(25140u, arg_2, 1u, arg_0.d)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_1.d, 4294967295u, 56261u, arg_2), vec4<u32>(arg_2, arg_0.d, u_input.b, arg_0.d)), vec4<u32>(arg_2, 0u, 45754u, arg_1.x), ~vec4<u32>(4294967295u, var_1.d, arg_0.d, 29320u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~74073u, arg_0.d, max(21409u, 1292u)), ~max(vec4<u32>(arg_2, 0u, u_input.b, 37083u), vec4<u32>(arg_2, arg_2, 13168u, 4294967295u)), vec4<u32>(func_2(global0[_wgslsmith_index_u32(var_1.d, 26u)]).d, _wgslsmith_add_u32(u_input.b, 40250u), _wgslsmith_sub_u32(u_input.b, arg_1.x), _wgslsmith_div_u32(var_1.d, u_input.b)))), _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(1u, 1u, arg_1.x, 8108u), vec4<u32>(arg_1.x, 1u, 0u, u_input.b), vec4<bool>(true, true, false, true)), vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(62198u, 4294967295u, var_1.d, u_input.b), vec4<u32>(arg_2, u_input.b, arg_0.d, arg_1.x)), max(arg_2, 1u), _wgslsmith_add_u32(arg_0.d, arg_0.d)) << (reverseBits(~vec4<u32>(arg_1.x, arg_1.x, 11241u, 11288u)) % vec4<u32>(32u))));
    return func_2(Struct_1(_wgslsmith_div_vec2_f32(var_1.b.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.b.wz, vec2<f32>(921f, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(var_1.b.yw * vec2<f32>(var_1.b.x, 430f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 902f, _wgslsmith_div_f32(var_1.b.x, 225f), _wgslsmith_f_op_f32(-arg_0.a.x))), var_1.c, 38374u, var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1317f, 560f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(368f * -1692f), 417f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-739f + 112f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -933f) * _wgslsmith_f_op_f32(-332f + 495f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2362f), vec4<i32>(148i << (u_input.b % 32u), -(~(u_input.a & u_input.a)), ~(-20995i), -u_input.a), 28512u, 5612i);
    var var_1 = func_4(func_1(abs(~(~vec2<u32>(4294967295u, u_input.b))), false), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(38667u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, var_0.d)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(62425u, var_0.d, var_0.d), _wgslsmith_mod_vec3_u32(vec3<u32>(28182u, u_input.b, var_0.d), vec3<u32>(14482u, var_0.d, 29854u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 4294967295u, 84854u), vec3<u32>(var_0.d, u_input.b, 22351u), vec3<u32>(var_0.d, var_0.d, 4294967295u))) % vec3<u32>(32u)), ~vec3<u32>(abs(u_input.b), func_1(vec2<u32>(16239u, u_input.b), true).d, u_input.b), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), var_0.d);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-666f, -853f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.a.x))))) * _wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -132f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b.x))))), vec4<f32>(1592f, -2225f, _wgslsmith_f_op_f32(select(func_4(global0[_wgslsmith_index_u32(u_input.b, 26u)], select(vec3<u32>(u_input.b, var_0.d, 42098u), vec3<u32>(0u, 1u, var_0.d), true), var_0.d).a.x, -229f, !all(vec4<bool>(false, true, false, false)))), var_0.b.x), abs(~select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.e, 20144i, 56411i, var_1.c.x), var_1.c), -vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<bool>(true, true, true, true))), var_1.d, var_0.c.x);
    var var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~firstLeadingBit(1u)), var_0.d), 26u)];
    var var_3 = -_wgslsmith_clamp_vec2_i32(var_2.c.zw, vec2<i32>(var_1.e, 15960i), vec2<i32>(0i, func_2(Struct_1(vec2<f32>(var_2.b.x, var_2.a.x), var_0.b, vec4<i32>(0i, -38561i, 3850i, var_0.e), 20755u, u_input.a)).e));
    var var_4 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), var_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, 116f, 149f) + vec4<f32>(var_2.a.x, -457f, var_2.b.x, var_1.b.x)))), ~(-vec4<i32>(u_input.a, var_0.c.x, var_0.e, var_2.c.x) << ((vec4<u32>(var_2.d, 36618u, 28729u, 0u) & vec4<u32>(var_0.d, 0u, 93017u, 64232u)) % vec4<u32>(32u))), ~_wgslsmith_sub_u32(var_2.d ^ 4294967295u, ~u_input.b), var_0.e));
    let var_5 = func_1(_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(54117u, 20363u)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d, 37697u), vec2<u32>(var_1.d, 4294967295u))) << (~(vec2<u32>(var_4.d, var_4.d) | vec2<u32>(46265u, 0u)) % vec2<u32>(32u))), !(!(!any(vec3<bool>(false, true, false)))));
    var var_6 = var_3.x;
    var_1 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(func_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(8869u, 121264u), vec2<u32>(var_4.d, var_1.d))), ~(-35668i) != var_3.x).d), 460f, countOneBits(1u));
}

