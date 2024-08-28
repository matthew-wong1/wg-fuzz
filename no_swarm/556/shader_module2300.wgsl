// {"0:0":[85,164,160,81,252,214,6,185,37,55,148,155,138,239,63,199,95,177,20,204,125,253,194,131,117,156,80,93,24,32,169,11]}
// Seed: 11349991458520367845

struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(4294967295u, vec4<bool>(true, false, true, false), true, vec4<i32>(-1i, 182i, 0i, -7110i))), Struct_2(vec2<i32>(-29158i, -28559i), Struct_1(1u, vec4<bool>(true, true, false, false), false, vec4<i32>(-42840i, 0i, 1i, -4505i))), Struct_2(vec2<i32>(2147483647i, 19561i), Struct_1(4294967295u, vec4<bool>(true, true, false, true), false, vec4<i32>(55816i, -1i, i32(-2147483648), 0i))), Struct_2(vec2<i32>(i32(-2147483648), 27077i), Struct_1(19469u, vec4<bool>(false, false, false, true), true, vec4<i32>(13274i, 40230i, -9819i, 27894i))), Struct_2(vec2<i32>(-39871i, -778i), Struct_1(4294967295u, vec4<bool>(false, false, true, true), false, vec4<i32>(-28770i, -39358i, 0i, -1i))), Struct_2(vec2<i32>(7350i, -58845i), Struct_1(1u, vec4<bool>(true, false, true, true), false, vec4<i32>(-24081i, 1852i, 0i, 91413i))), Struct_2(vec2<i32>(1i, 12688i), Struct_1(20867u, vec4<bool>(true, false, false, false), true, vec4<i32>(i32(-2147483648), 0i, -5749i, 1i))), Struct_2(vec2<i32>(1i, 47790i), Struct_1(41941u, vec4<bool>(true, false, false, false), true, vec4<i32>(35010i, -5433i, -50790i, -2790i))), Struct_2(vec2<i32>(-5911i, -66584i), Struct_1(4294967295u, vec4<bool>(false, true, true, true), true, vec4<i32>(-53248i, i32(-2147483648), 1i, i32(-2147483648)))), Struct_2(vec2<i32>(8835i, 7796i), Struct_1(4294967295u, vec4<bool>(false, true, false, false), true, vec4<i32>(6442i, -1i, -27076i, -66217i))), Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(16660u, vec4<bool>(false, true, false, true), true, vec4<i32>(1i, -34595i, -31104i, -1i))), Struct_2(vec2<i32>(-1i, -21752i), Struct_1(26359u, vec4<bool>(true, false, true, true), true, vec4<i32>(i32(-2147483648), 1408i, -1i, 37654i))), Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(5647u, vec4<bool>(true, true, false, false), true, vec4<i32>(-5956i, 0i, -35377i, 2147483647i))), Struct_2(vec2<i32>(1i, 46561i), Struct_1(52197u, vec4<bool>(true, false, true, true), false, vec4<i32>(-5308i, 1627i, -1i, 0i))), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(33510u, vec4<bool>(false, false, false, true), true, vec4<i32>(56499i, 2147483647i, 2147483647i, 1i))), Struct_2(vec2<i32>(0i, -1i), Struct_1(4114u, vec4<bool>(false, false, false, true), true, vec4<i32>(31821i, 28406i, 0i, 0i))), Struct_2(vec2<i32>(-1i, 2698i), Struct_1(1u, vec4<bool>(true, false, false, false), false, vec4<i32>(-16343i, -19245i, -29842i, 0i))), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(1u, vec4<bool>(true, false, true, false), false, vec4<i32>(-5154i, 2147483647i, -28547i, -18745i))), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(1u, vec4<bool>(false, true, true, true), false, vec4<i32>(2147483647i, i32(-2147483648), -8611i, -1i))), Struct_2(vec2<i32>(-9039i, i32(-2147483648)), Struct_1(35702u, vec4<bool>(true, true, true, true), false, vec4<i32>(2147483647i, 12054i, -20316i, -13959i))), Struct_2(vec2<i32>(61366i, 42723i), Struct_1(1u, vec4<bool>(true, true, false, false), false, vec4<i32>(7447i, 1i, -37142i, -18988i))), Struct_2(vec2<i32>(0i, 27667i), Struct_1(1u, vec4<bool>(true, true, true, true), false, vec4<i32>(44012i, -1i, 2147483647i, 31243i))), Struct_2(vec2<i32>(-16650i, 0i), Struct_1(14246u, vec4<bool>(false, true, false, false), false, vec4<i32>(i32(-2147483648), 0i, 2147483647i, -24910i))), Struct_2(vec2<i32>(2147483647i, 12174i), Struct_1(1u, vec4<bool>(false, false, true, true), false, vec4<i32>(-34320i, 0i, -41635i, 21846i))), Struct_2(vec2<i32>(41i, -6888i), Struct_1(4294967295u, vec4<bool>(false, false, true, false), false, vec4<i32>(i32(-2147483648), -1i, 0i, 18527i))), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(1u, vec4<bool>(true, false, false, true), false, vec4<i32>(6134i, i32(-2147483648), -14252i, -23828i))), Struct_2(vec2<i32>(-17057i, 0i), Struct_1(39830u, vec4<bool>(false, true, false, false), false, vec4<i32>(0i, -1i, 38934i, i32(-2147483648)))));

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: Struct_3;

fn func_1() -> u32 {
    return ~(~global4.d.b.a);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global2 = global0.e.x;
    let var_0 = -vec2<f32>(1099f, exp2(select(-1192f, -1027f, false) * abs(449f)));
    global2 = 447f <= select(-826f, max(var_0.x + var_0.x, var_0.x + 896f) - round(var_0.x), false);
    global0 = Struct_3(global0.a, !(!arg_0.b.b.yzw), arg_0.b, global1[48892u], vec2<bool>(all(global4.c.b.yyz), true));
    var var_1 = arg_0.b.a;
    return select(global4.d.b.d.xy / ((global0.d.a >> select(vec2<u32>(4294967295u, 95026u), vec2<u32>(7549u, 1u), global0.e)) % global0.d.b.d.yy), abs(vec2<i32>(arg_0.a.x, -global0.c.d.x)), vec2<bool>(!global4.e.x, false));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_4 {
    global3 = ~52407u;
    global0 = arg_2;
    let var_0 = vec4<i32>(clamp(-6036i + arg_2.c.d.x, arg_2.d.b.d.x - 42449i, -(i32(-2147483648))) >> arg_2.d.b.a, dot(max(-vec3<i32>(u_input.a.x, -1i, global0.d.b.d.x), global0.d.b.d.xwx * arg_2.c.d.yyx), -(-arg_2.d.b.d.yww)), dot(vec2<i32>(~u_input.b.x, arg_2.d.a.x), func_3(Struct_2(arg_2.c.d.yw, arg_2.d.b))), 0i | firstLeadingBit(-(-13868i))) ^ global4.d.b.d;
    var var_1 = arg_2;
    global0 = Struct_3((reverseBits(~22898u) + clamp(global0.d.b.a | global4.d.b.a, arg_2.d.b.a << 4294967295u, ~global0.a)) * global4.c.a, !select(arg_2.b, vec3<bool>(any(vec3<bool>(false, false, true)), arg_0.x, false), !global0.b.x), Struct_1(62562u % ~1u, select(vec4<bool>(global0.c.b.x, any(global4.d.b.b), true, !global4.b.x), vec4<bool>(global4.b.x, !false, false, 70643u != 29851u), select(vec4<bool>(true, global0.c.c, arg_0.x, global0.b.x), var_1.c.b, vec4<bool>(global0.c.c, false, arg_0.x, false))), 8194i < (global4.c.d.x + (0i % var_1.d.b.d.x)), ~global4.d.b.d), Struct_2(vec2<i32>(2147483647i, arg_2.c.d.x), Struct_1(~4294967295u + u_input.c, select(select(global4.c.b, global4.c.b, global0.d.b.b.x), vec4<bool>(var_1.b.x, false, false, false), arg_0.x), arg_2.b.x, global4.c.d)), vec2<bool>(any(global0.c.b.zwz), any(vec3<bool>(!arg_0.x, !true, all(global0.b)))));
    return Struct_4(global4.d, vec3<bool>(true, !any(global4.c.b), any(vec2<bool>(!true, 0u <= 0u))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = u_input.c;
    var var_1 = vec3<u32>(global0.d.b.a, ~(~(~0u) / ~(~arg_0)), 22457u);
    global2 = global4.e.x;
    let var_2 = Struct_5(-vec3<i32>(-func_3(global0.d).x, ~arg_1, u_input.b.x), arg_3.x + -(-(-arg_3.x)), arg_2);
    var var_3 = Struct_4(Struct_2(vec2<i32>((16763i ^ global0.c.d.x) / -global0.c.d.x, arg_2.a.a.x), func_2(vec2<bool>(var_2.b <= arg_3.x, false), ~vec4<u32>(global0.c.a, global4.d.b.a, 13678u, arg_0), Struct_3(u_input.c, arg_2.b, Struct_1(112910u, global0.d.b.b, true, vec4<i32>(arg_2.a.b.d.x, 5453i, 0i, -14965i)), global4.d, func_2(global0.b.zx, vec4<u32>(47105u, global0.d.b.a, arg_0, 0u), Struct_3(var_2.c.a.b.a, arg_2.b, Struct_1(var_2.c.a.b.a, vec4<bool>(var_2.c.a.b.b.x, global4.e.x, global4.c.c, false), true, vec4<i32>(arg_1, var_2.a.x, 2147483647i, 1i)), global1[arg_0], vec2<bool>(global4.d.b.b.x, false)), var_2.b).a.b.b.zw), min(trunc(var_2.b), var_2.b)).a.b), global4.c.b.xwy);
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(vec2<i32>(dot(vec4<i32>(31582i, 2147483647i, arg_2.a.b.d.x, arg_2.a.b.d.x), vec4<i32>(arg_1.x, -15660i, 6111i, -1i) / arg_0.b.d), 2147483647i), arg_3.a.b), arg_3.b);
    let var_1 = func_4(0u, global0.c.d.x, arg_3, vec2<f32>(-(-(-488f)), abs(1516f)) * vec2<f32>(-(-145f) - 917f, -178f)).a;
    var var_2 = Struct_3(global0.a, arg_0.b.b.www, Struct_1(3185u, var_0.a.b.b, !var_1.b.c, max(global0.d.b.d * vec4<i32>(i32(-2147483648), global4.d.b.d.x, -1524i, -25998i), var_1.b.d)), global4.d, select(!(!(!var_0.b.zz)), global4.b.yz, vec2<bool>(~1i == arg_0.a.x, global4.e.x)));
    var var_3 = !((!var_0.b.x || (global0.d.b.b.x | var_0.a.b.c)) | !arg_0.b.b.x);
    var var_4 = clamp(func_4(var_2.d.b.a % func_1(), ~(arg_3.a.b.d.x % 0i), Struct_4(func_4(0u, u_input.b.x, Struct_4(arg_0, vec3<bool>(false, false, true)), vec2<f32>(413f, -1000f)).a, var_2.c.b.xyy), -vec2<f32>(754f, -1997f) + (vec2<f32>(-292f, 1000f) - vec2<f32>(-1160f, -1221f))).a.b.d.wzy, ~(-max(vec3<i32>(var_2.d.b.d.x, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), global0.d.a.x, arg_0.b.d.x))), max(~(-var_1.b.d.zwx), vec3<i32>(~(-30836i), 1i, ~arg_2.a.a.x))) >> ~(firstTrailingBit(abs(vec3<u32>(arg_3.a.b.a, 4294967295u, arg_0.b.a))) - vec3<u32>(dot(vec2<u32>(0u, arg_2.a.b.a), vec2<u32>(var_2.d.b.a, 4294967295u)), 43286u, max(var_0.a.b.a, var_0.a.b.a)));
    return func_2(arg_2.b.xz, ~min(vec4<u32>(0u, 18571u, var_2.c.a, var_2.a), vec4<u32>(20655u, 35300u, 44923u, 25606u)) % ~(~(vec4<u32>(1u, arg_2.a.b.a, 48374u, 0u) / vec4<u32>(0u, global0.a, var_0.a.b.a, global4.c.a))), Struct_3(arg_2.a.b.a, !vec3<bool>(true, false, false), Struct_1(~(~global4.a), vec4<bool>(false, var_0.a.b.b.x != arg_3.a.b.c, var_2.e.x, all(global0.c.b)), any(vec4<bool>(true, arg_0.b.b.x, global0.e.x, true)), var_1.b.d), var_0.a, func_2(!(!var_2.b.zx), ~(vec4<u32>(5362u, arg_3.a.b.a, global4.d.b.a, 1945u) % vec4<u32>(var_2.d.b.a, arg_0.b.a, arg_3.a.b.a, 4294967295u)), Struct_3(global4.c.a, arg_3.b, func_4(35192u, -35185i, Struct_4(Struct_2(vec2<i32>(arg_3.a.b.d.x, 8574i), Struct_1(32855u, arg_2.a.b.b, true, vec4<i32>(0i, u_input.a.x, 17074i, -1i))), vec3<bool>(global4.c.b.x, arg_0.b.b.x, arg_2.b.x)), vec2<f32>(-1290f, 2293f)).a.b, func_2(arg_3.b.zy, vec4<u32>(77221u, 102211u, 0u, 4294967295u), Struct_3(0u, vec3<bool>(false, global4.c.b.x, arg_2.b.x), Struct_1(1u, var_0.a.b.b, false, arg_3.a.b.d), arg_3.a, var_0.a.b.b.zx), 1769f).a, vec2<bool>(global0.d.b.c, false)), -(-(-161f))).b.xx), (-997f + max(-1000f, step(-370f, -550f))) / sign(sign(906f / -262f)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global0.d.b.d.x;
    let var_1 = ~select(vec3<i32>(func_3(func_4(arg_1.d.b.a, u_input.a.x, arg_0, vec2<f32>(-400f, -375f)).a).x, global0.d.a.x, 0i), ~(~func_5(Struct_2(vec2<i32>(arg_1.d.b.d.x, arg_1.c.d.x), global0.c), vec3<i32>(u_input.a.x, -2516i, 24686i), arg_0, arg_0).a.b.d.zxz), global0.c.b.x);
    global0 = arg_1;
    let var_2 = ~vec2<i32>(arg_0.a.b.d.x, -41390i) % global4.d.a;
    global3 = u_input.c;
    return Struct_1(~1u, !(!vec4<bool>(all(arg_0.b), all(global4.d.b.b), !true, global4.b.x & false)), false, global0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[4294967295u];
    let var_1 = ~countOneBits(vec4<u32>(global0.a, dot(vec2<u32>(global0.a, 35563u) * vec2<u32>(34746u, global0.c.a), vec2<u32>(global4.a, global4.a) ^ vec2<u32>(4294967295u, global4.c.a)), func_1(), global0.a));
    global4 = Struct_3(global4.a, vec3<bool>(!true, any(global0.e), var_0.b.b.x | false), func_6(func_5(global0.d, -var_0.b.d.yxz, func_4(global0.a, ~var_0.a.x, func_2(vec2<bool>(true, false), vec4<u32>(global4.c.a, 46243u, 1u, 1u), Struct_3(global0.c.a, global4.d.b.b.yyw, var_0.b, Struct_2(vec2<i32>(global4.d.a.x, var_0.a.x), Struct_1(1u, vec4<bool>(false, global4.e.x, global4.b.x, global4.b.x), true, global4.c.d)), global0.d.b.b.zx), -1599f), vec2<f32>(-614f, -142f) - vec2<f32>(1164f, 713f)), Struct_4(func_4(22658u, 1798i, Struct_4(global0.d, var_0.b.b.yxz), vec2<f32>(-311f, -218f)).a, global4.c.b.yzw)), Struct_3(func_4(select(u_input.c, 14190u, global0.e.x), ~global4.d.b.d.x, Struct_4(global1[global4.c.a], vec3<bool>(false, false, global4.e.x)), -vec2<f32>(747f, -1377f)).a.b.a, !global4.b, global0.c, global1[~(~4294967295u)], !(!global4.e))), func_5(Struct_2(global0.c.d.zz, func_2(select(global0.c.b.zy, vec2<bool>(false, false), vec2<bool>(global4.d.b.b.x, true)), vec4<u32>(1u, global4.d.b.a, global4.a, global0.a), Struct_3(33725u, vec3<bool>(var_0.b.b.x, var_0.b.b.x, true), Struct_1(19651u, vec4<bool>(global4.c.c, false, var_0.b.c, true), true, global4.c.d), global4.d, var_0.b.b.zy), trunc(206f)).a.b), vec3<i32>(0i, 79870i, 0i), Struct_4(Struct_2(global4.d.b.d.xy, Struct_1(94562u, vec4<bool>(false, true, false, global4.e.x), false, vec4<i32>(var_0.b.d.x, global4.d.b.d.x, u_input.a.x, i32(-2147483648)))), global0.d.b.b.ywx), Struct_4(func_2(!var_0.b.b.wy, ~vec4<u32>(global4.c.a, 75319u, 21312u, 29922u), Struct_3(u_input.c, global0.b, Struct_1(9775u, vec4<bool>(true, false, true, true), true, var_0.b.d), Struct_2(vec2<i32>(1i, var_0.a.x), global4.d.b), var_0.b.b.wy), trunc(286f)).a, !global4.c.b.xzy)).a, var_0.b.b.wy);
    var var_2 = -(vec2<f32>(432f, ceil(-448f)) - (vec2<f32>(-442f, 110f) + -vec2<f32>(1749f, 1000f))) * vec2<f32>(798f, 1133f);
    var var_3 = Struct_2(-(~global0.d.a >> ~vec2<u32>(34406u, 87204u)) + u_input.a.zy, Struct_1(~(~dot(var_1, vec4<u32>(0u, global0.d.b.a, var_1.x, u_input.c))), var_0.b.b, true, -(~global4.c.d)));
    global4 = Struct_3(var_0.b.a, !func_5(func_5(func_5(Struct_2(vec2<i32>(var_0.a.x, u_input.b.x), global0.d.b), var_0.b.d.wxx, Struct_4(Struct_2(global4.c.d.xy, Struct_1(1u, var_3.b.b, var_3.b.b.x, var_0.b.d)), vec3<bool>(var_3.b.b.x, false, var_3.b.b.x)), Struct_4(Struct_2(global4.d.b.d.wy, Struct_1(1u, var_0.b.b, false, var_3.b.d)), vec3<bool>(false, var_0.b.c, var_3.b.b.x))).a, vec3<i32>(var_3.a.x, var_3.a.x, 0i), Struct_4(Struct_2(var_3.a, Struct_1(58444u, vec4<bool>(false, false, true, true), true, var_0.b.d)), vec3<bool>(false, false, true)), Struct_4(global4.d, global0.b)).a, ~vec3<i32>(global0.c.d.x, 2147483647i, 2147483647i) | (vec3<i32>(-8002i, global0.c.d.x, 0i) >> var_1.wwx), func_4(func_1(), -1i, func_5(Struct_2(vec2<i32>(var_0.a.x, 2147483647i), Struct_1(u_input.c, vec4<bool>(true, true, true, var_3.b.b.x), false, global0.d.b.d)), global4.c.d.wxz, Struct_4(Struct_2(vec2<i32>(19595i, i32(-2147483648)), Struct_1(global0.c.a, vec4<bool>(global4.e.x, global4.c.c, true, true), true, vec4<i32>(u_input.b.x, 1i, 1i, var_0.a.x))), var_0.b.b.yxx), Struct_4(Struct_2(var_0.a, global4.d.b), vec3<bool>(global0.e.x, var_0.b.c, global4.d.b.c))), vec2<f32>(var_2.x, -1422f) + vec2<f32>(-775f, 1000f)), func_2(var_0.b.b.xw, min(var_1, var_1), Struct_3(var_1.x, global4.c.b.zww, var_0.b, Struct_2(u_input.a.zy, Struct_1(1u, vec4<bool>(var_0.b.b.x, var_3.b.c, global0.c.c, global4.e.x), global0.c.c, vec4<i32>(0i, global0.c.d.x, 37372i, var_0.a.x))), global4.d.b.b.zy), -688f)).a.b.b.xzy, Struct_1(global4.d.b.a, func_5(Struct_2(vec2<i32>(global0.d.a.x, i32(-2147483648)) & var_3.a, Struct_1(85931u, global0.d.b.b, global0.e.x, vec4<i32>(i32(-2147483648), -1i, -1i, var_3.b.d.x))), func_6(func_4(91552u, 1i, Struct_4(global4.d, global0.b), vec2<f32>(var_2.x, 1456f)), Struct_3(global0.a, global0.d.b.b.yyx, Struct_1(u_input.c, global0.c.b, global4.d.b.c, vec4<i32>(var_3.a.x, 2147483647i, var_3.a.x, u_input.a.x)), Struct_2(var_0.a, var_3.b), global4.d.b.b.ww)).d.wyx, Struct_4(func_2(var_3.b.b.xx, vec4<u32>(1u, 1u, var_0.b.a, var_0.b.a), Struct_3(0u, global0.d.b.b.wzw, global0.d.b, Struct_2(vec2<i32>(i32(-2147483648), -13041i), Struct_1(var_1.x, global0.d.b.b, true, var_0.b.d)), global0.d.b.b.xy), var_2.x).a, select(var_0.b.b.yww, global4.d.b.b.zyw, vec3<bool>(global0.c.c, var_0.b.b.x, true))), Struct_4(Struct_2(vec2<i32>(-1i, -1i), var_3.b), select(var_0.b.b.wxy, vec3<bool>(true, global0.b.x, var_0.b.b.x), vec3<bool>(global0.c.c, false, global0.c.b.x)))).a.b.b, all(!vec4<bool>(var_3.b.b.x, true, true, true)), vec4<i32>(var_0.a.x, 1i, firstLeadingBit(~(-38114i)), global4.d.b.d.x)), func_5(Struct_2(vec2<i32>(global0.c.d.x, var_3.b.d.x + global4.c.d.x), var_0.b), select(~vec3<i32>(23499i, global0.d.a.x, 39920i), vec3<i32>(29570i, global4.d.a.x, 2780i | 41400i), false), func_2(vec2<bool>(any(vec3<bool>(false, false, var_3.b.b.x)), !var_3.b.c), ~countOneBits(vec4<u32>(global0.d.b.a, global4.c.a, 4294967295u, var_1.x)), Struct_3(3536u, vec3<bool>(global4.e.x, var_3.b.c, global4.e.x), Struct_1(u_input.c, global4.d.b.b, var_3.b.b.x, global0.d.b.d), Struct_2(vec2<i32>(25540i, -24360i), global0.d.b), func_4(var_3.b.a, -79429i, Struct_4(Struct_2(vec2<i32>(u_input.a.x, var_0.b.d.x), global0.c), var_0.b.b.zwx), vec2<f32>(var_2.x, 223f)).a.b.b.zx), abs(step(var_2.x, -1000f))), Struct_4(Struct_2(vec2<i32>(1i, 31751i), Struct_1(global4.d.b.a, var_0.b.b, true, var_0.b.d)), !vec3<bool>(var_3.b.b.x, false, global0.d.b.b.x))).a, global0.c.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

