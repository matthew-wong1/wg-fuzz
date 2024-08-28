struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.a.x, ~(~(~arg_0) >> (_wgslsmith_mod_u32(~0u, ~u_input.a.x) % 32u)), ~0u);
    var var_1 = true;
    let var_2 = Struct_1(reverseBits(vec2<i32>(-15426i, reverseBits(2147483647i)) >> (vec2<u32>(var_0.x, 0u ^ arg_0) % vec2<u32>(32u))), 1i);
    var var_3 = arg_1;
    var_3 = arg_1;
    return var_2;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    let var_0 = 2514i;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f - -438f) + 1073f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)), 1343f))), arg_1.e.x));
    var var_2 = u_input.b.x;
    var_2 = ~u_input.b.x;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1284f), -787f)))), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, arg_1.e.x, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1623f, var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.e)))), var_1);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = vec4<bool>(false, all(vec3<bool>(!arg_1.x, -1i <= (arg_0.d.b ^ arg_0.a.a.b), true)), !(~arg_0.c >= firstTrailingBit(min(arg_0.c, arg_0.c))), arg_0.c > u_input.a.x);
    var var_1 = reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(arg_0.c ^ arg_0.c), 66535u), 1u));
    var_0 = select(!(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, true, false, arg_1.x), true)), select(select(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, var_0.x), false), !(!vec4<bool>(false, false, arg_1.x, false)), arg_1.x), select(select(!vec4<bool>(false, true, false, var_0.x), !vec4<bool>(false, true, true, arg_1.x), all(var_0.zwy)), vec4<bool>(var_0.x, false, !var_0.x, select(true, var_0.x, arg_1.x)), arg_1.x), select(!vec4<bool>(var_0.x, true, arg_1.x, arg_1.x), !select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), var_0.x)), !select(!select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(var_0.x, false, true, true), false), select(select(vec4<bool>(var_0.x, true, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), false), vec4<bool>(true, true, true, arg_1.x), vec4<bool>(var_0.x, var_0.x, true, arg_1.x)), true));
    var_1 = u_input.c.x;
    var_1 = _wgslsmith_mod_u32(min(max(~4294967295u, u_input.b.x), arg_0.b.x), ~1u);
    return ~(~vec2<u32>(_wgslsmith_add_u32(~62577u, 39503u), u_input.b.x));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_div_u32(u_input.c.x, 36338u), arg_0);
    var var_1 = Struct_5(Struct_2(func_2(~(~u_input.b.x), Struct_4(arg_0.a, arg_0.d, vec4<f32>(-1830f, -1217f, 499f, 870f), -622f))), Struct_2(Struct_1(vec2<i32>(var_0.a.x, _wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, -57523i)), abs(-2147483647i ^ var_0.b))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~0u, 5907u), ~u_input.c.x | abs(u_input.b.x)), 67665u), arg_0);
    let var_2 = Struct_5(Struct_2(func_2(var_1.c, Struct_4(_wgslsmith_f_op_f32(arg_0.b - -1789f), _wgslsmith_div_f32(-634f, 1000f), _wgslsmith_f_op_vec4_f32(var_1.d.c * vec4<f32>(var_1.d.b, arg_0.a, arg_0.b, var_1.d.c.x)), arg_0.b))), Struct_2(var_0), 25367u, arg_0);
    let var_3 = (func_4(Struct_3(Struct_2(var_0), u_input.c, func_3(vec2<u32>(var_1.c, 68483u), Struct_3(var_1.b, vec3<u32>(u_input.b.x, var_1.c, 49534u), 0u, Struct_1(vec2<i32>(var_0.b, var_2.b.a.b), var_0.b), vec4<f32>(218f, arg_0.d, -1203f, var_1.d.a)), 6515u, vec2<i32>(var_0.b, var_1.a.a.b)), func_2(var_1.c, var_1.d), arg_0.c), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true)))) & _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c.x, var_2.c) << (vec2<u32>(84236u, var_2.c) % vec2<u32>(32u))), ~(~u_input.a))) << (_wgslsmith_sub_vec2_u32(select(vec2<u32>(~1u, abs(var_2.c)), ~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(var_2.c, 12791u), u_input.c.yz), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)), u_input.b.zw) % vec2<u32>(32u));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(878f)) - var_1.d.b)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b, var_2.d.b, -599f)), vec3<f32>(-1152f, 231f, var_1.d.a))), arg_0.c.wyz, _wgslsmith_f_op_f32(abs(var_1.d.d)) > -1145f))), arg_0.c.yww);
    return Struct_3(var_1.a, vec3<u32>(func_4(Struct_3(var_1.a, u_input.c << (vec3<u32>(0u, 4294967295u, var_2.c) % vec3<u32>(32u)), var_3.x, func_2(u_input.c.x, arg_0), _wgslsmith_f_op_vec4_f32(floor(var_1.d.c))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), var_1.d.d >= var_2.d.d)).x, 0u, var_2.c), 21050u, func_2(0u, Struct_4(var_4.x, var_2.d.a, vec4<f32>(_wgslsmith_f_op_f32(select(1000f, var_2.d.b, true)), _wgslsmith_f_op_f32(trunc(1097f)), 1652f, -870f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1333f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.d.c)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = ~arg_1.x;
    var var_1 = any(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))));
    var_0 = func_4(func_1(Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1043f, arg_0.e.x)) * _wgslsmith_div_f32(arg_0.e.x, 662f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.e.x * 444f), _wgslsmith_f_op_f32(step(-1111f, arg_0.e.x)), _wgslsmith_f_op_f32(-arg_0.e.x), arg_0.e.x), _wgslsmith_f_op_f32(min(-624f, arg_0.e.x)))), vec2<bool>(!(arg_0.d.a.x < max(arg_0.d.a.x, 1i)), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)))).x;
    return Struct_1(_wgslsmith_div_vec2_i32((~vec2<i32>(0i, arg_0.a.a.b) | vec2<i32>(0i, -34564i)) & -abs(arg_0.d.a), min(-abs(arg_0.d.a), select(vec2<i32>(arg_0.a.a.b, 1i), arg_0.a.a.a, vec2<bool>(true, false)) | vec2<i32>(39284i, -1i))), _wgslsmith_clamp_i32(-1i, arg_0.d.b, 31788i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-1i, 15017i);
    let var_1 = func_5(func_1(Struct_4(-323f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1057f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, -881f, 1112f, -642f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1412f, 1576f, -468f, 1677f))), _wgslsmith_f_op_f32(-995f - _wgslsmith_f_op_f32(max(-167f, 182f))))), vec4<u32>(~(4294967295u >> (1u % 32u)), ~max(4294967295u, ~4294967295u), countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x)))), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_div_u32(u_input.c.x, 1u))), func_3(u_input.b.yw, func_1(Struct_4(_wgslsmith_f_op_f32(632f * 1508f), func_1(Struct_4(734f, -1044f, vec4<f32>(119f, 1006f, -309f, -725f), 772f)).e.x, _wgslsmith_div_vec4_f32(vec4<f32>(-858f, 675f, -970f, 1586f), vec4<f32>(1931f, 834f, -1061f, -583f)), _wgslsmith_f_op_f32(453f * -1709f))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.b.x, u_input.c.x))), _wgslsmith_mult_vec3_u32(u_input.b.wwx, _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(8958u, 4294967295u, 4294967295u)))), -vec2<i32>(-52881i, max(88190i, 1i))));
    var var_2 = firstTrailingBit(u_input.c.x) >= 124u;
    var var_3 = ~_wgslsmith_div_u32(0u, ~func_3(vec2<u32>(49387u, u_input.a.x), func_1(Struct_4(795f, -1630f, vec4<f32>(198f, -1489f, -1992f, -1000f), 351f)), select(1u, u_input.c.x, false), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -32167i), vec2<i32>(377i, -477i))));
    var var_4 = ~func_1(Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-423f, 1123f)), _wgslsmith_f_op_f32(round(129f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(630f * 403f), 869f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, 862f, -835f, -298f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(-140f))))).b.x;
    var_3 = u_input.a.x;
    var var_5 = -abs(vec4<i32>(_wgslsmith_div_i32(countOneBits(var_0), func_5(Struct_3(Struct_2(Struct_1(var_1.a, 0i)), u_input.b.yxx, u_input.a.x, Struct_1(vec2<i32>(var_0, 19481i), var_1.b), vec4<f32>(785f, -1016f, -876f, 877f)), u_input.b, u_input.b.x).a.x), var_0 << (~u_input.c.x % 32u), _wgslsmith_div_i32(var_0, 15669i | var_1.b), var_1.b));
    let var_6 = Struct_5(Struct_2(var_1), func_1(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1330f, -836f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-528f)) * _wgslsmith_f_op_f32(f32(-1f) * -2021f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1161f, 1279f, 392f, -544f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, 2342f, -1528f, 271f))), -475f)).a, reverseBits(abs(max(firstLeadingBit(u_input.a.x), max(u_input.a.x, 81647u)))), Struct_4(532f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1206f, -207f) * _wgslsmith_f_op_f32(1342f - -847f)), vec4<f32>(1f, 1f, 1f, 1f), 717f));
    let var_7 = any(select(vec2<bool>(all(vec3<bool>(false, true, false)), func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(-5899i, var_1.b), var_1.b)), vec3<u32>(u_input.c.x, u_input.c.x, var_6.c), 105083u, var_6.b.a, vec4<f32>(var_6.d.c.x, var_6.d.a, 161f, -1000f)), vec2<bool>(false, false)).x >= func_4(Struct_3(var_6.b, u_input.b.wzw, var_6.c, var_1, vec4<f32>(var_6.d.c.x, var_6.d.d, 588f, 612f)), vec2<bool>(false, false)).x), select(vec2<bool>(var_6.d.c.x <= var_6.d.c.x, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 93072u) >> (u_input.c.xx % vec2<u32>(32u)), u_input.b.zw) >> (u_input.b.zz % vec2<u32>(32u)), func_1(Struct_4(_wgslsmith_f_op_f32(1235f * -749f), _wgslsmith_f_op_f32(round(var_6.d.b)), var_6.d.c, -146f)), select(1u, 96262u, var_7), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -35295i), var_1.a)), u_input.b.x, -reverseBits(vec4<i32>(-39182i, ~(-2147483647i), 8169i, 7137i)), var_6.c);
}

