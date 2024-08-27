struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<bool, 25>;

var<private> global1: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(12237u, Struct_2(vec4<f32>(1000f, -1097f, -1799f, -249f)), true, Struct_1(false), Struct_2(vec4<f32>(171f, 648f, -462f, 1133f))), Struct_5(1u, Struct_2(vec4<f32>(-1329f, -470f, -554f, -493f)), false, Struct_1(false), Struct_2(vec4<f32>(1927f, 642f, 1000f, -1665f))), Struct_5(142557u, Struct_2(vec4<f32>(843f, -179f, 1000f, 796f)), false, Struct_1(false), Struct_2(vec4<f32>(432f, -2107f, 1460f, 213f))), Struct_5(4294967295u, Struct_2(vec4<f32>(-1457f, 564f, -1268f, -646f)), true, Struct_1(false), Struct_2(vec4<f32>(1000f, 1000f, 1699f, 1000f))), Struct_5(20002u, Struct_2(vec4<f32>(-357f, -1968f, 807f, 2027f)), false, Struct_1(true), Struct_2(vec4<f32>(-811f, 1040f, -289f, -121f))), Struct_5(4294967295u, Struct_2(vec4<f32>(772f, 2089f, 217f, -702f)), false, Struct_1(false), Struct_2(vec4<f32>(1360f, 1266f, 1227f, -485f))), Struct_5(4294967295u, Struct_2(vec4<f32>(-2904f, -559f, 758f, 596f)), false, Struct_1(false), Struct_2(vec4<f32>(-198f, 276f, 679f, -314f))), Struct_5(52605u, Struct_2(vec4<f32>(-405f, -1295f, -1158f, -362f)), false, Struct_1(false), Struct_2(vec4<f32>(-520f, 507f, 949f, 298f))), Struct_5(16509u, Struct_2(vec4<f32>(771f, -1035f, -2696f, -1880f)), false, Struct_1(false), Struct_2(vec4<f32>(334f, 348f, 1127f, -107f))), Struct_5(76291u, Struct_2(vec4<f32>(-344f, -506f, -1000f, 1249f)), true, Struct_1(true), Struct_2(vec4<f32>(399f, -1211f, -800f, 1992f))), Struct_5(58110u, Struct_2(vec4<f32>(-1503f, 814f, 271f, 196f)), true, Struct_1(true), Struct_2(vec4<f32>(655f, -535f, -791f, -369f))), Struct_5(0u, Struct_2(vec4<f32>(700f, -1680f, -1169f, 168f)), true, Struct_1(false), Struct_2(vec4<f32>(256f, -1940f, -122f, 993f))), Struct_5(6748u, Struct_2(vec4<f32>(726f, 761f, 665f, -259f)), false, Struct_1(false), Struct_2(vec4<f32>(791f, -767f, 943f, -547f))), Struct_5(1u, Struct_2(vec4<f32>(-953f, -812f, 732f, -234f)), true, Struct_1(false), Struct_2(vec4<f32>(1000f, -792f, 1000f, -191f))), Struct_5(37941u, Struct_2(vec4<f32>(424f, 1051f, -160f, -910f)), false, Struct_1(false), Struct_2(vec4<f32>(-717f, -584f, -1000f, 562f))), Struct_5(5426u, Struct_2(vec4<f32>(729f, 167f, 795f, -1460f)), false, Struct_1(false), Struct_2(vec4<f32>(115f, -143f, 1396f, -1000f))), Struct_5(12644u, Struct_2(vec4<f32>(273f, -1521f, -1561f, 321f)), false, Struct_1(true), Struct_2(vec4<f32>(-1558f, -587f, -128f, 1673f))), Struct_5(0u, Struct_2(vec4<f32>(636f, -227f, 398f, -1471f)), false, Struct_1(true), Struct_2(vec4<f32>(-262f, -518f, 1215f, -572f))), Struct_5(0u, Struct_2(vec4<f32>(-316f, -1000f, -1885f, 706f)), true, Struct_1(true), Struct_2(vec4<f32>(-247f, 935f, -448f, -2197f))), Struct_5(931u, Struct_2(vec4<f32>(-358f, 715f, 368f, -1070f)), false, Struct_1(false), Struct_2(vec4<f32>(-389f, 356f, -232f, -289f))), Struct_5(89327u, Struct_2(vec4<f32>(1259f, 412f, 2130f, 1000f)), false, Struct_1(true), Struct_2(vec4<f32>(1001f, 1123f, -2043f, -164f))), Struct_5(4294967295u, Struct_2(vec4<f32>(1043f, 1000f, -1414f, 1000f)), true, Struct_1(true), Struct_2(vec4<f32>(1000f, 736f, -506f, 337f))), Struct_5(0u, Struct_2(vec4<f32>(548f, 885f, 358f, -173f)), true, Struct_1(false), Struct_2(vec4<f32>(-276f, -1831f, 628f, -718f))), Struct_5(0u, Struct_2(vec4<f32>(-925f, 1110f, -413f, -700f)), true, Struct_1(false), Struct_2(vec4<f32>(1000f, -1887f, 1000f, 1425f))), Struct_5(1u, Struct_2(vec4<f32>(-1000f, -943f, -435f, -827f)), true, Struct_1(true), Struct_2(vec4<f32>(238f, -329f, 642f, 620f))), Struct_5(11803u, Struct_2(vec4<f32>(1051f, 624f, 2575f, -374f)), true, Struct_1(false), Struct_2(vec4<f32>(1000f, -703f, -815f, -1000f))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2593f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1683f))), 889f))) * -206f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1004f, 265f, _wgslsmith_f_op_f32(round(-371f)), 1453f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, -184f, -976f, 526f)), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -603f, 461f, -1086f) + vec4<f32>(-703f, 1000f, 709f, -172f)))))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(abs(arg_1.x), ~_wgslsmith_mult_i32(arg_1.x | u_input.a, 0i)), arg_1);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = select(vec2<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(8560u, 25u)], global0[_wgslsmith_index_u32(9049u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(4264u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], false)))), true & global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(abs(u_input.c.x), 25u)] && true), u_input.c.x == firstLeadingBit(u_input.c.x << (firstTrailingBit(19888u) % 32u)));
    var var_1 = 1i;
    var var_2 = vec3<i32>(arg_0, abs(~arg_3), 12084i) | vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(max(arg_3, u_input.b), 8719i)), u_input.b, _wgslsmith_clamp_i32(~(~arg_3), -(-2147483647i << (u_input.c.x % 32u)), _wgslsmith_clamp_i32(arg_0, -42925i, max(arg_3, arg_1))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1062f, -1151f, -1000f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -650f) - -983f), _wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(min(-621f, -339f))), -916f, -2038f))));
    let var_4 = min(16289u, ~u_input.c.x);
    return min(var_4, firstTrailingBit(~34055u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~func_4(u_input.a, u_input.b, ~func_3(139126u, vec2<i32>(51676i, u_input.b)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zyy, u_input.c.ywz), ~u_input.c.x) % vec2<u32>(32u)), u_input.b);
    var var_1 = true;
    global1 = array<Struct_5, 26>();
    global1 = array<Struct_5, 26>();
    var var_2 = vec4<i32>(_wgslsmith_div_i32((_wgslsmith_sub_i32(-26299i, 29283i) & u_input.b) ^ (35004i >> (~4294967295u % 32u)), _wgslsmith_clamp_i32(~(~u_input.b), reverseBits(_wgslsmith_sub_i32(0i, 1i)), 1i)), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(u_input.b, u_input.b, -1i, u_input.a)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<i32>(6916i, -2147483647i, u_input.b, -16936i)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b, -2147483647i, 0i))), 8739i, u_input.b);
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2045f, _wgslsmith_f_op_f32(-484f - -852f), _wgslsmith_div_f32(1261f, -188f), _wgslsmith_f_op_f32(f32(-1f) * -1787f))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = ~(~(~countOneBits(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-1i, u_input.a))));
    let var_1 = Struct_5(reverseBits(u_input.c.x >> (firstLeadingBit(38597u) % 32u)), func_2(select(any(vec3<bool>(arg_0.a.a, arg_0.a.a, false)), true, !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 25u)])), global0[_wgslsmith_index_u32(u_input.c.x, 25u)], arg_0.a, func_2(true));
    let var_2 = vec4<i32>(firstLeadingBit(abs(_wgslsmith_div_i32(-1i, -55027i))), var_0.x, ~(-firstLeadingBit(-1i)), i32(-1i) * -10490i);
    let var_3 = Struct_3(var_1.d);
    var var_4 = select(vec4<i32>(_wgslsmith_dot_vec4_i32(var_2, -var_2), -u_input.a, countOneBits(-47092i), ~_wgslsmith_dot_vec3_i32(~var_2.xzw, var_2.zzz)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(5966i, u_input.a, var_0.x, var_2.x), ~reverseBits(var_2))), true);
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), var_1.b.a.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-979f, arg_1.x)))), var_3.a);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec3<i32>) -> i32 {
    global1 = array<Struct_5, 26>();
    global0 = array<bool, 25>();
    var var_0 = arg_0.a.x;
    let var_1 = u_input.c.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * -1597f)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 26>();
    var var_0 = vec4<i32>(reverseBits(-2147483647i) << (~(~(u_input.c.x | u_input.c.x)) % 32u), func_5(func_1(Struct_3(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, -416f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1029f, 672f)))), 0u, ~_wgslsmith_add_vec3_i32(~vec3<i32>(19507i, -2147483647i, u_input.b), -vec3<i32>(u_input.a, u_input.b, u_input.b))), u_input.a & min(u_input.b, _wgslsmith_add_i32(-1i, -u_input.a)), _wgslsmith_clamp_i32(~(i32(-1i) * -22858i) | u_input.a, u_input.a, ~(_wgslsmith_mod_i32(-11012i, 63510i) ^ u_input.b)));
    var_0 = abs(vec4<i32>(u_input.b | ~(-14442i), -2147483647i, u_input.a, reverseBits(i32(-1i) * -1i)));
    global1 = array<Struct_5, 26>();
    var_0 = vec4<i32>(-1i) * -vec4<i32>(u_input.a, abs(var_0.x), 38475i ^ func_5(Struct_4(vec2<f32>(-1378f, -387f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)])), 0u, var_0.yzy), -8761i << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

