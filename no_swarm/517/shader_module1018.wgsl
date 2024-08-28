// {"0:0":[231,242,95,190,28,168,246,8,160,21,103,72,227,10,51,101,147,113,41,205,181,55,151,93,237,86,92,5,210,65,205,226,78,61,203,22,146,51,113,207,188,173,156,130,78,8,149,152,113,143,169,103,208,28,81,79,239,79,56,60,193,254,30,231,65,124,243,87,246,231,28,114,244,138,224,192,34,223,243,53]}
// Seed: 6021572293610173068

struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<f32>(327f, 376f, -1401f), vec3<f32>(-448f, 637f, -630f), Struct_1(vec3<i32>(0i, 48168i, 1i), vec2<f32>(-816f, 1707f), 1172f), Struct_1(vec3<i32>(42312i, 1i, 2147483647i), vec2<f32>(467f, -136f), 1035f)), Struct_2(vec3<f32>(645f, -153f, 1315f), vec3<f32>(-126f, 814f, -930f), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<f32>(343f, -1574f), 1525f), Struct_1(vec3<i32>(-1i, -24532i, -1i), vec2<f32>(1000f, 905f), -2043f)));

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = !select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true))), any(vec4<bool>(false, false, false, false))), select(vec2<bool>(select(false, false, true), !false), vec2<bool>(!false, false), (true || true) & !false), (min(arg_0.c, global1.a.d.b.x) + (global1.a.b.x + 1112f)) >= floor(-global1.a.b.x));
    let var_1 = Struct_3(Struct_2(global1.b.a, vec3<f32>(-1184f, 326f, 124f), Struct_1(-global1.b.d.a, arg_0.b, -arg_0.b.x), Struct_1(u_input.b & reverseBits(arg_0.a), vec2<f32>(-(-231f), 1090f), exp2(-(-1224f)))), Struct_2(-((vec3<f32>(global1.b.d.b.x, global1.a.c.c, arg_0.b.x) * global1.b.a) - global1.b.a), sign(vec3<f32>(arg_0.b.x, arg_0.b.x, -370f + -134f)), global1.a.c, arg_0));
    var_0 = select(select(!select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(false, true), vec2<bool>(false, var_0.x), vec2<bool>(true, false)), !vec2<bool>(var_0.x, var_0.x)), select(!(!vec2<bool>(false, false)), !vec2<bool>(true, false), true), 0u < (~16789u % ~u_input.d.x)), select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(any(!vec2<bool>(false, var_0.x)), all(global0[40235u])), var_0.x), var_0.x);
    global1 = Struct_3(Struct_2(-min(vec3<f32>(var_1.b.d.c, -811f, arg_0.c), var_1.b.a - global1.b.a), var_1.b.a, Struct_1(vec3<i32>(global1.b.d.a.x - -55323i, 20323i, 2276i), vec2<f32>(-1442f * arg_0.b.x, -568f), -510f), global1.a.d), global1.a);
    global1 = var_1;
    return vec4<i32>(-35590i, clamp(u_input.b.x, -max(global1.b.d.a.x % u_input.b.x, 1i), firstTrailingBit(2147483647i)), u_input.e.x, ~(2147483647i / 31852i));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -((vec4<i32>(1i, -1i, arg_0.a.c.a.x, arg_0.b.c.a.x) % func_3(Struct_1(vec3<i32>(11476i, -1i, 3876i), arg_0.b.d.b, -2364f), 35749u)) ^ firstLeadingBit(-(-u_input.e)));
    global1 = Struct_3(arg_0.a, Struct_2(vec3<f32>(-1245f, -(global1.b.c.b.x + arg_0.b.c.c), global1.a.b.x), arg_0.b.b, Struct_1((arg_0.b.d.a >> vec3<u32>(0u, 36154u, 33210u)) % vec3<i32>(0i, -49353i, 0i), -(-vec2<f32>(-161f, global1.b.d.b.x)), arg_0.b.d.b.x), Struct_1(vec3<i32>(13667i, global1.b.d.a.x, -12593i) * vec3<i32>(-1177i, var_0.x, u_input.b.x), -(arg_0.a.a.yz - vec2<f32>(global1.a.b.x, arg_0.a.b.x)), arg_0.a.b.x * arg_0.b.b.x)));
    let var_1 = ~countOneBits(min(firstLeadingBit(u_input.d), ~vec2<u32>(44193u, u_input.d.x))) ^ u_input.d;
    var_0 = vec4<i32>(var_0.x, -var_0.x, 2147483647i % countOneBits(-global1.b.c.a.x * clamp(-1i, arg_0.b.c.a.x, 0i)), 35784i);
    var var_2 = Struct_4(exp2(((-1160f / arg_0.a.b.x) + -401f) * -(-(-1364f))), u_input.a.x);
    return global1.a.d;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_5 {
    global0 = array<vec3<bool>, 6>();
    var var_0 = true | !(!(!true || (false != false)));
    var var_1 = Struct_5(arg_0.a, Struct_1(u_input.c + (clamp(vec3<i32>(global1.b.d.a.x, global1.b.d.a.x, -1429i), arg_0.b.a, global1.b.c.a) % abs(global1.b.d.a)), max(floor(vec2<f32>(-857f, global1.b.b.x)), -(vec2<f32>(-669f, -217f) / global1.a.b.zz)), arg_0.c.b.x + floor(-1032f)), arg_0.a, ~(-arg_0.d << max(vec4<u32>(u_input.d.x, 1u, 0u, 1u), vec4<u32>(0u, arg_1.x, 50248u, 4294967295u))) >> (vec4<u32>(u_input.d.x, u_input.d.x, 1540u, ~u_input.d.x) * select(vec4<u32>(104483u, u_input.d.x, u_input.d.x, 104434u) / vec4<u32>(arg_1.x, 6097u, u_input.d.x, 64824u), vec4<u32>(1u, 69798u, u_input.d.x, 24422u) % vec4<u32>(90994u, arg_1.x, u_input.d.x, u_input.d.x), !vec4<bool>(false, true, true, true))));
    var var_2 = true & true;
    global1 = Struct_3(global1.b, global1.b);
    return Struct_5(func_2(Struct_3(Struct_2(global1.a.a, -vec3<f32>(global1.b.b.x, -1679f, 2024f), Struct_1(u_input.e.xzx, arg_0.b.b, -718f), func_2(Struct_3(Struct_2(global1.b.a, vec3<f32>(var_1.a.c, -1293f, -1096f), var_1.b, Struct_1(vec3<i32>(10530i, var_1.d.x, global1.a.c.a.x), arg_0.c.b, arg_0.a.c)), Struct_2(global1.b.b, vec3<f32>(-1000f, arg_0.b.c, 605f), Struct_1(vec3<i32>(global1.b.c.a.x, var_1.d.x, 33142i), var_1.c.b, -697f), Struct_1(var_1.d.xxz, vec2<f32>(-126f, -100f), var_1.a.c))), vec2<bool>(false, true))), global1.b), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), !false)), Struct_1(vec3<i32>(firstTrailingBit(var_1.a.a.x & global1.a.d.a.x), u_input.c.x - ~arg_0.c.a.x, dot(vec4<i32>(var_1.d.x, arg_0.a.a.x, u_input.b.x, 23374i), var_1.d) ^ u_input.a.x), global1.a.d.b, global1.a.b.x - arg_0.b.c), func_2(Struct_3(Struct_2(vec3<f32>(-252f, -108f, global1.b.a.x) - vec3<f32>(var_1.b.c, var_1.c.c, 254f), -global1.b.b, func_2(Struct_3(Struct_2(global1.b.b, global1.b.a, Struct_1(u_input.c, vec2<f32>(var_1.a.b.x, 1000f), global1.b.c.b.x), Struct_1(vec3<i32>(-20605i, u_input.e.x, u_input.a.x), var_1.c.b, var_1.a.b.x)), Struct_2(global1.b.b, global1.b.a, Struct_1(u_input.e.yzw, arg_0.b.b, 760f), global1.a.d)), vec2<bool>(false, false)), Struct_1(global1.b.c.a, vec2<f32>(-920f, global1.b.c.b.x), -1000f)), global1.a), !(!vec2<bool>(false, false))), vec4<i32>(u_input.a.x, 67420i << ~max(4294967295u, u_input.d.x), dot(min(vec4<i32>(u_input.c.x, u_input.e.x, arg_0.a.a.x, var_1.a.a.x) << vec4<u32>(0u, arg_1.x, u_input.d.x, u_input.d.x), func_3(global1.b.c, arg_1.x)), (vec4<i32>(global1.b.d.a.x, 0i, u_input.a.x, -1i) / u_input.e) + vec4<i32>(-35152i, u_input.a.x, -1i, 9472i)), global1.b.c.a.x));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    global1 = Struct_3(global1.b, Struct_2(vec3<f32>(2298f, ceil(global1.b.c.c), min(arg_1.b.x, 504f)) * trunc(global1.b.b), min(-(vec3<f32>(-1534f, arg_1.c, arg_0.c.c) / global1.b.b), -(-global1.b.b)), Struct_1(countOneBits(arg_0.c.a) % ~arg_0.a.a, vec2<f32>(1008f, -600f) + arg_1.b, (-452f + arg_1.c) - 371f), func_4(Struct_5(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, arg_0.d.x), vec2<f32>(arg_0.c.c, arg_1.c), 240f), func_2(Struct_3(Struct_2(global1.a.b, vec3<f32>(223f, 1386f, 1000f), global1.b.d, Struct_1(vec3<i32>(global1.a.d.a.x, arg_1.a.x, 24069i), arg_0.b.b, 1302f)), Struct_2(vec3<f32>(557f, -132f, 1347f), global1.a.b, global1.a.c, Struct_1(arg_1.a, vec2<f32>(-1191f, -1205f), -1596f))), vec2<bool>(true, true)), func_4(Struct_5(Struct_1(arg_1.a, global1.b.c.b, global1.b.c.b.x), Struct_1(global1.a.d.a, arg_1.b, global1.a.d.c), arg_1, vec4<i32>(global1.b.d.a.x, global1.a.c.a.x, arg_1.a.x, arg_1.a.x)), vec2<u32>(u_input.d.x, u_input.d.x)).c, clamp(arg_0.d, u_input.e, vec4<i32>(u_input.b.x, 1i, 2147483647i, 2147483647i))), (u_input.d | u_input.d) >> ~u_input.d).c));
    var var_0 = 0u;
    let var_1 = -61769i;
    var var_2 = var_1 ^ -33243i;
    let var_3 = u_input.e;
    return Struct_2(select(vec3<f32>(-690f * -1078f, 1000f, trunc(global1.b.d.b.x)) + vec3<f32>(arg_0.b.c / global1.b.a.x, select(-944f, arg_1.c, false), sign(423f)), -max(round(global1.b.a), -vec3<f32>(arg_1.b.x, global1.a.b.x, -649f)), global0[max(u_input.d.x, ~(4294967295u % u_input.d.x))]), trunc(min(global1.b.a * vec3<f32>(551f, global1.b.d.b.x, arg_1.b.x), exp2(step(global1.a.a, vec3<f32>(367f, -153f, 1399f))))), Struct_1(abs(var_3.wyz), -arg_0.b.b, ceil(select(-(-1000f), abs(-114f), !false))), func_2(Struct_3(global1.a, Struct_2(vec3<f32>(arg_0.c.c, 960f, 134f) - vec3<f32>(571f, -229f, arg_0.c.b.x), select(global1.b.a, vec3<f32>(arg_0.b.b.x, -465f, 405f), vec3<bool>(true, false, false)), arg_1, global1.a.c)), vec2<bool>(all(vec4<bool>(false, false, false, true)), (1i > global1.b.d.a.x) || any(vec3<bool>(true, true, false)))));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = vec4<u32>(4294967295u & 1u, u_input.d.x, 53831u, dot(~(~vec3<u32>(27717u, arg_0, arg_0) >> ~vec3<u32>(u_input.d.x, arg_0, u_input.d.x)), ~select(vec3<u32>(u_input.d.x, arg_0, 4294967295u), vec3<u32>(49455u, 1u, arg_0), global0[arg_0]) ^ ~vec3<u32>(1u, 1u, u_input.d.x)));
    var_0 = ((~clamp(vec4<u32>(0u, var_0.x, arg_0, var_0.x), vec4<u32>(0u, 1u, 4294967295u, u_input.d.x), vec4<u32>(var_0.x, arg_0, var_0.x, 101641u)) | vec4<u32>(~1u, var_0.x, ~1u, 0u)) / vec4<u32>(0u, arg_0, u_input.d.x, reverseBits(4294967295u))) ^ ~vec4<u32>(countOneBits(arg_0 / arg_0), dot(vec4<u32>(arg_0, 22340u, 43378u, 50054u), vec4<u32>(4294967295u, u_input.d.x, arg_0, 3715u)) / ~var_0.x, ~(0u & 0u), countOneBits(u_input.d.x) | 21092u);
    var_0 = firstTrailingBit(abs(vec4<u32>(u_input.d.x, 25769u, ~arg_0, 0u))) % vec4<u32>(43289u | (max(1u, 60606u) / var_0.x), abs(var_0.x) & 4294967295u, var_0.x, 4294967295u);
    let var_1 = vec3<f32>(abs(select(arg_1.b.x, floor(-1357f) / arg_1.c.b.x, !false)), -sign(func_4(Struct_5(Struct_1(global1.a.d.a, vec2<f32>(global1.b.b.x, -1106f), arg_1.b.x), Struct_1(u_input.b, global1.a.b.xx, 1234f), global1.a.c, vec4<i32>(arg_1.c.a.x, global1.a.d.a.x, 29685i, u_input.c.x)), abs(vec2<u32>(var_0.x, 2856u))).a.c), arg_1.d.b.x);
    let var_2 = -(func_2(Struct_3(Struct_2(vec3<f32>(-851f, global1.a.d.c, var_1.x), var_1, arg_1.d, Struct_1(arg_1.d.a, var_1.xz, 453f)), global1.b), vec2<bool>(false, true)).a.x - u_input.a.x) > arg_1.d.a.x;
    return select(!select(select(global0[~arg_0], select(vec3<bool>(var_2, var_2, false), vec3<bool>(false, false, var_2), global0[1u]), !var_2), !global0[var_0.x], !global0[u_input.d.x]), select(select(global0[~arg_0 % ~arg_0], global0[select(~1u, u_input.d.x, var_2)], (1i >= global1.a.c.a.x) & !true), select(!select(vec3<bool>(true, false, false), global0[6992u], true), vec3<bool>(true, any(vec2<bool>(var_2, false)), 1i == -55763i), any(!global0[arg_0])), var_2), !vec3<bool>(any(vec4<bool>(var_2, true, var_2, true)), any(select(vec4<bool>(var_2, false, true, true), vec4<bool>(var_2, var_2, false, false), true)), true));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = select(vec3<bool>(!(i32(-2147483648) <= (global1.b.d.a.x % 44142i)), !false, any(global0[dot(vec3<u32>(40296u, 4294967295u, 13295u), vec3<u32>(u_input.d.x, 49134u, 33146u) - vec3<u32>(u_input.d.x, 9717u, u_input.d.x))])), vec3<bool>(step(arg_0.a.x * global1.b.d.b.x, 690f + global1.a.d.b.x) > -(-global1.b.d.b.x), !(!true & !true), select(!(global1.b.b.x >= -864f), false, any(global0[u_input.d.x]))), arg_0.c.a.x <= -1i);
    var_0 = func_6(u_input.d.x, func_5(func_4(Struct_5(func_2(Struct_3(Struct_2(global1.a.b, arg_0.a, global1.a.d, Struct_1(global1.a.c.a, vec2<f32>(1000f, -362f), arg_0.d.b.x)), Struct_2(vec3<f32>(142f, 1302f, -1045f), vec3<f32>(global1.b.a.x, arg_0.d.c, arg_0.d.c), arg_0.d, arg_0.c)), vec2<bool>(var_0.x, true)), global1.a.c, Struct_1(vec3<i32>(1i, arg_0.c.a.x, 1i), vec2<f32>(global1.b.b.x, arg_0.a.x), arg_0.c.c), vec4<i32>(global1.b.d.a.x, -36904i, 2147483647i, u_input.b.x)), ~(~u_input.d)), global1.b.c));
    let var_1 = (-countOneBits(global1.b.c.a.yy) - firstLeadingBit(firstLeadingBit(global1.b.c.a.yy))) << ~vec2<u32>(abs(dot(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(56260u, 73810u, u_input.d.x, u_input.d.x))), dot(abs(vec3<u32>(1u, 1u, u_input.d.x)), vec3<u32>(1u, u_input.d.x, u_input.d.x) ^ vec3<u32>(115580u, 67233u, 87502u)));
    return global1.a.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(false, !false == !(!true)), vec2<bool>(false, false), !(17561i < 1i));
    let var_1 = Struct_5(Struct_1(select(vec3<i32>(0i, 59880i, func_1(global1.b)), -vec3<i32>(u_input.e.x, u_input.b.x, 2147483647i), !var_0.x), -select(-global1.a.c.b, global1.a.d.b - global1.a.b.zy, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0)), -(-(-851f)) - (623f / 637f)), global1.b.d, Struct_1(u_input.e.xwy, vec2<f32>(-global1.a.c.b.x, -999f) / vec2<f32>(global1.a.d.c, global1.a.b.x), trunc(abs(289f))), vec4<i32>(-(-2147483647i), -reverseBits(2147483647i), u_input.c.x, -17154i));
    global1 = Struct_3(func_5(var_1, var_1.b), global1.a);
    let var_2 = dot(vec4<i32>(dot(~global1.a.d.a, vec3<i32>(~78138i, dot(vec2<i32>(39417i, 2147483647i), global1.b.c.a.zx), -(-1i))), -((-1i | 33436i) & (0i + global1.a.c.a.x)), u_input.b.x, global1.b.d.a.x), ~(-(~var_1.d) << (reverseBits(vec4<u32>(24267u, u_input.d.x, 0u, u_input.d.x)) >> select(vec4<u32>(1u, u_input.d.x, 67232u, u_input.d.x), vec4<u32>(50852u, u_input.d.x, 68215u, 17246u), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-(-vec3<f32>(-2405f / 1509f, -967f / global1.a.b.x, global1.a.b.x + var_1.c.b.x)), -(-abs(-2006f)), ~abs(reverseBits(abs(vec4<u32>(28391u, u_input.d.x, 29647u, 0u)))), ~(~(~u_input.d.x)));
}

