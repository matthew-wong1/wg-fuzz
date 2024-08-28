struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<i32, 19>;

var<private> global3: array<u32, 20>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(325f, 1570f, -557f), vec4<f32>(108f, 384f, 1468f, -447f)), Struct_1(vec3<f32>(1000f, -526f, 475f), vec4<f32>(-1038f, -2338f, -753f, -1102f)), Struct_1(vec3<f32>(944f, 1587f, 444f), vec4<f32>(-2037f, -1000f, -181f, -474f)), Struct_1(vec3<f32>(240f, -631f, -593f), vec4<f32>(772f, -232f, -678f, 853f)), Struct_1(vec3<f32>(853f, 448f, 1486f), vec4<f32>(1270f, -1111f, -1961f, 716f)), Struct_1(vec3<f32>(1000f, -218f, -710f), vec4<f32>(333f, 1096f, 1063f, -552f)), Struct_1(vec3<f32>(-207f, -1000f, 1465f), vec4<f32>(-119f, 386f, -1000f, -1248f)), Struct_1(vec3<f32>(-957f, -1201f, 869f), vec4<f32>(1283f, -1000f, -1170f, -1000f)), Struct_1(vec3<f32>(-115f, -726f, -1419f), vec4<f32>(379f, 2350f, 1000f, 809f)), Struct_1(vec3<f32>(726f, 913f, -253f), vec4<f32>(325f, 416f, 928f, 1313f)), Struct_1(vec3<f32>(1527f, -334f, 405f), vec4<f32>(722f, 387f, 925f, -1513f)), Struct_1(vec3<f32>(1710f, -727f, -456f), vec4<f32>(-280f, -166f, 1287f, -2132f)), Struct_1(vec3<f32>(241f, 752f, 660f), vec4<f32>(-1542f, -321f, 736f, -1000f)), Struct_1(vec3<f32>(-763f, 441f, 1099f), vec4<f32>(-1000f, -356f, -1071f, 1000f)), Struct_1(vec3<f32>(517f, 1628f, 1000f), vec4<f32>(-1000f, -1476f, 751f, 107f)), Struct_1(vec3<f32>(1787f, 1620f, -1000f), vec4<f32>(143f, 773f, 569f, -1079f)), Struct_1(vec3<f32>(-594f, 315f, -1229f), vec4<f32>(1000f, 1135f, 628f, 478f)), Struct_1(vec3<f32>(183f, 171f, 920f), vec4<f32>(1256f, 204f, 1456f, -664f)), Struct_1(vec3<f32>(-452f, -676f, 123f), vec4<f32>(-2534f, -618f, 999f, 293f)), Struct_1(vec3<f32>(-1260f, 1413f, -1100f), vec4<f32>(592f, 407f, -1933f, 595f)), Struct_1(vec3<f32>(1041f, 720f, 297f), vec4<f32>(-1000f, -1208f, -1407f, -203f)), Struct_1(vec3<f32>(492f, 548f, -1000f), vec4<f32>(-1931f, -771f, 822f, 2096f)), Struct_1(vec3<f32>(579f, -1545f, 102f), vec4<f32>(-451f, -179f, -774f, 291f)), Struct_1(vec3<f32>(1036f, -1322f, -2009f), vec4<f32>(1009f, 869f, -291f, 1042f)), Struct_1(vec3<f32>(-634f, 181f, 799f), vec4<f32>(1000f, 622f, -692f, 1855f)), Struct_1(vec3<f32>(646f, -1000f, 1257f), vec4<f32>(196f, 966f, -1383f, -719f)), Struct_1(vec3<f32>(127f, 1255f, 775f), vec4<f32>(-679f, 405f, 1569f, 629f)), Struct_1(vec3<f32>(-1813f, 1058f, -773f), vec4<f32>(-264f, 751f, 1359f, 628f)), Struct_1(vec3<f32>(-894f, -2040f, -381f), vec4<f32>(929f, 1348f, -570f, -749f)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(global2[_wgslsmith_index_u32(~(~select(72904u, ~50565u, true)), 19u)], -1i, -18396i);
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 1u), 29u)];
    global4 = array<Struct_1, 29>();
    global0 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(1u, ~18361u), 20u)], 20u)], 20u)] | ~(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23953u, 20u)], 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21481u, 20u)], 20u)], 37080u), vec3<u32>(0u, global3[_wgslsmith_index_u32(32121u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]) ^ vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69121u, 20u)], 20u)])), 20u)]), 20u)], 20u)], 29u)];
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.b.yyz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1170f)), 1f, global0.a.x, global0.b.x)), _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-774f, global0.b.x, -1174f, 171f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 765f, -415f, -1955f)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-104f, -831f, true))), any(vec3<bool>(true, true, true))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = Struct_1(vec3<f32>(arg_1.b.x, global0.a.x, arg_1.b.x), _wgslsmith_f_op_vec4_f32(global0.b + arg_1.b));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -278f)))));
    let var_1 = func_2();
    var var_2 = func_2();
    var var_3 = 1280f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2332f)) + _wgslsmith_f_op_f32(var_1.a.x + -1743f)), func_2().b.x, global0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f + var_1.a.x)), 120f), vec3<bool>(-1055f == _wgslsmith_f_op_f32(var_2.b.x * global0.b.x), false, arg_0.x <= -27993i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global4 = array<Struct_1, 29>();
    let var_0 = reverseBits(arg_0.x);
    let var_1 = countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(~reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(84689u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 20u)], 20u)], var_0, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16129u, 20u)], 20u)]), vec4<u32>(128917u, 4294967295u, 59460u, 0u))), countOneBits(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(57278u, 20u)], 20u)])), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0, 1u, 19505u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(14860u, 0u, arg_0.x), vec3<u32>(arg_0.x, 24363u, var_0)), select(~vec3<u32>(0u, 54069u, 55259u), ~vec3<u32>(0u, 4294967295u, 0u), true))));
    let var_2 = !(true | any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), -549f >= arg_2.a.x)));
    let var_3 = -1043f;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), -134f, arg_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(exp2(arg_2.b))))));
}

fn func_1() -> Struct_1 {
    global0 = func_4(~firstLeadingBit(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65937u, 20u)], 20u)], 49843u) << (vec2<u32>(86642u, 1u) % vec2<u32>(32u)))), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68777u, 20u)], 29u)], Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(-12687i, u_input.a.x), min(u_input.a.yy, u_input.a.zy)), func_2())), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(-780f - -423f), _wgslsmith_f_op_f32(-561f + -157f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.a.x, 270f)))), _wgslsmith_f_op_vec3_f32(max(global0.b.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b.yxw, _wgslsmith_f_op_vec3_f32(-global0.b.wzy))))));
    global3 = array<u32, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_div_vec4_f32(vec4<f32>(-250f, global0.b.x, 2199f, -364f), global0.b))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.a.x), global0.a.x, global0.a.x, _wgslsmith_f_op_f32(2939f + global0.a.x))))));
    var var_1 = abs(vec2<u32>(34734u, _wgslsmith_add_u32(0u, select(66579u, 1u, true) ^ ~10673u)));
    var var_2 = func_2();
    return global1[_wgslsmith_index_u32(~0u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, vec4<f32>(-127f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.b.x))));
    var var_1 = func_1();
    global0 = global1[_wgslsmith_index_u32(abs(~(~(~(~global3[_wgslsmith_index_u32(0u, 20u)])))), 21u)];
    var var_2 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(90955u, 20u)], 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)]), vec2<u32>(14193u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29946u, 20u)], 20u)])), vec2<u32>(43469u, global3[_wgslsmith_index_u32(37921u, 20u)])) & _wgslsmith_mod_vec2_u32(abs(vec2<u32>(39506u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)])), vec2<u32>(global3[_wgslsmith_index_u32(28755u, 20u)], 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25348u, 20u)], 20u)], global3[_wgslsmith_index_u32(18383u, 20u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48410u, 20u)], 20u)], 20u)], 1u)) ^ ((vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20857u, 20u)], 20u)], 20u)], 47871u) ^ vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)])) >> (min(vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(global3[_wgslsmith_index_u32(1u, 20u)], 51981u)) % vec2<u32>(32u))));
    let var_3 = ~(~(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(var_2.x, 20u)]) ^ vec2<u32>(0u, 10258u)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(27719u, global3[_wgslsmith_index_u32(0u, 20u)]), vec2<u32>(global3[_wgslsmith_index_u32(0u, 20u)], 17783u)), ~vec2<u32>(14703u, var_2.x), ~vec2<u32>(var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, max(_wgslsmith_mod_vec2_u32(var_3, ~_wgslsmith_add_vec2_u32(var_3, var_3)), var_3), ~var_2.x, select(~_wgslsmith_mod_u32(select(var_3.x, 85455u, false), 4294967295u), var_3.x, !(var_2.x < _wgslsmith_add_u32(78899u, 69148u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * var_1.b))), var_0.b));
}

