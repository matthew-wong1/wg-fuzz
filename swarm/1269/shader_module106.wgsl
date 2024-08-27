struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(445f, -638f, 1733f), -1i, vec3<bool>(false, false, false)), vec4<i32>(1i, -1i, -49912i, -5576i), Struct_1(vec2<bool>(true, true), vec3<f32>(722f, 566f, -690f), 14502i, vec3<bool>(true, true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(136f, -1000f, -470f), -35062i, vec3<bool>(false, true, true)), vec4<i32>(1i, 0i, 2147483647i, 1i), Struct_1(vec2<bool>(false, false), vec3<f32>(-488f, 349f, -1326f), -40750i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1890f, -951f, 336f), -35510i, vec3<bool>(true, false, false)), vec4<i32>(-1i, i32(-2147483648), -41103i, 2147483647i), Struct_1(vec2<bool>(false, false), vec3<f32>(2391f, -490f, 748f), -43222i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-1914f, -293f, -852f), 60753i, vec3<bool>(true, false, false)), vec4<i32>(0i, 1i, 1i, 30015i), Struct_1(vec2<bool>(true, false), vec3<f32>(381f, -370f, -719f), -1i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1610f, -830f, 618f), 1i, vec3<bool>(false, false, true)), vec4<i32>(-3004i, 0i, 1i, -23817i), Struct_1(vec2<bool>(false, true), vec3<f32>(909f, 1000f, -1390f), -1i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(1735f, -344f, -498f), -34899i, vec3<bool>(true, true, false)), vec4<i32>(-1i, i32(-2147483648), -1i, 1i), Struct_1(vec2<bool>(false, true), vec3<f32>(-538f, 1357f, 1035f), 2147483647i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-315f, -232f, 684f), -12580i, vec3<bool>(true, false, true)), vec4<i32>(0i, -35472i, 44951i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec3<f32>(1000f, -1603f, -867f), i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-517f, 237f, 240f), 25233i, vec3<bool>(false, false, true)), vec4<i32>(0i, 8485i, 2147483647i, -19262i), Struct_1(vec2<bool>(false, true), vec3<f32>(-1165f, -485f, 1270f), -5929i, vec3<bool>(false, false, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1531f, -1279f, -276f), 2147483647i, vec3<bool>(true, false, false)), vec4<i32>(-713i, -32026i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<bool>(true, false), vec3<f32>(285f, -1000f, -1000f), -29611i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(470f, -1394f, -1184f), i32(-2147483648), vec3<bool>(false, false, false)), vec4<i32>(18663i, 1i, 2147483647i, 2147483647i), Struct_1(vec2<bool>(true, false), vec3<f32>(1360f, -498f, 1373f), i32(-2147483648), vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(1000f, 1871f, 1000f), -27876i, vec3<bool>(false, true, true)), vec4<i32>(1i, 12156i, i32(-2147483648), 15387i), Struct_1(vec2<bool>(true, true), vec3<f32>(-685f, 535f, -1067f), -44805i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-2019f, 817f, 1398f), -28970i, vec3<bool>(true, true, false)), vec4<i32>(2147483647i, -26842i, 18072i, 2147483647i), Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, 598f, -1000f), 54592i, vec3<bool>(false, true, false))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1390f, -284f, -812f), 0i, vec3<bool>(true, true, false)), vec4<i32>(i32(-2147483648), 1i, 0i, -1i), Struct_1(vec2<bool>(true, false), vec3<f32>(-1000f, -1243f, -209f), i32(-2147483648), vec3<bool>(false, false, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-2430f, -799f, 184f), i32(-2147483648), vec3<bool>(false, false, true)), vec4<i32>(0i, -42336i, -23428i, -35929i), Struct_1(vec2<bool>(true, true), vec3<f32>(685f, 364f, -1106f), 3285i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1456f, -1000f, 795f), 15617i, vec3<bool>(true, false, false)), vec4<i32>(0i, 27431i, -1i, 17065i), Struct_1(vec2<bool>(false, true), vec3<f32>(-452f, -938f, -1225f), -1i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(260f, 1623f, -122f), 0i, vec3<bool>(true, false, false)), vec4<i32>(-80553i, 13589i, 31450i, -42465i), Struct_1(vec2<bool>(true, false), vec3<f32>(2212f, 389f, 334f), 7125i, vec3<bool>(false, true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(641f, -582f, 2793f), 2147483647i, vec3<bool>(true, false, true)), vec4<i32>(0i, 12725i, -23791i, 51764i), Struct_1(vec2<bool>(true, false), vec3<f32>(-1810f, 1083f, -2152f), i32(-2147483648), vec3<bool>(false, true, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(2541f, 1027f, -355f), -56864i, vec3<bool>(false, true, true)), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 4310i), Struct_1(vec2<bool>(false, false), vec3<f32>(919f, 665f, -575f), 1i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(512f, -613f, 2186f), -46720i, vec3<bool>(true, true, false)), vec4<i32>(14131i, -26723i, 0i, 0i), Struct_1(vec2<bool>(true, true), vec3<f32>(-951f, 1528f, 653f), 3335i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-2624f, 1672f, 832f), -19454i, vec3<bool>(true, true, false)), vec4<i32>(-46245i, i32(-2147483648), -7255i, 20264i), Struct_1(vec2<bool>(false, false), vec3<f32>(-267f, 1262f, 472f), 1i, vec3<bool>(true, true, true))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(899f, -2114f, -1588f), -15237i, vec3<bool>(false, true, true)), vec4<i32>(49979i, i32(-2147483648), -21457i, -2115i), Struct_1(vec2<bool>(true, true), vec3<f32>(393f, -1634f, 565f), -10963i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(251f, -333f, -463f), -49241i, vec3<bool>(false, false, false)), vec4<i32>(-1i, 0i, -1i, 1i), Struct_1(vec2<bool>(false, false), vec3<f32>(-1000f, -800f, 1000f), -27794i, vec3<bool>(true, true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(516f, 201f, 586f), 1i, vec3<bool>(true, false, false)), vec4<i32>(i32(-2147483648), 1i, 44696i, 38160i), Struct_1(vec2<bool>(true, false), vec3<f32>(-1664f, 931f, -769f), 2147483647i, vec3<bool>(false, true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-761f, 925f, 1000f), 2147483647i, vec3<bool>(false, true, true)), vec4<i32>(2147483647i, 76717i, 2147483647i, 0i), Struct_1(vec2<bool>(true, true), vec3<f32>(-654f, -318f, -817f), -29031i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1000f, 1223f, -125f), -7869i, vec3<bool>(false, true, true)), vec4<i32>(0i, -39307i, 2147483647i, 44675i), Struct_1(vec2<bool>(true, true), vec3<f32>(1372f, 1620f, 740f), 20941i, vec3<bool>(true, false, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-403f, 2154f, 1391f), i32(-2147483648), vec3<bool>(true, true, true)), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 3942i), Struct_1(vec2<bool>(false, false), vec3<f32>(1061f, -143f, -844f), -1i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1693f, -420f, -370f), i32(-2147483648), vec3<bool>(false, false, false)), vec4<i32>(5841i, -26834i, 37607i, -30242i), Struct_1(vec2<bool>(true, false), vec3<f32>(1097f, -1261f, 305f), 0i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-611f, 1632f, -833f), i32(-2147483648), vec3<bool>(true, true, true)), vec4<i32>(-1i, 56386i, 1i, -36284i), Struct_1(vec2<bool>(true, false), vec3<f32>(-438f, 1317f, -1000f), 1i, vec3<bool>(false, false, true))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1196f, -1129f, -874f), 2147483647i, vec3<bool>(true, true, false)), vec4<i32>(-19164i, 0i, 38630i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec3<f32>(-1510f, -354f, -1000f), 2147483647i, vec3<bool>(false, true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1006f, -1414f, 1013f), i32(-2147483648), vec3<bool>(false, false, false)), vec4<i32>(2147483647i, 50070i, 0i, 2147483647i), Struct_1(vec2<bool>(false, false), vec3<f32>(1424f, -1120f, 561f), -44235i, vec3<bool>(true, false, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-175f, 902f, 1110f), 2147483647i, vec3<bool>(true, false, true)), vec4<i32>(-31485i, i32(-2147483648), -2348i, -986i), Struct_1(vec2<bool>(false, true), vec3<f32>(-878f, 1249f, -1334f), -40994i, vec3<bool>(true, true, false))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1175f, 947f, 112f), -1i, vec3<bool>(true, false, false)), vec4<i32>(0i, -23306i, 1i, 14390i), Struct_1(vec2<bool>(false, true), vec3<f32>(1161f, -435f, -221f), 0i, vec3<bool>(false, false, true))));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global1 = array<Struct_2, 32>();
    global0 = array<f32, 21>();
    let var_0 = Struct_1(vec2<bool>(!((-1i & u_input.a.x) != u_input.a.x), !global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-928f, arg_0, arg_0) * vec3<f32>(1235f, global0[_wgslsmith_index_u32(0u, 21u)], 1301f)) + vec3<f32>(136f, arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 405f)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(276f, -1360f, -2500f))))), 2147483647i, global2.xzx);
    var var_1 = abs(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b)), 4294967295u, _wgslsmith_sub_u32(reverseBits(select(1u, 0u, false)), max(u_input.c.x, ~4294967295u)), countOneBits(~(0u >> (u_input.b.x % 32u)))));
    global2 = select(select(vec4<bool>(!var_0.a.x, !(!arg_1), true, !select(global2.x, true, false)), select(vec4<bool>(arg_1, !global2.x, true, !global2.x), select(select(vec4<bool>(var_0.a.x, global2.x, true, arg_1), vec4<bool>(true, false, true, var_0.a.x), arg_1), !vec4<bool>(false, false, arg_1, arg_1), select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(false, true, true, false), arg_1)), arg_1), select(!arg_1, all(global2.zzw), !arg_1) || any(select(vec3<bool>(false, global2.x, true), vec3<bool>(var_0.d.x, var_0.d.x, arg_1), var_0.d.x))), vec4<bool>(any(select(vec3<bool>(global2.x, arg_1, true), !var_0.d, !global2.zyx)), true, false, !(!global2.x)), true);
    return global2.zw;
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = !(!func_3(_wgslsmith_f_op_f32(-1005f + _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_0.x, 21u)], 319f))), false));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u << (0u % 32u), 21u)], _wgslsmith_f_op_f32(f32(-1f) * -1353f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(47167u, 21u)] * global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))))) - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~u_input.b.x, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))))));
    global2 = select(!vec4<bool>(false, true & global2.x, func_3(var_1, false).x && true, min(39623u, u_input.c.x) < ~54083u), !(!(!select(vec4<bool>(global2.x, true, var_0.x, false), vec4<bool>(global2.x, global2.x, true, true), true))), select(vec4<bool>(all(vec3<bool>(true, true, true)), any(func_3(2030f, false)), false, true), select(!select(vec4<bool>(global2.x, var_0.x, global2.x, var_0.x), vec4<bool>(true, false, global2.x, true), vec4<bool>(false, var_0.x, global2.x, false)), vec4<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)), true, all(vec2<bool>(false, false))), all(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, var_0.x, false, false), var_0.x))), select(!select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(var_0.x, false, global2.x, var_0.x), false), !(!vec4<bool>(true, true, global2.x, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, false, false, false), !vec4<bool>(global2.x, var_0.x, global2.x, true)))));
    global2 = vec4<bool>((u_input.a.x > (2147483647i << (select(71062u, 0u, var_0.x) % 32u))) || any(select(var_0, vec2<bool>(global2.x, global2.x), global2.x)), select(func_3(global0[_wgslsmith_index_u32(57600u, 21u)], global2.x).x, any(select(!vec4<bool>(var_0.x, global2.x, var_0.x, false), vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(false, global2.x, false, false), vec4<bool>(false, false, var_0.x, false)))), var_0.x), true, true);
    let var_2 = var_0.x || !all(select(global2.zwz, select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, true, global2.x), false), !var_0.x));
    return Struct_4(~vec4<i32>(~countOneBits(0i), abs(abs(u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, -43912i) ^ u_input.a.x, reverseBits(~u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 21u)] * var_1)))))), global1[_wgslsmith_index_u32(43054u, 32u)]);
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = arg_0.c.c.b;
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    var var_1 = arg_0.c.a;
    var var_2 = func_2(~vec4<u32>(~u_input.b.x, u_input.c.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x) & (vec4<u32>(u_input.b.x, 34723u, _wgslsmith_mod_u32(4294967295u, 12924u), ~22332u) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, u_input.c.x), ~vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x)) % vec4<u32>(32u))));
    return 2710f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 21u)] * global0[_wgslsmith_index_u32(1u, 21u)]), -315f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<i32>(-1i, u_input.a.x, 1615i, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 32u)]))), -702f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1733f, 1000f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 374f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(502f)), -222f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1298f, 1382f)))))))));
    global1 = array<Struct_2, 32>();
    global0 = array<f32, 21>();
    global2 = vec4<bool>(true, select(any(!select(global2.xyw, global2.xyx, global2.x)), global0[_wgslsmith_index_u32(~(~u_input.b.x), 21u)] == var_0.x, global2.x), !(global2.x | !global2.x), false);
    let var_1 = _wgslsmith_sub_u32(89911u, u_input.b.x);
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(countOneBits(select(u_input.b.yz, u_input.b.yy, global2.x))), 1u, ~(max(vec4<u32>(57149u, 1532u, 17954u, var_1), ~vec4<u32>(var_1, 56727u, 33359u, 0u)) | ~(vec4<u32>(82991u, u_input.b.x, var_1, 14035u) << (vec4<u32>(19409u, 4294967295u, 15403u, 0u) % vec4<u32>(32u)))));
}

