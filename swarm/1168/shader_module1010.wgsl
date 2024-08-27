struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(158f * 1f), _wgslsmith_f_op_f32(1274f - _wgslsmith_f_op_f32(ceil(-391f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-302f - 568f), _wgslsmith_f_op_f32(ceil(432f))) - -1782f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(959f - 751f)))));
    var var_1 = Struct_1(319f, vec2<bool>(true, true), vec4<i32>(~14590i, -firstTrailingBit(select(1i, 0i, false)), 1i, _wgslsmith_sub_i32(3030i, -(i32(-1i) * -51928i))), select(-vec4<i32>(-23452i, i32(-1i) * -7108i, firstTrailingBit(0i), _wgslsmith_add_i32(-25709i, -1i)), ~(-vec4<i32>(2147483647i, 755i, 11196i, 24945i)), vec4<bool>(true, true, false, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = 115f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(-271f)), var_1.b, -vec4<i32>(_wgslsmith_sub_i32(19317i, var_1.c.x), var_1.c.x, var_1.c.x, -11597i) | var_1.d, -reverseBits(select(-vec4<i32>(var_1.c.x, 0i, var_1.c.x, -19301i), var_1.d ^ var_1.c, !vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var_3 = Struct_1(1787f, vec2<bool>(all(select(!vec3<bool>(var_3.b.x, var_1.b.x, var_1.b.x), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), var_3.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz & vec2<u32>(1u, u_input.a.x)) > min(~u_input.a.x, 99077u)), _wgslsmith_sub_vec4_i32(~var_3.d | abs(-var_3.c), firstTrailingBit(firstLeadingBit(var_3.d) ^ -vec4<i32>(var_1.c.x, var_3.c.x, var_3.d.x, 20269i))), vec4<i32>(_wgslsmith_mult_i32(var_1.c.x, 12022i), var_3.c.x, -20470i, firstLeadingBit(_wgslsmith_add_i32(-var_3.d.x, var_3.d.x))), _wgslsmith_f_op_f32(sign(1527f)));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec4<i32> {
    let var_0 = !vec3<bool>(arg_0 || select(false, all(vec4<bool>(arg_0, false, arg_0, true)), true), arg_0, arg_1.b.x);
    var var_1 = ~(select(1u, abs(1u), -1000f >= arg_1.a) << (u_input.a.x % 32u));
    var_1 = 4294967295u;
    let var_2 = var_0.x;
    var_1 = 0u;
    return vec4<i32>(~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, arg_1.d.x), arg_1.d.zy)), abs(arg_3), -2147483647i, -19662i);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = 0u;
    let var_1 = Struct_1(1359f, arg_0.b, func_4(select(func_3(), false, arg_0.b.x), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(172f, arg_0.a, -2347f, -1019f), vec4<f32>(1492f, arg_0.e, 992f, 2098f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -813f, arg_0.a, -1548f)))), 2147483647i), arg_0.d, -1101f);
    let var_2 = var_0;
    let var_3 = Struct_2(!var_1.b.x | !(all(vec2<bool>(true, true)) & arg_0.b.x));
    var var_4 = select(vec3<bool>(var_1.b.x, arg_0.b.x, all(vec2<bool>(any(vec4<bool>(true, var_3.a, var_3.a, false)), any(vec4<bool>(true, var_1.b.x, false, var_3.a))))), !select(!vec3<bool>(false, var_3.a, var_3.a), !select(vec3<bool>(true, var_3.a, true), vec3<bool>(true, false, arg_0.b.x), false), var_1.b.x), vec3<bool>(true, !any(vec3<bool>(false, arg_0.b.x, false)), any(vec3<bool>(true, true, 0i > arg_0.c.x))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, arg_0.a, -1363f, 1426f) - vec4<f32>(-686f, 1053f, 474f, var_1.a)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-566f, var_1.e, -701f, 350f) * vec4<f32>(arg_0.e, var_1.a, -602f, 989f))))), !vec4<bool>(var_1.b.x && var_3.a, true, u_input.a.x > var_2, var_1.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1030f, 538f, -1598f, var_1.a)))))))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1536f), 154f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1644f, 1720f)), 241f), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_f32(round(1769f)), select(arg_0, vec2<bool>(arg_0.x, arg_0.x), arg_0.x), -vec4<i32>(1i, -38419i, 0i, -23109i), select(vec4<i32>(14273i, -2147483647i, 11765i, 2147483647i), vec4<i32>(-1i, 16409i, -2147483647i, -4601i), vec4<bool>(true, arg_0.x, true, arg_0.x)), _wgslsmith_f_op_f32(round(452f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f))) + _wgslsmith_f_op_f32(-773f * var_0.x)), vec2<bool>(!(!arg_0.x) && true, !arg_0.x), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(35190i, 1i, 29734i, -2768i), reverseBits(vec4<i32>(-1i, -7554i, 75411i, -2147483647i)), vec4<bool>(true, arg_0.x, false, arg_0.x)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(17769i, -15535i, -27921i, 2147483647i), vec4<i32>(-20644i, 1i, 0i, 2147483647i), vec4<i32>(-48202i, 37909i, -59732i, -1764i))), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -18131i, 1i, -4041i), -vec4<i32>(8545i, 19753i, -43723i, -3493i))) & ~select(firstTrailingBit(vec4<i32>(1i, 27876i, 0i, 65704i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-12491i, 2147483647i, 0i, 31140i), vec4<i32>(-30026i, 34186i, 16040i, 1i), vec4<i32>(-4928i, 0i, -12424i, 24919i)), select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true)), vec4<i32>(1i, 1i, 1i, 1i), var_0.x);
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(9942u, u_input.a.x), 1u);
    let var_3 = ~(~(~vec4<u32>(4294967295u, 65762u, 102598u, 6146u)) | vec4<u32>(_wgslsmith_sub_u32(countOneBits(u_input.a.x), 4294967295u), _wgslsmith_mult_u32(0u, 1u), ~u_input.a.x, countOneBits(u_input.a.x)));
    var var_4 = _wgslsmith_mod_i32(min(countOneBits(var_1.c.x), -12917i), countOneBits(var_1.c.x));
    return ~(~vec3<u32>(var_2.x, ~abs(71579u), max(u_input.a.x, 3458u) ^ u_input.a.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1457f, 1000f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1380f, -1221f, -2179f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(351f, -1132f, -193f) + vec3<f32>(1324f, -772f, -646f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(825f, -1314f), -323f, _wgslsmith_f_op_f32(f32(-1f) * -180f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1860f, 382f, 880f))))))));
    var var_1 = firstLeadingBit(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 37290u, 25818u, 4294967295u), u_input.a << (u_input.a % vec4<u32>(32u))) | (u_input.a.x ^ arg_0.x)));
    let var_2 = ~(~(~(~(~20867u))));
    var var_3 = countOneBits(-_wgslsmith_clamp_i32(24919i << (func_1(vec2<bool>(arg_2, arg_2)).x % 32u), _wgslsmith_mod_i32(~2651i, _wgslsmith_clamp_i32(-2147483647i, -24108i, 1i)), _wgslsmith_add_i32(34093i >> (1u % 32u), 31040i)));
    var_1 = _wgslsmith_add_u32(~(~(arg_0.x & ~26458u)), firstTrailingBit(1u));
    return Struct_2(all(vec2<bool>(true, true)) | false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true);
    let var_1 = u_input.a.x;
    let var_2 = !vec4<bool>(true, !var_0.a, true, true);
    let var_3 = !var_2.x;
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_6 = func_5(func_1(var_2.xy), all(var_2), !var_2.x);
    var var_7 = -1970f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(-(i32(-1i) * -52384i)), 0i >> (var_1 % 32u)));
}

