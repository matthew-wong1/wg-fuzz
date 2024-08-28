struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(5197i, -46476i, 2147483647i, 2147483647i, 0i, 1i, 44986i, 2147483647i, -36849i, 2147483647i, -7549i, -58009i, 2147483647i, 16765i, 0i, 7243i, 9672i, 1i, -64798i, -1i, -1i, 27380i, 0i, 28809i, -1i, 0i, 11063i, 32391i, -1i, 2147483647i, -17245i);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = global1.x;
    let var_1 = Struct_3(Struct_1(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, true, global1.x), true), _wgslsmith_f_op_f32(round(-405f)), vec3<u32>(58792u, ~(~u_input.d), u_input.d), reverseBits(abs(vec3<u32>(61977u, 62887u, u_input.d)) | min(vec3<u32>(4294967295u, 4294967295u, 55733u), vec3<u32>(49060u, 0u, 0u))), vec2<u32>(_wgslsmith_add_u32(~u_input.d, 1u), _wgslsmith_clamp_u32(u_input.d | u_input.d, _wgslsmith_mult_u32(45568u, u_input.d), firstLeadingBit(u_input.d)))), Struct_1(vec3<bool>(!(false || global1.x), global1.x, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1073f)), _wgslsmith_div_vec3_u32(vec3<u32>(21630u, 1u, u_input.d) << (vec3<u32>(20334u, 14222u, u_input.d) % vec3<u32>(32u)), vec3<u32>(25709u, u_input.d, 30557u) << ((vec3<u32>(u_input.d, 1u, 1u) | vec3<u32>(u_input.d, 1u, 0u)) % vec3<u32>(32u))), ~(abs(vec3<u32>(4294967295u, 40590u, 0u)) ^ ~vec3<u32>(26139u, 90032u, u_input.d)), ~(~vec2<u32>(48840u, u_input.d))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1286f))), 1f), Struct_1(select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, global1.x), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1674f), -322f)), vec3<u32>(u_input.d, _wgslsmith_mult_u32(u_input.d, u_input.d), ~0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), select(vec3<u32>(u_input.d, u_input.d, 50270u), vec3<u32>(u_input.d, u_input.d, 59017u), vec3<bool>(global1.x, false, true)), vec3<u32>(17422u, u_input.d, u_input.d) << (vec3<u32>(u_input.d, 14803u, 50102u) % vec3<u32>(32u))), ~(~vec2<u32>(u_input.d, u_input.d))), vec2<u32>(~_wgslsmith_add_u32(u_input.d, 56631u), min(u_input.d, u_input.d) << (~u_input.d % 32u))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(334f, _wgslsmith_f_op_f32(f32(-1f) * -690f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) * vec2<f32>(-122f, 1208f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1781f, -719f), vec2<f32>(1882f, 920f)), false))), Struct_1(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(ceil(-516f)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), firstLeadingBit(countOneBits(vec3<u32>(u_input.d, 1u, 30475u))), firstTrailingBit(vec2<u32>(u_input.d, 13766u))), select(~vec2<u32>(4294967295u, u_input.d), ~vec2<u32>(75225u, u_input.d), global1.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1224f, 406f) - vec2<f32>(-521f, -211f)), vec2<f32>(556f, -232f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -194f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1340f, 354f), vec2<f32>(-118f, -788f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1579f, 598f) * vec2<f32>(486f, -603f))), vec2<bool>(global1.x, all(vec2<bool>(global1.x, false))))))));
    var var_2 = abs(abs(var_1.c.b.c.zz));
    var var_3 = var_1.a;
    var var_4 = select(vec3<bool>(false, var_3.a.x, any(select(vec2<bool>(var_1.d.b.a.x, false), vec2<bool>(global1.x, global1.x), var_3.a.yz))), vec3<bool>(!(var_1.c.b.d.x <= countOneBits(16990u)), true, all(!vec3<bool>(var_1.d.b.a.x, true, false))), select(var_3.a, !vec3<bool>(var_1.c.b.b >= var_3.b, true, true), true));
    return _wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(u_input.d), var_1.c.b.d.x, 1u), 4294967295u);
}

fn func_2() -> bool {
    global1 = vec2<bool>(false, global1.x);
    var var_0 = Struct_3(Struct_1(select(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, false, global1.x), vec3<bool>(true, false, true)), select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), true), select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), false), 31386u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 4294967295u, u_input.d))), 902f, ~(~vec3<u32>(1584u, 1u, u_input.d) | ~vec3<u32>(0u, u_input.d, 4294967295u)), vec3<u32>(func_3(), reverseBits(76389u), firstLeadingBit(u_input.d)) | vec3<u32>(u_input.d, _wgslsmith_div_u32(u_input.d, u_input.d), u_input.d), countOneBits(vec2<u32>(1u, 1u))), Struct_1(vec3<bool>(true, (u_input.a.x >> (1u % 32u)) <= 4995i, true), _wgslsmith_f_op_f32(abs(991f)), countOneBits(~vec3<u32>(36275u, 12144u, 3313u)), countOneBits(max(vec3<u32>(u_input.d, u_input.d, 1u), ~vec3<u32>(u_input.d, u_input.d, u_input.d))), vec2<u32>(~(~u_input.d), ~firstLeadingBit(4294967295u))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-854f)), 208f)), _wgslsmith_f_op_f32(305f + _wgslsmith_f_op_f32(f32(-1f) * -1733f))), Struct_1(!(!vec3<bool>(global1.x, true, global1.x)), 898f, ~countOneBits(vec3<u32>(1u, u_input.d, 33472u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 63481u), vec3<u32>(1u, u_input.d, u_input.d)), ~(vec2<u32>(1u, u_input.d) ^ vec2<u32>(18623u, 9018u))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d)), ~vec2<u32>(1u, 52263u) << (~vec2<u32>(u_input.d, 0u) % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, -502f))), Struct_1(!(!vec3<bool>(global1.x, false, global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2137f + -336f))), select(vec3<u32>(u_input.d, 47029u, u_input.d), vec3<u32>(1u, u_input.d, u_input.d) >> (vec3<u32>(u_input.d, 46931u, 0u) % vec3<u32>(32u)), true), vec3<u32>(u_input.d, u_input.d, 5851u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 10558u, 0u), vec3<u32>(8876u, u_input.d, u_input.d)) % vec3<u32>(32u)), vec2<u32>(u_input.d, _wgslsmith_add_u32(56304u, 63755u))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(5597u, u_input.d), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 28813u), vec2<u32>(u_input.d, 69944u))), vec2<u32>(38945u >> (1u % 32u), 0u), select(!vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), u_input.d < u_input.d))), vec2<f32>(429f, 988f));
    var_0 = Struct_3(Struct_1(var_0.b.a, _wgslsmith_f_op_f32(1432f - _wgslsmith_f_op_f32(-var_0.e.x)), ~vec3<u32>(var_0.c.b.e.x & 1u, 1u, u_input.d), max(vec3<u32>(u_input.d, var_0.c.b.d.x, var_0.c.c.x ^ 58069u), _wgslsmith_div_vec3_u32(var_0.b.d, vec3<u32>(12603u, 1u, u_input.d))), vec2<u32>(var_0.d.b.d.x, 27072u)), Struct_1(select(vec3<bool>(any(vec4<bool>(false, false, false, false)), false, true), vec3<bool>(global1.x, var_0.b.b == 255f, any(var_0.a.a.zz)), vec3<bool>(any(vec2<bool>(false, global1.x)), any(var_0.c.b.a), true)), 643f, var_0.b.c, var_0.c.b.c, reverseBits(vec2<u32>(var_0.a.d.x, var_0.b.e.x)) << ((vec2<u32>(0u, 12251u) & vec2<u32>(var_0.a.e.x, u_input.d)) % vec2<u32>(32u))), var_0.d, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, var_0.e.x)), _wgslsmith_f_op_vec2_f32(floor(var_0.e)), !var_0.c.b.a.x))), var_0.d.b, min(var_0.d.c, ~var_0.d.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.e, var_0.e)))))));
    var var_1 = vec4<i32>(-global0[_wgslsmith_index_u32(~u_input.d << ((~4294967295u ^ (u_input.d << (15357u % 32u))) % 32u), 31u)], 1i, -46522i, u_input.c.x);
    let var_2 = firstLeadingBit(-1175i);
    return any(select(vec3<bool>(5685u < var_0.b.e.x, !global1.x, var_0.d.b.a.x), vec3<bool>(-26338i <= -var_1.x, true, false), true));
}

fn func_1() -> Struct_3 {
    global1 = !vec2<bool>(any(vec2<bool>(true, true)), select(!all(vec3<bool>(true, global1.x, false)), false, global1.x));
    let var_0 = Struct_2(vec2<f32>(1f, 1f), Struct_1(vec3<bool>(all(select(vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), global1.x)), func_2(), true), _wgslsmith_f_op_f32(select(-756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1933f)), global1.x)), vec3<u32>(~max(u_input.d, u_input.d), u_input.d, ~u_input.d ^ ~1u), (vec3<u32>(u_input.d, 0u, 18953u) ^ vec3<u32>(u_input.d, u_input.d, 25734u)) << (reverseBits(~vec3<u32>(u_input.d, 17467u, u_input.d)) % vec3<u32>(32u)), ((vec2<u32>(1u, 4294967295u) >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) | select(vec2<u32>(48452u, u_input.d), vec2<u32>(64177u, u_input.d), vec2<bool>(global1.x, false))) ^ ~(~vec2<u32>(u_input.d, 1u))), ~reverseBits(select(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.d, 6745u), vec2<bool>(false, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 18339u), vec2<u32>(0u, u_input.d)), vec2<bool>(global1.x, true))));
    global0 = array<i32, 31>();
    var var_1 = var_0.b;
    global0 = array<i32, 31>();
    return Struct_3(Struct_1(select(var_1.a, !(!var_0.b.a), var_1.a.x), var_0.b.b, _wgslsmith_div_vec3_u32(max(var_1.d, var_0.b.d) << (vec3<u32>(u_input.d, 4737u, 8549u) % vec3<u32>(32u)), abs(~var_0.b.d)), vec3<u32>(10698u, _wgslsmith_mod_u32(4294967295u, countOneBits(2374u)), 4294967295u), var_1.d.zy), var_0.b, var_0, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -745f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1000f))), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.e, ~vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(971i, u_input.e.x, global0[_wgslsmith_index_u32(u_input.d, 31u)]), u_input.e)), _wgslsmith_clamp_i32(-u_input.b, global0[_wgslsmith_index_u32(u_input.d, 31u)], ~1i), abs(firstTrailingBit(u_input.c.x))));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(abs(var_1.c.b.e.x), var_1.d.b.c.x | func_1().b.c.x), var_1.d.c.x, var_1.d.c.x, 35076u), var_1.b.c.x);
}

