struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, true, true, false, true, false, true, false);

var<private> global2: array<i32, 11> = array<i32, 11>(-1i, i32(-2147483648), -44209i, 211i, 2147483647i, 0i, -1i, 28236i, -31720i, -9381i, 3432i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = firstTrailingBit(_wgslsmith_mod_i32(reverseBits(abs(global2[_wgslsmith_index_u32(u_input.d, 11u)])), 0i));
    let var_1 = false;
    var var_2 = arg_0;
    global2 = array<i32, 11>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.d.e.x, arg_2.a.d.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1128f, -218f))))))));
    return arg_2;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    var var_0 = vec4<i32>(reverseBits(~func_2(~vec4<i32>(u_input.a.x, arg_2.a.b.c, -2147483647i, -32961i), false, Struct_3(arg_2.a)).a.b.c), _wgslsmith_mod_i32(~0i, reverseBits(abs(1i))), func_2(u_input.b, all(select(!vec4<bool>(arg_2.a.b.b.x, arg_2.a.b.a.x, global1[_wgslsmith_index_u32(u_input.d, 28u)], arg_2.a.a.x), select(vec4<bool>(false, arg_2.a.c.b.x, arg_2.a.b.b.x, true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)], true, arg_2.a.c.a.x), true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 28u)], true))), Struct_3(func_2(vec4<i32>(-21650i, u_input.a.x, global2[_wgslsmith_index_u32(arg_1.x, 11u)], -30065i), arg_2.a.d.a.x == arg_2.a.a.x, Struct_3(Struct_2(vec3<bool>(true, arg_2.a.b.a.x, global1[_wgslsmith_index_u32(13308u, 28u)]), global0[_wgslsmith_index_u32(47076u, 32u)], Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), arg_2.a.b.a, -2147483647i, arg_2.a.e.zw, vec4<f32>(580f, arg_2.a.e.x, -1000f, 375f)), Struct_1(vec3<bool>(false, arg_2.a.d.b.x, false), vec3<bool>(true, arg_2.a.c.a.x, global1[_wgslsmith_index_u32(34774u, 28u)]), u_input.a.x, arg_2.a.c.d, arg_0), arg_2.a.b.e))).a)).a.b.c, 0i);
    var var_1 = any(!vec2<bool>(arg_2.a.c.b.x, !global1[_wgslsmith_index_u32(36088u, 28u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d.e.x * _wgslsmith_f_op_f32(abs(1054f))));
    let var_3 = u_input.b.yzx;
    let var_4 = vec4<i32>(firstLeadingBit(select(-2147483647i >> (u_input.d % 32u), -1i, arg_2.a.c.a.x)), -88503i, 7342i, -1i);
    return ~_wgslsmith_mod_i32(firstTrailingBit(~var_4.x), ~52561i);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    global1 = array<bool, 28>();
    var var_0 = !select(vec3<bool>(any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(65461u, 28u)]), vec4<bool>(false, false, false, false))), global1[_wgslsmith_index_u32(8491u, 28u)], func_3(vec4<f32>(arg_2, arg_2, -133f, -124f), vec3<u32>(u_input.d, u_input.d, u_input.d), Struct_3(Struct_2(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 28u)]), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(18939u, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 28u)], false, true), global2[_wgslsmith_index_u32(u_input.d, 11u)], arg_1, vec4<f32>(1765f, arg_1.x, 1000f, 585f)), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 28u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(32068u, 28u)]), -10349i, vec2<f32>(791f, arg_2), vec4<f32>(1000f, arg_1.x, -430f, arg_1.x)), Struct_1(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, global1[_wgslsmith_index_u32(u_input.d, 28u)]), 52584i, vec2<f32>(938f, 648f), vec4<f32>(arg_1.x, -1296f, -171f, arg_1.x)), vec4<f32>(arg_2, arg_2, -1000f, arg_2)))) >= _wgslsmith_mult_i32(arg_3, u_input.b.x)), vec3<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)])), true, select(true, u_input.d == u_input.d, !global1[_wgslsmith_index_u32(58544u, 28u)])), vec3<bool>((1u != u_input.d) == false, global1[_wgslsmith_index_u32(u_input.d, 28u)] && true, global1[_wgslsmith_index_u32(u_input.d, 28u)]));
    let var_1 = _wgslsmith_mod_vec2_i32(u_input.b.yw >> (~abs(min(vec2<u32>(30710u, u_input.d), vec2<u32>(0u, u_input.d))) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-1i) * -(u_input.b.xx << (vec2<u32>(u_input.d, 118136u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_div_f32(-1273f, _wgslsmith_f_op_f32(-arg_1.x));
    return global0[_wgslsmith_index_u32(65885u, 32u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2(-max(~reverseBits(u_input.c), -u_input.b), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(_wgslsmith_add_u32(u_input.d, u_input.d)), ~u_input.d), 28u)], Struct_3(func_2(~u_input.c, true, func_2(u_input.b, global1[_wgslsmith_index_u32(~u_input.d, 28u)], func_2(vec4<i32>(u_input.b.x, u_input.a.x, -1i, -3979i), true, Struct_3(arg_1)))).a)).a;
    global2 = array<i32, 11>();
    global1 = array<bool, 28>();
    var var_1 = ~arg_1.c.c;
    var var_2 = Struct_3(Struct_2(vec3<bool>(any(vec3<bool>(false, arg_1.a.x, false)), !all(var_0.a.xz), any(arg_1.b.a)), var_0.c, arg_1.b, arg_1.b, _wgslsmith_f_op_vec4_f32(-arg_1.e)));
    return func_4(firstLeadingBit(_wgslsmith_mult_i32(-4782i, _wgslsmith_dot_vec2_i32(vec2<i32>(46039i, -2147483647i), vec2<i32>(-27833i, global2[_wgslsmith_index_u32(u_input.d, 11u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.b.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e.x))))), var_0.b.d.x, 1i);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = func_5(~(-(~vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 11u)], u_input.a.x, global2[_wgslsmith_index_u32(37098u, 11u)]) >> (vec3<u32>(u_input.d, 1u, u_input.d) % vec3<u32>(32u)))), Struct_2(vec3<bool>(!(u_input.a.x < -12215i), firstLeadingBit(u_input.d) < 0u, true), func_4(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1815f, -816f, -177f)), vec3<u32>(u_input.d, u_input.d, 60464u) | vec3<u32>(u_input.d, 34298u, 72449u), func_2(vec4<i32>(-18302i, 51850i, -1i, -1i), arg_0, Struct_3(Struct_2(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)]), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 28u)], true), vec3<bool>(true, true, arg_0), 2147483647i, vec2<f32>(-634f, -463f), vec4<f32>(-1000f, 216f, 398f, -946f)), global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], vec4<f32>(-1233f, 1260f, 1118f, -525f))))), vec2<f32>(432f, _wgslsmith_f_op_f32(min(-245f, 317f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(933f, 889f), _wgslsmith_f_op_f32(max(786f, -423f)))), 16166i), Struct_1(!vec3<bool>(arg_1, false, false), func_2(abs(vec4<i32>(arg_2.x, global2[_wgslsmith_index_u32(u_input.d, 11u)], u_input.a.x, u_input.b.x)), true || global1[_wgslsmith_index_u32(u_input.d, 28u)], Struct_3(Struct_2(vec3<bool>(false, arg_0, true), global0[_wgslsmith_index_u32(0u, 32u)], Struct_1(vec3<bool>(arg_0, true, true), vec3<bool>(true, false, false), u_input.c.x, vec2<f32>(1000f, -1148f), vec4<f32>(-226f, 272f, 543f, 1510f)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], true, arg_0), vec3<bool>(arg_0, arg_0, true), 30215i, vec2<f32>(-640f, -956f), vec4<f32>(-736f, 1146f, 1309f, 406f)), vec4<f32>(-1000f, 840f, 422f, -1586f)))).a.b.b, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 11u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2456f, -482f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1070f, 210f, 1234f, 1157f), vec4<f32>(337f, 2177f, 925f, -507f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -114f, 1562f, -759f)))), func_2(u_input.c, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], arg_0, global1[_wgslsmith_index_u32(u_input.d, 28u)])), Struct_3(func_2(vec4<i32>(arg_3, 2147483647i, u_input.c.x, u_input.c.x), false, Struct_3(Struct_2(vec3<bool>(arg_0, true, false), global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(21871u, 28u)], true, false), vec3<bool>(false, arg_1, false), 2147483647i, vec2<f32>(329f, 793f), vec4<f32>(447f, 204f, -717f, 772f)), vec4<f32>(1000f, 610f, 116f, 578f)))).a)).a.c, func_2(firstTrailingBit(u_input.c) >> (min(vec4<u32>(7114u, 0u, 31927u, u_input.d), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), select(false, true, true), Struct_3(Struct_2(vec3<bool>(true, arg_1, global1[_wgslsmith_index_u32(65420u, 28u)]), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, global1[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(arg_1, true, arg_1), arg_3, vec2<f32>(1202f, -1518f), vec4<f32>(-1556f, -939f, -1409f, 699f)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], false, arg_0), vec3<bool>(true, true, false), arg_3, vec2<f32>(1153f, -1305f), vec4<f32>(-402f, -538f, 1321f, -249f)), global0[_wgslsmith_index_u32(u_input.d, 32u)], vec4<f32>(-1168f, -1000f, 494f, 407f)))).a.e));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(643f, var_0.d.x, 1121f) * var_0.e.zzw)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.e.x, _wgslsmith_f_op_f32(-var_0.d.x))))));
    var_0 = Struct_1(vec3<bool>(var_0.b.x, arg_1, (92665u != u_input.d) & global1[_wgslsmith_index_u32(u_input.d, 28u)]), var_0.b, i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, ~17219i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, 2523f) * _wgslsmith_f_op_vec2_f32(select(var_0.d, vec2<f32>(-746f, -621f), true))))), _wgslsmith_f_op_vec4_f32(-var_0.e));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(23366u ^ u_input.d, _wgslsmith_mult_u32(3801u, 0u), u_input.d), vec3<u32>(1u, u_input.d, 4294967295u)), vec3<u32>(~(~44854u), _wgslsmith_sub_u32(84864u, _wgslsmith_add_u32(u_input.d, 12920u)), _wgslsmith_mod_u32(max(0u, 0u), u_input.d))), 28u)];
    var var_3 = vec4<u32>(max(~97838u, 0u), ~reverseBits(~(~u_input.d)), u_input.d, ~u_input.d);
    return 82427u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(global2[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(u_input.d, 28u)], true, vec3<i32>(111388i, 36709i, 2147483647i), -7289i), 11u)] << ((u_input.d & 1u) % 32u)), (u_input.c.x ^ u_input.a.x) >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), vec4<u32>(13691u, u_input.d, u_input.d, 0u))) % 32u), (1i | _wgslsmith_mult_i32(-1i, u_input.a.x)) << (u_input.d % 32u), _wgslsmith_mult_i32(2147483647i, global2[_wgslsmith_index_u32(u_input.d, 11u)])) ^ vec4<i32>(-58843i, -8026i, -abs(firstLeadingBit(28232i)), -42477i);
    var var_1 = true && !global1[_wgslsmith_index_u32(max(~0u, ~_wgslsmith_mod_u32(4294967295u, u_input.d)), 28u)];
    var var_2 = func_4(_wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(func_5(vec3<i32>(-18912i, var_0.x, u_input.b.x), Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)]), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], true, global1[_wgslsmith_index_u32(u_input.d, 28u)]), -25181i, vec2<f32>(-886f, -1100f), vec4<f32>(330f, -790f, 140f, 1634f)), global0[_wgslsmith_index_u32(u_input.d, 32u)], Struct_1(vec3<bool>(true, false, global1[_wgslsmith_index_u32(17641u, 28u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 28u)]), 1i, vec2<f32>(-644f, -767f), vec4<f32>(-948f, 1000f, -1000f, -1243f)), vec4<f32>(118f, 558f, -765f, -553f))).c, -3107i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f - 154f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1744f - 1329f)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-507f)), _wgslsmith_f_op_f32(f32(-1f) * -1151f))), 791f, func_4(select(global2[_wgslsmith_index_u32(~u_input.d, 11u)] ^ reverseBits(var_0.x), -global2[_wgslsmith_index_u32(select(u_input.d, u_input.d, global1[_wgslsmith_index_u32(u_input.d, 28u)]), 11u)], true & global1[_wgslsmith_index_u32(u_input.d >> (4294967295u % 32u), 28u)]), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f - -723f) - -933f), -1594f), -276f, _wgslsmith_mult_i32(-var_0.x, ~(var_0.x << (0u % 32u)))).c).a.xx;
    global1 = array<bool, 28>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_3 = all(select(vec2<bool>(var_2.x, true), !vec2<bool>(func_4(-26968i, vec2<f32>(-834f, -209f), -774f, var_0.x).a.x, global1[_wgslsmith_index_u32(~26966u, 28u)]), func_4(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 11u)], 12494i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 150f))), -1628f, global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.d), 11u)]).b.xy));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

