struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec4<f32>, 23>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<bool>(false, false), 53512u, vec3<u32>(1u, 4294967295u, 32979u), -1i, vec2<i32>(-5363i, i32(-2147483648))), 15084u, 718f, vec4<u32>(41807u, 95816u, 1u, 51237u), vec4<f32>(-532f, -790f, 573f, 1528f)), Struct_2(Struct_1(vec2<bool>(true, false), 116301u, vec3<u32>(4294967295u, 0u, 1u), 2147483647i, vec2<i32>(i32(-2147483648), -19993i)), 0u, -1033f, vec4<u32>(83751u, 4294967295u, 4294967295u, 25913u), vec4<f32>(2000f, -591f, 133f, -1294f)), Struct_2(Struct_1(vec2<bool>(true, false), 1u, vec3<u32>(69666u, 3286u, 4294967295u), -21562i, vec2<i32>(i32(-2147483648), 1i)), 8081u, -234f, vec4<u32>(51014u, 54625u, 0u, 0u), vec4<f32>(-575f, 644f, -865f, 240f)), Struct_2(Struct_1(vec2<bool>(false, false), 38030u, vec3<u32>(4294967295u, 4294967295u, 1u), 9790i, vec2<i32>(-7624i, -1i)), 0u, 1284f, vec4<u32>(4294967295u, 48410u, 1u, 61366u), vec4<f32>(-510f, 1053f, -277f, 235f)), Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u, vec3<u32>(0u, 1u, 1u), 32201i, vec2<i32>(-1i, 32046i)), 11857u, -461f, vec4<u32>(3739u, 1u, 4294967295u, 0u), vec4<f32>(-480f, 1030f, 1568f, 2579f)), Struct_2(Struct_1(vec2<bool>(false, true), 0u, vec3<u32>(103674u, 1u, 4294967295u), 46713i, vec2<i32>(-5041i, 33200i)), 1u, -312f, vec4<u32>(1u, 0u, 6849u, 39669u), vec4<f32>(-674f, -1000f, 1450f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec3<u32>(58199u, 4294967295u, 51204u), -28056i, vec2<i32>(i32(-2147483648), -1i)), 5249u, -369f, vec4<u32>(1u, 4294967295u, 1u, 73931u), vec4<f32>(-1000f, -1407f, -371f, 273f)), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec3<u32>(0u, 4294967295u, 11587u), -1i, vec2<i32>(i32(-2147483648), 0i)), 91285u, -1373f, vec4<u32>(26881u, 0u, 50330u, 29681u), vec4<f32>(-821f, 247f, 496f, 609f)), Struct_2(Struct_1(vec2<bool>(false, false), 73891u, vec3<u32>(69499u, 1u, 1u), -13171i, vec2<i32>(-33830i, -40049i)), 5734u, -489f, vec4<u32>(7926u, 90762u, 1u, 19082u), vec4<f32>(924f, -463f, 2022f, 720f)), Struct_2(Struct_1(vec2<bool>(false, true), 49400u, vec3<u32>(47096u, 4294967295u, 1u), 15219i, vec2<i32>(2147483647i, 0i)), 4294967295u, 1091f, vec4<u32>(5272u, 14887u, 0u, 47972u), vec4<f32>(649f, -593f, 435f, 442f)), Struct_2(Struct_1(vec2<bool>(true, false), 14126u, vec3<u32>(60141u, 40326u, 1u), 1176i, vec2<i32>(-1i, -25583i)), 58769u, -581f, vec4<u32>(85u, 0u, 1u, 10415u), vec4<f32>(-1425f, 1868f, -2033f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, true), 32891u, vec3<u32>(0u, 4294967295u, 62275u), 2147483647i, vec2<i32>(i32(-2147483648), -1i)), 53241u, -415f, vec4<u32>(4085u, 0u, 0u, 1u), vec4<f32>(1028f, 1579f, -553f, 396f)), Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u, vec3<u32>(39467u, 4294967295u, 36498u), 0i, vec2<i32>(0i, 2147483647i)), 4294967295u, -1000f, vec4<u32>(42181u, 17502u, 30680u, 0u), vec4<f32>(-291f, 283f, -327f, 537f)), Struct_2(Struct_1(vec2<bool>(false, false), 66987u, vec3<u32>(38560u, 7242u, 10597u), 15093i, vec2<i32>(29219i, -1i)), 39063u, 770f, vec4<u32>(4294967295u, 63562u, 25702u, 13253u), vec4<f32>(-1000f, 830f, 1226f, 335f)), Struct_2(Struct_1(vec2<bool>(true, true), 29051u, vec3<u32>(1u, 41376u, 0u), 38396i, vec2<i32>(-1i, 2147483647i)), 4294967295u, 953f, vec4<u32>(0u, 49216u, 4294967295u, 4294967295u), vec4<f32>(-2010f, 952f, -2669f, 269f)), Struct_2(Struct_1(vec2<bool>(true, false), 0u, vec3<u32>(42165u, 8976u, 0u), i32(-2147483648), vec2<i32>(-1i, 41094i)), 81075u, -937f, vec4<u32>(43151u, 1u, 4294967295u, 4294967295u), vec4<f32>(1311f, -1245f, -754f, 161f)), Struct_2(Struct_1(vec2<bool>(true, false), 1u, vec3<u32>(1u, 4294967295u, 1u), i32(-2147483648), vec2<i32>(1i, i32(-2147483648))), 4294967295u, 459f, vec4<u32>(29732u, 40894u, 82289u, 21598u), vec4<f32>(527f, 193f, 2349f, -748f)), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec3<u32>(39139u, 4294967295u, 25886u), 20346i, vec2<i32>(2147483647i, -10354i)), 54068u, 617f, vec4<u32>(4294967295u, 64085u, 78121u, 39908u), vec4<f32>(184f, -820f, 795f, 876f)), Struct_2(Struct_1(vec2<bool>(true, true), 48093u, vec3<u32>(4294967295u, 108940u, 4294967295u), -22871i, vec2<i32>(1i, 2147483647i)), 1u, 225f, vec4<u32>(4294967295u, 5647u, 20878u, 1u), vec4<f32>(-788f, -863f, 647f, 508f)), Struct_2(Struct_1(vec2<bool>(true, true), 0u, vec3<u32>(28737u, 16371u, 44550u), 9056i, vec2<i32>(-1i, -4204i)), 31841u, -1263f, vec4<u32>(23142u, 4294967295u, 0u, 1u), vec4<f32>(1000f, -1347f, 1438f, -1324f)), Struct_2(Struct_1(vec2<bool>(false, true), 4294967295u, vec3<u32>(19923u, 9517u, 4294967295u), -1i, vec2<i32>(2147483647i, 1i)), 0u, 1574f, vec4<u32>(27606u, 44684u, 114381u, 41724u), vec4<f32>(-672f, -1376f, -1625f, 445f)), Struct_2(Struct_1(vec2<bool>(true, false), 952u, vec3<u32>(677u, 15696u, 4294967295u), 2147483647i, vec2<i32>(25895i, -54720i)), 1u, -657f, vec4<u32>(0u, 36633u, 1u, 25578u), vec4<f32>(2083f, 644f, 1325f, 608f)), Struct_2(Struct_1(vec2<bool>(true, false), 1u, vec3<u32>(41835u, 1u, 53761u), 17558i, vec2<i32>(12917i, i32(-2147483648))), 4294967295u, -1060f, vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<f32>(-170f, -1000f, -1012f, 291f)), Struct_2(Struct_1(vec2<bool>(true, true), 4294967295u, vec3<u32>(299u, 4294967295u, 0u), -1i, vec2<i32>(-29699i, 22387i)), 1u, -1338f, vec4<u32>(1u, 1u, 9171u, 0u), vec4<f32>(-685f, -417f, -611f, -221f)), Struct_2(Struct_1(vec2<bool>(false, true), 4294967295u, vec3<u32>(1u, 4294967295u, 5765u), -1i, vec2<i32>(-61793i, 2147483647i)), 1u, 1190f, vec4<u32>(1u, 0u, 5984u, 4294967295u), vec4<f32>(-1050f, 430f, -109f, 2104f)), Struct_2(Struct_1(vec2<bool>(true, false), 4294967295u, vec3<u32>(2488u, 31408u, 1u), i32(-2147483648), vec2<i32>(i32(-2147483648), -21709i)), 52739u, 1144f, vec4<u32>(80239u, 23990u, 0u, 42246u), vec4<f32>(1104f, -277f, 1071f, 1643f)), Struct_2(Struct_1(vec2<bool>(true, true), 1u, vec3<u32>(34494u, 0u, 23647u), 0i, vec2<i32>(2147483647i, -1i)), 0u, 138f, vec4<u32>(18491u, 4563u, 53462u, 45453u), vec4<f32>(-1689f, 2021f, 581f, -738f)), Struct_2(Struct_1(vec2<bool>(true, false), 87700u, vec3<u32>(47983u, 15901u, 4294967295u), -66927i, vec2<i32>(-43471i, 2147483647i)), 8842u, 1000f, vec4<u32>(1u, 96389u, 4294967295u, 12711u), vec4<f32>(455f, 260f, 2473f, -416f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global0 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.x)) - 935f), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-221f + arg_3.x)), true))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global1 = array<vec4<f32>, 23>();
    var var_0 = global2[_wgslsmith_index_u32(abs(54332u), 28u)];
    var_0 = Struct_2(global0[_wgslsmith_index_u32(~u_input.a & 35888u, 17u)], 0u, _wgslsmith_f_op_f32(1517f - _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, var_0.b, var_0.d.x), 23u)], Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, false), u_input.c, vec3<u32>(4294967295u, 27673u, var_0.d.x), -48577i, vec2<i32>(1i, -2147483647i)), var_0.d.x, 455f, vec4<u32>(u_input.c, u_input.c, 21006u, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 23u)]), 16567u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, var_0.e.x, var_0.c, var_0.e.x)))))), ~(~firstLeadingBit(firstTrailingBit(var_0.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-393f, var_0.c, _wgslsmith_f_op_f32(-1474f * _wgslsmith_div_f32(-1270f, var_0.e.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1190f, -514f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.e.x, -1823f)), _wgslsmith_f_op_f32(var_0.c - var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(-1505f * var_0.e.x), var_0.c)));
    var var_1 = firstTrailingBit(countOneBits(vec3<u32>(1u, ~var_0.a.b, _wgslsmith_dot_vec2_u32(vec2<u32>(53496u, 4294967295u) ^ vec2<u32>(u_input.a, var_0.b), min(vec2<u32>(u_input.c, 34754u), u_input.d)))));
    global0 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(114f, var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -614f))) * var_0.e.x)));
}

fn func_1() -> vec4<bool> {
    let var_0 = max(~(~((u_input.b.x >> (u_input.c % 32u)) >> (~u_input.c % 32u))), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-730f, -609f))))), vec2<f32>(852f, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.e, 2443i, u_input.e)))), vec2<bool>(true, any(vec2<bool>(true, true)))))));
    var var_2 = vec2<bool>(false, true);
    var_2 = vec2<bool>(true, !var_2.x);
    var_2 = vec2<bool>(var_2.x, !(var_1.x > var_1.x));
    return select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) + 938f), false, var_2.x, !(!(!var_2.x))), !select(vec4<bool>(true, false, -538f > var_1.x, 13355i > var_0), select(select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, false, true, var_2.x)), !vec4<bool>(var_2.x, false, var_2.x, true), !vec4<bool>(true, false, var_2.x, var_2.x)), var_2.x), reverseBits(_wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4601u, u_input.d.x), vec2<u32>(1u, 34366u)))) >= 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-1460f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f - 1298f))) - _wgslsmith_f_op_f32(-610f + _wgslsmith_f_op_f32(round(-1067f)))), 1f);
    var var_1 = !vec4<bool>(true, !(40805u < u_input.a) | true, (true & (u_input.b.x >= 48019i)) & (all(vec3<bool>(true, true, true)) || false), true);
    let var_2 = 1i;
    var_1 = !vec4<bool>(any(func_1()), !var_1.x, false, u_input.c < u_input.a);
    var var_3 = Struct_2(Struct_1(vec2<bool>(true, abs(u_input.a) > u_input.c), 22667u, _wgslsmith_add_vec3_u32(vec3<u32>(~1u, ~u_input.d.x, 0u), vec3<u32>(u_input.d.x, u_input.c, _wgslsmith_mult_u32(u_input.c, 41699u))), -26235i, u_input.b.zz | u_input.b.xx), ~(~(~38763u)), 590f, vec4<u32>(~select(~89391u, ~20318u, false), 0u, 0u, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1845f, _wgslsmith_f_op_f32(func_2(min(reverseBits(u_input.b), firstTrailingBit(u_input.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f + 1400f)), 666f, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_f32(-var_3.c), ~countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_3.a.c, var_3.a.c), _wgslsmith_mod_vec3_u32(var_3.d.zyx, var_3.a.c))), min(~(~var_3.d.zxw), select(~var_3.a.c, ~vec3<u32>(0u, var_3.b, var_3.a.b), vec3<bool>(false, var_1.x, var_1.x))) << (var_3.d.wzw % vec3<u32>(32u)), -589f);
}

