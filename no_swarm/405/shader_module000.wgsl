struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 29452u, 28105u, 3095u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(106045u, global0.x, global0.x, global0.x))), vec4<u32>(0u, global0.x, ~(~global0.x), global0.x) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global0.x, 50484u, 30415u), vec4<u32>(~1u, 1u, _wgslsmith_sub_u32(8895u, global0.x), global0.x)) % vec4<u32>(32u)));
    let var_0 = Struct_1(6273i);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1281f, 590f, 338f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1749f) * vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(817f, arg_1.x, 782f, arg_1.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1048f, arg_1.x, arg_1.x, 207f), vec4<f32>(-613f, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 597f, arg_1.x, arg_1.x))))))), vec4<f32>(811f, _wgslsmith_div_f32(1233f, _wgslsmith_f_op_f32(min(726f, -2657f))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1560f) * _wgslsmith_div_f32(arg_1.x, arg_1.x)))), !select(!vec4<bool>(arg_0, false, arg_2.x, arg_0), select(select(vec4<bool>(arg_0, arg_2.x, true, arg_0), vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_0, arg_0)), vec4<bool>(arg_0, true, false, false), true), 1555f == arg_1.x)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1248f, var_1.x, arg_1.x, var_1.x) - vec4<f32>(1544f, -111f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-215f, -741f, -1433f, 1418f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1069f, -548f, var_1.x, 1124f))) + vec4<f32>(-849f, var_1.x, arg_1.x, 177f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.x, arg_1.x), -170f, _wgslsmith_f_op_f32(trunc(636f)), var_1.x)))));
    return _wgslsmith_add_vec2_i32(u_input.a.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a, -25310i), _wgslsmith_mult_vec2_i32(u_input.a.zz, _wgslsmith_sub_vec2_i32(select(u_input.a.zw, vec2<i32>(-26759i, -1i), true), u_input.a.yx))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = var_0.b.x;
    var_1 = arg_0.b.x & max(_wgslsmith_div_u32(global0.x, ~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.b, var_0.b), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(23437u, 4294967295u, 6584u, 84094u), vec4<u32>(global0.x, var_0.b.x, 4294967295u, var_0.b.x)), var_0.b)));
    var_0 = Struct_2(Struct_1(-(~abs(2147483647i))), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.x, 0u, 52415u, var_0.b.x), ~arg_0.b), vec4<u32>(4294967295u, ~global0.x, firstTrailingBit(arg_0.b.x), countOneBits(arg_0.b.x)), true), Struct_1(-(firstTrailingBit(var_0.d.a) & (13169i | u_input.a.x))), Struct_1(select(i32(-1i) * -u_input.a.x, ~select(u_input.a.x, u_input.a.x, arg_3), false)), Struct_1(-4066i));
    var var_2 = 47299u;
    return var_0.b.x;
}

fn func_2(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = ~vec4<u32>(~19930u, ~global0.x, func_4(Struct_2(Struct_1(-9573i), select(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1250u, global0.x, 4294967295u), vec4<bool>(false, false, true, false)), Struct_1(2582i), Struct_1(6323i), Struct_1(-1i)), firstLeadingBit(1i), ~func_3(true, vec2<f32>(898f, 115f), arg_0.xy), true), global0.x);
    var var_1 = Struct_2(Struct_1(~abs(0i)), _wgslsmith_mod_vec4_u32(reverseBits(~var_0), ~vec4<u32>(global0.x, var_0.x >> (global0.x % 32u), var_0.x ^ 24939u, 16540u)), Struct_1(firstLeadingBit(1i)), Struct_1(u_input.a.x), Struct_1(firstTrailingBit(u_input.a.x)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(272f, 142f, true))))))), _wgslsmith_f_op_f32(trunc(-364f)));
    var var_3 = Struct_2(Struct_1(var_1.a.a), reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_0, _wgslsmith_sub_vec4_u32(vec4<u32>(36821u, global0.x, 31760u, var_0.x), var_0)), select(~vec4<u32>(var_0.x, 4294967295u, 43320u, 27082u), ~var_0, arg_0.x), ~var_1.b)), Struct_1(i32(-1i) * -(~(-39267i))), var_1.c, var_1.e);
    var var_4 = Struct_2(var_3.c, vec4<u32>(_wgslsmith_clamp_u32(~39981u, ~_wgslsmith_add_u32(var_0.x, var_3.b.x), countOneBits(~var_1.b.x)), ~var_3.b.x, 22075u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(firstLeadingBit(var_0.x), reverseBits(global0.x)), _wgslsmith_mod_u32(var_0.x, firstTrailingBit(var_3.b.x)), select(1u, 1u, true))), var_3.a, var_1.a, var_1.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, var_2.x))))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(253f)), -125f, _wgslsmith_f_op_f32(-1181f * 490f)) - _wgslsmith_f_op_vec3_f32(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))));
    let var_1 = Struct_1(u_input.a.x >> (min(global0.x, 4294967295u) % 32u));
    var var_2 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_add_i32(u_input.a.x, 19815i) >= ~(-28433i)));
    var var_3 = var_1;
    var_3 = var_1;
    return Struct_2(Struct_1(i32(-1i) * -var_1.a), vec4<u32>(1u, global0.x, global0.x, countOneBits(reverseBits(1u))), var_1, var_1, var_1);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = any(!vec2<bool>(arg_2 < _wgslsmith_div_i32(-1i, -2147483647i), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(500f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(823f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1905f, 1050f)) * _wgslsmith_f_op_f32(max(-539f, -1481f))))), _wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(floor(-1587f))), 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1085f + 1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(932f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -474f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(526f)), _wgslsmith_f_op_f32(-1792f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-865f - -2341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1522f - 477f))))));
    var var_2 = select(vec3<u32>(1u, 1u, 4294967295u), arg_0.b.xyz, vec3<bool>(false, false, any(select(select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), vec2<bool>(var_0, true)), var_0))));
    let var_3 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~var_2.x, abs(28118u)), max(~arg_0.b.x, ~4294967295u), 64265u), firstTrailingBit(~arg_0.b.ywx)));
    let var_4 = !vec4<bool>(true, var_0, !(_wgslsmith_div_f32(var_1.x, 925f) > var_1.x), any(!select(vec2<bool>(true, var_0), vec2<bool>(true, true), false)));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_6(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> StorageBuffer {
    var var_0 = vec3<u32>(~_wgslsmith_clamp_u32(57070u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_1.x, 20315u, global0.x), vec4<u32>(global0.x, arg_1.x, 90773u, 6768u)), ~firstLeadingBit(arg_1.x)), _wgslsmith_sub_u32(50306u, ~4294967295u), 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 262f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2870f, _wgslsmith_f_op_f32(-arg_2))), vec2<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(func_1(), Struct_1(u_input.a.x), reverseBits(15192i))), 371f)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f + 304f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 - 130f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 601f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(676f, var_1.x)), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1135f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1064f, 1911f) + vec2<f32>(var_1.x, 2288f))), vec2<f32>(-2867f, _wgslsmith_f_op_f32(step(-1063f, -224f)))), vec2<bool>(select(false, true, true), true))));
    let var_2 = vec2<i32>(-(i32(-1i) * -27955i), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, 288i), _wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, -u_input.a.x)));
    let var_3 = vec2<i32>(-2147483647i, arg_0 >> (global0.x % 32u));
    return StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(~arg_0), -2147483647i), min(var_2.x, firstLeadingBit(0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | -27985i, 19402i)), u_input.a.x), ~vec3<u32>(_wgslsmith_sub_u32(~75791u, ~121843u), 0u, firstTrailingBit(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(func_5(func_1(), func_1().a, u_input.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1139f - -885f), _wgslsmith_div_f32(1876f, 451f)))));
}

