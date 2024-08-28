struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(4294967295u, 4294967295u, 1u, 0u, 0u, 1u, 41914u, 39862u, 46282u, 1u, 24269u, 46899u, 4294967295u, 58582u, 1u, 26383u, 4294967295u, 50619u, 14133u, 6199u, 82100u, 63011u, 9427u, 0u, 0u, 0u, 0u, 4294967295u, 36467u, 4294967295u, 4294967295u, 95927u);

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(690f, Struct_1(vec2<u32>(4294967295u, 36614u), vec4<u32>(4294967295u, 21992u, 1u, 80634u), 896f), Struct_2(Struct_1(vec2<u32>(13736u, 0u), vec4<u32>(34610u, 112222u, 1u, 1u), -2148f), -482f, Struct_1(vec2<u32>(15000u, 1u), vec4<u32>(1u, 1u, 0u, 36178u), -451f))), Struct_3(-605f, Struct_1(vec2<u32>(1u, 0u), vec4<u32>(0u, 511u, 20783u, 4294967295u), 806f), Struct_2(Struct_1(vec2<u32>(73373u, 4294967295u), vec4<u32>(27096u, 0u, 0u, 0u), -1321f), -1505f, Struct_1(vec2<u32>(6011u, 55724u), vec4<u32>(1u, 7604u, 20398u, 43594u), -319f))), Struct_3(2106f, Struct_1(vec2<u32>(5769u, 42038u), vec4<u32>(16211u, 47459u, 1u, 10640u), 809f), Struct_2(Struct_1(vec2<u32>(1706u, 0u), vec4<u32>(22425u, 23493u, 12495u, 0u), 860f), -948f, Struct_1(vec2<u32>(15744u, 0u), vec4<u32>(4294967295u, 99729u, 7122u, 47365u), 2694f))), Struct_3(1167f, Struct_1(vec2<u32>(12298u, 53424u), vec4<u32>(1u, 4294967295u, 13379u, 1u), 153f), Struct_2(Struct_1(vec2<u32>(78008u, 44446u), vec4<u32>(1u, 4294967295u, 44906u, 1u), 1404f), -656f, Struct_1(vec2<u32>(105596u, 0u), vec4<u32>(0u, 7311u, 4294967295u, 1u), 591f))), Struct_3(-1399f, Struct_1(vec2<u32>(36227u, 16343u), vec4<u32>(8458u, 1u, 7877u, 4497u), -1218f), Struct_2(Struct_1(vec2<u32>(62921u, 70668u), vec4<u32>(4294967295u, 1u, 1u, 93195u), -305f), -296f, Struct_1(vec2<u32>(49807u, 1u), vec4<u32>(68665u, 41595u, 8986u, 1499u), 619f))), Struct_3(976f, Struct_1(vec2<u32>(17773u, 14672u), vec4<u32>(4294967295u, 40414u, 16028u, 56543u), 446f), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<u32>(69050u, 1u, 4294967295u, 4294967295u), 816f), -259f, Struct_1(vec2<u32>(57675u, 1u), vec4<u32>(29185u, 65286u, 23662u, 18726u), 1641f))), Struct_3(1652f, Struct_1(vec2<u32>(29904u, 84501u), vec4<u32>(34230u, 1212u, 0u, 4294967295u), 1758f), Struct_2(Struct_1(vec2<u32>(36485u, 1572u), vec4<u32>(71369u, 94072u, 4294967295u, 4294967295u), 1605f), -1414f, Struct_1(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 1u, 28236u, 28716u), -1641f))), Struct_3(1718f, Struct_1(vec2<u32>(39032u, 4294967295u), vec4<u32>(6772u, 71493u, 37600u, 4294967295u), 1683f), Struct_2(Struct_1(vec2<u32>(64719u, 10876u), vec4<u32>(4294967295u, 55359u, 6579u, 3552u), -1161f), 863f, Struct_1(vec2<u32>(40559u, 0u), vec4<u32>(36738u, 4294967295u, 12475u, 0u), -1064f))), Struct_3(451f, Struct_1(vec2<u32>(23491u, 1u), vec4<u32>(1u, 8296u, 1u, 4294967295u), -488f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 50974u, 43198u, 4294967295u), -315f), 703f, Struct_1(vec2<u32>(28951u, 27323u), vec4<u32>(0u, 10927u, 0u, 4294967295u), 1424f))), Struct_3(1282f, Struct_1(vec2<u32>(21761u, 10174u), vec4<u32>(121301u, 14561u, 4294967295u, 56792u), 1364f), Struct_2(Struct_1(vec2<u32>(0u, 33359u), vec4<u32>(25409u, 3763u, 0u, 62437u), 779f), -942f, Struct_1(vec2<u32>(102642u, 1u), vec4<u32>(17336u, 45429u, 1u, 4294967295u), -218f))), Struct_3(474f, Struct_1(vec2<u32>(60712u, 0u), vec4<u32>(21803u, 16017u, 4294967295u, 27528u), 496f), Struct_2(Struct_1(vec2<u32>(1u, 29777u), vec4<u32>(58030u, 26463u, 0u, 12231u), -955f), -1000f, Struct_1(vec2<u32>(1u, 419u), vec4<u32>(31352u, 4294967295u, 13954u, 1u), -1122f))), Struct_3(370f, Struct_1(vec2<u32>(27048u, 77417u), vec4<u32>(12663u, 4294967295u, 68224u, 1u), -589f), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<u32>(22253u, 4294967295u, 4294967295u, 1u), 545f), -136f, Struct_1(vec2<u32>(28713u, 0u), vec4<u32>(77539u, 4294967295u, 32850u, 0u), -437f))), Struct_3(547f, Struct_1(vec2<u32>(0u, 17697u), vec4<u32>(370u, 35977u, 1u, 31531u), -413f), Struct_2(Struct_1(vec2<u32>(1u, 79034u), vec4<u32>(75347u, 54999u, 55648u, 0u), -228f), 379f, Struct_1(vec2<u32>(1u, 27525u), vec4<u32>(19398u, 0u, 32264u, 0u), -625f))), Struct_3(-1684f, Struct_1(vec2<u32>(28170u, 65982u), vec4<u32>(9453u, 15315u, 4294967295u, 0u), -991f), Struct_2(Struct_1(vec2<u32>(41361u, 4294967295u), vec4<u32>(220u, 4294967295u, 4294967295u, 0u), -1274f), 160f, Struct_1(vec2<u32>(0u, 1u), vec4<u32>(56761u, 84897u, 20149u, 14161u), 1413f))), Struct_3(-264f, Struct_1(vec2<u32>(103942u, 4294967295u), vec4<u32>(18101u, 4294967295u, 0u, 4294967295u), -436f), Struct_2(Struct_1(vec2<u32>(4294967295u, 46000u), vec4<u32>(30864u, 0u, 65221u, 42152u), -375f), -658f, Struct_1(vec2<u32>(33246u, 9231u), vec4<u32>(1u, 29844u, 59604u, 1u), 300f))), Struct_3(974f, Struct_1(vec2<u32>(31643u, 37861u), vec4<u32>(0u, 1u, 1u, 4294967295u), 824f), Struct_2(Struct_1(vec2<u32>(611u, 0u), vec4<u32>(16030u, 4294967295u, 55045u, 91507u), -313f), -331f, Struct_1(vec2<u32>(0u, 6127u), vec4<u32>(19809u, 4294967295u, 0u, 33157u), -799f))), Struct_3(1285f, Struct_1(vec2<u32>(15629u, 4294967295u), vec4<u32>(9133u, 0u, 19046u, 3591u), -933f), Struct_2(Struct_1(vec2<u32>(21305u, 0u), vec4<u32>(0u, 0u, 1u, 50116u), -126f), -766f, Struct_1(vec2<u32>(0u, 1u), vec4<u32>(0u, 0u, 61612u, 4294967295u), 1166f))), Struct_3(1411f, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(72705u, 49484u, 0u, 1u), -899f), Struct_2(Struct_1(vec2<u32>(1308u, 9167u), vec4<u32>(784u, 4294967295u, 1u, 4294967295u), 1472f), 460f, Struct_1(vec2<u32>(4294967295u, 42542u), vec4<u32>(0u, 33290u, 2614u, 0u), -169f))), Struct_3(-2811f, Struct_1(vec2<u32>(0u, 79162u), vec4<u32>(16296u, 0u, 8500u, 79464u), -1000f), Struct_2(Struct_1(vec2<u32>(60705u, 44080u), vec4<u32>(47030u, 71044u, 0u, 4294967295u), 184f), 1025f, Struct_1(vec2<u32>(4294967295u, 69736u), vec4<u32>(3514u, 4294967295u, 74141u, 23555u), -1643f))), Struct_3(-503f, Struct_1(vec2<u32>(94121u, 0u), vec4<u32>(1u, 38560u, 63498u, 9430u), -690f), Struct_2(Struct_1(vec2<u32>(58478u, 19324u), vec4<u32>(1u, 1u, 50035u, 1201u), -168f), -426f, Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(44905u, 4294967295u, 0u, 1u), -1226f))), Struct_3(711f, Struct_1(vec2<u32>(1u, 6933u), vec4<u32>(4294967295u, 93936u, 63303u, 1u), 725f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<u32>(4294967295u, 24173u, 6798u, 1018u), -1469f), 731f, Struct_1(vec2<u32>(0u, 0u), vec4<u32>(1u, 4294967295u, 0u, 0u), -1282f))), Struct_3(234f, Struct_1(vec2<u32>(0u, 0u), vec4<u32>(1u, 67405u, 1u, 0u), -740f), Struct_2(Struct_1(vec2<u32>(4294967295u, 18352u), vec4<u32>(64049u, 36735u, 0u, 4294967295u), -162f), 707f, Struct_1(vec2<u32>(91675u, 0u), vec4<u32>(38081u, 4294967295u, 1u, 8823u), -596f))));

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(vec2<u32>(firstTrailingBit(58706u) | global0[_wgslsmith_index_u32(~14234u, 32u)], select(4294967295u | u_input.b.x, ~0u, true)), u_input.d, -812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1089f), -870f))), Struct_1(vec2<u32>(4294967295u, ~1u), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], 32u)], 1u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 32u)], u_input.b.x, u_input.b.x, u_input.b.x)), 0u & u_input.b.x, u_input.d.x << (global0[_wgslsmith_index_u32(1u, 32u)] % 32u), ~30487u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(931f)), -550f))))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 22u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, var_1.c.a.b.wz), 22u)];
    return abs(1u);
}

fn func_2() -> f32 {
    let var_0 = -478f;
    var var_1 = true;
    var var_2 = Struct_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), all(vec3<bool>(true, true, true))), true), vec3<u32>(514u, ~1u, func_3()), Struct_3(-328f, Struct_1(abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 32u)], 0u)), (vec4<u32>(global0[_wgslsmith_index_u32(61445u, 32u)], 10361u, u_input.b.x, 0u) << (u_input.d % vec4<u32>(32u))) << ((u_input.d | vec4<u32>(16668u, 6567u, global0[_wgslsmith_index_u32(10751u, 32u)], 65922u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1173f)), Struct_2(Struct_1(u_input.b.xz, vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.d.x, 4294967295u), var_0), var_0, Struct_1(~u_input.d.ww, ~vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 46077u), _wgslsmith_f_op_f32(max(var_0, 2414f))))));
    let var_3 = var_2.c.c.b;
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.c.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -306f))), _wgslsmith_f_op_f32(-255f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(-var_2.c.c.b)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec4<bool>(true, true & any(vec4<bool>(true, true, true, true)), false, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)) | all(vec3<bool>(false, true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(194f, _wgslsmith_f_op_f32(f32(-1f) * -1806f), -1789f, _wgslsmith_f_op_f32(-456f - -197f)), vec4<f32>(-579f, _wgslsmith_f_op_f32(1335f * -579f), _wgslsmith_div_f32(-359f, 667f), 2820f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(316f, 1857f, -845f, -848f), vec4<f32>(-213f, -135f, 307f, 1759f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-279f, 2708f, -2542f, 331f) * vec4<f32>(156f, -1633f, 1055f, -1130f)), vec4<f32>(533f, -1000f, -1979f, -665f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(834f, -1364f, 1000f, 500f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, 1060f, -695f, 1776f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(514f, 708f, 1364f, -1019f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1352f * -184f) - -1001f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1125f + -198f) + _wgslsmith_f_op_f32(475f * -583f)), 596f)), select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(2147483647i >= arg_1.x, true, true, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x))), vec4<bool>(false && var_0.x, var_0.x, true, true)), select(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), true), vec4<bool>(var_0.x && var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, true)), all(var_0.zwy), var_0.x), _wgslsmith_f_op_f32(ceil(-1000f)) < -1000f))));
    let var_2 = -16869i;
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(13372u, 5310u, ~abs(arg_0.x), 0u), firstLeadingBit(~(max(vec4<u32>(45714u, 4294967295u, 7692u, u_input.d.x), u_input.d) | _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(global0[_wgslsmith_index_u32(0u, 32u)], 34648u, arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 32u)])))));
    return firstTrailingBit(var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(vec4<bool>(true, true, true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), all(vec2<bool>(true, false)) & true), vec3<u32>(5181u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], 4294967295u, u_input.b.x, u_input.d.x), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 27971u, 1u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(56762u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18339u, 32u)], 32u)], 32u)])), 32u)]) & vec3<u32>(_wgslsmith_mod_u32(27439u, ~0u), _wgslsmith_div_u32(~32091u, _wgslsmith_sub_u32(23706u, u_input.a.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(88210u, u_input.d.x), func_1(vec2<u32>(u_input.d.x, u_input.b.x), vec3<i32>(1i, 0i, u_input.e.x)))), Struct_3(-689f, Struct_1(u_input.d.wx, select(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(74717u, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 32u)]), true) | ~u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-234f, 1306f)) - -811f)), Struct_2(Struct_1(~u_input.a.zz, _wgslsmith_sub_vec4_u32(vec4<u32>(32154u, u_input.a.x, u_input.d.x, 1u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 32u)])), -325f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1155f - 1322f), -769f)), Struct_1(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(59450u, 1218u, u_input.b.x, 4508u), u_input.d), 382f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

