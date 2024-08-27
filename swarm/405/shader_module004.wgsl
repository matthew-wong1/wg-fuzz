struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> bool {
    return !any(select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, arg_0.x), arg_0.x), arg_1 < _wgslsmith_f_op_f32(-arg_1)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = max(~select(_wgslsmith_div_i32(-u_input.c, min(u_input.b.x, -1i)), arg_3.c, arg_0.x), firstTrailingBit(~(-38129i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, -8790i), vec2<i32>(2147483647i, max(1i, -5248i))));
    var var_1 = arg_2;
    let var_2 = all(vec3<bool>(!(_wgslsmith_div_f32(arg_2, -359f) == _wgslsmith_f_op_f32(arg_2 - arg_2)), any(vec4<bool>(all(vec4<bool>(false, false, arg_3.b.a.x, true)), true, any(arg_0.zz), arg_3.b.a.x | true)), any(select(arg_0, select(arg_3.b.a, arg_0, arg_0), true))));
    let var_3 = ~u_input.a;
    global0 = 56895i;
    return Struct_1(!vec3<bool>(!any(arg_0.xx), true, any(arg_3.b.b.zxx)), arg_3.b.b);
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_add_i32(-1i, u_input.c) & u_input.c;
    let var_0 = func_3(!vec3<bool>(true, _wgslsmith_f_op_f32(round(1469f)) > -116f, func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_div_f32(-538f, 1000f))), u_input.a.yw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)), Struct_2(u_input.a, Struct_1(vec3<bool>(false, true, u_input.b.x <= u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), u_input.a.x < 17875u)), u_input.b.x, -8822i));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(-1464f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(761f + 544f) * -148f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(155f))))))));
    var var_2 = vec2<f32>(var_1.x, 1072f);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(802f, var_2.x) + vec2<f32>(-2895f, 571f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-196f, var_1.x))))))));
    return !var_0.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.zz;
    global0 = _wgslsmith_mod_i32(u_input.b.x, ~(-select(u_input.c, u_input.c | -39331i, any(arg_2.a))));
    var_0 = u_input.a.wy;
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(max(select(firstTrailingBit(~vec4<u32>(var_0.x, var_0.x, 50779u, 32363u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 53662u, 4294967295u, u_input.a.x), ~vec4<u32>(29346u, 18925u, var_0.x, u_input.a.x)), arg_1.a.x), firstTrailingBit(vec4<u32>(10877u, 22427u, u_input.a.x, u_input.a.x | 13494u))), func_3(!select(select(vec3<bool>(arg_2.b.x, arg_0.x, true), arg_1.b.zzw, arg_1.a), arg_1.a, vec3<bool>(arg_1.b.x, false, true)), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 120951u), firstLeadingBit(vec2<u32>(u_input.a.x, 6606u))) << (~u_input.a.xz % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) - 929f)), Struct_2((vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x) & u_input.a) << (vec4<u32>(37174u, 71100u, 0u, 1u) % vec4<u32>(32u)), Struct_1(vec3<bool>(arg_1.b.x, arg_1.a.x, true), !arg_0), 22257i, (u_input.b.x & u_input.b.x) << (101892u % 32u))), var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-(~1i), select(2147483647i, -15199i, false)), vec2<i32>(var_1, -(var_1 | u_input.b.x))));
    return arg_1;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1074f + _wgslsmith_f_op_f32(599f + -509f))) - 2594f) - 532f);
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = Struct_2(countOneBits(~vec4<u32>(4294967295u, 0u, 4294967295u, arg_2.a.x)) << (reverseBits(select(~vec4<u32>(1u, arg_2.a.x, u_input.a.x, 21612u), u_input.a, !vec4<bool>(true, false, arg_1.b.x, arg_1.b.x))) % vec4<u32>(32u)), arg_2.b, -20419i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, -4047i, -21697i) & vec3<i32>(u_input.b.x, 21113i, u_input.b.x), -u_input.b), reverseBits(reverseBits(arg_0.x))) & (-25979i | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2714i, 19728i, -1i, 37451i), vec4<i32>(-13914i, arg_2.c, arg_2.d, 1i)), vec4<i32>(-1i, u_input.c, arg_0.x, 60359i) << (vec4<u32>(48940u, u_input.a.x, arg_2.a.x, u_input.a.x) % vec4<u32>(32u)))));
    global0 = _wgslsmith_add_i32(~arg_2.c, arg_0.x);
    return Struct_1(!select(func_1().wxy, vec3<bool>(true, var_0 < var_0, arg_1.b.x), func_1().x), func_4(select(vec4<bool>(false, !arg_1.b.x, func_1().x, false), !select(arg_1.b, vec4<bool>(arg_1.a.x, var_2.b.a.x, arg_2.b.b.x, false), arg_2.b.b.x), true), var_2.b, var_2.b).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    let var_0 = abs(vec3<i32>(u_input.b.x, firstTrailingBit(u_input.c), -4946i)) << (vec3<u32>(19685u, _wgslsmith_add_u32(reverseBits(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(1u, 18959u, 23777u))), 4294967295u) % vec3<u32>(32u));
    var var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.a.x, u_input.a.x, 50865u, u_input.a.x)), 53209u, u_input.a.x), vec4<u32>(10970u >> (_wgslsmith_dot_vec3_u32(u_input.a.wxw, u_input.a.wzz) % 32u), _wgslsmith_mod_u32(~u_input.a.x, abs(u_input.a.x)), reverseBits(~u_input.a.x), u_input.a.x));
    let var_2 = func_5(~(firstTrailingBit(-vec2<i32>(u_input.b.x, u_input.b.x)) & (~var_0.xx | reverseBits(u_input.b.xx))), func_4(func_1(), func_3(vec3<bool>(true, true, true), ~vec2<u32>(var_1.x, u_input.a.x), 1f, Struct_2(vec4<u32>(1u, var_1.x, 0u, var_1.x), func_3(vec3<bool>(false, true, false), vec2<u32>(var_1.x, 29980u), 1000f, Struct_2(u_input.a, Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), u_input.b.x, u_input.b.x)), ~0i, u_input.b.x)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true))), Struct_2(select(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u, var_1.x >> (38876u % 32u), 1u), vec4<u32>(~4294967295u, 113706u, reverseBits(var_1.x), 30134u), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), Struct_1(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(true, false, false, true)), u_input.a.x < 4294967295u, func_2(vec2<bool>(false, false), -1106f), all(vec4<bool>(true, false, false, false)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-20639i, 56850i, var_0.x, -u_input.b.x), min(firstTrailingBit(vec4<i32>(u_input.b.x, var_0.x, u_input.c, 5169i)), ~vec4<i32>(u_input.c, var_0.x, -2147483647i, u_input.c))), u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1084f, 381f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-726f)) - _wgslsmith_f_op_f32(f32(-1f) * -475f)))))));
    let var_4 = Struct_2(u_input.a & vec4<u32>(select(max(1u, u_input.a.x), _wgslsmith_sub_u32(1u, u_input.a.x), false), u_input.a.x, u_input.a.x, _wgslsmith_add_u32(~var_1.x, max(u_input.a.x, 0u))), var_2, -var_0.x, _wgslsmith_add_i32(reverseBits(-20441i) & _wgslsmith_sub_i32(-63182i, u_input.b.x), u_input.b.x) ^ 12386i);
    let var_5 = func_4(!var_2.b, Struct_1(!select(!var_4.b.b.xwz, !vec3<bool>(var_4.b.a.x, var_4.b.b.x, false), var_2.b.wyy), func_4(!select(vec4<bool>(true, var_4.b.a.x, true, true), vec4<bool>(true, true, var_4.b.a.x, true), true), var_2, func_4(!vec4<bool>(var_2.a.x, var_2.b.x, var_4.b.b.x, true), func_3(vec3<bool>(var_2.b.x, true, var_4.b.a.x), var_4.a.zz, 1340f, var_4), var_4.b)).b), Struct_1(func_3(vec3<bool>(any(vec2<bool>(true, true)), func_1().x, true), ~vec2<u32>(48812u, 71292u), 380f, var_4).b.zwx, !vec4<bool>(any(var_4.b.a.zy), any(var_2.b.xz), var_4.b.a.x, func_3(vec3<bool>(var_4.b.a.x, false, var_4.b.a.x), vec2<u32>(var_4.a.x, 65403u), 174f, Struct_2(vec4<u32>(4294967295u, u_input.a.x, 30809u, 0u), var_4.b, var_4.c, 2147483647i)).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_0.x, ((var_0.x >> (u_input.a.x % 32u)) & _wgslsmith_mult_i32(var_0.x, var_0.x)) >> ((22056u | firstTrailingBit(var_4.a.x)) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-245f, -1150f, -1000f, 1607f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, -181f, 1408f, -2069f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1097f, 1453f, -609f, -1401f), vec4<f32>(-2102f, 488f, -674f, 1936f))))))), -437f, -(max(_wgslsmith_div_vec3_i32(var_0, vec3<i32>(var_4.c, var_0.x, var_4.d)), select(vec3<i32>(var_0.x, 0i, 0i), vec3<i32>(0i, u_input.c, 2147483647i), vec3<bool>(false, true, var_5.b.x))) | vec3<i32>(reverseBits(2147483647i), 0i, 22378i)), 1u);
}

