struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(36474u, vec3<u32>(49026u, 1u, 12713u), vec2<i32>(68912i, 2147483647i), vec2<u32>(1u, 6345u), 6099u), Struct_1(84135u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<i32>(2147483647i, -1i), vec2<u32>(24863u, 0u), 55841u), Struct_1(4294967295u, vec3<u32>(48454u, 1u, 4294967295u), vec2<i32>(-1i, 18139i), vec2<u32>(0u, 64414u), 0u), Struct_1(3742u, vec3<u32>(8206u, 0u, 12405u), vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(57463u, 81584u), 27116u), Struct_1(546u, vec3<u32>(60326u, 4294967295u, 90091u), vec2<i32>(i32(-2147483648), -11095i), vec2<u32>(4294967295u, 11284u), 62682u), Struct_1(0u, vec3<u32>(0u, 1u, 56148u), vec2<i32>(-16754i, -1i), vec2<u32>(57778u, 1u), 0u), Struct_1(4294967295u, vec3<u32>(1u, 7150u, 4294967295u), vec2<i32>(30235i, 14612i), vec2<u32>(6742u, 4294967295u), 1u), Struct_1(6593u, vec3<u32>(96732u, 4294967295u, 4294967295u), vec2<i32>(0i, -35941i), vec2<u32>(27195u, 0u), 0u), Struct_1(1u, vec3<u32>(4294967295u, 20951u, 9455u), vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(0u, 16802u), 4294967295u), Struct_1(0u, vec3<u32>(37300u, 16268u, 0u), vec2<i32>(25736i, -34721i), vec2<u32>(4294967295u, 1u), 4294967295u), Struct_1(0u, vec3<u32>(42979u, 21882u, 22372u), vec2<i32>(27275i, 1i), vec2<u32>(0u, 4127u), 1u), Struct_1(4294967295u, vec3<u32>(11925u, 5336u, 66702u), vec2<i32>(-26874i, -1i), vec2<u32>(19597u, 0u), 40532u), Struct_1(1826u, vec3<u32>(1u, 0u, 4294967295u), vec2<i32>(1i, i32(-2147483648)), vec2<u32>(19254u, 1u), 7862u), Struct_1(4294967295u, vec3<u32>(5921u, 19091u, 31294u), vec2<i32>(2147483647i, 27973i), vec2<u32>(4294967295u, 25207u), 29723u), Struct_1(38980u, vec3<u32>(99451u, 1u, 1u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(38854u, 1u), 8008u), Struct_1(28931u, vec3<u32>(0u, 27867u, 0u), vec2<i32>(-1i, 37318i), vec2<u32>(1u, 56143u), 4378u), Struct_1(25684u, vec3<u32>(1u, 4294967295u, 4294967295u), vec2<i32>(-1216i, 13586i), vec2<u32>(1u, 4294967295u), 0u), Struct_1(0u, vec3<u32>(23417u, 1u, 0u), vec2<i32>(1596i, 0i), vec2<u32>(4294967295u, 14119u), 68980u), Struct_1(58444u, vec3<u32>(4294967295u, 10901u, 137307u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(4294967295u, 93697u), 36919u));

var<private> global1: array<bool, 12> = array<bool, 12>(false, false, true, true, true, false, true, true, true, true, false, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = 1000f != arg_0.a.x;
    let var_1 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.b.x, 0u, u_input.d, 29752u), vec4<u32>(1u, 0u, arg_0.b.a, 0u) | vec4<u32>(arg_0.c.a, 20012u, 5782u, arg_0.b.e)) | ~(~23990u), 1u, u_input.d);
    var var_2 = u_input.a;
    global1 = array<bool, 12>();
    var var_3 = -844f;
    return vec2<f32>(-465f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.d, _wgslsmith_add_u32(~(~4294967295u), max(4294967295u, u_input.b))), vec3<u32>(firstTrailingBit(42304u), u_input.b, countOneBits(u_input.d)) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(21441u, u_input.b, arg_3.x) >> (vec3<u32>(u_input.d, arg_3.x, u_input.b) % vec3<u32>(32u)), vec3<u32>(0u, 3205u, 35599u) | vec3<u32>(u_input.d, arg_3.x, arg_3.x)) % vec3<u32>(32u)), arg_1, vec2<u32>(u_input.d >> (98894u % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(37314u, arg_3.x)), ~arg_3)), arg_3.x);
    let var_1 = 30558u;
    global0 = array<Struct_1, 19>();
    global1 = array<bool, 12>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1079f)) + _wgslsmith_f_op_f32(arg_2 - arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1216f, _wgslsmith_f_op_f32(-834f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2, -592f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1440f, 945f, arg_0.x), vec3<f32>(arg_2, -1227f, var_2.x))))))));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec3<f32>(arg_0.a.x, -135f, 1430f), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)], select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, global1[_wgslsmith_index_u32(u_input.b, 12u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(15452u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), false)), vec2<bool>(true, true)))), u_input.e.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(3136f, 935f)))))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(select(~vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 4294967295u), true), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(0u, 65225u))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b)) & reverseBits(vec2<u32>(54672u, u_input.d))))));
    global1 = array<bool, 12>();
    let var_1 = vec3<u32>(1u, 7800u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(133325u, 19782u, 11711u, 4294967295u), ~vec4<u32>(27180u, u_input.d, 28909u, u_input.d)), ~vec4<u32>(86284u, u_input.b, u_input.d, 38150u) << (~vec4<u32>(32420u, u_input.d, u_input.b, 1u) % vec4<u32>(32u))), 0u));
    let var_2 = abs(vec2<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_add_i32(0i, -u_input.c)), -18080i & select(60930i, _wgslsmith_clamp_i32(u_input.e.x, u_input.a, u_input.c), !global1[_wgslsmith_index_u32(7191u, 12u)])));
    var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(18299u, 12u)], any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)], true, global1[_wgslsmith_index_u32(84736u, 12u)]))), select(vec3<bool>(true, false & global1[_wgslsmith_index_u32(var_1.x, 12u)], all(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))), vec3<bool>(global1[_wgslsmith_index_u32(46079u, 12u)], any(vec3<bool>(false, false, true)), global1[_wgslsmith_index_u32(~var_1.x, 12u)]), select(select(vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), global1[_wgslsmith_index_u32(30762u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)]), global1[_wgslsmith_index_u32(u_input.b | var_1.x, 12u)])), global1[_wgslsmith_index_u32((_wgslsmith_mult_u32(68927u, 1u) << (u_input.b % 32u)) ^ (var_1.x | ~var_1.x), 12u)])));
    return Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.a)))))), global0[_wgslsmith_index_u32(firstLeadingBit(109067u), 19u)], global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(33483u & var_1.x, ~(1u & var_1.x))), 19u)], vec3<bool>(any(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 12u)], false, false, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f * 327f)) <= arg_0.a.x, (var_2.x <= -43522i) && (_wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(f32(-1f) * -1504f))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, arg_3.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(523f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - arg_3.a)));
    var var_1 = u_input.b;
    var var_2 = func_2(Struct_3(arg_3.a)).b;
    global1 = array<bool, 12>();
    let var_3 = var_0.a.x;
    return ~(_wgslsmith_add_u32(firstTrailingBit(1u), arg_3.c.b.x) | abs(9347u));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_5(!vec2<bool>(false, any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 12u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 12u)], false), true))), ~_wgslsmith_div_vec2_i32(u_input.e.zz, vec2<i32>(21290i, ~1i)), false, func_2(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(-127f)), 1251f, _wgslsmith_f_op_f32(2044f * 488f)))));
    var var_1 = func_2(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(412f)) - _wgslsmith_f_op_f32(floor(-177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(1f + -1103f))));
    var var_2 = abs(func_2(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 937f, var_1.a.x))))).b.d);
    let var_3 = ~(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 2266u, 4294967295u, 19170u), vec4<u32>(arg_0, 0u, 0u, u_input.b)), vec4<u32>(7502u, 35473u, 4294967295u, 5325u))) >> (vec4<u32>(17499u, var_2.x, var_1.b.e, ~(~0u)) % vec4<u32>(32u)));
    var var_4 = -var_1.c.c;
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-1f)), -2183f, _wgslsmith_f_op_f32(max(var_1.a.x, -695f))), Struct_1(4294967295u, ~(~(var_1.b.b >> (vec3<u32>(var_1.c.d.x, u_input.b, arg_0) % vec3<u32>(32u)))), select(vec2<i32>(u_input.a, ~0i), max(vec2<i32>(0i, 5584i), min(vec2<i32>(u_input.e.x, var_4.x), vec2<i32>(1i, -14410i))), !var_1.d.xz), var_1.b.b.yx, var_3.x), func_2(Struct_3(var_1.a)).b, !select(func_2(Struct_3(vec3<f32>(1378f, 1390f, var_1.a.x))).d, select(var_1.d, !vec3<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 12u)], true), func_2(Struct_3(vec3<f32>(-1020f, 1796f, -510f))).d), var_1.d));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_vec3_u32(arg_1.b.b << (vec3<u32>(1u, arg_1.b.d.x, u_input.b) % vec3<u32>(32u)), arg_1.b.b);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(863f, 359f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1640f, arg_1.a.x, -350f, 145f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, arg_0, -560f, 1013f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -853f, 308f, arg_0) * vec4<f32>(arg_1.a.x, -2020f, arg_0, 1764f))), select(select(vec4<bool>(false, arg_1.d.x, global1[_wgslsmith_index_u32(arg_1.b.b.x, 12u)], true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(10634u, 12u)], false), vec4<bool>(arg_1.d.x, arg_1.d.x, true, global1[_wgslsmith_index_u32(arg_1.c.d.x, 12u)])), vec4<bool>(arg_1.d.x, arg_1.d.x, true, false), vec4<bool>(false, arg_1.d.x, global1[_wgslsmith_index_u32(arg_1.c.b.x, 12u)], arg_1.d.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 218f, _wgslsmith_f_op_f32(-arg_1.a.x), 624f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -613f, arg_0, -688f) + _wgslsmith_div_vec4_f32(vec4<f32>(816f, 983f, 229f, 1524f), vec4<f32>(1518f, arg_1.a.x, -557f, 980f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -739f), _wgslsmith_f_op_f32(min(162f, -607f)), 1000f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(495f)))), -220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1772f) - _wgslsmith_f_op_f32(642f * 105f))))));
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(857f, func_1(var_1))))), 17453i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(func_2(Struct_3(vec3<f32>(var_0.a.x, -812f, -102f))).a.x, var_0.a.x, 2885f, var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-328f, var_0.a.x, var_0.a.x, -468f), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 803f), vec4<bool>(false, true, true, true))))))));
}

