struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<f32>(1075f, 1000f), 0u), Struct_1(vec2<f32>(-1100f, 1691f), 4750u)), Struct_2(Struct_1(vec2<f32>(-165f, 628f), 1u), Struct_1(vec2<f32>(-696f, -215f), 0u)), Struct_2(Struct_1(vec2<f32>(-733f, 216f), 0u), Struct_1(vec2<f32>(191f, 125f), 1u)), Struct_2(Struct_1(vec2<f32>(1152f, -553f), 4294967295u), Struct_1(vec2<f32>(-1514f, 600f), 88186u)), Struct_2(Struct_1(vec2<f32>(559f, 517f), 1u), Struct_1(vec2<f32>(-1554f, -1430f), 13894u)), Struct_2(Struct_1(vec2<f32>(909f, -1159f), 74915u), Struct_1(vec2<f32>(408f, -1832f), 122703u)), Struct_2(Struct_1(vec2<f32>(1133f, 1256f), 44779u), Struct_1(vec2<f32>(-328f, 511f), 26658u)), Struct_2(Struct_1(vec2<f32>(-317f, -577f), 54725u), Struct_1(vec2<f32>(-1719f, 2110f), 58556u)), Struct_2(Struct_1(vec2<f32>(-673f, 1000f), 25129u), Struct_1(vec2<f32>(261f, -1000f), 14205u)), Struct_2(Struct_1(vec2<f32>(1000f, -197f), 20577u), Struct_1(vec2<f32>(299f, -1580f), 7568u)), Struct_2(Struct_1(vec2<f32>(-750f, -788f), 59748u), Struct_1(vec2<f32>(-273f, -198f), 34262u)), Struct_2(Struct_1(vec2<f32>(-1176f, -908f), 4995u), Struct_1(vec2<f32>(-649f, 1018f), 11388u)), Struct_2(Struct_1(vec2<f32>(180f, -961f), 1u), Struct_1(vec2<f32>(481f, 301f), 3101u)), Struct_2(Struct_1(vec2<f32>(1059f, -1082f), 44760u), Struct_1(vec2<f32>(-994f, 1170f), 26616u)), Struct_2(Struct_1(vec2<f32>(1316f, -524f), 0u), Struct_1(vec2<f32>(469f, 1304f), 1u)), Struct_2(Struct_1(vec2<f32>(-738f, -367f), 37583u), Struct_1(vec2<f32>(-1473f, 1028f), 25885u)), Struct_2(Struct_1(vec2<f32>(286f, 3296f), 4294967295u), Struct_1(vec2<f32>(-481f, 519f), 23347u)), Struct_2(Struct_1(vec2<f32>(-753f, -1382f), 5499u), Struct_1(vec2<f32>(-179f, -400f), 64316u)), Struct_2(Struct_1(vec2<f32>(605f, -951f), 42182u), Struct_1(vec2<f32>(-1000f, 358f), 0u)), Struct_2(Struct_1(vec2<f32>(731f, -885f), 72764u), Struct_1(vec2<f32>(820f, -2350f), 98774u)), Struct_2(Struct_1(vec2<f32>(-709f, 758f), 101181u), Struct_1(vec2<f32>(565f, 2605f), 58290u)), Struct_2(Struct_1(vec2<f32>(-271f, -279f), 0u), Struct_1(vec2<f32>(-531f, 235f), 71790u)), Struct_2(Struct_1(vec2<f32>(1182f, 1645f), 79916u), Struct_1(vec2<f32>(-1094f, -1378f), 4294967295u)), Struct_2(Struct_1(vec2<f32>(-1581f, 350f), 47832u), Struct_1(vec2<f32>(-735f, -810f), 0u)), Struct_2(Struct_1(vec2<f32>(-294f, 648f), 99381u), Struct_1(vec2<f32>(2384f, -2102f), 35496u)), Struct_2(Struct_1(vec2<f32>(-298f, 2483f), 1u), Struct_1(vec2<f32>(-720f, -981f), 1u)), Struct_2(Struct_1(vec2<f32>(706f, 773f), 41984u), Struct_1(vec2<f32>(893f, 1000f), 25977u)), Struct_2(Struct_1(vec2<f32>(704f, -732f), 1u), Struct_1(vec2<f32>(-1220f, 1000f), 28051u)), Struct_2(Struct_1(vec2<f32>(1000f, 294f), 4294967295u), Struct_1(vec2<f32>(-247f, 1430f), 30145u)));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<f32>(-1299f, -472f), 93463u), Struct_1(vec2<f32>(-1320f, 291f), 0u), Struct_1(vec2<f32>(114f, 477f), 49238u), Struct_1(vec2<f32>(-742f, 779f), 1u), Struct_1(vec2<f32>(-1040f, -282f), 1u), Struct_1(vec2<f32>(362f, 375f), 0u), Struct_1(vec2<f32>(1939f, 667f), 53109u), Struct_1(vec2<f32>(-1000f, 155f), 1u), Struct_1(vec2<f32>(-1462f, 204f), 4078u), Struct_1(vec2<f32>(-710f, -114f), 21158u), Struct_1(vec2<f32>(-817f, 272f), 0u), Struct_1(vec2<f32>(-1622f, 632f), 1u), Struct_1(vec2<f32>(-875f, 516f), 3242u), Struct_1(vec2<f32>(-524f, -1000f), 1821u), Struct_1(vec2<f32>(-1032f, -924f), 1u), Struct_1(vec2<f32>(408f, -149f), 15544u), Struct_1(vec2<f32>(-435f, 871f), 73414u), Struct_1(vec2<f32>(331f, -954f), 1u), Struct_1(vec2<f32>(-156f, -306f), 0u), Struct_1(vec2<f32>(-482f, 2075f), 7853u), Struct_1(vec2<f32>(788f, 836f), 19644u), Struct_1(vec2<f32>(1000f, -533f), 0u), Struct_1(vec2<f32>(899f, -1352f), 4294967295u), Struct_1(vec2<f32>(-980f, 1014f), 9755u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    global0 = array<u32, 17>();
    return any(!vec2<bool>(false, all(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> f32 {
    global2 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, arg_1.b.a.x, arg_1.a.a.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1649f, arg_0, arg_1.a.a.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1397f, arg_1.b.a.x, 772f)), true));
    return _wgslsmith_f_op_f32(select(arg_0, -545f, func_2()));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_1(arg_0.a, abs(global0[_wgslsmith_index_u32(0u, 17u)]));
    var var_1 = max(-21148i, i32(-1i) * -countOneBits(_wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x)));
    global0 = array<u32, 17>();
    global1 = array<Struct_2, 29>();
    var var_2 = vec2<i32>(4492i, 9880i);
    return global1[_wgslsmith_index_u32(~var_0.b, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    var var_0 = func_3(global2[_wgslsmith_index_u32(58888u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(282f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 29u)])), _wgslsmith_f_op_f32(-372f * 278f))))));
    global1 = array<Struct_2, 29>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-538f))))), _wgslsmith_f_op_f32(ceil(357f)), -920f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), _wgslsmith_div_u32(1u, var_0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global0[_wgslsmith_index_u32(~(var_2.b | var_0.a.b), 17u)], 91694u), -_wgslsmith_sub_i32(min(-u_input.a.x, u_input.a.x), abs(i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.b, 4294967295u), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], var_2.b), vec2<u32>(4294967295u, var_2.b)), firstLeadingBit(vec2<u32>(6471u, 1u)))), vec2<u32>(4294967295u, var_2.b), vec2<u32>(firstTrailingBit(1u), min(0u, var_2.b) | 36814u)), -901f, var_1.x);
}

