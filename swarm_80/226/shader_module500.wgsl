struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<bool>(all(vec4<bool>(true, u_input.e > -15905i, true, false)), false, false | select(select(1u, u_input.b.x, false) == 1u, true, all(vec2<bool>(false, true))));
    var var_1 = Struct_1(u_input.a ^ 49970u, _wgslsmith_f_op_f32(abs(-1438f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-760f, 1000f, -664f, -1001f), vec4<f32>(1013f, -858f, 1132f, 197f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, -1668f, -1000f, 1740f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-692f, 246f, 189f, 537f))))), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, false, true, false)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, all(var_0.zx), false)))));
    let var_2 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(922f)))))), var_1.b, vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-193f * 205f), 653f));
    var var_3 = max(u_input.e, 1i);
    var var_4 = vec4<i32>(-58874i, ~0i, 0i, i32(-1i) * -23423i);
    return _wgslsmith_add_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, 1u, 50896u, 0u), u_input.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var_0 = arg_2;
    var_0 = arg_1;
    var var_1 = arg_2;
    let var_2 = Struct_1(54104u << (reverseBits(firstTrailingBit(min(u_input.b.x, u_input.a))) % 32u), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.d.x)), -267f) * arg_2.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.d))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(var_0.b * 310f))));
}

fn func_2(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_1(22286u, -1274f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_3(), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.c, u_input.a)), arg_0.x, arg_0.x, _wgslsmith_f_op_vec4_f32(arg_0 - arg_0)), Struct_1(firstLeadingBit(4294967295u), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 521f, arg_0.x, 212f)))), Struct_1(_wgslsmith_div_u32(4294967295u, 4294967295u), 295f, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)), arg_0))))), arg_0);
    var var_1 = Struct_1(~_wgslsmith_sub_u32(var_0.a, min(~u_input.c, 10033u)), var_0.d.x, arg_0.x, var_0.d);
    let var_2 = ~(~(~func_3().x));
    let var_3 = _wgslsmith_dot_vec4_i32(select(-(_wgslsmith_sub_vec4_i32(vec4<i32>(5070i, -66988i, u_input.e, 0i), vec4<i32>(u_input.e, u_input.e, -21719i, 1i)) << (_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_1.a, 69161u, 481u, var_0.a)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.e, -53437i, u_input.e, 1i), vec4<i32>(u_input.d.x, 2147483647i, -1i, -8395i)) >> (vec4<u32>(u_input.a, 0u, u_input.c, var_2) % vec4<u32>(32u)), select(!any(vec3<bool>(true, true, true)), false && (arg_0.x > 545f), select(var_1.b <= var_0.b, true, false))), abs(firstTrailingBit(vec4<i32>(u_input.e, 1i, u_input.e, -u_input.e))));
    let var_4 = Struct_1(34173u, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, _wgslsmith_f_op_f32(f32(-1f) * -965f), 250f, arg_0.x)));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - arg_0.x)), -573f, var_0.c, var_1.d.x) * var_4.d), _wgslsmith_f_op_vec4_f32(max(arg_0, var_0.d)), !(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, 0u, arg_2, u_input.a) << (vec4<u32>(58663u, u_input.a, u_input.b.x, arg_2) % vec4<u32>(32u)), ~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1281f, -881f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)) * _wgslsmith_f_op_f32(select(-578f, _wgslsmith_f_op_f32(-172f - -1567f), true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1248f + -1000f), 965f, 676f, _wgslsmith_f_op_f32(-1000f + -608f)) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -436f, 601f, -515f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, 831f, 689f, 392f)))))), true)));
    let var_1 = -2404f;
    let var_2 = -131f;
    var_0 = Struct_1(_wgslsmith_sub_u32(u_input.a, 4294967295u), 684f, -1640f, vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_1, var_2, var_1));
    var var_3 = -u_input.d.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2518f, _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(-1542f + _wgslsmith_f_op_f32(var_2 * -1711f))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = var_0.x && (arg_0.x < _wgslsmith_f_op_f32(sign(arg_0.x)));
    var_1 = all(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(true, false, var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, true))), vec3<bool>(false, _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zy) < 47320u, var_0.x), ((u_input.e > 30523i) && (-8594i == u_input.d.x)) & var_0.x));
    let var_2 = ~firstLeadingBit(u_input.b.wz);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~60878u, ~(0u << (u_input.a % 32u)), 1u), ~abs(u_input.b)), -1900f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-u_input.e, vec4<i32>(u_input.d.x, 26928i, u_input.d.x, -926i), firstLeadingBit(37890u), vec2<i32>(u_input.e, u_input.e) & vec2<i32>(0i, u_input.d.x)))), arg_0.x), arg_0);
    return var_3;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = min(u_input.a, ~arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) + -1702f));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-402f - arg_0.b), _wgslsmith_f_op_f32(-var_1), true))), _wgslsmith_f_op_f32(func_4(~_wgslsmith_sub_vec4_u32(vec4<u32>(36282u, var_0, 64002u, u_input.c), u_input.b), func_5(arg_0.d), arg_0, Struct_1(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(func_4(vec4<u32>(0u, 122247u, 0u, u_input.a), arg_0, arg_0, Struct_1(var_0, -710f, var_1, arg_0.d))), _wgslsmith_f_op_f32(-1186f + var_1), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-999f, -229f, -626f, -902f)))))), arg_0.b, -130f))).x;
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), ~arg_0.a, ~1u, ~u_input.b.x)), abs(u_input.b)) & vec4<u32>(arg_0.a, firstLeadingBit(var_0), ~(~1u), func_5(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -1309f, arg_0.c, var_1), arg_0.d)).a);
    var_3 = u_input.b;
    return func_5(_wgslsmith_f_op_vec4_f32(-arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = u_input.d;
    var var_2 = func_6(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(2670f, 1783f), _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(func_1(1i, vec4<i32>(var_1.x, u_input.d.x, var_0, var_0), 18917u, u_input.d.zy)), -1000f))), vec4<i32>(var_0, -3824i, _wgslsmith_add_i32(var_1.x, -70874i), ~(-u_input.d.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a & u_input.a, 0u, u_input.b.x, u_input.c ^ 0u), select(firstLeadingBit(u_input.b), u_input.b, vec4<bool>(true, false, false, true))), u_input.c));
    let var_3 = any(select(vec2<bool>(true, all(vec4<bool>(false, true, true, true))), vec2<bool>(true, false), !all(vec3<bool>(true, true, true))));
    let var_4 = !var_3;
    let var_5 = Struct_1(firstTrailingBit(func_6(Struct_1(var_2.a << (62266u % 32u), -1000f, -1263f, var_2.d), vec4<i32>(~20635i, -var_0, _wgslsmith_clamp_i32(1i, 43529i, u_input.d.x), ~u_input.e), u_input.b.zy).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1260f, 1000f, -542f, -1807f))).b))), -1000f, _wgslsmith_f_op_vec4_f32(step(var_2.d, vec4<f32>(var_2.b, -1181f, _wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-526f - var_2.b), _wgslsmith_f_op_f32(step(-592f, 425f)), var_2.a != u_input.b.x))))));
    var var_6 = func_6(var_5, vec4<i32>(_wgslsmith_div_i32(~var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.yz, vec2<i32>(-44854i, 46943i)), select(vec2<i32>(-19135i, 0i), u_input.d.zx, vec2<bool>(var_3, true)))), -954i, 0i, -(~u_input.d.x)), vec2<u32>(var_2.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(max(0u, var_5.a), u_input.c | var_5.a), _wgslsmith_sub_u32(1u, var_5.a))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 0u, ~(~1u));
}

