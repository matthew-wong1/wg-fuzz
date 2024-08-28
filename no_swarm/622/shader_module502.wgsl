// {"0:0":[53,68,65,71,96,10,95,171,85,251,165,191,61,105,238,113,90,130,137,234,62,31,123,71,110,84,21,244,142,10,161,80]}
// Seed: 12842785440410354691

struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<f32>(-780f, 703f, 1000f, 318f), -21340i, vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(false, false)), Struct_1(vec4<f32>(-879f, 119f, 382f, -724f), -1i, vec3<u32>(93687u, 4294967295u, 30455u), vec2<bool>(false, false)), Struct_1(vec4<f32>(-572f, 1920f, 860f, 791f), 2147483647i, vec3<u32>(28694u, 1u, 76985u), vec2<bool>(true, true)), Struct_1(vec4<f32>(1828f, -224f, -890f, -1460f), 4527i, vec3<u32>(4294967295u, 0u, 24278u), vec2<bool>(false, true)), Struct_1(vec4<f32>(752f, 919f, 1582f, 1214f), -1i, vec3<u32>(46558u, 27752u, 0u), vec2<bool>(true, true)), Struct_1(vec4<f32>(-2000f, -239f, -244f, -1000f), 1i, vec3<u32>(4294967295u, 75018u, 1u), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1378f, -1194f, -1000f, -205f), -1i, vec3<u32>(4294967295u, 73599u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<f32>(-2189f, -1408f, -136f, 2346f), i32(-2147483648), vec3<u32>(17795u, 39301u, 0u), vec2<bool>(false, true)), Struct_1(vec4<f32>(1091f, -519f, 670f, -204f), 37998i, vec3<u32>(1u, 53939u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<f32>(1344f, -2452f, -777f, 346f), -15293i, vec3<u32>(61644u, 0u, 32879u), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1297f, -535f, -1089f, -1058f), -37743i, vec3<u32>(4294967295u, 59829u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<f32>(-319f, 1000f, -326f, -157f), 20399i, vec3<u32>(64016u, 5029u, 0u), vec2<bool>(false, false)), Struct_1(vec4<f32>(-1000f, 256f, -113f, -445f), -68366i, vec3<u32>(34395u, 24670u, 46758u), vec2<bool>(false, false)), Struct_1(vec4<f32>(-251f, -780f, -1689f, 314f), 0i, vec3<u32>(7975u, 13793u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec4<f32>(1000f, 475f, 777f, -1702f), 47777i, vec3<u32>(54667u, 4294967295u, 28931u), vec2<bool>(false, true)), Struct_1(vec4<f32>(555f, -273f, 1869f, -350f), -1i, vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<f32>(580f, -1000f, -162f, -361f), 46034i, vec3<u32>(0u, 27538u, 0u), vec2<bool>(false, true)));

var<private> global1: vec4<i32> = vec4<i32>(-2046i, 8563i, 0i, 2147483647i);

var<private> global2: array<Struct_1, 23>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(1390f, 426f, 1660f, -459f), -3387i, vec3<u32>(0u, 0u, 62512u), vec2<bool>(false, false));

var<private> global4: array<f32, 9> = array<f32, 9>(138f, 279f, -251f, 707f, -1255f, -1691f, -1189f, 1304f, 389f);

fn func_3() -> vec3<f32> {
    var var_0 = abs(-(select(vec3<i32>(global3.b, -4561i, 2147483647i), vec3<i32>(0i, 0i, global3.b) | vec3<i32>(0i, u_input.c, -39367i), 0i == -1i) * ~vec3<i32>(i32(-2147483648), global3.b, 37173i)));
    var_0 = global1.wyz;
    global1 = -(-(~(-vec4<i32>(u_input.c, 38074i, 2147483647i, -21600i)) & clamp(min(vec4<i32>(global3.b, global3.b, 1i, global1.x), vec4<i32>(global1.x, -1i, 0i, 2147483647i)), vec4<i32>(-1i, u_input.c, 18031i, 1i), min(vec4<i32>(u_input.c, global1.x, 25749i, 8468i), vec4<i32>(2147483647i, -47508i, var_0.x, u_input.c)))));
    var var_1 = u_input.c;
    var var_2 = firstLeadingBit(abs(46078i) / ~var_0.x);
    return global3.a.xww;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = Struct_2(global2[global3.c.x], global2[global3.c.x], global0[u_input.b.x], global2[~u_input.b.x]);
    let var_1 = Struct_2(Struct_1(sign(vec4<f32>(ceil(arg_2), -499f, -148f - arg_2, ceil(var_0.a.a.x))), -arg_1, (global3.c << global3.c) / abs(var_0.d.c), global3.d), Struct_1(-var_0.d.a / var_0.a.a, min(-(u_input.c >> global3.c.x), 26888i), var_0.b.c, select(var_0.b.d, var_0.b.d, !any(global3.d))), global2[global3.c.x ^ u_input.b.x], global0[u_input.b.x]);
    global3 = global2[0u];
    let var_2 = Struct_1(var_0.d.a, dot(vec2<i32>(max(3311i, -14759i), dot(vec2<i32>(41901i, 0i), global1.xx) ^ (1i & arg_1)), vec2<i32>(1i, 36970i)), global3.c * vec3<u32>(dot(var_0.c.c.zy << vec2<u32>(global3.c.x, var_1.c.c.x), vec2<u32>(var_0.c.c.x, 47577u)), 51723u, abs(71018u)), global3.d);
    global1 = firstLeadingBit((-(vec4<i32>(var_1.c.b, 18513i, i32(-2147483648), -1i) | vec4<i32>(17618i, -1i, 8948i, 1i)) % firstLeadingBit(vec4<i32>(global1.x, global1.x, global1.x, global1.x) & vec4<i32>(i32(-2147483648), -1i, arg_1, -28823i))) % ~(select(vec4<i32>(67977i, var_2.b, 39595i, var_1.b.b), vec4<i32>(var_2.b, 14311i, global3.b, arg_1), vec4<bool>(var_1.c.d.x, true, false, true)) << ~vec4<u32>(38510u, 107292u, 0u, var_1.d.c.x)));
    return select(~(var_1.b.c.x / var_2.c.x), ~(~(~var_1.c.c.x)), -1i > ~(~u_input.a.x)) >> 21724u;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = func_4(func_3(), u_input.c, max(global4[abs(abs(u_input.b.x - 4294967295u))], -642f));
    global1 = select(min((vec4<i32>(u_input.a.x, 7043i, -4337i, u_input.c) << (vec4<u32>(0u, 4294967295u, u_input.b.x, 17956u) % vec4<u32>(var_0, 1u, arg_0.d.c.x, 4294967295u))) / vec4<i32>(~(-68222i), max(13400i, u_input.c), abs(51230i), arg_0.d.b * global3.b), vec4<i32>(u_input.c, dot(-global1.xzz, global1.yyw & u_input.a), (21913i + global1.x) | 1i, 62446i)), ~max((vec4<i32>(global3.b, 2147483647i, i32(-2147483648), 1i) * vec4<i32>(-1i, arg_0.c.b, 21587i, u_input.c)) >> vec4<u32>(4294967295u, arg_1, global3.c.x, 58785u), vec4<i32>(abs(1i), dot(vec3<i32>(global1.x, global3.b, 5006i), vec3<i32>(-19724i, 38292i, arg_0.b.b)), u_input.c, global3.b)), vec4<bool>(global3.d.x, select(all(vec3<bool>(arg_0.d.d.x, false, true)), arg_0.c.d.x, select(true, true, false) & !global3.d.x), global3.b <= arg_0.a.b, arg_0.c.d.x));
    let var_1 = arg_1 - 4294967295u;
    let var_2 = abs(0u);
    let var_3 = arg_0.b.c.x;
    return !(!(!select(select(vec4<bool>(arg_0.b.d.x, false, global3.d.x, false), vec4<bool>(global3.d.x, global3.d.x, false, arg_0.c.d.x), vec4<bool>(global3.d.x, global3.d.x, false, arg_0.c.d.x)), !vec4<bool>(global3.d.x, false, false, true), !vec4<bool>(arg_0.d.d.x, true, false, arg_0.d.d.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(9241u | u_input.d);
    let var_1 = max(~(-u_input.a.zy), vec2<i32>(-arg_2.d.b >> 1u, -1i));
    var var_2 = vec2<bool>(arg_2.d.d.x, any(!func_2(Struct_2(Struct_1(vec4<f32>(-1496f, arg_1.c.a.x, -842f, arg_3.a.x), arg_3.b, arg_2.c.c, arg_3.d), arg_3, global0[arg_2.d.c.x], Struct_1(arg_1.c.a, global3.b, vec3<u32>(18377u, 1u, 20536u), arg_0.a.d)), ~u_input.d, arg_2.d.a.wxz - arg_1.d.a.yyy)));
    let var_3 = Struct_1(abs((arg_2.a.a / vec4<f32>(arg_3.a.x, -1229f, 793f, -647f)) - (vec4<f32>(2003f, global4[arg_0.b.c.x], arg_1.a.a.x, global4[4211u]) - global3.a)) * arg_2.a.a, global1.x, arg_0.b.c, func_2(arg_0, arg_1.d.c.x, arg_2.c.a.wyz).ww);
    let var_4 = ~(arg_0.b.c.xy ^ ~(~(~arg_3.c.xy)));
    return global0[4294967295u];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_2 {
    global4 = array<f32, 9>();
    var var_0 = 24752u;
    let var_1 = arg_0;
    global3 = arg_0;
    let var_2 = Struct_2(Struct_1(arg_0.a, ~firstTrailingBit(firstLeadingBit(global1.x)), vec3<u32>(772u, arg_1.c.x, global3.c.x), !vec2<bool>(false, any(vec4<bool>(arg_1.d.x, false, var_1.d.x, true)))), func_1(Struct_2(func_1(Struct_2(Struct_1(vec4<f32>(var_1.a.x, -797f, arg_1.a.x, global3.a.x), arg_2, var_1.c, arg_0.d), arg_1, global2[arg_0.c.x], var_1), Struct_2(Struct_1(vec4<f32>(1723f, 1178f, -427f, arg_0.a.x), arg_2, vec3<u32>(8162u, arg_3, global3.c.x), vec2<bool>(true, arg_1.d.x)), Struct_1(arg_1.a, arg_2, var_1.c, vec2<bool>(true, false)), arg_0, Struct_1(global3.a, i32(-2147483648), vec3<u32>(1u, arg_3, arg_1.c.x), global3.d)), Struct_2(arg_0, arg_1, global2[arg_1.c.x], Struct_1(global3.a, global3.b, arg_0.c, vec2<bool>(true, arg_0.d.x))), func_1(Struct_2(arg_1, Struct_1(global3.a, 6323i, vec3<u32>(3713u, 1u, global3.c.x), global3.d), var_1, Struct_1(vec4<f32>(arg_1.a.x, -599f, arg_0.a.x, arg_0.a.x), var_1.b, global3.c, vec2<bool>(true, true))), Struct_2(arg_1, Struct_1(arg_1.a, u_input.a.x, var_1.c, vec2<bool>(false, false)), var_1, global0[0u]), Struct_2(Struct_1(vec4<f32>(2195f, 630f, global4[4294967295u], -1340f), global3.b, vec3<u32>(var_1.c.x, 1u, arg_0.c.x), global3.d), Struct_1(vec4<f32>(global4[1u], var_1.a.x, 315f, global4[var_1.c.x]), -9552i, vec3<u32>(u_input.d, var_1.c.x, arg_1.c.x), arg_0.d), Struct_1(arg_1.a, arg_2, vec3<u32>(95112u, arg_3, arg_1.c.x), arg_1.d), var_1), global0[arg_3])), func_1(Struct_2(global2[arg_1.c.x], global0[global3.c.x], Struct_1(vec4<f32>(887f, -1150f, 1111f, -1528f), -1i, arg_0.c, vec2<bool>(false, true)), global2[0u]), Struct_2(Struct_1(vec4<f32>(global3.a.x, 684f, 560f, -1893f), -35702i, vec3<u32>(49802u, arg_0.c.x, 43357u), arg_0.d), global2[arg_3], var_1, var_1), Struct_2(Struct_1(vec4<f32>(global3.a.x, 339f, var_1.a.x, arg_0.a.x), 0i, arg_1.c, vec2<bool>(global3.d.x, var_1.d.x)), global2[u_input.d], var_1, global0[arg_1.c.x]), global2[~0u]), func_1(Struct_2(global0[arg_1.c.x], Struct_1(vec4<f32>(global4[4294967295u], arg_1.a.x, -1000f, -997f), arg_0.b, vec3<u32>(34489u, global3.c.x, global3.c.x), vec2<bool>(arg_1.d.x, false)), Struct_1(vec4<f32>(var_1.a.x, -793f, 493f, arg_0.a.x), 6038i, vec3<u32>(1u, 1u, 33700u), global3.d), Struct_1(vec4<f32>(1410f, -918f, 784f, arg_1.a.x), arg_1.b, vec3<u32>(arg_0.c.x, 4426u, arg_1.c.x), vec2<bool>(var_1.d.x, false))), Struct_2(arg_0, Struct_1(var_1.a, var_1.b, var_1.c, vec2<bool>(true, var_1.d.x)), Struct_1(vec4<f32>(-609f, -2127f, 1263f, -1000f), 91560i, arg_1.c, arg_0.d), Struct_1(vec4<f32>(arg_0.a.x, global3.a.x, arg_0.a.x, 1695f), u_input.a.x, vec3<u32>(arg_0.c.x, 4294967295u, 1u), vec2<bool>(arg_0.d.x, arg_0.d.x))), Struct_2(global2[0u], var_1, global0[arg_1.c.x], arg_0), func_1(Struct_2(global0[1u], var_1, var_1, global2[4294967295u]), Struct_2(global0[1u], arg_0, arg_1, Struct_1(vec4<f32>(-502f, -875f, global4[13024u], global4[var_1.c.x]), i32(-2147483648), arg_1.c, var_1.d)), Struct_2(arg_0, arg_1, Struct_1(arg_1.a, -69633i, var_1.c, global3.d), var_1), Struct_1(arg_0.a, global1.x, vec3<u32>(arg_1.c.x, arg_3, arg_1.c.x), vec2<bool>(global3.d.x, global3.d.x)))), Struct_1(vec4<f32>(681f, var_1.a.x, var_1.a.x, 368f) + arg_0.a, global3.b, vec3<u32>(1u, arg_1.c.x, global3.c.x), select(vec2<bool>(true, global3.d.x), vec2<bool>(true, true), vec2<bool>(true, var_1.d.x)))), Struct_2(func_1(Struct_2(Struct_1(vec4<f32>(global4[arg_3], global4[arg_1.c.x], 1051f, 734f), 1i, arg_0.c, vec2<bool>(false, false)), Struct_1(arg_0.a, arg_1.b, vec3<u32>(4294967295u, 6069u, arg_1.c.x), vec2<bool>(true, var_1.d.x)), var_1, Struct_1(vec4<f32>(692f, -476f, -428f, arg_1.a.x), -1i, vec3<u32>(0u, 5771u, u_input.b.x), vec2<bool>(true, false))), Struct_2(global2[1u], Struct_1(vec4<f32>(1371f, arg_0.a.x, 459f, 366f), 1i, var_1.c, vec2<bool>(true, true)), Struct_1(global3.a, -15819i, var_1.c, vec2<bool>(global3.d.x, false)), Struct_1(vec4<f32>(-1133f, arg_1.a.x, arg_0.a.x, var_1.a.x), 0i, global3.c, vec2<bool>(true, var_1.d.x))), Struct_2(Struct_1(global3.a, -1126i, global3.c, var_1.d), global2[0u], Struct_1(arg_0.a, arg_2, arg_0.c, vec2<bool>(false, var_1.d.x)), Struct_1(vec4<f32>(-452f, -1680f, -997f, 567f), global1.x, vec3<u32>(61718u, 60799u, 4294967295u), vec2<bool>(false, true))), Struct_1(vec4<f32>(var_1.a.x, 1351f, -2221f, global4[1u]), 1i, vec3<u32>(global3.c.x, 1u, 90123u), global3.d)), Struct_1(-vec4<f32>(887f, -748f, -246f, 583f), arg_1.b - global1.x, vec3<u32>(var_1.c.x, u_input.b.x, 3496u) | arg_1.c, arg_1.d), arg_0, var_1), Struct_2(Struct_1(select(vec4<f32>(782f, 1234f, arg_0.a.x, global3.a.x), vec4<f32>(arg_0.a.x, global3.a.x, arg_1.a.x, 467f), global3.d.x), max(arg_1.b, global1.x), var_1.c, !vec2<bool>(arg_0.d.x, false)), arg_0, Struct_1(-arg_0.a, i32(-2147483648), var_1.c, global3.d), global2[~(var_1.c.x ^ arg_0.c.x)]), global2[79080u]), Struct_1((vec4<f32>(arg_1.a.x, global4[0u], -874f, arg_1.a.x) * (global3.a + vec4<f32>(-185f, arg_0.a.x, global4[26606u], -729f))) * vec4<f32>(max(-1699f, global3.a.x), -588f, -(-1648f), 425f), i32(-2147483648), var_1.c - vec3<u32>(1u * 0u, abs(1u), func_1(Struct_2(arg_1, Struct_1(vec4<f32>(-955f, global3.a.x, global3.a.x, 317f), arg_1.b, vec3<u32>(arg_3, 0u, 1u), arg_1.d), Struct_1(vec4<f32>(775f, var_1.a.x, 987f, 152f), -31803i, arg_0.c, vec2<bool>(false, true)), var_1), Struct_2(Struct_1(vec4<f32>(arg_0.a.x, arg_1.a.x, 1063f, var_1.a.x), 1i, arg_1.c, var_1.d), Struct_1(var_1.a, arg_2, vec3<u32>(arg_3, u_input.b.x, 599u), global3.d), Struct_1(vec4<f32>(-2228f, -1475f, -588f, global4[arg_3]), arg_0.b, global3.c, arg_1.d), Struct_1(arg_1.a, -8541i, vec3<u32>(1056u, 4294967295u, 41081u), var_1.d)), Struct_2(arg_1, global2[u_input.b.x], Struct_1(arg_1.a, global1.x, var_1.c, vec2<bool>(false, var_1.d.x)), global0[23714u]), Struct_1(vec4<f32>(-413f, arg_0.a.x, global3.a.x, -641f), global3.b, vec3<u32>(arg_1.c.x, arg_1.c.x, 59702u), vec2<bool>(false, true))).c.x), !arg_1.d), func_1(Struct_2(Struct_1(-arg_0.a, dot(vec4<i32>(global3.b, var_1.b, -13871i, u_input.a.x), vec4<i32>(-1i, arg_0.b, global3.b, i32(-2147483648))), arg_1.c - vec3<u32>(0u, 0u, global3.c.x), var_1.d), func_1(Struct_2(Struct_1(vec4<f32>(-938f, global3.a.x, arg_0.a.x, -1105f), -29400i, vec3<u32>(global3.c.x, global3.c.x, arg_0.c.x), vec2<bool>(arg_0.d.x, false)), arg_0, arg_0, Struct_1(vec4<f32>(-686f, arg_0.a.x, 219f, 1155f), global3.b, global3.c, arg_1.d)), Struct_2(Struct_1(global3.a, var_1.b, arg_1.c, arg_0.d), Struct_1(var_1.a, 0i, vec3<u32>(0u, arg_0.c.x, 4294967295u), vec2<bool>(var_1.d.x, true)), Struct_1(arg_0.a, arg_2, vec3<u32>(1u, 27997u, arg_0.c.x), arg_0.d), Struct_1(vec4<f32>(930f, 712f, 276f, global3.a.x), -362i, global3.c, vec2<bool>(false, arg_1.d.x))), Struct_2(arg_1, var_1, var_1, arg_0), func_1(Struct_2(Struct_1(vec4<f32>(global4[arg_1.c.x], 441f, global3.a.x, var_1.a.x), global1.x, vec3<u32>(arg_3, 1u, 4294967295u), var_1.d), Struct_1(global3.a, arg_2, vec3<u32>(arg_1.c.x, 4294967295u, 8799u), arg_1.d), arg_1, Struct_1(vec4<f32>(global4[45953u], arg_1.a.x, -1207f, arg_0.a.x), 5661i, vec3<u32>(var_1.c.x, global3.c.x, var_1.c.x), vec2<bool>(false, arg_1.d.x))), Struct_2(global0[global3.c.x], global0[32990u], global2[0u], Struct_1(vec4<f32>(639f, global3.a.x, global3.a.x, 1000f), arg_0.b, arg_0.c, arg_0.d)), Struct_2(Struct_1(var_1.a, arg_0.b, var_1.c, vec2<bool>(false, true)), arg_1, Struct_1(vec4<f32>(global3.a.x, global4[37341u], 1846f, global4[u_input.b.x]), 6787i, var_1.c, var_1.d), Struct_1(vec4<f32>(561f, arg_1.a.x, global3.a.x, -1507f), 1i, arg_0.c, vec2<bool>(var_1.d.x, true))), var_1)), Struct_1(vec4<f32>(-721f, arg_1.a.x, 1278f, arg_1.a.x) + vec4<f32>(615f, -415f, global4[0u], -213f), func_1(Struct_2(global2[50113u], Struct_1(arg_0.a, u_input.c, vec3<u32>(93382u, 38754u, 15326u), global3.d), arg_0, Struct_1(vec4<f32>(339f, arg_1.a.x, arg_0.a.x, global3.a.x), i32(-2147483648), global3.c, vec2<bool>(arg_1.d.x, false))), Struct_2(Struct_1(vec4<f32>(var_1.a.x, -570f, -498f, 1249f), -1i, global3.c, vec2<bool>(true, false)), Struct_1(vec4<f32>(global3.a.x, -147f, -1607f, 326f), arg_2, var_1.c, vec2<bool>(true, global3.d.x)), global0[global3.c.x], Struct_1(arg_0.a, arg_0.b, vec3<u32>(global3.c.x, 1u, 2332u), arg_1.d)), Struct_2(Struct_1(arg_0.a, arg_1.b, vec3<u32>(arg_3, 4294967295u, arg_1.c.x), vec2<bool>(false, false)), var_1, Struct_1(global3.a, -37788i, var_1.c, global3.d), Struct_1(vec4<f32>(global4[4294967295u], 995f, var_1.a.x, global3.a.x), arg_0.b, vec3<u32>(50669u, arg_1.c.x, arg_0.c.x), global3.d)), Struct_1(arg_1.a, arg_1.b, vec3<u32>(35179u, global3.c.x, arg_3), arg_0.d)).b, ~global3.c, !vec2<bool>(var_1.d.x, false)), func_1(Struct_2(var_1, Struct_1(vec4<f32>(global3.a.x, -1000f, global4[arg_3], global3.a.x), -1082i, vec3<u32>(u_input.d, arg_0.c.x, u_input.b.x), vec2<bool>(arg_1.d.x, arg_1.d.x)), arg_0, arg_1), Struct_2(Struct_1(vec4<f32>(695f, arg_0.a.x, 822f, -1000f), arg_1.b, vec3<u32>(4294967295u, arg_0.c.x, arg_1.c.x), vec2<bool>(global3.d.x, false)), Struct_1(var_1.a, arg_2, var_1.c, vec2<bool>(global3.d.x, false)), Struct_1(vec4<f32>(-672f, global4[1u], arg_0.a.x, global4[arg_0.c.x]), u_input.a.x, arg_0.c, arg_0.d), global2[1u]), Struct_2(Struct_1(vec4<f32>(var_1.a.x, 550f, 1588f, 295f), arg_0.b, var_1.c, var_1.d), arg_1, Struct_1(arg_0.a, u_input.c, arg_1.c, var_1.d), arg_0), arg_0)), Struct_2(global2[arg_0.c.x], func_1(Struct_2(arg_0, Struct_1(vec4<f32>(217f, global3.a.x, -1000f, var_1.a.x), u_input.a.x, var_1.c, vec2<bool>(true, arg_1.d.x)), global2[91656u], arg_0), Struct_2(var_1, Struct_1(vec4<f32>(global3.a.x, 134f, global4[0u], arg_1.a.x), 67329i, var_1.c, global3.d), Struct_1(var_1.a, i32(-2147483648), arg_0.c, arg_1.d), Struct_1(vec4<f32>(global4[arg_1.c.x], -1190f, global3.a.x, arg_0.a.x), arg_2, global3.c, vec2<bool>(true, var_1.d.x))), Struct_2(arg_0, global0[23012u], Struct_1(arg_1.a, arg_1.b, arg_0.c, var_1.d), global0[0u]), global0[arg_0.c.x]), Struct_1(round(global3.a), var_1.b, ~global3.c, !global3.d), arg_1), Struct_2(Struct_1(vec4<f32>(arg_1.a.x, global4[arg_0.c.x], global3.a.x, -1786f), abs(global1.x), vec3<u32>(1u, arg_3, arg_0.c.x) & vec3<u32>(arg_0.c.x, var_1.c.x, 4294967295u), select(vec2<bool>(arg_1.d.x, true), vec2<bool>(arg_1.d.x, true), vec2<bool>(false, arg_1.d.x))), arg_1, Struct_1(var_1.a + vec4<f32>(201f, 320f, -1049f, 1437f), -10150i << var_1.c.x, vec3<u32>(1753u, 38289u, 5756u), vec2<bool>(arg_1.d.x, var_1.d.x)), Struct_1(global3.a / var_1.a, ~arg_2, abs(vec3<u32>(1u, u_input.d, var_1.c.x)), !arg_1.d)), Struct_1(arg_0.a, ~arg_0.b, ~firstLeadingBit(global3.c), !global3.d)));
    return var_2;
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = arg_0.c.d.x;
    let var_1 = countOneBits((~abs(global3.c) / vec3<u32>(u_input.b.x << 0u, func_1(arg_0, arg_0, Struct_2(Struct_1(global3.a, global1.x, global3.c, arg_0.a.d), Struct_1(vec4<f32>(arg_0.c.a.x, global4[47664u], 551f, 1000f), u_input.c, global3.c, vec2<bool>(false, global3.d.x)), global2[u_input.d], arg_0.a), arg_0.c).c.x, ~arg_0.d.c.x)) + (~(arg_0.d.c * global3.c) << vec3<u32>(36179u + 4294967295u, arg_0.a.c.x, dot(vec4<u32>(78169u, 4294967295u, global3.c.x, 28336u), vec4<u32>(global3.c.x, 1u, global3.c.x, 11591u)))));
    var var_2 = global0[5590u];
    var var_3 = global0[clamp(select(abs(func_5(Struct_1(vec4<f32>(-1264f, -508f, -559f, global3.a.x), i32(-2147483648), arg_0.c.c, global3.d), Struct_1(global3.a, global1.x, vec3<u32>(6519u, u_input.b.x, 0u), vec2<bool>(true, true)), 12819i, global3.c.x).c.c.x) & ~(global3.c.x - 74468u), ~0u, true), var_1.x, dot(firstLeadingBit(countOneBits(vec2<u32>(1u, 36737u)) * select(vec2<u32>(3996u, arg_0.d.c.x), vec2<u32>(1u, u_input.b.x), vec2<bool>(true, global3.d.x))), firstTrailingBit(vec2<u32>(~1u, ~4294967295u))))];
    var var_4 = firstLeadingBit(arg_1) & dot(global1.wx, ~global1.wx);
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 9>();
    var var_0 = countOneBits(clamp(u_input.b, global3.c.yx, u_input.b)) * select(vec2<u32>(global3.c.x << global3.c.x, firstTrailingBit(abs(u_input.d))), ~vec2<u32>(1u, u_input.b.x) >> u_input.b, func_6(func_5(global0[4838u], func_1(Struct_2(Struct_1(vec4<f32>(global3.a.x, global4[4294967295u], -225f, global3.a.x), 7417i, vec3<u32>(global3.c.x, 35353u, 4294967295u), vec2<bool>(false, false)), global0[92063u], global2[39574u], Struct_1(global3.a, global1.x, vec3<u32>(0u, global3.c.x, u_input.b.x), global3.d)), Struct_2(global2[u_input.d], Struct_1(global3.a, 55923i, global3.c, global3.d), global2[u_input.d], Struct_1(global3.a, 0i, global3.c, vec2<bool>(global3.d.x, global3.d.x))), Struct_2(global0[global3.c.x], Struct_1(vec4<f32>(-1317f, -2273f, global3.a.x, 1000f), 52855i, global3.c, global3.d), global0[global3.c.x], Struct_1(global3.a, -11961i, global3.c, global3.d)), global0[4294967295u]), -14250i, 2459u), -1i));
    global1 = ~(-abs(~(~vec4<i32>(u_input.c, 2147483647i, 0i, global3.b))));
    let var_1 = global3.d.x;
    var var_2 = ~global3.b;
    var var_3 = Struct_2(global0[firstTrailingBit(min(var_0.x, 1u)) | global3.c.x], Struct_1(round(global3.a), global3.b, vec3<u32>(~reverseBits(u_input.d), abs(dot(global3.c, vec3<u32>(1u, global3.c.x, u_input.d))), ~(~1u)), global3.d), global2[~(~(u_input.d | 4294967295u))], global2[dot(vec4<u32>(u_input.b.x, u_input.b.x, ~var_0.x, var_0.x) * ~min(vec4<u32>(u_input.d, 4389u, u_input.d, global3.c.x), vec4<u32>(global3.c.x, u_input.b.x, global3.c.x, 1u)), clamp(vec4<u32>(~1737u, ~global3.c.x, abs(var_0.x), reverseBits(u_input.b.x)), vec4<u32>(u_input.d, u_input.d, 57116u, u_input.d) ^ (vec4<u32>(0u, u_input.d, var_0.x, var_0.x) / vec4<u32>(var_0.x, 0u, var_0.x, 3513u)), firstTrailingBit(~vec4<u32>(1u, 31537u, 0u, u_input.b.x))))]);
    let var_4 = countOneBits(min(~(~(vec4<u32>(var_3.b.c.x, 8906u, 13482u, 100985u) / vec4<u32>(28814u, var_3.c.c.x, var_0.x, global3.c.x))), ~vec4<u32>(var_0.x - var_0.x, var_0.x, ~u_input.d, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.x, (var_4.x + var_4.x) & global3.c.x, clamp(0u ^ (8803u & global3.c.x), ~abs(global3.c.x), var_4.x), abs(~(115837u % var_3.c.c.x))), (var_4 / abs(vec4<u32>(0u, var_0.x, 4294967295u, global3.c.x))) << ~var_4, 0u, ~(abs(59095u) + var_3.a.c.x));
}

