struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = ~abs(vec2<i32>(~arg_0.a, arg_0.b.a));
    let var_1 = var_0 >> (~vec2<u32>(reverseBits(~u_input.a), 1u) % vec2<u32>(32u));
    let var_2 = -38457i;
    let var_3 = Struct_2(var_1.x, select(select(vec3<bool>(!arg_1.x, arg_0.c || arg_0.b.b.x, arg_0.b.c & arg_2), arg_0.b.b, vec3<bool>(arg_2, arg_2, arg_2)), !vec3<bool>(698f > arg_3, arg_0.d.x || true, true), any(select(vec4<bool>(false, false, arg_2, arg_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, arg_1.x), arg_2), vec4<bool>(arg_1.x, arg_1.x, arg_0.c, false)))), arg_2 && false);
    var var_4 = Struct_5(0i, Struct_2(-5971i, arg_0.b.b, true), arg_0.d.x == false, var_3.b);
    return var_4.b.a;
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(firstLeadingBit(-(20425i ^ func_3(Struct_5(0i, Struct_2(1182i, vec3<bool>(false, false, true), true), false, vec3<bool>(true, true, true)), vec2<bool>(false, false), false, -288f))), vec3<bool>(-u_input.e < u_input.e, false, false), _wgslsmith_mult_u32(min(22390u, ~u_input.b), u_input.d) >= 20387u);
    let var_1 = Struct_3(vec3<u32>(~_wgslsmith_add_u32(4294967295u, ~u_input.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(45761u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.b, u_input.b) << (vec3<u32>(u_input.d, 53618u, 9848u) % vec3<u32>(32u))), u_input.d), ~u_input.b), Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(0u, 15583u, u_input.d, u_input.d)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15267u, 67761u, u_input.a), vec4<u32>(u_input.b, u_input.c, 1u, u_input.d)), vec4<u32>(u_input.b, 11987u, u_input.b, u_input.b))), ~vec2<u32>(_wgslsmith_clamp_u32(26326u, 59132u, u_input.d), u_input.a), var_0.c), _wgslsmith_mod_vec4_u32(vec4<u32>(~22161u, 1u, ~14353u, 0u) & _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 22560u, 4294967295u), vec4<u32>(u_input.a, 0u, 44964u, u_input.d)), ~vec4<u32>(4069u, u_input.b, u_input.d, 4294967295u)), abs(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b, 0u, 0u), vec4<u32>(51667u, u_input.d, u_input.c, 4294967295u))))), 75143u);
    let var_2 = Struct_5(~(var_0.a << (24192u % 32u)), Struct_2(-29983i, vec3<bool>(true, true, false), true), any(!vec4<bool>(var_0.a < u_input.e, true, false, !var_0.b.x)), var_0.b);
    var_0 = Struct_2(~u_input.e, var_0.b, var_2.d.x);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1978f, _wgslsmith_f_op_f32(-450f + 1157f), true)) - _wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1775f, -2129f), _wgslsmith_f_op_f32(f32(-1f) * -1532f), -555f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -764f, -2106f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, -3201f, -347f))), all(!vec4<bool>(true, var_2.c, var_0.b.x, true))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_5 {
    let var_0 = u_input.a & _wgslsmith_clamp_u32(~u_input.b, 0u, 6111u);
    let var_1 = ~(~(~max(4294967295u, ~0u)));
    var var_2 = vec2<i32>(u_input.e, u_input.e);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_2());
    var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 47665i), vec2<i32>(-1i, var_2.x), vec2<i32>(0i, -16360i))), ~vec2<i32>(-11718i, -1i) ^ -vec2<i32>(var_2.x, 0i)) ^ var_2.x, ~_wgslsmith_clamp_i32(var_2.x, -20311i << (1u % 32u), abs(var_2.x)));
    return Struct_5(_wgslsmith_clamp_i32(abs(~(u_input.e & -47375i)), var_2.x, 16775i), Struct_2(u_input.e, arg_0, all(select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))), true, arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-1i) * -vec2<i32>(-1i, arg_1)), _wgslsmith_clamp_vec2_i32(vec2<i32>(39317i, arg_1) >> (vec2<u32>(24312u, u_input.d) % vec2<u32>(32u)), ~(-vec2<i32>(arg_2.a, arg_2.a)), max(vec2<i32>(40013i, 39467i), select(vec2<i32>(-1i, u_input.e), vec2<i32>(2147483647i, arg_1), arg_2.d.xy)))), abs(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, arg_1), vec2<i32>(u_input.e, arg_2.a)) | (vec2<i32>(arg_2.a, arg_1) >> (vec2<u32>(40670u, u_input.b) % vec2<u32>(32u))))));
    var var_1 = Struct_3(~(vec3<u32>(u_input.b, u_input.d, 27425u) & ~vec3<u32>(u_input.c, 4294967295u, 25044u)) ^ vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.d | 4294967295u, ~33604u), _wgslsmith_sub_u32(~21045u, u_input.c)), Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, 5224u, 75071u), vec4<u32>(u_input.d, 1u, u_input.d, 1u)), min(vec4<u32>(u_input.b, u_input.b, 4746u, 0u), vec4<u32>(u_input.b, 1u, u_input.d, u_input.d)), _wgslsmith_div_vec4_u32(vec4<u32>(52437u, 66008u, u_input.c, 4294967295u), vec4<u32>(u_input.d, u_input.a, 56394u, 0u))) | vec4<u32>(u_input.c, 1u, ~1u, _wgslsmith_add_u32(0u, u_input.b)), vec2<u32>(~35182u, 4294967295u) << (~vec2<u32>(u_input.a, 23464u) % vec2<u32>(32u)), !arg_2.d.x), ~firstLeadingBit(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.c, u_input.c, 0u)), abs(vec4<u32>(4294967295u, u_input.b, 67715u, 0u)))), select(56773u, u_input.c, all(arg_2.b.b.zx)));
    var_0 = vec2<i32>(_wgslsmith_mod_i32(arg_2.a, var_0.x), 2147483647i & var_0.x);
    let var_2 = Struct_2(0i, func_1(func_1(arg_2.b.b).b.b).d, arg_2.b.c);
    var var_3 = Struct_5(func_1(vec3<bool>(all(select(vec4<bool>(arg_2.c, false, true, false), vec4<bool>(arg_2.d.x, true, var_1.b.c, false), arg_2.b.c)), !(true & var_2.c), any(arg_2.b.b.yx))).b.a, arg_2.b, any(select(arg_2.b.b, func_1(!arg_2.b.b).d, select(arg_2.b.b, var_2.b, arg_2.b.b.x))), !vec3<bool>(any(vec4<bool>(false, false, arg_2.b.b.x, false)) | all(vec3<bool>(true, true, var_1.b.c)), all(arg_2.d.xy), all(vec4<bool>(var_2.b.x, var_1.b.c, false, true)) == all(arg_2.d.zx)));
    return Struct_3(vec3<u32>(~_wgslsmith_add_u32(var_1.a.x, _wgslsmith_div_u32(1u, 46710u)), max(95360u, var_1.a.x), _wgslsmith_dot_vec3_u32(~(~var_1.a), reverseBits(vec3<u32>(u_input.c, 4294967295u, 1299u)))), var_1.b, vec4<u32>(var_1.c.x, 68554u, 1u, 7919u), _wgslsmith_dot_vec4_u32(reverseBits(var_1.c), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 1u, 0u, var_1.a.x), var_1.b.a << (var_1.b.a % vec4<u32>(32u)), max(vec4<u32>(u_input.d, 9111u, var_1.c.x, var_1.c.x), var_1.b.a))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> u32 {
    var var_0 = (countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, arg_0.c.x, u_input.d), arg_0.c)) & vec4<u32>(max(4294967295u, _wgslsmith_mult_u32(57782u, u_input.b)), 89428u, ~firstTrailingBit(4294967295u), ~u_input.a)) & arg_0.c;
    let var_1 = Struct_4(!(!select(!vec3<bool>(arg_0.b.c, false, false), vec3<bool>(arg_0.b.c, arg_0.b.c, true), arg_0.b.c)));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(-732f, -1271f, arg_1.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -1033f, -462f), vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), 18550i, Struct_5(reverseBits(15715i) >> (_wgslsmith_add_u32(u_input.c, 95548u) % 32u), func_1(vec3<bool>(any(vec4<bool>(true, true, false, false)), select(true, var_1.a.x, false), false)).b, func_1(vec3<bool>(arg_0.b.c, all(vec4<bool>(true, arg_0.b.c, var_1.a.x, arg_0.b.c)), false)).d.x, vec3<bool>(true, !var_1.a.x, false)));
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(exp2(arg_1)), ~u_input.e, func_1(vec3<bool>(any(select(vec2<bool>(true, var_2.b.c), var_1.a.xy, var_1.a.xx)), var_1.a.x, !arg_0.b.c))).b;
    var var_4 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))), vec3<f32>(163f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1691f - arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.x))))))), _wgslsmith_add_i32(u_input.e, u_input.e), Struct_5(countOneBits(_wgslsmith_mod_i32(8637i, _wgslsmith_mult_i32(u_input.e, -12693i))), Struct_2(u_input.e, vec3<bool>(var_1.a.x, any(vec3<bool>(false, arg_0.b.c, false)), arg_1.x == 496f), u_input.b <= (var_0.x | var_0.x)), !any(!vec2<bool>(true, var_3.c)), !(!var_1.a)));
    return reverseBits(u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~select(~_wgslsmith_mult_vec3_u32(vec3<u32>(34970u, 0u, 47137u), vec3<u32>(59541u, u_input.c, 7078u)), countOneBits(~vec3<u32>(u_input.b, u_input.b, u_input.d)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), -1i, func_1(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(751f, -176f, 746f), vec3<f32>(696f, -390f, 1173f), vec3<bool>(true, false, false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, 1905f, -1025f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(select(var_0.xx, vec2<u32>(0u, var_0.x), vec2<bool>(true, false)), var_0.xx) & _wgslsmith_add_u32(var_0.x, u_input.b & 46630u), ~func_4(vec3<f32>(-1556f, -1000f, 324f), 12874i, Struct_5(16934i, Struct_2(-21467i, vec3<bool>(false, false, false), false), true, vec3<bool>(true, false, false))).a.x, u_input.c << (_wgslsmith_clamp_u32(u_input.b, 11268u, ~0u) % 32u), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(971f, 723f, false)) - -812f), -1471f, _wgslsmith_mod_i32(~select(15358i, 2147483647i, true), ~u_input.e) << (u_input.c % 32u));
}

