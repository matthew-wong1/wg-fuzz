struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(134f, 60380i, vec3<bool>(true, false, true)), -575f, vec2<f32>(1388f, -1869f), Struct_3(vec2<f32>(1134f, 1000f), vec2<bool>(false, true)), Struct_1(-1015f, 2147483647i, vec3<bool>(true, true, false))), Struct_4(Struct_1(232f, -68779i, vec3<bool>(true, false, true)), -454f, vec2<f32>(921f, -1679f), Struct_3(vec2<f32>(1298f, -1207f), vec2<bool>(false, true)), Struct_1(-368f, 19429i, vec3<bool>(false, false, false))), Struct_4(Struct_1(-1197f, 2147483647i, vec3<bool>(false, false, true)), 391f, vec2<f32>(716f, -576f), Struct_3(vec2<f32>(-892f, 380f), vec2<bool>(true, true)), Struct_1(-1266f, 1i, vec3<bool>(false, true, true))), Struct_4(Struct_1(-1204f, i32(-2147483648), vec3<bool>(false, true, false)), 1202f, vec2<f32>(1000f, 611f), Struct_3(vec2<f32>(-1000f, 961f), vec2<bool>(true, false)), Struct_1(1000f, 1i, vec3<bool>(false, true, true))), Struct_4(Struct_1(1846f, 1i, vec3<bool>(true, false, true)), -819f, vec2<f32>(-778f, -1357f), Struct_3(vec2<f32>(-343f, -2039f), vec2<bool>(false, false)), Struct_1(610f, -1i, vec3<bool>(true, false, true))), Struct_4(Struct_1(-744f, -86114i, vec3<bool>(true, true, true)), -1385f, vec2<f32>(1000f, -1728f), Struct_3(vec2<f32>(125f, -395f), vec2<bool>(false, true)), Struct_1(-745f, -10997i, vec3<bool>(true, false, true))), Struct_4(Struct_1(-195f, 1i, vec3<bool>(false, false, false)), -542f, vec2<f32>(1000f, 857f), Struct_3(vec2<f32>(-504f, -287f), vec2<bool>(true, true)), Struct_1(-477f, 1i, vec3<bool>(false, true, false))), Struct_4(Struct_1(889f, -1i, vec3<bool>(false, false, false)), -399f, vec2<f32>(1000f, 2253f), Struct_3(vec2<f32>(1000f, -254f), vec2<bool>(false, true)), Struct_1(796f, 2147483647i, vec3<bool>(false, false, true))), Struct_4(Struct_1(-343f, 0i, vec3<bool>(false, true, false)), 887f, vec2<f32>(-319f, 1634f), Struct_3(vec2<f32>(940f, -725f), vec2<bool>(true, true)), Struct_1(892f, -32372i, vec3<bool>(true, false, true))), Struct_4(Struct_1(1375f, -30513i, vec3<bool>(true, false, true)), 932f, vec2<f32>(-915f, 839f), Struct_3(vec2<f32>(-654f, 704f), vec2<bool>(true, false)), Struct_1(1000f, -1i, vec3<bool>(true, false, false))), Struct_4(Struct_1(-371f, 0i, vec3<bool>(true, true, true)), -2232f, vec2<f32>(399f, -377f), Struct_3(vec2<f32>(-1449f, -1134f), vec2<bool>(false, true)), Struct_1(214f, 11839i, vec3<bool>(true, true, false))), Struct_4(Struct_1(-972f, 0i, vec3<bool>(true, true, false)), 295f, vec2<f32>(577f, -416f), Struct_3(vec2<f32>(-943f, 1850f), vec2<bool>(true, true)), Struct_1(-1144f, -23219i, vec3<bool>(false, false, false))), Struct_4(Struct_1(1724f, i32(-2147483648), vec3<bool>(false, false, false)), -551f, vec2<f32>(-1347f, -1000f), Struct_3(vec2<f32>(-2777f, 762f), vec2<bool>(false, false)), Struct_1(-175f, 7154i, vec3<bool>(true, true, true))), Struct_4(Struct_1(507f, 23972i, vec3<bool>(true, true, false)), -1291f, vec2<f32>(-219f, -224f), Struct_3(vec2<f32>(-1273f, 1028f), vec2<bool>(false, false)), Struct_1(800f, 2147483647i, vec3<bool>(true, true, true))), Struct_4(Struct_1(-351f, 30903i, vec3<bool>(true, true, false)), -317f, vec2<f32>(865f, 782f), Struct_3(vec2<f32>(358f, -1707f), vec2<bool>(true, false)), Struct_1(1190f, -21499i, vec3<bool>(true, true, false))), Struct_4(Struct_1(667f, -6233i, vec3<bool>(false, true, false)), -862f, vec2<f32>(-1383f, 708f), Struct_3(vec2<f32>(930f, -1000f), vec2<bool>(true, false)), Struct_1(249f, 69065i, vec3<bool>(false, false, false))), Struct_4(Struct_1(-1000f, -32386i, vec3<bool>(true, true, true)), -1000f, vec2<f32>(-1000f, -763f), Struct_3(vec2<f32>(395f, 211f), vec2<bool>(false, false)), Struct_1(-1409f, 1i, vec3<bool>(true, false, true))), Struct_4(Struct_1(-908f, -1i, vec3<bool>(false, true, false)), -1868f, vec2<f32>(-903f, -1018f), Struct_3(vec2<f32>(1000f, 164f), vec2<bool>(true, true)), Struct_1(-1000f, i32(-2147483648), vec3<bool>(false, false, false))), Struct_4(Struct_1(-372f, 1i, vec3<bool>(true, false, true)), 730f, vec2<f32>(1414f, -546f), Struct_3(vec2<f32>(-872f, -1046f), vec2<bool>(true, true)), Struct_1(-1000f, 13021i, vec3<bool>(false, true, false))), Struct_4(Struct_1(-2016f, -43197i, vec3<bool>(false, false, false)), 1000f, vec2<f32>(524f, -758f), Struct_3(vec2<f32>(-1106f, 1259f), vec2<bool>(true, true)), Struct_1(-2392f, 2147483647i, vec3<bool>(false, true, false))));

var<private> global1: array<i32, 8>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = -(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.zwy, u_input.b.zww << (vec3<u32>(18365u, 0u, 43517u) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-11693i, -1i, 2147483647i), vec3<i32>(-26976i, u_input.a, u_input.a))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_1 = ~countOneBits(~vec2<u32>(min(29788u, 0u), reverseBits(12145u)));
    var_1 = min(~reverseBits(~vec2<u32>(var_1.x, 4294967295u)), vec2<u32>(var_1.x, firstTrailingBit(~reverseBits(var_1.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, -1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1027f, 930f))) + vec2<f32>(_wgslsmith_f_op_f32(-534f - -1026f), _wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(ceil(906f))))), arg_0.yy);
    global1 = array<i32, 8>();
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~37567u, firstTrailingBit(22373u), abs(4294967295u), ~var_1.x), vec4<u32>(abs(var_1.x), var_1.x, var_1.x, 1u), firstTrailingBit(vec4<u32>(66u, 16923u, 40131u, var_1.x))), vec4<u32>(var_1.x, 61583u, ~var_1.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), var_1.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    global1 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -493f)) + -519f))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(countOneBits(~(~1u))), 1u | firstLeadingBit(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 44300u, 0u, 28681u), vec4<u32>(78939u, 7858u, 4294967295u, 1u))))), 20u)];
    let var_2 = var_1.d;
    global0 = array<Struct_4, 20>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~1u, 1u), ~reverseBits(abs(vec3<u32>(1u, 1u, 1u))));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(27309u, ~(~1u)), 8u)], u_input.b.x, global1[_wgslsmith_index_u32(func_4(-vec4<i32>(global1[_wgslsmith_index_u32(func_3(vec3<bool>(true, arg_0.b.x, arg_0.b.x)), 8u)], max(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(27663u, 8u)]), u_input.b.x, -29376i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-955f, _wgslsmith_f_op_f32(-816f + arg_0.a.x))), 77118u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 8u)], -(i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_2 = vec3<i32>(u_input.a, ~(~1i), ~((-var_0.x ^ 0i) << (~firstTrailingBit(64465u) % 32u)));
    var var_3 = i32(-1i) * -7274i;
    var_3 = -28824i;
    return all(arg_0.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(arg_2.x & arg_2.x, arg_0.x), ~arg_2.x, _wgslsmith_div_i32(abs(global1[_wgslsmith_index_u32(arg_3.x, 8u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(38376i, arg_2.x), vec2<i32>(1i, 1i))), abs(abs(arg_0.x))), u_input.b, _wgslsmith_mult_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(-41297i, global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x, 25573i), vec4<i32>(-2147483647i, -28397i, 24787i, u_input.b.x)), vec4<i32>(_wgslsmith_mod_i32(arg_2.x, arg_0.x), abs(1i), firstLeadingBit(9414i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11994u, 4294967295u), vec3<u32>(56672u, 80301u, 4294967295u)), 8u)])), vec4<i32>(-2147483647i, -_wgslsmith_mult_i32(arg_2.x, -1i), 1i, abs(global1[_wgslsmith_index_u32(51482u, 8u)]) ^ countOneBits(u_input.b.x))));
    let var_1 = !any(vec4<bool>(select(false, false, func_2(Struct_3(vec2<f32>(1217f, 1702f), vec2<bool>(false, true)))), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), true, true));
    let var_2 = select(select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, var_1), true)), var_1), !vec2<bool>(var_1, all(vec2<bool>(true, false))), select(!vec2<bool>(var_1, var_1), select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), vec2<bool>(true, true)), any(!vec2<bool>(var_1, var_1)))), select(!vec2<bool>(true, true == var_1), select(vec2<bool>(!var_1, true), select(!vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), false), arg_2.x < _wgslsmith_div_i32(arg_2.x, arg_2.x)), vec2<bool>(!var_1, var_0.x == min(-2860i, 0i))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, var_1), !vec2<bool>(var_1, true), select(vec2<bool>(false, var_1), vec2<bool>(false, false), vec2<bool>(var_1, var_1))), select(vec2<bool>(false, var_1), !vec2<bool>(var_1, false), select(vec2<bool>(false, false), vec2<bool>(var_1, false), var_1)), vec2<bool>(true, var_1)), !var_1 || var_1));
    let var_3 = 0i;
    return Struct_2(var_0.zxx, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1)), arg_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(155f)) * arg_1)), -2147483647i, vec3<bool>(true, true, var_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(226f, -878f, true)))), _wgslsmith_f_op_f32(step(1051f, arg_1)))), !any(vec3<bool>(var_1, any(vec2<bool>(var_2.x, true)), 1u <= arg_3.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> Struct_5 {
    var var_0 = vec3<f32>(669f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - arg_0.c.a) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))))), 555f);
    var var_1 = -22335i;
    global0 = array<Struct_4, 20>();
    return Struct_5(Struct_1(arg_0.b, -1i, arg_0.c.c));
}

fn func_6(arg_0: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2813f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a) * -1338f), -2015f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, 761f, arg_0.a.a)))), vec3<f32>(1167f, _wgslsmith_f_op_f32(-arg_0.a.a), 535f))))));
    global0 = array<Struct_4, 20>();
    let var_1 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a - -1742f)) + _wgslsmith_f_op_f32(func_1(vec2<i32>(14140i, -4735i), arg_0.a.a, u_input.b.wyz, vec4<u32>(14444u, 1u, 4294967295u, 10321u)).b + _wgslsmith_div_f32(arg_0.a.a, 603f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x * -1000f)), _wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(-arg_0.a.a))))), Struct_3(var_0.xx, func_5(Struct_2(u_input.b.zxz, _wgslsmith_f_op_f32(trunc(-663f)), arg_0.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(883f, var_0.x))), true), vec3<i32>(-17744i, 1i, 5320i), ~max(-8549i, 13243i), true).a.c.zx), func_5(func_1(vec2<i32>(0i, 0i), var_0.x, vec3<i32>(arg_0.a.b & -2147483647i, global1[_wgslsmith_index_u32(~72812u, 8u)], _wgslsmith_add_i32(global1[_wgslsmith_index_u32(22988u, 8u)], global1[_wgslsmith_index_u32(33167u, 8u)])), firstLeadingBit(vec4<u32>(1u, 62120u, 1u, 0u))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.a.b, 10489i), -1i), 47109i, -(~u_input.b.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(32020i, arg_0.a.b, u_input.a), 0i), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(53915u, 1u), 8u)]), !func_1(vec2<i32>(-55010i, -3718i), 1386f, select(vec3<i32>(u_input.a, arg_0.a.b, arg_0.a.b), u_input.b.zyw, vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x)), firstTrailingBit(vec4<u32>(2476u, 43732u, 5659u, 0u))).c.c.x).a);
    var var_2 = vec3<u32>(~0u, firstTrailingBit(767u), 0u);
    return ~(~firstLeadingBit(firstLeadingBit(var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(600f - _wgslsmith_f_op_f32(648f * -703f)), 1i, vec3<bool>(true, true, true)));
    var var_1 = !(!(!vec4<bool>(all(var_0.a.c), true, var_0.a.c.x, var_0.a.c.x)));
    let var_2 = u_input.b;
    var var_3 = firstTrailingBit(~38430u) ^ func_6(func_5(func_1(var_2.xw, _wgslsmith_f_op_f32(min(1686f, var_0.a.a)), reverseBits(vec3<i32>(-2147483647i, var_2.x, 1i)), vec4<u32>(59587u, 80189u, 1u, 2605u)), var_2.yyz, max(var_2.x, -var_2.x), false));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(-1i) * -vec3<i32>(var_0.a.b, 57826i, global1[_wgslsmith_index_u32(21675u, 8u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(~5398u), _wgslsmith_clamp_u32(~47182u, ~40452u, 1u)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(99134u, 8269u)), ~vec2<u32>(46144u, 46497u))), vec4<u32>(79073u, 1u, min(1u, ~max(0u, 75672u)), 1u));
}

