struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec4<i32>(1i, 0i, 1i, -37222i), -1000f, 271f, vec2<f32>(-1819f, -1191f), -132f), Struct_5(vec4<i32>(-8574i, 0i, 23558i, i32(-2147483648)), -697f, -1343f, vec2<f32>(1598f, 1634f), 1777f), Struct_5(vec4<i32>(-15107i, 33064i, 0i, -3401i), 965f, -1136f, vec2<f32>(-463f, 1900f), 714f), Struct_5(vec4<i32>(1i, 53616i, -65999i, 1i), -1684f, 286f, vec2<f32>(-428f, -802f), 1368f), Struct_5(vec4<i32>(25120i, 2147483647i, -40456i, -1i), 554f, 2136f, vec2<f32>(-1021f, -454f), -331f), Struct_5(vec4<i32>(2147483647i, -1i, 10433i, -43666i), 313f, 550f, vec2<f32>(-1047f, 2518f), -1327f), Struct_5(vec4<i32>(-62232i, 0i, 4560i, 1i), 809f, -655f, vec2<f32>(-293f, 274f), -764f), Struct_5(vec4<i32>(0i, 32530i, i32(-2147483648), 1i), 670f, -2051f, vec2<f32>(-332f, 1000f), 843f), Struct_5(vec4<i32>(-1i, 41983i, -56004i, -6572i), 400f, -1084f, vec2<f32>(-1084f, -1000f), -1756f), Struct_5(vec4<i32>(26822i, -1i, 43622i, 64375i), 374f, 265f, vec2<f32>(1000f, 416f), -928f), Struct_5(vec4<i32>(7456i, -12914i, 2147483647i, -12524i), 1432f, -1665f, vec2<f32>(674f, -773f), 1212f), Struct_5(vec4<i32>(0i, 2376i, 1i, -29528i), 1888f, -1206f, vec2<f32>(1756f, -1342f), 164f), Struct_5(vec4<i32>(0i, -21650i, 22792i, -1i), -716f, 2218f, vec2<f32>(-732f, 1351f), 2096f), Struct_5(vec4<i32>(i32(-2147483648), 47890i, -17736i, 43116i), 427f, 124f, vec2<f32>(-431f, -494f), -865f), Struct_5(vec4<i32>(-14014i, -11072i, 1i, 1707i), -667f, -490f, vec2<f32>(-1324f, 857f), 170f), Struct_5(vec4<i32>(-18083i, -14451i, 110843i, -16408i), -683f, 1000f, vec2<f32>(247f, -1138f), -283f), Struct_5(vec4<i32>(-8091i, -1i, 16749i, -24671i), -622f, 1498f, vec2<f32>(1529f, -1925f), 688f), Struct_5(vec4<i32>(8650i, i32(-2147483648), -1i, 4692i), 544f, 572f, vec2<f32>(-1977f, -1134f), -1337f), Struct_5(vec4<i32>(7012i, i32(-2147483648), 54753i, -13530i), -330f, -143f, vec2<f32>(-585f, -1810f), -830f), Struct_5(vec4<i32>(50112i, 80905i, -1i, 1i), -414f, -1000f, vec2<f32>(-133f, -1000f), -705f), Struct_5(vec4<i32>(0i, 0i, 14387i, -30850i), -1800f, 1951f, vec2<f32>(-163f, 663f), -976f), Struct_5(vec4<i32>(5633i, 0i, -1i, 2873i), -119f, 1252f, vec2<f32>(-205f, -594f), -1567f), Struct_5(vec4<i32>(1i, -1i, 36281i, -31506i), -129f, 528f, vec2<f32>(239f, -1449f), 921f), Struct_5(vec4<i32>(-1i, -54025i, -37415i, -10013i), -1000f, 1000f, vec2<f32>(1615f, 1973f), -1023f), Struct_5(vec4<i32>(0i, -14985i, -36086i, 1i), -1538f, 1000f, vec2<f32>(981f, -1514f), -965f));

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(0u, 0u), vec2<u32>(1u, 58901u), vec2<u32>(29532u, 21576u), vec2<u32>(4294967295u, 20694u), vec2<u32>(0u, 1u), vec2<u32>(28010u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(7643u, 25202u), vec2<u32>(0u, 78398u), vec2<u32>(36092u, 0u), vec2<u32>(4294967295u, 19813u), vec2<u32>(12444u, 1u), vec2<u32>(100225u, 0u), vec2<u32>(1u, 279u), vec2<u32>(0u, 0u), vec2<u32>(28242u, 4294967295u), vec2<u32>(37061u, 21401u), vec2<u32>(34727u, 15828u), vec2<u32>(44415u, 0u), vec2<u32>(1u, 43689u), vec2<u32>(78395u, 1u), vec2<u32>(1u, 55206u), vec2<u32>(1u, 13786u), vec2<u32>(23737u, 14403u), vec2<u32>(1u, 4294967295u), vec2<u32>(29726u, 4294967295u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> f32 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.d)));
    let var_2 = vec2<bool>(69723u != u_input.b, select(true, false, true) || false);
    let var_3 = Struct_3(Struct_1(~55260u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) - 2191f), _wgslsmith_f_op_f32(round(-1000f))), Struct_2(Struct_1(arg_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, arg_0.c)))), Struct_1(max(~arg_1.x, 1u), 1581f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1052f, arg_0.c)), -250f, var_2.x)))), Struct_2(Struct_1(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * -536f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.x - 1000f)))), Struct_1(25654u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), var_1.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(arg_0.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2404f, _wgslsmith_f_op_f32(abs(475f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.a.b)), var_1.x)))), var_2));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.x + var_3.c.b.b)))))));
}

fn func_2() -> Struct_2 {
    var var_0 = -442f;
    let var_1 = vec3<bool>(!(!((3223i == u_input.d) | false)), false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<i32>(u_input.c.x, -2147483647i, -8416i, u_input.d), 310f, 602f, vec2<f32>(834f, -1023f), 764f), _wgslsmith_clamp_vec4_u32(vec4<u32>(79899u, 12153u, 0u, 12742u), vec4<u32>(1u, 48193u, 4011u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 13053u)))))) <= 541f);
    var_0 = _wgslsmith_f_op_f32(1697f + 955f);
    let var_2 = Struct_2(Struct_1(u_input.b, -347f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-324f, -2511f)))), -316f)), Struct_1(~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(609f + -189f), _wgslsmith_div_f32(1000f, -401f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-714f, -1000f)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b, 25u)], vec4<u32>(18544u, u_input.b, u_input.b, 8401u))))))));
    let var_3 = max(vec4<i32>(-19900i, u_input.a.x | -u_input.c.x, ~abs(-1i), -u_input.d), u_input.a);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<f32>) -> u32 {
    global0 = array<Struct_5, 25>();
    var var_0 = vec3<bool>(any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), true, false);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(func_2().b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_f_op_f32(step(arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-452f, arg_0.a.b)))))));
    let var_2 = !(!(!vec4<bool>(true, var_0.x, true, arg_2.x == -1706f)));
    var var_3 = select(vec4<u32>(79689u >> (~abs(u_input.b) % 32u), select(firstLeadingBit(4294967295u), ~max(u_input.b, 0u), true), 4294967295u, ~4294967295u), abs(vec4<u32>(~57335u, 4294967295u, ~1u, ~90342u) >> (countOneBits(firstTrailingBit(vec4<u32>(62133u, 7343u, 61097u, 0u))) % vec4<u32>(32u))), var_2.x && var_2.x);
    return 53310u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: u32) -> vec4<bool> {
    global0 = array<Struct_5, 25>();
    global1 = array<vec2<u32>, 26>();
    global0 = array<Struct_5, 25>();
    let var_0 = arg_1.b;
    let var_1 = _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(u_input.b, arg_0.a, 42490u)) ^ ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 4518u), vec3<u32>(4294967295u, 69149u, 0u))), vec3<u32>(select(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_3, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(20781u, arg_3, u_input.b, 4294967295u), vec4<u32>(40401u, 62548u, arg_2.x, 46068u)), arg_2.x), func_4(func_2(), global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.c, 2041f))), false), var_0.a, 4294967295u));
    return !vec4<bool>(true, true, true, any(select(select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(false, arg_1.a.x, false), true), select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(true, arg_1.a.x, true), vec3<bool>(arg_1.a.x, true, arg_1.a.x)), arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 26>();
    global0 = array<Struct_5, 25>();
    global0 = array<Struct_5, 25>();
    let var_0 = all(select(!select(vec4<bool>(true, true, true, true), func_1(Struct_1(25553u, 1191f, -1506f), Struct_4(vec2<bool>(false, false), Struct_1(0u, -1327f, 971f)), global1[_wgslsmith_index_u32(46127u, 26u)], u_input.b), vec4<bool>(false, false, false, true)), vec4<bool>(u_input.b >= (3056u ^ u_input.b), true, any(vec3<bool>(false, false, false)) && true, select(false, true, true)), true));
    let var_1 = vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(select(select(abs(u_input.a), u_input.a, !vec4<bool>(var_0, var_0, true, true)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(15470i, -2147483647i, u_input.d, u_input.a.x)), u_input.a, !vec4<bool>(var_0, true, true, false)), !select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, false, false), false)), u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a.x, reverseBits(u_input.c.x)), firstTrailingBit(vec3<i32>(u_input.d, 0i, ~34440i))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-41521i), u_input.d, 37787i, -16699i), vec4<i32>(2147483647i, ~(~4546i), u_input.a.x, -35769i)));
    var var_2 = ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u & u_input.b, firstTrailingBit(u_input.b), 4294967295u, ~10564u), ~(~vec4<u32>(u_input.b, 15004u, u_input.b, 0u)), ~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, 104422u))), select(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~47131u, ~u_input.b), ~vec4<u32>(u_input.b, 4294967295u, 0u, 62790u) & abs(vec4<u32>(23941u, 8348u, u_input.b, u_input.b)), all(select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), var_0))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.zy, -392f);
}

