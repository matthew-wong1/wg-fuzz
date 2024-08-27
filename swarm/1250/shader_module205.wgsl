struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(~max(~vec3<u32>(u_input.a.x, u_input.a.x, 49567u), vec3<u32>(reverseBits(u_input.a.x), u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-381f, _wgslsmith_f_op_f32(-1406f * -558f), _wgslsmith_div_f32(882f, -2131f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.x, vec4<u32>(u_input.a.x, firstTrailingBit(73061u), _wgslsmith_sub_u32(14836u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), 22144u) & ~(abs(vec4<u32>(u_input.a.x, 54090u, 4294967295u, u_input.a.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 78u, u_input.a.x), vec4<u32>(65005u, 13822u, 71626u, 14286u))));
    var_0 = Struct_1(vec3<u32>(1u, u_input.a.x, 41018u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1000f)), vec3<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), -850f, var_0.b.x), false))), 1f, firstLeadingBit(1u), var_0.e);
    var_0 = Struct_1(var_0.e.zyw, vec3<f32>(-112f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(abs(-739f))) - -3597f)), _wgslsmith_f_op_f32(-var_0.c), 9842u, abs(~(max(vec4<u32>(48387u, var_0.e.x, 1u, var_0.e.x), vec4<u32>(u_input.a.x, 49039u, 15356u, u_input.a.x)) | var_0.e)));
    var_0 = Struct_1(vec3<u32>(~0u, _wgslsmith_mult_u32(var_0.a.x, ~var_0.a.x), ~1u), _wgslsmith_f_op_vec3_f32(round(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1403f * -1563f))), var_0.e.x ^ 0u, vec4<u32>(firstLeadingBit(~45399u), _wgslsmith_sub_u32(54944u, 17533u), min(firstLeadingBit(0u), var_0.d & 6121u), abs(firstLeadingBit(u_input.a.x))) & vec4<u32>(0u, ~(u_input.a.x << (u_input.a.x % 32u)), firstLeadingBit(var_0.a.x >> (0u % 32u)), u_input.a.x));
    let var_1 = Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 829f))), var_0.c, _wgslsmith_f_op_f32(-var_0.b.x)), var_0.c, ~113166u, ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.e, var_0.e, var_0.e), abs(var_0.e))));
    return firstTrailingBit(506u >> (~min(u_input.a.x, countOneBits(var_0.a.x)) % 32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = !(!(any(vec4<bool>(false, false, true, true)) & true));
    var var_1 = u_input.a;
    var_1 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(65324u, ~arg_1.e.x), ~_wgslsmith_sub_u32(45388u, arg_1.a.x)), ~(func_3(var_0) << (~u_input.a.x % 32u)));
    var_1 = ~arg_1.e.zw;
    var var_2 = vec4<bool>(var_0, select(!var_0, any(!(!vec3<bool>(true, true, var_0))), true), var_0, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(12305i, -3911i, 38393i), vec3<i32>(1i, -10719i, -1i), vec3<i32>(-1i, -1i, 1i)) & firstLeadingBit(vec3<i32>(-2147483647i, -34030i, 14218i)), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-24047i, -1i, 1i), vec3<i32>(-2201i, 52670i, -2147483647i)), _wgslsmith_sub_i32(0i, -2147483647i))) < -2147483647i);
    return firstTrailingBit(select(vec2<u32>(abs(_wgslsmith_sub_u32(arg_1.d, u_input.a.x)), var_1.x), firstTrailingBit(countOneBits(vec2<u32>(45302u, var_1.x)) << (_wgslsmith_mod_vec2_u32(arg_1.e.yx, arg_1.a.yz) % vec2<u32>(32u))), select(vec2<bool>(any(vec3<bool>(false, false, true)), !var_2.x), !select(var_2.zy, var_2.xw, var_2.x), select(!var_2.xw, var_2.zy, true))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(max(u_input.a, u_input.a), func_2(vec2<f32>(699f, -402f), Struct_1(vec3<u32>(u_input.a.x, 80051u, u_input.a.x), vec3<f32>(-496f, -1000f, -287f), 654f, u_input.a.x, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x, ~1u) | ~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(1u, 12037u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) - -2125f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(min(1952f, -1392f)))))), _wgslsmith_f_op_f32(-750f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - 250f)))), _wgslsmith_mod_u32(u_input.a.x, 47322u), vec4<u32>(90158u, u_input.a.x, u_input.a.x, max(~u_input.a.x, ~(u_input.a.x >> (0u % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c, -151f), _wgslsmith_f_op_f32(sign(var_0.c)))))) - 1636f);
    let var_2 = Struct_2(var_0.d, var_0, 42967u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.b.b.xy, vec2<f32>(var_2.b.b.x, -238f)) + vec2<f32>(1259f, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.b.b.xx, vec2<f32>(1755f, -270f)) * var_2.b.b.yy), true))));
    var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1289f, var_2.b.c)) * _wgslsmith_f_op_f32(min(1000f, var_1))) + var_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_2.b.b.xx)))), var_2.b.b.yx, vec2<bool>(true, true)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1109f);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-arg_0.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))) * arg_0.x));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), -arg_2);
    var_0 = -962f;
    let var_2 = !(select(!any(vec3<bool>(true, true, true)), false, !any(vec2<bool>(true, false))) & all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec4<bool>(false, true, true, true)))));
    return Struct_1(~(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1, u_input.a.x), vec3<u32>(arg_1, 0u, 4294967295u)) | vec3<u32>(select(arg_1, arg_1, var_2), ~4294967295u, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(199f)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -1000f), 1152f))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(524f)), 678f), vec3<f32>(arg_0.x, 134f, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x), 1288f))), (arg_1 >> (1011u % 32u)) ^ (~(~25301u) ^ arg_1), vec4<u32>(_wgslsmith_div_u32(~37512u, firstTrailingBit(arg_1)), func_2(vec2<f32>(arg_0.x, -543f), Struct_1(vec3<u32>(arg_1, u_input.a.x, arg_1), vec3<f32>(arg_0.x, arg_0.x, -1152f), 942f, arg_1, vec4<u32>(arg_1, 24136u, u_input.a.x, u_input.a.x))).x | 18368u, ~0u, max(4294967295u, arg_1) << (arg_1 % 32u)) ^ ~(abs(vec4<u32>(20583u, arg_1, 1u, arg_1)) << (~vec4<u32>(arg_1, arg_1, arg_1, 54582u) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = ~vec4<u32>(min(~1u, arg_0.e.x), ~_wgslsmith_mult_u32(arg_0.e.x, func_2(arg_0.b.yx, arg_0).x), abs(u_input.a.x), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -1174f, -1036f, arg_0.c)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1108f, arg_0.c, -193f, arg_0.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-273f, 1486f, 519f, -2038f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-848f, -331f, arg_0.b.x, arg_0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(575f, -2169f, arg_0.c, -1317f), vec4<f32>(-1000f, -478f, 100f, -1187f), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, arg_0.c, arg_0.c, arg_0.c), vec4<f32>(-361f, arg_0.c, arg_0.b.x, 381f), true))), all(vec3<bool>(true, false, false)) || false))))));
    var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, arg_0.a.x, _wgslsmith_dot_vec2_u32(~var_0.yw, ~var_0.xz), ~_wgslsmith_dot_vec4_u32(arg_0.e, arg_0.e)), arg_0.e, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e.x, 0u, arg_0.d, arg_0.e.x), vec4<u32>(var_0.x, arg_0.a.x, var_0.x, var_0.x), arg_0.e), ~(~vec4<u32>(1u, arg_0.a.x, u_input.a.x, 4294967295u)))), _wgslsmith_div_vec4_u32(arg_0.e, vec4<u32>(func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(708f, -1000f))), _wgslsmith_dot_vec3_u32(arg_0.e.yzy, arg_0.e.yzy), vec2<i32>(-18829i, -30182i)).d, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.e.x, u_input.a.x), arg_0.e.zww), arg_0.d, 4294967295u), _wgslsmith_div_u32(var_0.x, var_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(13812u, 21977u, u_input.a.x, u_input.a.x), vec4<u32>(1u, var_0.x, 15275u, var_0.x)))), _wgslsmith_mod_i32(-30371i, _wgslsmith_mult_i32(-2147483647i << (arg_0.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(46436i, 1i), vec2<i32>(0i, 27269i)))) <= ~(-(~(-4102i))));
    var var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1550f) + var_1.x) * _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1245f)), arg_0.d, vec2<i32>(_wgslsmith_mod_i32(33463i, i32(-1i) * -1i), -_wgslsmith_mult_i32(-11301i, i32(-1i) * -21509i)));
    var_2 = arg_0;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec2<f32>(_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 26186u) & 4294967295u, _wgslsmith_div_vec2_i32(vec2<i32>(~(-1343i), 23116i), vec2<i32>(-37892i, ~0i))));
    var_0 = ~(~(max(1u, u_input.a.x) & (countOneBits(u_input.a.x) & 11673u)));
    var var_1 = Struct_1(~select(~vec3<u32>(u_input.a.x, 0u, 62092u), ~(vec3<u32>(77380u, 4294967295u, 3570u) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(f32(-1f) * -1657f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1460f), _wgslsmith_f_op_f32(f32(-1f) * -1477f))), 1f))), 0u, ~(~(~vec4<u32>(14555u, 0u, u_input.a.x, 4294967295u))) | _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(50088u, 32931u, 50133u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)), ~(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) ^ vec4<u32>(96738u, u_input.a.x, u_input.a.x, 11987u))));
    var var_2 = true || !any(vec4<bool>(true, true, true, true));
    var var_3 = func_4(vec2<f32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, -1460f)), _wgslsmith_dot_vec3_u32(var_1.a, var_1.a), -(~vec2<i32>(2147483647i, -49715i))).c, var_1.c), var_1.a.x, vec2<i32>(-_wgslsmith_mod_i32(76765i, 1445i), 1i));
    var_3 = func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(min(661f, var_3.c))), _wgslsmith_f_op_f32(abs(943f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(951f)), 913f))), u_input.a.x, (~_wgslsmith_mult_vec2_i32(vec2<i32>(-10434i, -19409i), vec2<i32>(8242i, 0i)) >> (firstTrailingBit(max(var_1.a.zy, vec2<u32>(42369u, 0u))) % vec2<u32>(32u))) | select(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-52932i, 0i), vec2<i32>(-1i, -22596i))), countOneBits(~vec2<i32>(-39540i, -57420i)), false));
    let var_4 = -221f;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i << (((4294967295u << (_wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(var_1.d, 1u, 4815u, var_3.a.x)) % 32u)) >> (var_1.a.x % 32u)) % 32u));
}

