struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = select(arg_1, arg_1, true) ^ arg_1;
    var var_1 = abs(~(~u_input.a));
    let var_2 = Struct_1(var_0.x << (51702u % 32u));
    var_1 = select(u_input.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.x, 0u) & 9387u, _wgslsmith_mult_u32(abs(arg_0.x), ~u_input.a)) << (_wgslsmith_add_u32(reverseBits(~33733u), firstLeadingBit(_wgslsmith_sub_u32(0u, u_input.a))) % 32u), true);
    var var_3 = _wgslsmith_f_op_f32(-arg_2.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = 16311u;
    var var_1 = countOneBits(~arg_2.a) << (~7632u % 32u);
    var var_2 = Struct_1(~(~(-2147483647i) & _wgslsmith_sub_i32(-arg_2.a, ~(-2147483647i))));
    var_2 = arg_2;
    let var_3 = Struct_1(arg_2.a | ((~21960i ^ ~arg_2.a) | min(~1330i, abs(-29369i))));
    return (((-1i & firstTrailingBit(0i)) < arg_2.a) | ((true || (u_input.b < u_input.a)) && false)) & true;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(0i, arg_2, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-12308i, u_input.c)), select(-vec2<i32>(-10517i, 69517i), -vec2<i32>(11294i, u_input.c), select(vec2<bool>(false, true), vec2<bool>(true, false), true)))));
    var var_1 = func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(49396u, 3083u, 82622u, 16198u), vec4<i32>(-26378i, 0i, arg_1.a, arg_2), vec3<f32>(-1191f, 519f, -627f), vec3<f32>(1000f, 442f, 804f))) + _wgslsmith_f_op_f32(abs(-293f))), _wgslsmith_div_f32(1000f, -2136f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(726f, 613f)), -305f), _wgslsmith_f_op_f32(step(-857f, _wgslsmith_f_op_f32(453f - -661f)))))), vec3<i32>(-1i, arg_2, 52454i), var_0);
    var var_2 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(42975u, reverseBits(arg_3))), ~vec2<u32>(~arg_3, u_input.a) ^ (firstLeadingBit(~vec2<u32>(4294967295u, u_input.a)) ^ abs(vec2<u32>(1u, arg_3))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 694f, 1582f, -1274f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-731f, 1007f, -117f, -1193f), vec4<f32>(900f, -474f, -279f, 1000f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(f32(-1f) * -1118f), -654f, _wgslsmith_f_op_f32(-267f * -217f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, 571f, 1181f, 131f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(349f - 146f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(floor(1493f))), _wgslsmith_f_op_f32(-241f - -224f))))));
    var var_4 = 505f;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(select(!select(arg_1.zz, select(arg_1.xx, arg_1.xz, arg_1.x), arg_1.x == true), vec2<bool>(all(arg_1.xx), arg_1.x), arg_1.x && true), vec2<bool>(select(all(arg_1.zxy), true, arg_1.x) && (true & arg_1.x), all(vec3<bool>(!arg_1.x, false, true))), select(vec2<bool>(false, true), select(select(!arg_1.zz, vec2<bool>(true, arg_1.x), arg_1.ww), select(!vec2<bool>(arg_1.x, true), arg_1.yz, arg_1.x), false), false | (!arg_1.x || true)));
    var_0 = vec2<bool>(~1u == _wgslsmith_sub_u32(u_input.a, abs(u_input.b)), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(-977f, 599f, true)), -1970f, -246f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, -1102f, -284f, -906f) + vec4<f32>(-356f, -761f, 427f, -334f))))), ~(-(vec3<i32>(-34968i, u_input.c, 1i) >> (vec3<u32>(4842u, u_input.a, 4294967295u) % vec3<u32>(32u)))), Struct_1(arg_2.a)));
    var var_1 = func_1(_wgslsmith_mod_i32(~arg_0.a, -_wgslsmith_clamp_i32(~1i, func_1(u_input.c, Struct_1(arg_0.a), arg_0.a, u_input.b).a, ~arg_0.a)), func_1(~_wgslsmith_mult_i32(1i, -1i), Struct_1(-36149i & (u_input.c & -3269i)), arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46140u, 4294967295u, 0u) << (vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a, u_input.b, 1u) >> (vec4<u32>(0u, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u))) & ~4294967295u), u_input.c, abs(4294967295u));
    var_0 = select(select(vec2<bool>(u_input.b == ~u_input.b, !arg_1.x | true), select(arg_1.yx, !(!arg_1.xz), true), !vec2<bool>(all(arg_1.ww), func_3(vec4<f32>(-743f, -1955f, -1116f, -1000f), vec3<i32>(arg_2.a, -1i, var_1.a), Struct_1(var_1.a)))), !vec2<bool>(false, all(vec3<bool>(var_0.x, var_0.x, true)) & all(vec2<bool>(false, arg_1.x))), !vec2<bool>(all(vec4<bool>(arg_1.x, false, arg_1.x, false)), var_1.a < reverseBits(-2147483647i)));
    var var_2 = !(!vec3<bool>(true, var_0.x, !all(arg_1.xxy)));
    return Struct_1(firstLeadingBit(arg_2.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(arg_0, select(select(select(select(vec4<bool>(arg_3.x, true, false, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, true, false), arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), all(vec4<bool>(false, false, arg_3.x, arg_3.x))), vec4<bool>(!arg_3.x, !arg_3.x, u_input.b >= u_input.a, true), !vec4<bool>(false, arg_3.x, false, arg_3.x)), vec4<bool>(!func_3(vec4<f32>(arg_2, -720f, arg_2, arg_2), vec3<i32>(arg_0.a, 0i, u_input.c), arg_0), arg_3.x, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1270f, arg_2, arg_2)), vec3<i32>(arg_0.a, 2147483647i, 2147483647i) | vec3<i32>(1i, -1i, arg_0.a), func_1(11041i, arg_1, arg_1.a, 0u)), all(vec4<bool>(arg_3.x, false, arg_3.x, true))), !(!(!vec4<bool>(true, true, arg_3.x, true)))), func_1(func_1(max(u_input.c, min(u_input.c, u_input.c)), arg_1, u_input.c, ~u_input.b).a, arg_1, ~(-u_input.c), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(16693u, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 18961u, 1u), vec3<u32>(u_input.b, 34341u, u_input.a)))));
    let var_1 = arg_3.x;
    let var_2 = false | !arg_3.x;
    var var_3 = func_4(func_1(_wgslsmith_clamp_i32(~arg_0.a, _wgslsmith_add_i32(min(arg_0.a, 70150i), select(arg_0.a, var_0.a, var_2)), -2147483647i), Struct_1(arg_1.a), -select(-u_input.c, -2147483647i, !var_1), 5738u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(var_2, arg_3.x, var_1)), true, select(var_2, arg_3.x, true), var_2), !(!vec4<bool>(var_1, false, true, var_1))), select(vec4<bool>(true, true, !var_2, var_2), select(vec4<bool>(var_2, var_1, true, true), vec4<bool>(arg_3.x, true, false, var_2), !vec4<bool>(var_2, false, var_1, false)), vec4<bool>(var_2, !arg_3.x, true, all(vec3<bool>(false, true, true)))), vec4<bool>(!(!arg_3.x), true, all(select(vec3<bool>(false, var_1, true), vec3<bool>(arg_3.x, var_2, true), vec3<bool>(true, false, true))), true)), func_1(-_wgslsmith_mult_i32(~var_0.a, func_4(Struct_1(-1i), vec4<bool>(var_1, var_1, true, var_1), Struct_1(var_0.a)).a), arg_0, ~u_input.c, 114314u));
    var_0 = arg_0;
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(~select(vec2<u32>(u_input.a, u_input.a ^ u_input.a), vec2<u32>(~0u, 4294967295u), vec2<bool>(true, true)));
    var var_1 = arg_1;
    let var_2 = true;
    var_1 = arg_1;
    var var_3 = 1i;
    return Struct_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~max(vec3<u32>(4294967295u, ~u_input.a, 1u), abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 65097u)))), ~(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.a, u_input.b, 0u))), false);
    var var_1 = Struct_1(-_wgslsmith_mult_i32(1i, u_input.c));
    var var_2 = func_6(-33142i, Struct_1(2147483647i), func_5(func_4(func_1(16515i, Struct_1(u_input.c), -var_1.a, ~var_0.x), vec4<bool>(true, any(vec2<bool>(true, true)), true, true), func_1(-30771i, Struct_1(56947i), u_input.c, ~1u)), Struct_1(~29690i), -401f, select(vec2<bool>(select(true, false, false), true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true))));
    var_2 = Struct_1(2147483647i);
    var var_3 = u_input.b;
    var var_4 = func_5(func_4(func_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), ~(-1456i)), Struct_1(~var_2.a), 7732i, 1u), !vec4<bool>(true, true, true, var_0.x != 4294967295u), Struct_1(_wgslsmith_sub_i32(max(var_1.a, var_1.a), var_2.a ^ u_input.c))), func_1(~(~2147483647i), Struct_1(~(0i ^ var_1.a)), -(~var_1.a), ~_wgslsmith_mult_u32(u_input.a, ~1u)), _wgslsmith_f_op_f32(-1107f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(422f)))))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_5 = Struct_1(func_6(var_4.a, func_1(~(-1i), func_4(func_6(-53648i, Struct_1(0i), Struct_1(var_4.a)), vec4<bool>(true, true, true, true), func_6(-20435i, Struct_1(var_1.a), Struct_1(var_1.a))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c, var_2.a), ~10959i, 1i), u_input.b), func_5(Struct_1(firstLeadingBit(var_2.a)), func_5(Struct_1(var_2.a), Struct_1(u_input.c), _wgslsmith_f_op_f32(471f * -1350f), vec2<bool>(false, false)), -1153f, select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, ~(-2147483647i), _wgslsmith_mult_i32(1i, -2147483647i)), vec4<i32>(-u_input.c, var_2.a, var_5.a, ~var_2.a), vec4<i32>(select(var_2.a, -44154i, false), u_input.c, var_5.a, -1i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-var_4.a, _wgslsmith_mod_i32(u_input.c, -1i), u_input.c, var_5.a), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_5.a, var_4.a, var_4.a), vec4<i32>(var_2.a, -33109i, u_input.c, 0i))));
}

