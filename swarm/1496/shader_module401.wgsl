struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 79848u), vec2<u32>(0u, 4294967295u), vec2<u32>(13978u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(30530u, 8689u), vec2<u32>(33711u, 0u), vec2<u32>(19593u, 1u), vec2<u32>(74248u, 62349u), vec2<u32>(48113u, 23544u), vec2<u32>(4294967295u, 1525u), vec2<u32>(4294967295u, 72949u), vec2<u32>(1u, 15188u), vec2<u32>(50838u, 103803u), vec2<u32>(72658u, 1u), vec2<u32>(0u, 91381u), vec2<u32>(0u, 20815u), vec2<u32>(4294967295u, 8649u), vec2<u32>(0u, 19322u), vec2<u32>(11524u, 27430u), vec2<u32>(38001u, 0u), vec2<u32>(69143u, 4294967295u), vec2<u32>(22026u, 95679u), vec2<u32>(0u, 4294967295u), vec2<u32>(31938u, 68522u), vec2<u32>(9433u, 4294967295u), vec2<u32>(8794u, 0u), vec2<u32>(49254u, 6634u));

var<private> global1: vec2<i32> = vec2<i32>(43101i, -1i);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(1429f, 642f, 809f), -1253i), Struct_1(vec3<f32>(-561f, -869f, -1057f), 2147483647i), Struct_1(vec3<f32>(249f, -244f, 2193f), 2167i), Struct_1(vec3<f32>(-1362f, 1090f, -887f), -3017i), Struct_1(vec3<f32>(934f, -1000f, -2723f), -13693i), Struct_1(vec3<f32>(1380f, -921f, -835f), -18629i), Struct_1(vec3<f32>(275f, 512f, 643f), 8i), Struct_1(vec3<f32>(733f, 528f, 700f), 24306i), Struct_1(vec3<f32>(1331f, 104f, 975f), 5707i), Struct_1(vec3<f32>(-1172f, -910f, -1499f), -201i), Struct_1(vec3<f32>(-709f, 597f, 891f), -1i), Struct_1(vec3<f32>(-1275f, 1309f, 519f), 2147483647i), Struct_1(vec3<f32>(-1206f, 1137f, 1737f), -39628i), Struct_1(vec3<f32>(-766f, 269f, 580f), -1i), Struct_1(vec3<f32>(-188f, -638f, 639f), i32(-2147483648)), Struct_1(vec3<f32>(-1000f, 754f, -944f), 0i), Struct_1(vec3<f32>(149f, -479f, -1819f), 1i), Struct_1(vec3<f32>(507f, -2440f, -1128f), 1i), Struct_1(vec3<f32>(-1027f, -369f, -1000f), 4454i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = vec4<f32>(-734f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(430f - _wgslsmith_div_f32(1645f, -1243f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1171f, -465f))), 167f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1016f - 1020f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-562f)))), all(vec3<bool>(true, true, true)))));
    let var_1 = ~(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, arg_0) ^ reverseBits(vec2<i32>(global1.x, u_input.b)), ~(-vec2<i32>(global1.x, 2147483647i))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(706f, var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1576f - var_0.x) * _wgslsmith_f_op_f32(var_0.x + 693f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(856f, var_0.x, var_0.x, var_0.x), vec4<f32>(138f, -123f, -357f, -1009f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -823f, var_0.x, 1156f), vec4<f32>(-1515f, var_0.x, 265f, var_0.x)))))), _wgslsmith_f_op_f32(floor(-766f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -161f)))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(892f - 504f), 661f));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 853f, 1210f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -221f, 221f)), vec4<f32>(-822f, 2096f, -288f, -421f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-758f, var_0.x, -1598f, -249f), vec4<f32>(var_0.x, -2243f, -816f, var_0.x), false)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.yzy - _wgslsmith_f_op_vec3_f32(var_0.xwy * vec3<f32>(_wgslsmith_f_op_f32(ceil(-2048f)), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), -_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.b, arg_0)), abs(1647i)));
    return _wgslsmith_sub_vec2_i32(~max(~vec2<i32>(global1.x, -2147483647i), _wgslsmith_mult_vec2_i32(var_1, var_1)) ^ min(_wgslsmith_div_vec2_i32(select(vec2<i32>(global1.x, 2147483647i), var_1, vec2<bool>(false, false)), ~vec2<i32>(20481i, u_input.b)), abs(vec2<i32>(u_input.a, -1i))), firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_2.b), var_1) ^ var_1));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 19>();
    global1 = _wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(-4755i, u_input.a | global1.x)), -(~(~firstLeadingBit(vec2<i32>(u_input.a, 39933i)))));
    global2 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-2851i, -u_input.b) | _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, 13059i), ~vec2<i32>(u_input.b, u_input.a)), select(func_3(-10201i), vec2<i32>(global1.x, u_input.a), !vec2<bool>(arg_0.x, arg_0.x)) & ~min(vec2<i32>(u_input.a, -1i), vec2<i32>(global1.x, arg_2.b))) >> (global0[_wgslsmith_index_u32(arg_1.x, 27u)] % vec2<u32>(32u));
    let var_1 = arg_0.x;
    return global2[_wgslsmith_index_u32(u_input.c, 19u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 815f;
    global2 = array<Struct_1, 19>();
    return func_2(select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(false, select(u_input.c == u_input.c, true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), 65419i != global1.x), !all(vec4<bool>(false, false, false, true)))), vec4<u32>(max(abs(791u), countOneBits(1u)), ~u_input.c, u_input.c >> (abs(u_input.c) % 32u), u_input.c ^ ~u_input.c) << (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 38302u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 10331u, u_input.c)) >> ((vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) | vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c, 113421u, u_input.c, u_input.c)), abs(vec4<u32>(u_input.c, 47953u, u_input.c, 41193u)), abs(vec4<u32>(0u, 1u, 31960u, u_input.c)))) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(144f - arg_1.a.x), _wgslsmith_f_op_f32(var_0 + -1118f), _wgslsmith_f_op_f32(arg_1.a.x + -1998f))), -90565i));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = func_2(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), vec2<bool>(countOneBits(u_input.c) != u_input.c, false), firstLeadingBit(-47607i & u_input.b) >= arg_2.b), ~(~vec4<u32>(1u, u_input.c, u_input.c, 78648u) | firstLeadingBit(min(vec4<u32>(1u, u_input.c, u_input.c, 43645u), vec4<u32>(u_input.c, 13477u, u_input.c, 0u)))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 1224f, arg_0.x))), u_input.b), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 40301u), vec4<u32>(75298u, u_input.c, u_input.c, 0u)), abs(vec4<u32>(1u, u_input.c, 1u, 62450u))), func_4(Struct_1(vec3<f32>(-832f, arg_0.x, arg_2.a.x), global1.x), Struct_1(vec3<f32>(1155f, -1000f, arg_2.a.x), -34961i)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 19u)];
    let var_2 = true | any(vec2<bool>(true, true));
    let var_3 = 1i;
    let var_4 = u_input.c;
    return u_input.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.c, ~u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c ^ 1u, _wgslsmith_mult_u32(5698u, u_input.c)), abs(reverseBits(vec2<u32>(36895u, u_input.c))))) >> (_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, -725f, 377f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1803f))), Struct_1(arg_0, global1.x), func_4(Struct_1(vec3<f32>(arg_0.x, 1862f, arg_0.x), global1.x), func_2(vec2<bool>(arg_3, arg_3), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), Struct_1(vec3<f32>(-112f, arg_1.a.x, -156f), -1i)))), 27u)], (vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | vec2<u32>(~u_input.c, u_input.c)) % vec2<u32>(32u));
    global1 = countOneBits(reverseBits(select(vec2<i32>(arg_1.b, arg_2 | 1i), vec2<i32>(~9115i, -arg_1.b), !select(vec2<bool>(false, false), vec2<bool>(false, arg_3), arg_3))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(17391u), 21168u), 27u)];
    var var_1 = (vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), u_input.c, _wgslsmith_clamp_u32(~34490u, firstTrailingBit(u_input.c), 47898u)) ^ vec3<u32>(~1u & ~var_0.x, u_input.c, ~_wgslsmith_mult_u32(u_input.c, u_input.c))) | vec3<u32>(~(~805u), ~_wgslsmith_mod_u32(~var_0.x, firstLeadingBit(var_0.x)), 10212u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a), firstLeadingBit(max(~arg_2, arg_2) | arg_2));
    return func_2(vec2<bool>(true, true), ~countOneBits(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, u_input.c, var_0.x), ~vec4<u32>(4294967295u, 4294967295u, u_input.c, 20388u))), func_2(!(!vec2<bool>(arg_3, arg_3)), _wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(u_input.c, 0u, 14630u, 82358u)), reverseBits(vec4<u32>(0u, 9106u, var_0.x, var_0.x)), arg_3 | false), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_0.x, 1u), vec4<u32>(0u, var_0.x, 30380u, 4294967295u)), vec4<u32>(1u, 1u, 4294967295u, 23358u))), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1651f, -259f, 1092f) - vec3<f32>(-586f, 1000f, 801f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, 1997f, 1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, -1000f, 483f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1564f, 606f, -930f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-276f)), 594f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, -129f, -1322f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-262f, 770f, 251f) * vec3<f32>(-1203f, 841f, -1000f)))), 1i), -1i, (i32(-1i) * -51197i) < ~u_input.a);
    let var_1 = 521f;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(1227f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_0.a.x)) + var_0.a.x)), func_1(_wgslsmith_f_op_vec3_f32(-var_0.a), func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, var_0.a.x, -217f)))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 36878u, u_input.c), 19u)], ~(-global1.x), !select(false, false, false)), select(countOneBits(abs(2994i)), max(1i, -1i), all(vec3<bool>(true, true, true))), true).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), var_1);
    global1 = ~(~(-(-vec2<i32>(1i, var_0.b) & vec2<i32>(u_input.b, 16825i))));
    var var_3 = 1113f;
    var var_4 = var_0.a.yx;
    let var_5 = func_4(global2[_wgslsmith_index_u32(u_input.c, 19u)], func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), 92162i < var_0.b), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), vec4<u32>(max(4294967295u, ~4294967295u), u_input.c, _wgslsmith_add_u32(u_input.c, 0u), u_input.c), func_2(vec2<bool>(select(false, false, false), select(true, true, false)), ~(~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), true), ~vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), var_0))));
    let var_6 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !(var_0.b < -2633i), !any(vec3<bool>(true, true, true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c) & ~u_input.c, abs(51559u), _wgslsmith_mod_u32(18964u, func_5(vec4<f32>(var_2.x, 1021f, var_0.a.x, var_5.a.x), Struct_1(vec3<f32>(var_0.a.x, 463f, 477f), 17489i), var_0)), 1u), ((_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-22901i, var_0.b)) & u_input.b) | _wgslsmith_sub_i32(abs(u_input.a), 1i)) << (reverseBits(u_input.c) % 32u), vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(577f, -923f, false))), _wgslsmith_f_op_f32(1000f + 2120f)));
}

