struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-1332f, 752f, -930f, -636f, -506f, -997f, -1000f, 243f, 668f, -245f, 1228f, 213f, 707f, 661f, 775f, -120f, 286f, 1702f, 363f, 1243f, 195f, 478f, 1309f);

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1664f, 1093f, 1073f), vec3<f32>(1278f, 667f, 1000f), vec3<f32>(-2135f, -1028f, -123f), vec3<f32>(-926f, 1000f, -515f), vec3<f32>(-476f, -665f, -287f), vec3<f32>(-1643f, -1094f, -161f), vec3<f32>(1999f, 1158f, 1239f), vec3<f32>(807f, -791f, -515f), vec3<f32>(-837f, -1223f, -117f), vec3<f32>(1057f, 327f, -1000f), vec3<f32>(-473f, 645f, 1000f), vec3<f32>(539f, -751f, 636f), vec3<f32>(1381f, 945f, 1503f), vec3<f32>(2164f, -379f, -1357f), vec3<f32>(1083f, 1000f, 378f), vec3<f32>(485f, 596f, 1380f), vec3<f32>(-102f, 674f, 1874f), vec3<f32>(633f, -1769f, 1050f), vec3<f32>(-2598f, -1889f, 1414f), vec3<f32>(-1000f, 172f, 224f), vec3<f32>(-733f, -1000f, 2758f), vec3<f32>(-367f, -976f, -135f), vec3<f32>(125f, -528f, -938f), vec3<f32>(-437f, -957f, 143f), vec3<f32>(-1344f, 536f, -1000f), vec3<f32>(1520f, 1029f, 795f), vec3<f32>(350f, 357f, -411f), vec3<f32>(648f, -439f, -165f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_clamp_i32(~select(-2147483647i, 1i, true), -11257i, _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xz)), u_input.a.x, -2147483647i, 2147483647i));
    var_0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 37902i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, var_0.x)), countOneBits(-vec4<i32>(u_input.a.x, 56813i, 0i, var_0.x)))), vec4<i32>(22955i, -var_0.x, firstLeadingBit(min(u_input.a.x, u_input.a.x << (0u % 32u))), 1i), min(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_0.x, 1i, 1i, 2147483647i)), vec4<i32>(10005i, u_input.a.x, u_input.a.x, 14336i)) ^ vec4<i32>(abs(var_0.x), _wgslsmith_mod_i32(4657i, -30050i), -var_0.x, 1i), vec4<i32>(firstTrailingBit(abs(-25636i)), -var_0.x, 1i, select(_wgslsmith_sub_i32(-11810i, u_input.a.x), u_input.a.x, false))));
    let var_1 = Struct_2(~_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(13305u, 33396u, 4294967295u, 9851u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18498u, 0u), vec2<u32>(1u, 9496u)), ~0u, firstTrailingBit(4294967295u), abs(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(46522u, 23u)]))), Struct_1(vec3<i32>(var_0.x, -u_input.a.x, 28449i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(56801u, 23u)], global0[_wgslsmith_index_u32(77667u, 23u)])), global0[_wgslsmith_index_u32(firstLeadingBit(70191u), 23u)])), vec4<bool>(true, all(vec2<bool>(false, true)) || true, !(global0[_wgslsmith_index_u32(4294967295u, 23u)] <= 346f), true && all(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~27936u, 28u)])), max(select(u_input.a.x ^ -1i, 1i ^ u_input.a.x, true), ~(-30749i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1516f, global0[_wgslsmith_index_u32(48467u, 23u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, 152f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -229f), vec2<f32>(-206f, 1238f)))))), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(16567u, 28u)] + global2[_wgslsmith_index_u32(1u, 28u)])) * vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(36378u, 23u)], -897f)), _wgslsmith_f_op_f32(step(236f, 1000f)), _wgslsmith_f_op_f32(241f + global0[_wgslsmith_index_u32(66105u, 23u)]))), select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, false, true), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, false), true), vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)), abs(vec2<u32>(114480u, 28835u))), 23u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4831u, 23u)]), 949f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f))), ~u_input.a.x));
    var_0 = vec4<i32>(~_wgslsmith_mod_i32(~(-18821i), firstTrailingBit(0i)), 6032i, select(36689i, select(-47796i, u_input.a.x, any(vec2<bool>(var_1.c.c.x, true))) << (select(select(36558u, var_1.a.x, var_1.e.c.x), reverseBits(var_1.a.x), any(var_1.e.c.zx)) % 32u), all(var_1.e.c.yzz) & select(!var_1.e.c.x, true, !var_1.c.c.x)), _wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec3_i32(min(vec3<i32>(97901i, var_0.x, 1i), var_1.c.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, var_0.x), vec3<i32>(-1i, var_1.c.e, var_1.c.e)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(min(4294967295u, 6185u) << (select(var_1.a.x, var_1.a.x, var_1.e.c.x) % 32u), var_1.a.x), 28u)] * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -121f, var_1.c.b.x)) + vec3<f32>(var_1.e.d.x, 276f, global0[_wgslsmith_index_u32(4294967295u, 23u)])), var_1.c.b) + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(var_1.a), vec4<u32>(0u, var_1.a.x, 0u, 0u)), 28u)])));
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - global0[_wgslsmith_index_u32(~var_1.a.x, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_1.a.x, 23u)], -279f)) + _wgslsmith_f_op_f32(640f + var_2.x)))));
}

fn func_2() -> bool {
    let var_0 = all(vec3<bool>(!func_3(), true, true));
    var var_1 = Struct_2(~select(~(~vec4<u32>(1u, 4294967295u, 4294967295u, 77517u)), vec4<u32>(0u, 0u, 1u, 1u), !(global0[_wgslsmith_index_u32(25489u, 23u)] != -2006f)), global0[_wgslsmith_index_u32(1u, 23u)], Struct_1(_wgslsmith_mod_vec3_i32(u_input.a, firstLeadingBit(u_input.a | u_input.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(20598u, 28u)])) + vec3<f32>(697f, global0[_wgslsmith_index_u32(910u, 23u)], -2700f)))), vec4<bool>(var_0, var_0, !(false | var_0), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(57368u, 28u)])) - vec3<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(8040u, 23u)])), _wgslsmith_f_op_f32(-803f - 782f), _wgslsmith_f_op_f32(f32(-1f) * -257f))), 37375i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(281f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(82698u, 23419u), 23u)]))))), Struct_1(_wgslsmith_clamp_vec3_i32(~u_input.a, u_input.a << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), -u_input.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(25745u, 28u)])), vec3<f32>(962f, 487f, global0[_wgslsmith_index_u32(countOneBits(9685u), 23u)]))), !(!(!vec4<bool>(var_0, var_0, true, var_0))), _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(1u, 28u)] + vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(41596u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)])), global0[_wgslsmith_index_u32(~0u, 23u)])), 0i));
    let var_2 = firstTrailingBit(~select(vec3<u32>(4294967295u, var_1.a.x, 4294967295u), var_1.a.zwz, select(var_1.c.c.wxw, !vec3<bool>(false, var_1.c.c.x, var_1.e.c.x), select(var_1.e.c.xyx, vec3<bool>(var_1.c.c.x, false, false), var_1.e.c.x))));
    var_1 = Struct_2(select(select(select(vec4<u32>(var_1.a.x, var_1.a.x, var_2.x, var_1.a.x), var_1.a, false), reverseBits(vec4<u32>(var_2.x, var_2.x, 8505u, 4699u)), true), min(vec4<u32>(48889u, var_2.x, var_2.x, 98371u), vec4<u32>(19738u, 1u, var_2.x, 7382u)), !(!vec4<bool>(var_1.c.c.x, var_0, false, var_0))) >> (vec4<u32>(_wgslsmith_sub_u32(40926u << (var_1.a.x % 32u), var_2.x), 5897u, ~var_2.x | (var_1.a.x >> (38271u % 32u)), var_1.a.x) % vec4<u32>(32u)), -1824f, Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 23u)], 209f, 1560f) * global2[_wgslsmith_index_u32(var_1.a.x, 28u)])) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 23u)], global0[_wgslsmith_index_u32(17115u, 23u)], var_1.c.d.x)))), select(var_1.e.c, select(select(vec4<bool>(false, true, var_1.e.c.x, var_1.c.c.x), var_1.e.c, var_1.e.c), var_1.c.c, !var_1.c.c.x), !vec4<bool>(var_0, var_1.e.c.x, var_0, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.e.b, _wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(16950u, 28u)]))))), countOneBits(1i)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(29167u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.x, 23u)]), -1319f)), var_1.d), var_1.e);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f + var_1.c.b.x)))), -746f)), -308f));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_f_op_f32(step(arg_1.x, 1165f))))));
    var var_2 = ~vec2<u32>(~abs(~8303u), ~countOneBits(64150u));
    var var_3 = 4294967295u;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-194f)))), 440f, -409f);
    return 21148u;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = Struct_3(~u_input.a.x, func_4(func_2(), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])), arg_0.x), -vec4<i32>(_wgslsmith_div_i32(9783i, arg_1.x), -29723i, 6415i, arg_1.x), vec4<bool>(true, true, true, true)), Struct_1(firstTrailingBit(~arg_1.yzy | vec3<i32>(arg_1.x, -30394i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 505f, global0[_wgslsmith_index_u32(26178u, 23u)]))), vec3<f32>(-351f, -1303f, -1281f)))), vec4<bool>(true, !func_2(), func_3(), true), _wgslsmith_f_op_vec3_f32(arg_0.wwz + global2[_wgslsmith_index_u32(4294967295u, 28u)]), 38246i));
    global2 = array<vec3<f32>, 28>();
    var var_2 = 28621i;
    global0 = array<f32, 23>();
    return Struct_1(vec3<i32>(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(75050i, u_input.a.x)), vec2<i32>(-12655i, u_input.a.x)), countOneBits(-2147483647i), -3209i), _wgslsmith_f_op_vec3_f32(max(var_1.c.b, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 73022u), vec2<u32>(var_1.b, 8659u)), 4294967295u), 1u), 28u)])), vec4<bool>(var_1.c.c.x, (0i <= ~arg_1.x) || any(!vec2<bool>(var_1.c.c.x, false)), !var_1.c.c.x, any(select(select(vec4<bool>(false, true, var_1.c.c.x, true), vec4<bool>(false, var_1.c.c.x, true, var_1.c.c.x), var_1.c.c), !var_1.c.c, var_1.c.c.x))), _wgslsmith_div_vec3_f32(arg_0.zwy, arg_0.yyw), (1i << (1u % 32u)) | var_1.a);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(~u_input.a.x, 0u, arg_2);
    let var_1 = vec4<bool>(var_0.c.c.x, !(!(any(vec4<bool>(var_0.c.c.x, false, false, var_0.c.c.x)) & var_0.c.c.x)), true, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, arg_0.x, 796f, 1704f))))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a & -38077i, 1i, -48544i, reverseBits(-17400i)), vec4<i32>(i32(-1i) * -52489i, u_input.a.x, _wgslsmith_clamp_i32(-16489i, arg_1.c.a.x, var_0.c.a.x), 1i))).c.x);
    var_0 = Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(max(1i, -1i), ~u_input.a.x), _wgslsmith_add_i32(-u_input.a.x, -2147483647i)) ^ 0i, arg_1.a.x, arg_1.e);
    var var_2 = select(!arg_2.c.zz, !func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1156f, -145f, arg_2.d.x, arg_1.c.d.x))), -(vec4<i32>(u_input.a.x, var_0.a, -2147483647i, 926i) >> (vec4<u32>(var_0.b, 7540u, arg_1.a.x, 4943u) % vec4<u32>(32u)))).c.zx, vec2<bool>(all(!var_1), var_0.c.c.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-838f)) - var_0.c.b.x);
    return Struct_3(0i, reverseBits(~21115u ^ abs(arg_1.a.x)), var_0.c);
}

fn func_6(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.d.zx));
    global1 = array<Struct_1, 19>();
    let var_1 = abs(51749u & _wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_0.b, 32474u, 57537u, 30305u), vec4<u32>(0u, 7321u, arg_0.b, arg_0.b), arg_0.c.c.x), vec4<u32>(_wgslsmith_div_u32(arg_0.b, 4294967295u), min(arg_0.b, arg_0.b), arg_0.b, ~0u)));
    global0 = array<f32, 23>();
    var var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~1u), 23u)] - 545f) >= -812f;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.d.x)) - -159f)), -616f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1211f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_0.b, 23u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 28>();
    let var_0 = Struct_3(-(i32(-1i) * -u_input.a.x), _wgslsmith_mod_u32(1u, 1u), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(func_6(func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], -410f))), Struct_2(vec4<u32>(158u, 4294967295u, 61653u, 4294967295u), 419f, global1[_wgslsmith_index_u32(28810u, 19u)], vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -444f), Struct_1(u_input.a, global2[_wgslsmith_index_u32(1u, 28u)], vec4<bool>(true, true, false, false), vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 1433f, global0[_wgslsmith_index_u32(1u, 23u)]), -15718i)), func_1(vec4<f32>(global0[_wgslsmith_index_u32(114358u, 23u)], 1000f, -1292f, global0[_wgslsmith_index_u32(11389u, 23u)]), vec4<i32>(-2147483647i, 1i, 1i, -6703i))))), func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-321f, global0[_wgslsmith_index_u32(4294967295u, 23u)], -925f, -340f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(9230u, 23u)], global0[_wgslsmith_index_u32(58429u, 23u)], global0[_wgslsmith_index_u32(20993u, 23u)]), vec4<bool>(true, false, true, false))))), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(107793u, 28u)]) + vec3<f32>(global0[_wgslsmith_index_u32(45596u, 23u)], -423f, global0[_wgslsmith_index_u32(0u, 23u)]))), 0i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(11827u << (var_0.b % 32u), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.x - var_0.c.b.x) + var_0.c.b.x))));
    global0 = array<f32, 23>();
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~(58599u >> (var_0.b % 32u)), ~min(4294967295u, var_0.b), var_0.b), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19714u, var_0.b, var_0.b), vec4<u32>(17850u, var_0.b, var_0.b, var_0.b)), ~var_0.b, var_0.b, _wgslsmith_div_u32(var_0.b, var_0.b))), var_0.c.b.x, func_5(_wgslsmith_f_op_vec2_f32(var_0.c.d.xx + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(161f, var_0.c.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, global0[_wgslsmith_index_u32(1u, 23u)]))))), Struct_2(vec4<u32>(1u, var_0.b, ~20471u, 71922u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10446u, 23u)])), func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1587f, var_0.c.d.x, 1000f))), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_0.c.a.x))), var_0.c.d.yx, var_0.c), Struct_1(vec3<i32>(_wgslsmith_mult_i32(2503i, u_input.a.x), 5557i, 2147483647i), var_0.c.d, func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, 198f) + vec2<f32>(1800f, -573f)), Struct_2(vec4<u32>(var_0.b, 4294967295u, var_0.b, 37990u), global0[_wgslsmith_index_u32(56261u, 23u)], Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -9991i), var_0.c.b, var_0.c.c, vec3<f32>(704f, global0[_wgslsmith_index_u32(var_0.b, 23u)], 1000f), -1i), var_0.c.b.xy, Struct_1(vec3<i32>(-40307i, var_0.c.e, var_0.c.a.x), vec3<f32>(-1375f, -839f, global0[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(false, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x), vec3<f32>(global0[_wgslsmith_index_u32(var_0.b, 23u)], 475f, var_0.c.d.x), u_input.a.x)), Struct_1(vec3<i32>(u_input.a.x, -48766i, u_input.a.x), vec3<f32>(-170f, -2209f, -1000f), vec4<bool>(false, var_0.c.c.x, true, true), vec3<f32>(1626f, 2121f, 262f), 2147483647i)).c.c, vec3<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(626f * -694f), _wgslsmith_f_op_f32(select(1895f, -2207f, false))), -u_input.a.x)).c, _wgslsmith_f_op_vec2_f32(-var_0.c.b.zz), Struct_1(var_0.c.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.d)), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~4294967295u, 28u)])), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, var_0.c.d.x, 1447f, var_0.c.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], var_0.c.b.x, global0[_wgslsmith_index_u32(0u, 23u)], 540f) - vec4<f32>(-806f, var_0.c.b.x, 2116f, var_0.c.b.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.c.a.x, 2147483647i, u_input.a.x) >> (vec4<u32>(var_0.b, 1u, var_0.b, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.c.a.x), vec4<i32>(8600i, u_input.a.x, 2147483647i, var_0.c.e)))).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d.x, -118f, var_0.c.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.d))), _wgslsmith_dot_vec2_i32(~var_0.c.a.xx, _wgslsmith_div_vec2_i32(var_0.c.a.xy, _wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.xy)))));
    let var_3 = !(!vec2<bool>(var_2.c.c.x, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.d.x, var_2.d.x, -1000f, 690f)), -vec4<i32>(var_2.c.a.x, 13365i, var_0.c.a.x, var_0.a)).c.x));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.d.xx * vec2<f32>(var_2.d.x, -977f)) + var_4.c.d.xx)))));
}

