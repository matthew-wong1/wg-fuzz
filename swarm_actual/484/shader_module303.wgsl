// {"0:0":[115,141,30,43,1,175,119,142,10,232,122,97,79,251,198,242,15,31,169,116]}
// Seed: 6160308342069722495

struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<f32> = vec4<f32>(426f, -389f, -1000f, 142f);

var<private> global3: array<vec3<u32>, 10>;

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = select(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), !true)), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), !false)), u_input.b <= dot(~(vec2<u32>(u_input.a, 6965u) & vec2<u32>(u_input.d, u_input.b)), firstLeadingBit(clamp(vec2<u32>(1u, 47809u), vec2<u32>(13883u, 48581u), vec2<u32>(34351u, u_input.b)))));
    var_0 = !select(select(vec3<bool>(!var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, true))), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x), select(vec3<bool>(all(vec2<bool>(true, var_0.x)), !var_0.x, any(vec4<bool>(false, false, var_0.x, var_0.x))), select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, true)), true), all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)))), all(!vec3<bool>(false, true, true)));
    var var_1 = Struct_1(global1.x, firstTrailingBit(vec3<i32>(select(~32662i, arg_0.x, 82786i != global0.x), ~(-59502i), ~0i)));
    var var_2 = vec4<i32>(2147483647i, -11495i >> ~u_input.d, abs(0i), arg_0.x);
    global1 = -vec2<f32>(step(max(global1.x, -158f), arg_1) / -1472f, -1245f);
    return select(vec3<bool>(1i <= clamp(arg_0.x, u_input.c, 2147483647i), !any(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, false), false), vec3<bool>(var_0.x, true, true)))), !(!vec3<bool>(true, !true, false & var_0.x)), select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(any(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, var_0.x, var_0.x))), var_0.x, var_0.x == false), !(var_0.x & !false)));
}

fn func_2() -> Struct_4 {
    var var_0 = select(vec2<bool>(any(!(!vec2<bool>(false, false))), -(global1.x / -293f) <= 1000f), vec2<bool>(!any(func_3(vec3<i32>(u_input.c, global0.x, 12499i), global1.x)), false), !all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)));
    global0 = vec3<i32>(dot(firstTrailingBit(~(global0.xy % vec2<i32>(i32(-2147483648), u_input.c))), vec2<i32>(global0.x, global0.x) ^ max(vec2<i32>(u_input.c, u_input.c) + vec2<i32>(global0.x, u_input.c), countOneBits(vec2<i32>(-21859i, 12574i)))), dot(vec4<i32>(u_input.c, 19334i, global0.x, 9084i % dot(global0.zx, global0.xy)), abs(vec4<i32>(global0.x, 10185i, u_input.c, global0.x) * (vec4<i32>(-6046i, global0.x, u_input.c, 2147483647i) - vec4<i32>(u_input.c, global0.x, global0.x, u_input.c)))), -3585i);
    let var_1 = -((1i / 1i) | u_input.c);
    global2 = round((trunc(vec4<f32>(127f, global1.x, global2.x, global2.x) + vec4<f32>(-851f, global1.x, global1.x, -1916f)) + -vec4<f32>(1236f, global2.x, 1000f, 535f)) / -(vec4<f32>(-824f, global2.x, global2.x, global1.x) * -vec4<f32>(global1.x, -1949f, global2.x, global1.x)));
    let var_2 = vec4<i32>(~(-(22820i | u_input.c)) >> u_input.e, u_input.c, abs(countOneBits(max(u_input.c, u_input.c << 33658u))), ~33044i);
    return Struct_4(142f - floor(trunc(-(-1365f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    global0 = countOneBits(countOneBits(select(-arg_2.b.b, select(vec3<i32>(-1241i, arg_2.b.b.x, -38758i), min(vec3<i32>(global0.x, 0i, -5135i), vec3<i32>(-1i, 2147483647i, -25479i)), !true), vec3<bool>(!arg_2.a.x, func_3(vec3<i32>(arg_2.b.b.x, u_input.c, -1087i), arg_2.c.a).x, arg_2.a.x))));
    let var_0 = !arg_2.a.x;
    global3 = array<vec3<u32>, 10>();
    let var_1 = arg_2.c;
    var var_2 = Struct_2(u_input.d, Struct_1(global2.x, (var_1.b | (arg_2.c.b & var_1.b)) >> arg_1), arg_1.x - 42539u, var_1, abs(global2.wx));
    return var_2.d;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = step(-vec3<f32>(arg_1.a, -(global2.x + global1.x), 875f), vec3<f32>(-(-arg_1.a) + -986f, -670f, -714f));
    let var_1 = arg_1.b;
    var var_2 = func_3((countOneBits(clamp(arg_1.b, arg_1.b, vec3<i32>(arg_1.b.x, global0.x, 35831i))) + vec3<i32>(dot(vec2<i32>(1i, -25643i), vec2<i32>(global0.x, u_input.c)), min(2147483647i, arg_1.b.x), var_1.x)) % vec3<i32>(2147483647i, var_1.x, ~u_input.c), 640f).yz;
    var_2 = func_3(vec3<i32>(i32(-2147483648), var_1.x, global0.x), -(global1.x / (-411f * -global1.x))).zz;
    global0 = vec3<i32>(-(i32(-2147483648)) - -(1i - 37126i), 0i, ~(clamp(arg_1.b.x, u_input.c, arg_1.b.x) * u_input.c)) % clamp(vec3<i32>(0i, u_input.c, ~u_input.c), ~vec3<i32>(~arg_1.b.x, abs(arg_1.b.x), arg_1.b.x + 29135i), clamp(vec3<i32>(16051i, abs(1i), 10387i), countOneBits(countOneBits(vec3<i32>(16853i, var_1.x, 6453i))), clamp(var_1, vec3<i32>(global0.x, 43209i, arg_1.b.x), vec3<i32>(u_input.c, 0i, 2147483647i)) / vec3<i32>(1i, var_1.x, global0.x)));
    return func_4(Struct_4(func_4(func_2(), vec3<u32>(u_input.e * u_input.a, ~0u, 21606u), Struct_3(!vec4<bool>(arg_0, var_2.x, var_2.x, true), Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, global0.x, global0.x)), func_4(Struct_4(294f), global3[u_input.a], Struct_3(vec4<bool>(arg_0, arg_0, true, false), arg_1, Struct_1(269f, var_1))))).a), global3[57873u], Struct_3(!vec4<bool>(func_3(arg_1.b, -753f).x, func_3(arg_1.b, 1143f).x, all(vec2<bool>(false, true)), false), Struct_1(-504f, vec3<i32>(-1i, -20416i, arg_1.b.x) * ~vec3<i32>(38082i, global0.x, var_1.x)), Struct_1(var_0.x + (-187f * global2.x), arg_1.b)));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    global2 = vec4<f32>(arg_1.b.a, global2.x, arg_1.b.a, -1147f);
    var var_0 = select(reverseBits(~min(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, 1u))), ~abs(vec2<u32>(4294967295u, u_input.b)) / min(~vec2<u32>(4294967295u, 11324u), vec2<u32>(u_input.a, 18127u) | vec2<u32>(82147u, u_input.d)), true) >> vec2<u32>(u_input.e | 0u, arg_0 | 18549u);
    let var_1 = Struct_4(arg_1.c.a);
    let var_2 = max(max(select(select(vec2<u32>(u_input.e, arg_0), vec2<u32>(arg_0, u_input.a), vec2<bool>(false, true)) * min(vec2<u32>(35425u, var_0.x), vec2<u32>(u_input.b, 8182u)), vec2<u32>(abs(arg_0), 7163u), !arg_2.a.x && arg_2.a.x), max(firstLeadingBit(vec2<u32>(72187u, u_input.d)), max(vec2<u32>(var_0.x, 1u) / vec2<u32>(154u, arg_0), clamp(vec2<u32>(307u, 15333u), vec2<u32>(arg_0, 51352u), vec2<u32>(4294967295u, 11062u))))), ~vec2<u32>(~var_0.x, max(var_0.x, 58u)) ^ vec2<u32>(u_input.d, 38635u));
    let var_3 = func_2();
    return Struct_2(dot(vec3<u32>(dot(vec2<u32>(u_input.d, arg_0), vec2<u32>(var_2.x, 0u) % vec2<u32>(98514u, var_0.x)), var_0.x, var_2.x), ~global3[arg_0 | select(1923u, 16546u, arg_1.a.x)]), Struct_1(562f, reverseBits(-vec3<i32>(-12934i, global0.x, global0.x)) * arg_1.c.b), ~(22571u % select(u_input.a, 21330u, !true)), Struct_1(1589f, -(vec3<i32>(global0.x, -39541i, global0.x) >> ~global3[9350u])), global2.wy);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = func_6(4294967295u, Struct_3(!(!(!vec4<bool>(arg_2.x, true, arg_2.x, true))), func_5(!(arg_2.x & arg_2.x), func_4(func_2(), ~global3[40037u], Struct_3(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), Struct_1(1000f, vec3<i32>(-61421i, 2147483647i, global0.x)), Struct_1(arg_0, vec3<i32>(global0.x, global0.x, -19179i))))), func_5(!any(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), Struct_1(-arg_0, vec3<i32>(-1i, i32(-2147483648), global0.x) - vec3<i32>(u_input.c, 32415i, 1i)))), Struct_3(vec4<bool>(!arg_2.x, any(!vec3<bool>(false, false, arg_2.x)), !false, !false), func_5(!any(vec3<bool>(arg_2.x, false, false)), Struct_1(step(-794f, global1.x), select(vec3<i32>(u_input.c, global0.x, -62162i), vec3<i32>(11500i, u_input.c, global0.x), vec3<bool>(true, true, true)))), func_5(!arg_2.x && any(arg_2), func_4(func_2(), global3[u_input.d] >> global3[u_input.e], Struct_3(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), Struct_1(-1394f, vec3<i32>(-5073i, u_input.c, 22774i)), Struct_1(arg_0, vec3<i32>(18444i, u_input.c, u_input.c)))))), -abs(-firstLeadingBit(vec3<i32>(23270i, u_input.c, u_input.c))));
    var_0 = func_6(abs(4294967295u), Struct_3(!select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, false, true, arg_2.x)), false), var_0.d, Struct_1(step(-943f, arg_0), vec3<i32>(var_0.d.b.x, i32(-2147483648), -1i >> u_input.d))), Struct_3(!(!(!vec4<bool>(false, arg_2.x, arg_2.x, true))), Struct_1(-381f, (var_0.b.b / vec3<i32>(1i, global0.x, global0.x)) ^ firstTrailingBit(var_0.b.b)), func_5(false | !arg_2.x, Struct_1(-309f, select(vec3<i32>(var_0.b.b.x, 1i, -30158i), vec3<i32>(-1i, i32(-2147483648), var_0.d.b.x), vec3<bool>(true, false, arg_2.x))))), vec3<i32>(~var_0.b.b.x % func_5(arg_2.x, func_5(true, var_0.d)).b.x, func_5(arg_2.x, func_4(Struct_4(-1270f), global3[0u - 57863u], Struct_3(vec4<bool>(arg_2.x, false, arg_2.x, false), var_0.d, var_0.d))).b.x, var_0.d.b.x));
    global0 = ~select(var_0.b.b, vec3<i32>(~global0.x, i32(-2147483648) * 32070i, -12664i), false);
    global1 = -global2.ww;
    let var_1 = func_2();
    return Struct_4(global2.x);
}

fn func_7(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    global1 = -vec2<f32>(275f * (-global1.x - trunc(-1867f)), exp2(815f));
    var var_0 = Struct_4(-func_5(any(!vec4<bool>(arg_1.x, arg_1.x, false, true)), Struct_1(max(arg_0.a, -1176f), vec3<i32>(global0.x, global0.x, global0.x))).a);
    let var_1 = ~(0i & -65893i);
    var var_2 = abs(~89709u - 4294967295u);
    let var_3 = ~select(vec3<u32>(45314u % ~33933u, u_input.b, 0u), ~(~vec3<u32>(u_input.b, 4294967295u, 1u) >> ~vec3<u32>(2335u, 44740u, 0u)), !select(vec3<bool>(arg_1.x, arg_1.x, true), select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, true, true), arg_1), arg_1));
    return func_5(!arg_1.x, Struct_1(-217f, ~vec3<i32>(1i, -10964i, var_1) & max(select(vec3<i32>(4942i, var_1, var_1), vec3<i32>(i32(-2147483648), u_input.c, u_input.c), arg_1), ~vec3<i32>(u_input.c, i32(-2147483648), -1226i))));
}

fn func_8(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> vec2<u32> {
    global2 = vec4<f32>(func_4(func_2(), ~vec3<u32>(arg_0, 27601u, 11581u), Struct_3(arg_2.a, func_4(Struct_4(arg_2.c.a), global3[u_input.d], Struct_3(arg_2.a, Struct_1(global1.x, vec3<i32>(global0.x, u_input.c, 5979i)), arg_1.d)), func_7(Struct_4(783f), vec3<bool>(arg_2.a.x, false, arg_2.a.x), global1.x / -1223f))).a, -174f, round(-min(arg_1.b.a, arg_1.e.x - arg_2.c.a)), -((arg_2.c.a - -(-1000f)) - global1.x));
    global3 = array<vec3<u32>, 10>();
    return vec2<u32>(clamp(~1u, 14915u - ~1u, select(~arg_0 % 1u, 4294967295u, false)), dot(vec2<u32>(dot(vec4<u32>(4559u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 100351u, 4294967295u, 63605u)) * ~0u, ~arg_0), abs(vec2<u32>(4294967295u, u_input.d) % vec2<u32>(47236u, 0u)) + vec2<u32>(reverseBits(4294967295u), firstLeadingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(!true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !vec2<bool>(false, true), any(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(exp2(abs(162f)), global2.yyz, global0.x, func_8(u_input.d, Struct_2(~5337u, Struct_1(min(195f, global1.x), min(vec3<i32>(-1i, -60005i, u_input.c), vec3<i32>(1039i, 42575i, -1i))), clamp(0u | u_input.a, u_input.b, dot(vec4<u32>(u_input.e, 55362u, 0u, u_input.b), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a))), func_7(func_1(803f, global2.x, vec3<bool>(true, var_0, false)), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true), false), -1234f * -344f), global2.xx), Struct_3(vec4<bool>(false, any(vec4<bool>(var_0, var_0, true, var_0)), true, all(vec4<bool>(var_0, var_0, false, false))), func_4(func_2(), vec3<u32>(64964u, 4294967295u, u_input.d), Struct_3(vec4<bool>(var_0, var_0, false, var_0), Struct_1(global2.x, vec3<i32>(45803i, 1i, global0.x)), Struct_1(-1914f, vec3<i32>(global0.x, u_input.c, -15931i)))), func_5(false, Struct_1(global2.x, vec3<i32>(1i, u_input.c, 37252i))))));
}

