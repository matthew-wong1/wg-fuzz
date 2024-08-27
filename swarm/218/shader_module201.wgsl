struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1276f, 709f)) + 1f), _wgslsmith_f_op_f32(min(257f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1070f)))))), _wgslsmith_f_op_f32(183f * -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(268f - -2343f), _wgslsmith_f_op_f32(round(1403f)), -1048f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-753f, 769f, 586f))), _wgslsmith_div_vec3_f32(vec3<f32>(456f, -669f, 1000f), vec3<f32>(-304f, 339f, -1000f)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1027f, 639f, 801f)))), vec3<f32>(1f, 1f, 1f)), select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), all(vec2<bool>(true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true))));
    var var_1 = Struct_3(vec3<bool>(false, all(vec3<bool>(true, true, true)), (5779i <= ~u_input.a) | all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), _wgslsmith_add_u32(u_input.c.x, ~countOneBits(~u_input.d)), vec4<u32>(~0u, firstLeadingBit(u_input.b), ~(~_wgslsmith_sub_u32(global0.x, 1u)), (~4294967295u | reverseBits(global0.x)) | 13414u), global1[_wgslsmith_index_u32(~reverseBits(~u_input.c.x), 3u)], global0.xxy);
    return var_0;
}

fn func_2() -> vec2<f32> {
    let var_0 = ~vec3<i32>(_wgslsmith_div_i32(~u_input.a, 2147483647i) ^ 1i, 5263i, 0i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(749f, -755f)), 1371f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, -316f, 1000f) + vec3<f32>(1036f, 385f, -739f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1518f, 270f, -2243f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, 125f, 532f) + vec3<f32>(-116f, -437f, -773f))))))), min(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.wwy << (vec3<u32>(27323u, global0.x, 1u) % vec3<u32>(32u)), u_input.e.xyz | u_input.e.zwy), -1i, 24962i), u_input.e.zzz), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2062f, -1081f, 105f) + vec3<f32>(1458f, 1000f, 285f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1162f, 359f) - vec2<f32>(797f, -1339f)))), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2321f, 1417f, -1034f)), vec3<bool>(true, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-1915f * -1604f), -525f, -1179f), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, -1192f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, 956f)) * vec2<f32>(-173f, -652f))), u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), _wgslsmith_f_op_f32(758f + -2439f), -685f))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1231f, 976f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-790f + -438f)))), ~(u_input.b ^ select(38036u, 40210u, false))));
    global0 = vec4<u32>(~(select(1u, 233u, -425f == var_1.d.b.x) & 31766u), ~(~u_input.b), 0u, ~global0.x);
    let var_2 = Struct_3(vec3<bool>(true, true, u_input.c.x > firstLeadingBit(var_1.e.c)), 56464u, _wgslsmith_mod_vec4_u32(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, var_1.e.c, 3171u, 1u), vec4<u32>(var_1.e.c, u_input.c.x, 4294967295u, global0.x), vec4<u32>(u_input.c.x, 0u, global0.x, var_1.e.c))), abs(firstTrailingBit(vec4<u32>(var_1.c.c, var_1.d.c, 4294967295u, global0.x)) & (vec4<u32>(var_1.e.c, var_1.d.c, 1429u, global0.x) >> (vec4<u32>(u_input.d, u_input.d, global0.x, 26429u) % vec4<u32>(32u))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.b.x, var_1.c.a.x, -433f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, 1412f, var_1.c.b.x)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.b.x, 1i, u_input.e.x), u_input.e.ywx), var_1.c, var_1.c, var_1.c), vec3<u32>(0u, _wgslsmith_mod_u32(57279u, u_input.b), ~(~_wgslsmith_add_u32(1u, u_input.c.x))));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-528f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) - _wgslsmith_f_op_f32(-var_2.d.d.b.x))), _wgslsmith_f_op_f32(round(114f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.e.b.x, -800f), _wgslsmith_f_op_f32(-var_1.c.b.x)))), var_0, var_1.d, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.d.d.b.x, var_2.d.d.b.x, var_1.d.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(291f, var_1.e.b.x) * var_1.a.yx)), ~var_2.c.x), var_1.e);
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d.c.a.x, var_1.d.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, -1328f)), vec2<f32>(var_3.c.b.x, var_2.d.c.b.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>) -> bool {
    var var_0 = true;
    var var_1 = u_input.a;
    var_0 = arg_0.a.x == -1242f;
    var var_2 = true;
    var var_3 = ~arg_1.x;
    return select(true != all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), true, select(true, all(vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), arg_0.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - 1000f)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1567f, -1000f, 1783f) * vec3<f32>(683f, 127f, -649f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(602f, -315f, -880f) + vec3<f32>(-1264f, 1889f, -1225f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, -539f, -344f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(870f, -222f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -385f), vec2<f32>(1349f, 207f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2237f, 242f))))))), 2882u);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, -1108f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(1273f, 1751f, var_0.b.x)) - vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))))), vec2<f32>(1000f, var_0.a.x), u_input.b);
    let var_1 = vec2<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))), func_4(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * vec2<f32>(var_0.a.x, 2058f)), u_input.c.x ^ select(4294967295u, var_0.c, false)), u_input.e.zwy, vec2<u32>(10457u, _wgslsmith_dot_vec2_u32(global0.yw ^ vec2<u32>(u_input.c.x, var_0.c), global0.zw | u_input.c.yy))));
    global0 = ~(~max(abs(vec4<u32>(u_input.d, 1u, 14738u, 0u)), vec4<u32>(firstTrailingBit(19974u), var_0.c, _wgslsmith_mult_u32(var_0.c, u_input.d), 0u)));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x)))), var_0.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.b.x)) + var_0.a.zz))));
    return Struct_3(select(vec3<bool>(var_1.x && false, all(!vec3<bool>(false, var_1.x, var_1.x)), _wgslsmith_div_f32(-175f, var_0.a.x) < _wgslsmith_f_op_vec3_f32(func_3()).x), vec3<bool>(false & !var_1.x, true, !select(true, true, true)), vec3<bool>(all(vec2<bool>(false, true)) || var_1.x, var_1.x, -1470f < var_0.b.x)), 4294967295u, ~(~vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.c.x, 0u), global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 15862u, 1u), vec4<u32>(global0.x, var_0.c, global0.x, global0.x)), firstLeadingBit(0u))), global1[_wgslsmith_index_u32(global0.x << (4294967295u % 32u), 3u)], _wgslsmith_sub_vec3_u32(u_input.c, global0.xwz));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global1 = array<Struct_2, 3>();
    var var_0 = arg_3.a.x;
    var_0 = true;
    global1 = array<Struct_2, 3>();
    let var_1 = u_input.e;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(arg_3.d.e.b.x, 613f, -405f)))), ~u_input.e.wxx, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -1000f) * arg_3.d.e.a))), _wgslsmith_f_op_vec2_f32(arg_3.d.a.zx + _wgslsmith_f_op_vec2_f32(vec2<f32>(1029f, 974f) * arg_3.d.c.a.zz)), min(~4829u, u_input.d)), func_1().d.e, func_1().d.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(0u);
    let var_1 = Struct_3(vec3<bool>(true, true, true), var_0, min(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 18081u, var_0, var_0), vec4<u32>(1u, 4294967295u, global0.x, 1u) & vec4<u32>(5407u, 1u, 31694u, 1u)), ~(~(vec4<u32>(var_0, global0.x, 1u, 1u) | vec4<u32>(var_0, u_input.c.x, 53339u, 23805u)))), func_5(~(-2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(952f, 544f), vec2<f32>(1559f, -237f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-795f, 315f), vec2<f32>(156f, -1357f)))), u_input.e.x, func_1()), ~min(vec3<u32>(1u, ~1u, global0.x >> (u_input.b % 32u)), ~(~vec3<u32>(4294967295u, 35838u, u_input.b))));
    global1 = array<Struct_2, 3>();
    var var_2 = min(~_wgslsmith_mult_vec4_i32(~u_input.e, vec4<i32>(func_1().d.b.x, _wgslsmith_dot_vec2_i32(u_input.e.ww, vec2<i32>(u_input.a, var_1.d.b.x)), ~24234i, countOneBits(1i))), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(~u_input.e, vec4<i32>(1i, var_1.d.b.x, -1i, var_1.d.b.x))), _wgslsmith_mod_i32(-(u_input.e.x ^ -13572i), ~(~5533i)), 0i, -1i));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b, ~86010u, 4294967295u), _wgslsmith_mult_vec3_u32(global0.ywx, vec3<u32>(var_1.e.x, var_1.b, 10906u)), ~firstTrailingBit(vec3<u32>(6456u, 29005u, var_1.c.x))), select(~global0.yzy | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.e.x, u_input.b, 19946u), vec3<u32>(var_0, 68791u, global0.x), var_1.e), ~var_1.e, !(!var_1.a.x)))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(var_3.b.x, 12649i, -2147483647i, -11006i) << (var_1.c % vec4<u32>(32u)), u_input.e) >> (var_1.c % vec4<u32>(32u)));
}

