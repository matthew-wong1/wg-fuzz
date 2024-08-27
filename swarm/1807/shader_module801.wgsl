struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, true, true, true, false, true, false, false, true, false, true, false, false, false, true, false, false, true, true, false, true, false, true, false, false, false, false);

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(1u, 0u, 10026u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(54253u, 1u, 53182u)), 3120u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 0u, 22355u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(4295u, 17881u, 4294967295u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(0u, 0u, 24477u)), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(36762u, 6880u, 0u)), 90006u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(93637u, 1u, 1u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(50624u, 1u, 30206u)), 16240u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 1u, 5026u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(13260u, 0u, 21439u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(0u, 110063u, 51976u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(0u, 0u, 62505u)), 43488u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(8631u, 0u, 29610u)), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(62531u, 1995u, 4796u)), 1u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(79253u, 88964u, 10081u)), Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(32885u, 15521u, 4294967295u)), 1u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 4294967295u, 14671u)), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(0u, 4294967295u, 4294967295u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 34122u, 9451u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 32553u, 49805u)), 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(55974u, 12255u, 1u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(62953u, 4294967295u, 4294967295u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(0u, 46065u, 0u)), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(1u, 6937u, 0u)), 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 12554u, 1u)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(26673u, 4294967295u, 1772u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(24340u, 0u, 4024u)), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(1u, 1u, 1u)), 40182u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(0u, 9495u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(0u, 4294967295u, 63645u)), 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 0u, 17886u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 0u, 28094u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 1674u, 1u)), 75119u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 4294967295u, 8186u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(1u, 1u, 0u)), 37311u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(19180u, 4294967295u, 14308u)), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(37774u, 28410u, 87134u)), 46805u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(37639u, 43395u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(11722u, 1u, 0u)), 87350u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(35531u, 1u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(15889u, 0u, 27964u)), 30442u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(17665u, 12146u, 80201u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(0u, 1u, 0u)), 1u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 61722u, 80862u)), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(104705u, 0u, 92800u)), 75196u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(0u, 53938u, 0u)), Struct_1(vec4<bool>(false, false, true, true), vec3<u32>(0u, 75335u, 1u)), 0u)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(8793u, 19841u, 59267u)), 4294967295u)), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(39334u, 78478u, 1u)), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(19001u, 21421u, 85269u)), 15275u)));

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = arg_1.yz;
    var var_1 = arg_0.a.b.a.yxx;
    var var_2 = Struct_3(arg_0.a);
    let var_3 = vec3<bool>(all(vec3<bool>(true || all(vec2<bool>(true, false)), !any(vec3<bool>(true, arg_0.a.b.a.x, true)), false)), countOneBits(~(-2147483647i)) != u_input.a, global1[_wgslsmith_index_u32(46938u, 28u)]);
    var var_4 = firstLeadingBit(~((var_2.a.c & 1u) | ~arg_0.a.b.b.x)) | ~107336u;
    return _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.a.b.b.x, var_2.a.a.b.x, var_2.a.c), max(vec4<u32>(11860u, 50457u, 12352u, arg_0.a.a.b.x), vec4<u32>(0u, var_2.a.c, var_2.a.c, arg_0.a.a.b.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a.c, var_2.a.a.b.x, 13056u), 0u), ~0u ^ var_2.a.c, var_2.a.c, _wgslsmith_mult_u32(0u, var_2.a.c)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_0.a.b.b.x, var_2.a.b.b.x, arg_0.a.c, arg_0.a.a.b.x)), ~vec4<u32>(arg_0.a.c, var_2.a.b.b.x, 40774u, 0u)) >> (vec4<u32>(abs(77215u), min(arg_0.a.b.b.x, 0u), _wgslsmith_clamp_u32(1u, var_2.a.c, arg_0.a.c), var_2.a.b.b.x) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(52038u, 4294967295u, 0u, 34736u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(74750u, 0u), min(67280u, 71306u)), 26u)], arg_0));
    var var_1 = Struct_1(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 28u)], false, global1[_wgslsmith_index_u32(var_0.x, 28u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(45041u, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(18920u, 28u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)], true)), all(vec3<bool>(global1[_wgslsmith_index_u32(13325u, 28u)], false, false))), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, var_0.x), 28u)], false, !global1[_wgslsmith_index_u32(var_0.x, 28u)], true), vec4<bool>(global1[_wgslsmith_index_u32(~var_0.x, 28u)], all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)])), global1[_wgslsmith_index_u32(var_0.x, 28u)] | global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 1u), 28u)])), var_0.wwz);
    var_0 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(~33365u, countOneBits(29513u), select(var_0.x, 1u, var_1.a.x), 13894u), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, var_0.x, 0u, var_1.b.x), vec4<u32>(16223u, var_1.b.x, var_1.b.x, 1u), vec4<u32>(9457u, var_0.x, var_1.b.x, 22089u)))) >> (abs((vec4<u32>(var_1.b.x, var_0.x, 33454u, 0u) & vec4<u32>(var_0.x, 43322u, var_1.b.x, var_1.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(20502u, var_1.b.x, 4294967295u, 13868u), vec4<u32>(var_0.x, 44002u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), min(_wgslsmith_mod_vec4_u32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.x, 1u), 26u)], arg_0), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 0u, 10130u), vec4<u32>(var_1.b.x, var_0.x, var_1.b.x, 23887u)), ~vec4<u32>(var_1.b.x, 10896u, 1u, var_1.b.x))), vec4<u32>(1u, _wgslsmith_mod_u32(0u, var_1.b.x), var_0.x << ((var_1.b.x | 84783u) % 32u), var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(~select(42566u, var_1.b.x, global1[_wgslsmith_index_u32(77655u, 28u)]), _wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec3_u32(var_0.wzx, var_0.zxw)), max(countOneBits(var_0.x), var_0.x), _wgslsmith_clamp_u32(4294967295u, ~9031u, firstTrailingBit(var_1.b.x))), ~(~(~vec4<u32>(58901u, 70151u, 1u, 31181u)))));
    let var_2 = select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 28u)], !select(false, !var_1.a.x, global1[_wgslsmith_index_u32(var_0.x, 28u)]), !global1[_wgslsmith_index_u32(~4294967295u, 28u)] && all(!vec4<bool>(false, var_1.a.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], var_1.a.x)), any(var_1.a.xzw)), vec4<bool>(any(vec4<bool>(true, select(global1[_wgslsmith_index_u32(23631u, 28u)], false, global1[_wgslsmith_index_u32(7292u, 28u)]), var_1.a.x, any(vec4<bool>(var_1.a.x, global1[_wgslsmith_index_u32(1u, 28u)], false, false)))), any(vec4<bool>(15131i >= u_input.a, true, all(var_1.a.xx), global1[_wgslsmith_index_u32(var_0.x, 28u)])), all(vec2<bool>(true, any(var_1.a.zzy))), all(var_1.a.wx)), var_1.a.x);
    var var_3 = select(select(_wgslsmith_div_vec2_u32(func_3(global2[_wgslsmith_index_u32(3060u, 26u)], arg_0).zx, ~vec2<u32>(var_0.x, 0u)), vec2<u32>(var_0.x, firstTrailingBit(28450u)), 1u != _wgslsmith_clamp_u32(0u, var_1.b.x, 1u)), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, var_1.b.x), vec2<u32>(38535u, 69404u) >> (vec2<u32>(var_1.b.x, var_0.x) % vec2<u32>(32u))), var_0.wz, !global1[_wgslsmith_index_u32(~var_1.b.x, 28u)]), !all(!var_2.wz)) ^ reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(var_0.x, 4294967295u), var_0.yw, true), select(var_1.b.yz, vec2<u32>(13984u, 41310u), var_2.x)), firstLeadingBit(var_0.xw)));
    return 1725f;
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<f32>(1618f, 966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1086f, -1000f)) + -1804f)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(456f, var_0.x) * _wgslsmith_f_op_f32(floor(-1290f))), _wgslsmith_f_op_f32(-var_0.x)), 408f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-593f, -992f, 519f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -554f), var_0.x, var_0.x))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1270f, 1384f, var_0.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -842f, -826f) * vec3<f32>(-1794f, var_0.x, -1000f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.x) - var_0.xz)), var_1.zz, _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(round(var_0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(global3.x, -1i, global3.x))) + 2209f), var_0.x))));
    let var_3 = select(-24068i, global3.x, (_wgslsmith_add_u32(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)) >= 4294967295u) || true);
    return min(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 53909u), vec3<u32>(90472u, 7014u, 53807u), vec3<u32>(40285u, 4294967295u, 1u))), _wgslsmith_mod_u32(8589u, ~min(29510u, 0u))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(16636u, _wgslsmith_mult_u32(1u, 0u), firstTrailingBit(4294967295u)), 2047u), ~vec2<u32>(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global2[_wgslsmith_index_u32(max(var_0.x << (var_0.x % 32u), 39377u), 26u)];
    var var_2 = -vec2<i32>(global3.x, -_wgslsmith_mult_i32(u_input.a, i32(-1i) * -2147483647i));
    global2 = array<Struct_3, 26>();
    let var_3 = var_2.x;
    global0 = _wgslsmith_add_i32(global3.x, global3.x);
    let var_4 = min(var_2.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-254f)))))))), min(select(var_1.a.a.b ^ func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(var_1.a.c, 0u, var_1.a.c)), var_1.a.b, var_1.a.a.b.x)), vec3<i32>(45224i, 0i, -2147483647i)).wyx, vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 83958u), var_1.a.a.b), var_1.a.a.b.x), !var_1.a.b.a.wzw), var_1.a.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(948f)) + _wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_f_op_f32(abs(-1142f)), -2623f, _wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-721f)))))));
}

