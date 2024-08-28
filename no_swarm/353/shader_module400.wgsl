// {"0:0":[15,9,67,51,158,135,31,238,204,236,234,182,29,103,101,103,73,181,125,108,243,86,80,56,222,121,210,72,249,13,38,132,31,167,109,148,39,68,31,173,48,234,168,231,239,60,153,197]}
// Seed: 8439439639882122497

struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 11>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(1u, i32(-2147483648), false), Struct_1(4294967295u, 15108i, false), Struct_1(0u, 2147483647i, false), Struct_1(55466u, i32(-2147483648), false), Struct_1(4010u, 1i, false), Struct_1(1u, -2418i, false), Struct_1(41928u, i32(-2147483648), true), Struct_1(4294967295u, 29447i, true), Struct_1(31626u, 42147i, true), Struct_1(0u, -17844i, true), Struct_1(17947u, i32(-2147483648), false), Struct_1(10809u, -14935i, false), Struct_1(0u, 45184i, true), Struct_1(36949u, 2147483647i, false), Struct_1(104407u, 42476i, true), Struct_1(66213u, -73559i, true), Struct_1(31521u, 0i, true), Struct_1(8251u, 21001i, false), Struct_1(14881u, -1i, false), Struct_1(52251u, 0i, false), Struct_1(1u, 1i, false), Struct_1(1u, -1i, true), Struct_1(1u, -14107i, true), Struct_1(1u, 20055i, true), Struct_1(4294967295u, 10920i, true));

var<private> global3: array<vec2<i32>, 5>;

var<private> global4: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(79884u, 14735i, false), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 25702i), 6135i), Struct_2(Struct_1(1u, 2147483647i, false), vec2<bool>(true, false), vec2<i32>(-25768i, -14187i), 20079i), Struct_2(Struct_1(0u, 27795i, false), vec2<bool>(true, false), vec2<i32>(5662i, 15089i), 2147483647i), Struct_2(Struct_1(109024u, -1i, true), vec2<bool>(true, true), vec2<i32>(-32417i, 0i), 48726i), Struct_2(Struct_1(0u, 44912i, true), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -14243i), -53290i), Struct_2(Struct_1(118731u, -28594i, true), vec2<bool>(true, true), vec2<i32>(2216i, 2147483647i), 12947i), Struct_2(Struct_1(16226u, 1i, true), vec2<bool>(true, false), vec2<i32>(18825i, -26620i), 2816i), Struct_2(Struct_1(15241u, -42603i, true), vec2<bool>(true, false), vec2<i32>(25489i, 61658i), 11985i), Struct_2(Struct_1(31060u, 0i, true), vec2<bool>(false, true), vec2<i32>(2147483647i, 3280i), -33634i), Struct_2(Struct_1(1u, 45100i, true), vec2<bool>(false, true), vec2<i32>(1i, -81101i), -9700i), Struct_2(Struct_1(4294967295u, i32(-2147483648), true), vec2<bool>(false, false), vec2<i32>(0i, -21867i), -1i), Struct_2(Struct_1(104776u, 0i, true), vec2<bool>(false, false), vec2<i32>(-21417i, -8623i), 35118i), Struct_2(Struct_1(1u, 1i, false), vec2<bool>(false, true), vec2<i32>(1i, 28145i), -49265i), Struct_2(Struct_1(4294967295u, -1572i, false), vec2<bool>(false, false), vec2<i32>(0i, -44574i), -47991i), Struct_2(Struct_1(107912u, -37029i, false), vec2<bool>(false, false), vec2<i32>(-1i, 6121i), 832i), Struct_2(Struct_1(74925u, 1i, true), vec2<bool>(true, true), vec2<i32>(-44560i, 1i), -19912i));

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global4 = array<Struct_2, 16>();
    return ~reverseBits(~firstLeadingBit(global0.a.a));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    global1 = array<vec2<f32>, 11>();
    var var_0 = arg_1 >= ~dot(vec2<u32>(4637u, ~arg_1), arg_0);
    let var_1 = clamp(38005i + (u_input.b ^ (arg_3 ^ u_input.d.x)), arg_3, reverseBits(1i));
    var var_2 = -floor(trunc(vec4<f32>(-175f, 752f, 517f, 620f)) / (vec4<f32>(-648f, -3132f, -1519f, 154f) / vec4<f32>(296f, 1560f, 1000f, 222f))) - floor(-vec4<f32>(round(-1002f), -157f, 161f, 176f + -956f));
    let var_3 = vec3<u32>(firstLeadingBit(func_3(arg_1, global0.a, u_input.d.yyy)), arg_1, arg_0.x << arg_1);
    return Struct_2(Struct_1(~99438u, var_1, global0.b.x), select(!global0.b, select(select(select(global0.b, global0.b, global0.b.x), global0.b, 0u < var_3.x), global0.b, !all(vec3<bool>(false, global0.b.x, global0.b.x))), select(select(global0.b, !vec2<bool>(true, false), vec2<bool>(global0.a.c, global0.b.x)), global0.b, select(!global0.b.x, arg_3 >= global0.d, all(vec4<bool>(true, global0.b.x, true, global0.b.x))))), -(-(~(vec2<i32>(-1i, 0i) * vec2<i32>(global0.c.x, -1i)))), global0.c.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = global4[~func_2(~vec2<u32>(arg_3.a.a, 101804u * global0.a.a), 1u, max(~arg_0.zw, vec2<u32>(31331u, 1u * global0.a.a)), 7437i).a.a];
    var var_1 = vec2<bool>(any(!select(vec3<bool>(arg_1.x, var_0.b.x, true), arg_1, arg_1)), any(select(vec3<bool>(-7131i <= arg_3.d, 4294967295u <= arg_2.a.a, !true), arg_1, !(!arg_1))));
    let var_2 = global2[max(23944u, arg_2.a.a)];
    let var_3 = vec2<i32>(reverseBits(firstLeadingBit(reverseBits(0i) * 0i)), (dot(vec4<i32>(arg_2.a.b, var_0.c.x, 2147483647i, 2147483647i) >> vec4<u32>(45210u, var_0.a.a, 1u, 1u), u_input.d << vec4<u32>(arg_0.x, arg_3.a.a, 25278u, 1u)) << var_0.a.a) + -1i);
    global1 = array<vec2<f32>, 11>();
    return select(vec2<i32>(func_2(~arg_0.zy, 31742u & ~30463u, arg_0.xx, -1i).d, -797i), max(vec2<i32>(select(var_0.d, select(-21485i, -26002i, true), any(vec4<bool>(var_0.a.c, arg_3.b.x, var_2.c, arg_2.a.c))), var_2.b), clamp(var_0.c, vec2<i32>(1i, 1i) | vec2<i32>(global0.d, var_2.b), ~vec2<i32>(i32(-2147483648), 1i) >> abs(vec2<u32>(1u, 0u)))), !false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> bool {
    let var_0 = -(-(~u_input.a.x) ^ arg_0.b) - arg_2.a.b;
    var var_1 = -(-u_input.d);
    let var_2 = Struct_2(global0.a, arg_2.b, global3[7995u], ~dot(u_input.d.zy, func_4(vec4<u32>(1u, 95104u, 2455u, 4839u), !arg_1.wwy, func_2(vec2<u32>(global0.a.a, arg_0.a), global0.a.a, vec2<u32>(arg_0.a, arg_2.a.a), 19302i), Struct_2(global0.a, arg_2.b, vec2<i32>(-1i, 1i), -17926i))));
    global3 = array<vec2<i32>, 5>();
    let var_3 = global0.a;
    return var_2.a.c;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_2(func_2(~(~countOneBits(vec2<u32>(global0.a.a, 65741u))), ~select(global0.a.a, 102443u, false | true), vec2<u32>(1u, (global0.a.a % global0.a.a) % 1u), -global0.c.x).a, func_2(select(vec2<u32>(global0.a.a, ~global0.a.a), vec2<u32>(2259u >> global0.a.a, ~4294967295u), func_2(~vec2<u32>(31789u, 4294967295u), ~98341u, ~vec2<u32>(57421u, global0.a.a), ~(-21055i)).b), min(49881u, global0.a.a) * max(0u, ~global0.a.a), vec2<u32>((15732u / 41017u) >> 54408u, 37691u), global0.a.b).b, (vec2<i32>(-26295i << 17639u, u_input.c % -1i) << (max(vec2<u32>(global0.a.a, 0u), vec2<u32>(global0.a.a, 0u)) % ~vec2<u32>(51425u, global0.a.a))) << vec2<u32>(~global0.a.a, 48177u), countOneBits(-52071i));
    let var_1 = Struct_1(18284u & 1u, ~(-var_0.a.b), false);
    global2 = array<Struct_1, 25>();
    var var_2 = var_0.b.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 11>();
    var var_0 = -(-879f);
    global4 = array<Struct_2, 16>();
    var var_1 = 0i + -25410i;
    let var_2 = vec2<bool>(any(vec2<bool>(-1000f > 936f, -28852i == (global0.a.b + 1i))), global0.a.c);
    var_1 = global0.d;
    var var_3 = Struct_1(global0.a.a, u_input.c, any(func_5(!func_1(global2[global0.a.a], vec4<bool>(var_2.x, var_2.x, var_2.x, true), global4[1u]), select(vec4<bool>(global0.a.c, var_2.x, var_2.x, true), vec4<bool>(var_2.x, global0.b.x, true, var_2.x), !var_2.x), vec4<f32>(step(-1437f, 679f), -2238f / -947f, -489f, -1173f), -533f)));
    var_0 = -492f;
    var var_4 = u_input.d.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(~(-12858i), 0u);
}

