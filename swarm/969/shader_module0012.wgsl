struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = vec3<i32>(i32(-1i) * -(~reverseBits(-2147483647i)), 2147483647i, reverseBits(abs(-_wgslsmith_mod_i32(-36732i, 24771i))));
    let var_1 = reverseBits(~(~(vec4<u32>(arg_1.a.x, u_input.a, 0u, u_input.a) & (vec4<u32>(11189u, u_input.a, u_input.a, 8436u) >> (vec4<u32>(66316u, 1u, 1u, 37272u) % vec4<u32>(32u))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), 801f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.b)), select(arg_1.d.x, true, arg_1.d.x)))) - _wgslsmith_div_vec2_f32(arg_0.xy, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_1.b))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -130f), arg_1.b)));
    let var_3 = Struct_2(1u, true, arg_1);
    var var_4 = var_3.c.d.x;
    return var_1;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    return abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 38882u, 12769u, 1u)), ~func_3(vec4<f32>(-788f, 539f, arg_3.c.b, 230f), arg_0.c), firstLeadingBit(select(vec4<u32>(1u, arg_2.c.c, 51315u, arg_2.a), vec4<u32>(0u, 55339u, 26553u, arg_3.c.c), vec4<bool>(true, arg_0.c.d.x, true, false)))), ~(~vec4<u32>(0u, arg_2.c.c, arg_2.c.a.x, arg_0.c.a.x) >> (vec4<u32>(3094u, 68641u, 28373u, arg_3.c.c) % vec4<u32>(32u)))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, 4294967295u > _wgslsmith_clamp_u32(42154u, arg_2, _wgslsmith_div_u32(4294967295u, arg_2) ^ max(arg_2, 7478u)), ((func_2(Struct_2(arg_2, false, Struct_1(vec3<u32>(arg_2, 22871u, u_input.a), 460f, u_input.a, vec2<bool>(false, true))), arg_1.x, Struct_2(arg_2, false, Struct_1(vec3<u32>(19170u, arg_2, 23808u), arg_3.x, arg_2, vec2<bool>(true, false))), Struct_2(arg_2, false, Struct_1(vec3<u32>(u_input.a, arg_2, 0u), arg_3.x, 0u, vec2<bool>(true, false)))) >> (~u_input.a % 32u)) | _wgslsmith_mult_u32(0u, func_2(Struct_2(23584u, false, Struct_1(vec3<u32>(u_input.a, 63947u, arg_2), arg_3.x, 1u, vec2<bool>(true, true))), 326f, Struct_2(22231u, false, Struct_1(vec3<u32>(7356u, u_input.a, arg_2), arg_0, 28420u, vec2<bool>(true, true))), Struct_2(1u, false, Struct_1(vec3<u32>(56393u, 10872u, u_input.a), arg_3.x, 34185u, vec2<bool>(true, false)))))) < ~(~arg_2), true);
    let var_1 = Struct_1(vec3<u32>(59879u, u_input.a, 32606u), 2227f, arg_2, select(select(vec2<bool>(var_0.x, true), var_0.ww, true), vec2<bool>(true, -1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -2147483647i), vec3<i32>(-1i, 2412i, 2147483647i))), select(!select(var_0.yx, var_0.xz, var_0.wz), vec2<bool>(true, !var_0.x), vec2<bool>(var_0.x, true))));
    let var_2 = select(~vec3<i32>(0i, -34891i, _wgslsmith_add_i32(reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -39457i, 1i, -2147483647i), vec4<i32>(-7930i, -1i, 0i, 1986i)))), vec3<i32>(1i, countOneBits(~_wgslsmith_mod_i32(-4696i, 58217i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-39837i << (0u % 32u), 33971i), ~2147483647i & firstTrailingBit(-49143i))), select(vec3<bool>(true & all(vec4<bool>(false, var_1.d.x, false, true)), false, var_0.x), vec3<bool>(all(vec2<bool>(true, var_1.d.x)), !var_1.d.x, any(select(var_0, vec4<bool>(true, true, true, true), var_0))), !select(var_0.wyz, select(var_0.wyy, var_0.wxw, true), vec3<bool>(true, var_1.d.x, var_0.x))));
    let var_3 = abs(-vec2<i32>(_wgslsmith_clamp_i32(~var_2.x, 2147483647i >> (u_input.a % 32u), var_2.x), 2147483647i));
    var var_4 = Struct_2(~_wgslsmith_sub_u32(37575u, abs(50846u) | ~var_1.c), var_1.d.x, Struct_1(func_3(vec4<f32>(-1000f, -734f, -489f, -955f), var_1).wxz << (var_1.a % vec3<u32>(32u)), arg_1.x, _wgslsmith_clamp_u32(~(1u >> (u_input.a % 32u)), ~(27144u ^ var_1.c), arg_2), vec2<bool>(true, true)));
    return var_4.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<u32>(abs(74067u << (select(arg_1.a.x, select(41849u, arg_2, true), any(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x))) % 32u)), 4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a, func_1(arg_0.b, vec2<f32>(-525f, 191f), u_input.a, vec2<f32>(arg_0.b, arg_3.b)).c), 41130u), ~(func_2(Struct_2(arg_3.c, true, arg_3), arg_0.b, Struct_2(0u, true, Struct_1(vec3<u32>(24195u, arg_2, u_input.a), -291f, arg_2, arg_3.d)), Struct_2(51959u, arg_1.d.x, Struct_1(vec3<u32>(u_input.a, u_input.a, arg_3.a.x), -1569f, u_input.a, vec2<bool>(false, arg_0.d.x)))) & 11338u));
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    var var_0 = false;
    let var_1 = u_input.a;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(~(-2147483647i), ~(-5132i)), firstTrailingBit(vec2<i32>(1i, 1i)), var_2.c.d), vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(-1i, -7545i))), select(select(vec2<i32>(~13505i, -2147483647i), vec2<i32>(1i, ~0i), true), vec2<i32>(2147483647i, 1i), !arg_0.d));
    let var_4 = var_3.x;
    return all(select(select(select(vec4<bool>(arg_1.b, false, arg_0.d.x, true), !vec4<bool>(false, false, arg_1.b, var_2.b), arg_0.d.x), !(!vec4<bool>(arg_1.b, arg_0.d.x, false, arg_0.d.x)), !(arg_0.d.x & false)), vec4<bool>(true, false, all(select(vec2<bool>(true, arg_0.d.x), vec2<bool>(false, arg_0.d.x), arg_0.d)), all(vec4<bool>(true, true, true, true))), !arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(Struct_1(vec3<u32>(23519u, 42774u, u_input.a) >> ((vec3<u32>(50660u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_4(func_1(-328f, vec2<f32>(2651f, -453f), 37357u, vec2<f32>(1984f, 260f)), Struct_1(vec3<u32>(10990u, u_input.a, 1u), 1241f, u_input.a, vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 76684u, 0u, 83683u), vec4<u32>(18810u, u_input.a, u_input.a, 1390u)), Struct_1(vec3<u32>(134866u, u_input.a, 0u), -905f, u_input.a, vec2<bool>(false, false))), func_1(615f, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1224f, -594f), vec2<f32>(-1194f, 1496f))), u_input.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(284f, 254f), vec2<f32>(1767f, -1358f), vec2<bool>(false, true)))).d), Struct_2(u_input.a, func_1(_wgslsmith_f_op_f32(-1604f + 442f), vec2<f32>(354f, -166f), 1u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1304f, -1017f)))).d.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -2420f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, 194f)), ~23787u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1965f, 142f), vec2<f32>(401f, 629f), true)))), abs(~vec2<u32>(0u, u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 2196f)) * _wgslsmith_f_op_f32(-294f + _wgslsmith_f_op_f32(f32(-1f) * -923f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1743f - 1115f))))), _wgslsmith_f_op_f32(-380f + -908f)));
    var_1 = _wgslsmith_f_op_f32(-1f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-838f))) - -448f)));
    let var_2 = func_1(762f, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(806f, -864f))), -1716f), 51301u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_1(1000f, vec2<f32>(-685f, 591f), u_input.a, vec2<f32>(164f, -1239f)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f * -315f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2526f, -1447f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1145f, -1142f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, -2075f))))));
    let var_3 = -vec3<i32>(_wgslsmith_mod_i32(~(-2147483647i), -2147483647i), select(abs(-1i), 1i, !var_0), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(22912i, -1i, 1i, 0i), vec4<i32>(2147483647i, -2147483647i, 8686i, -15179i)))) & _wgslsmith_sub_vec3_i32(~vec3<i32>(firstLeadingBit(-24995i), reverseBits(-1i), ~(-2147483647i)), ~vec3<i32>(1i, 1i, 1i));
    var var_4 = false != (_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(var_2.a.x | 1u, 0u)) != u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a)));
}

