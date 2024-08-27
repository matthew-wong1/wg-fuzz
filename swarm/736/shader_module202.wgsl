struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    let var_0 = Struct_2(70741i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1327f)) - -1535f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)), _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(263f + 754f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-560f, -269f, -1404f, 535f))))));
    var var_1 = _wgslsmith_div_f32(-1648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))));
    var var_2 = vec4<bool>(true, any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)) & true)), !(min(~1i, _wgslsmith_div_i32(arg_2, -20179i)) < _wgslsmith_mult_i32(~arg_1.x, -28685i)), any(vec2<bool>(true, true)));
    let var_3 = var_0;
    var_2 = vec4<bool>(all(var_2.www), any(vec3<bool>((arg_1.x >> (1u % 32u)) > (0i << (0u % 32u)), any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false), vec3<bool>(false, false, var_2.x))), var_0.b.x < _wgslsmith_f_op_f32(var_3.b.x + -981f))), _wgslsmith_f_op_f32(f32(-1f) * -287f) < var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-149f + var_3.b.x))) == _wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(-var_3.b.x)));
    return reverseBits(var_3.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = arg_0;
    var_1 = max(arg_0, vec3<i32>(select(arg_2, arg_1.e, var_0) | _wgslsmith_mod_i32(-35144i, arg_0.x), min(-arg_2, var_1.x & arg_2), arg_0.x) | countOneBits(countOneBits(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(63930i, arg_0.x, 29252i)))));
    var var_2 = 29482i;
    let var_3 = 1u;
    return -1000f;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<i32>(1i, _wgslsmith_mod_i32(1i, 2147483647i), firstTrailingBit(20387i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1514f, 1213f) - vec2<f32>(484f, 1573f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-226f, -1124f, 720f, -1755f))), _wgslsmith_div_vec4_f32(vec4<f32>(-491f, 547f, -221f, -392f), vec4<f32>(-544f, 686f, 715f, 785f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-764f, 882f, -1757f)), -1i), -12703i, Struct_2(func_3(u_input.b.xw, vec4<i32>(-53262i, -1i, 2147483647i, -2147483647i), 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, 1214f, 1307f, -711f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f - 1257f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(step(717f, _wgslsmith_f_op_f32(ceil(-264f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * 1334f), -1000f, _wgslsmith_f_op_f32(func_4(select(vec3<i32>(-4218i, 1i, 0i), vec3<i32>(1i, 1i, 1i), vec3<bool>(arg_0, true, false)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, 767f) * vec2<f32>(-1114f, -351f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 940f, 615f, -246f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, -800f, -1057f, 1022f) - vec4<f32>(-1448f, -1462f, 805f, 1222f)), vec3<f32>(-1016f, -721f, -1808f), 1i), ~1i, Struct_2(46834i, vec4<f32>(333f, -120f, 1267f, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 1163f)), vec3<f32>(867f, 1000f, -1614f))) + vec3<f32>(2443f, _wgslsmith_f_op_f32(floor(-188f)), 697f))), max(i32(-1i) * -2147483647i, ~73136i));
    var_0 = Struct_1(var_0.c.yw, var_0.b, var_0.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-529f - 823f))), _wgslsmith_f_op_f32(abs(984f)), var_0.c.x))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.e, 1i) >> (u_input.b.xy % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-4793i, var_0.e)), vec2<i32>(11604i, var_0.e)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) + var_0.b.x)));
    let var_2 = abs(select(~vec3<u32>(u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(60423u, u_input.a, 4294967295u, 1u), vec4<u32>(1u, u_input.b.x, u_input.a, 0u))), u_input.b.wwy, all(vec2<bool>(arg_0, any(vec2<bool>(false, false))))));
    var_0 = Struct_1(var_1.zz, vec4<f32>(-426f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2202f, _wgslsmith_f_op_f32(var_1.x + -1000f))) - _wgslsmith_f_op_f32(max(var_0.d.x, 373f))), _wgslsmith_f_op_f32(ceil(var_0.c.x))), var_0.c, vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1319f, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2009f))), -46471i);
    return ~u_input.b.x;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<bool>(arg_0, all(vec4<bool>(true, true, !arg_0, any(vec3<bool>(true, true, true)))), arg_0, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1948f, 290f)) + _wgslsmith_f_op_vec2_f32(-arg_3.d.xy));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(-2834f, var_1.x)), _wgslsmith_f_op_f32(arg_3.d.x - _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(-433f)))))), vec4<f32>(-975f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-262f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.a.x))))), vec4<f32>(-1016f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(281f)) - _wgslsmith_f_op_f32(f32(-1f) * -689f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f), 883f)), _wgslsmith_f_op_vec3_f32(select(arg_3.b.wwz, arg_3.c.wzz, vec3<bool>(true, !var_0.x, var_0.x && true))), -arg_2.x);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, select(81308u, arg_1, false), u_input.a, ~1u), ~vec4<u32>(4431u, arg_1, 1u, u_input.a)) << (1u % 32u), ~(~(~0u)));
    let var_4 = firstTrailingBit(vec3<u32>(~abs(~1u), reverseBits(~abs(arg_1)), _wgslsmith_clamp_u32(0u, func_2(arg_0), arg_1)));
    return 62435u;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    let var_0 = vec3<u32>(~(~max(14307u, ~u_input.a)), func_5(arg_0, func_2(all(vec4<bool>(arg_0, arg_0, arg_0, true))), select(~vec4<i32>(13018i, arg_2, arg_2, arg_2), -vec4<i32>(arg_2, -2147483647i, 7110i, arg_2), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(false, true, true, false), vec4<bool>(false, false, arg_0, arg_0))) >> (firstTrailingBit(u_input.b) % vec4<u32>(32u)), Struct_1(vec2<f32>(1086f, -1000f), vec4<f32>(515f, arg_3.x, 566f, _wgslsmith_div_f32(arg_3.x, arg_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 1479f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-643f, arg_3.x, -375f, arg_3.x))), vec3<f32>(312f, _wgslsmith_f_op_f32(-arg_3.x), -2388f), _wgslsmith_add_i32(arg_2, _wgslsmith_sub_i32(arg_2, 0i)))), ~arg_1);
    let var_1 = _wgslsmith_clamp_i32(max(-1i, -2147483647i), ~countOneBits(~(-arg_2)), 0i);
    var var_2 = vec2<bool>(any(!vec4<bool>(true, true, 3907i >= var_1, !arg_0)), arg_0);
    let var_3 = ~u_input.a | ~firstTrailingBit(~(~var_0.x));
    var_2 = vec2<bool>(true, arg_2 > (_wgslsmith_mod_i32(-var_1, ~66312i) ^ ~(~arg_2)));
    return 97977u;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-829f - _wgslsmith_div_f32(arg_1.b.x, -1011f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_1.b.x, arg_1.b.x, 1246f), vec4<f32>(-362f, arg_2, -1158f, 1410f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_0.b.x)), -1000f, arg_1.b.x, -826f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_1.b.x, -1380f, 1000f)))))));
    let var_2 = vec2<f32>(-1655f, 443f);
    var var_3 = arg_1;
    return Struct_1(arg_0.b.zz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1068f * arg_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1402f)))))), arg_0.d.x, _wgslsmith_f_op_f32(floor(-1484f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)) - var_3.b) + _wgslsmith_f_op_vec4_f32(-var_3.b)), _wgslsmith_f_op_vec3_f32(-arg_1.b.zyw), arg_0.e);
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_6(arg_3, Struct_2(-1i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), _wgslsmith_f_op_f32(260f - arg_3.d.x), arg_1.b.x, _wgslsmith_f_op_f32(trunc(arg_3.b.x)))))), arg_1.b.x, ~select(u_input.b & vec4<u32>(1u, 4294967295u, arg_2, u_input.b.x), vec4<u32>(arg_2 | 95529u, 51732u, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(u_input.a, 76476u)), 4294967295u), !arg_0.x != true)).c.wzy;
    let var_1 = u_input.b;
    let var_2 = select(!(~(~(-22491i)) == (0i ^ max(arg_3.e, 1i))), arg_0.x, false);
    let var_3 = Struct_2(1i, _wgslsmith_f_op_vec4_f32(-arg_1.b));
    let var_4 = arg_3;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = func_7(vec4<bool>(false, select(false, !all(vec2<bool>(false, true)), true), true, !any(vec4<bool>(true, true, true, false)) | true), Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, 1i), vec4<i32>(22172i, 39683i, -27726i, 0i)), 1i), countOneBits(firstTrailingBit(2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(625f, -927f, -915f, 774f), vec4<f32>(757f, -880f, -1112f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, -951f, 1140f, -218f) * vec4<f32>(912f, 1027f, -981f, -461f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1732f, -386f, -438f, 613f)))))), 3913u, func_6(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1377f - 452f), -360f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, 1326f, -696f, 1252f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(124f, 243f, -469f, 1617f))))), vec4<f32>(-256f, _wgslsmith_f_op_f32(step(1147f, -1000f)), _wgslsmith_div_f32(-566f, -334f), 1633f), vec3<f32>(_wgslsmith_f_op_f32(652f - -104f), -347f, -498f), ~2147483647i), Struct_2(10807i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1286f, 1098f, 165f, 1761f) - vec4<f32>(-1078f, -481f, 282f, 1000f)))), 2009f, firstLeadingBit(vec4<u32>(abs(u_input.a), func_1(true, 0u, 1i, vec3<f32>(-536f, 1382f, -556f)), u_input.b.x, u_input.b.x))));
    var_0 = abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, var_1.e & (var_1.e ^ var_1.e)), func_3(_wgslsmith_sub_vec2_u32(u_input.b.ww, u_input.b.xx), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 45468i, 27220i, 63876i) | vec4<i32>(var_1.e, -2147483647i, 25975i, var_1.e), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e, 46609i, var_1.e, -7487i), vec4<i32>(5053i, var_1.e, var_1.e, var_1.e))), var_1.e)));
    var var_2 = func_6(Struct_1(var_1.d.xx, _wgslsmith_f_op_vec4_f32(trunc(var_1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 1005f, var_1.d.x, var_1.c.x) * var_1.b))), var_1.b.zyw, var_1.e), Struct_2(min(var_1.e, var_1.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.b, _wgslsmith_f_op_vec4_f32(round(var_1.b)))))), -1624f, ~firstLeadingBit(u_input.b));
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-816f * var_2.c.x), _wgslsmith_f_op_f32(floor(-505f)), 1442f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)) - var_2.b)));
}

