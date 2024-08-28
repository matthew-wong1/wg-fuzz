// {"0:0":[254,197,44,130,205,23,108,165]}
// Seed: 6785705841385558650

struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(28706i, -1i);

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

var<private> global2: array<u32, 3>;

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<bool> {
    let var_0 = -(vec3<i32>(0i, abs(0i), dot(vec2<i32>(15404i, u_input.a.x), vec2<i32>(71222i, 37423i))) | -(-vec3<i32>(-21971i, global0[arg_0.b.a.a], global0[1u]))) % ~((select(arg_0.b.a.b.xzz, arg_0.b.a.b.xzz, arg_0.b.c) ^ -vec3<i32>(2147483647i, 14755i, -4044i)) << ~(~vec3<u32>(0u, arg_1, 26157u)));
    return !select(!select(!arg_0.b.b, arg_0.b.c.yy, all(vec2<bool>(arg_0.b.c.x, true))), vec2<bool>(false, !(!arg_0.c)), select(arg_0.b.a.d, arg_0.b.b, false));
}

fn func_2() -> Struct_2 {
    var var_0 = any(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec2<bool>(false, false))), !vec2<bool>(true, false & true), select(vec2<bool>(false, !true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), !vec2<bool>(false, false)), vec2<bool>(true | true, 19448u == global2[global2[3487u]]))));
    var var_1 = !(!select(select(!vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), firstLeadingBit(6490i) > dot(vec3<i32>(global0[global2[global2[global2[4294967295u]]]], global0[0u], global0[36409u]), vec3<i32>(global0[37780u], global0[54113u], global0[global2[global2[22936u]]]))));
    global1 = array<vec4<bool>, 18>();
    let var_2 = vec3<i32>(42859i, global0[global2[0u] >> (~(global2[global2[4294967295u]] ^ global2[64975u]) >> reverseBits(global2[global2[global2[49949u]]] % global2[global2[global2[23528u]]]))], -39790i);
    let var_3 = vec2<f32>(393f, max(-736f, -(-(-647f)) - -(-296f + 1000f)));
    return Struct_2(Struct_1(global2[global2[~global2[(4294967295u * 0u) ^ global2[30769u - 1u]]]], ~abs(vec4<i32>(0i, global0[4294967295u], 743i, 0i) ^ vec4<i32>(global0[global2[0u]], -7058i, 42733i, 2417i)), select(round(var_3.x * var_3.x), var_3.x, var_3.x == -var_3.x), select(vec2<bool>(var_1.x, var_1.x), !func_3(Struct_3(var_3, Struct_2(Struct_1(global2[global2[0u]], vec4<i32>(var_2.x, var_2.x, global0[24191u], u_input.a.x), var_3.x, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, var_1.x), vec3<bool>(false, var_1.x, false)), true, false), global2[global2[global2[global2[1u]]]]), false)), !select(!(!vec2<bool>(false, var_1.x)), vec2<bool>(var_1.x, -302f != var_3.x), func_3(Struct_3(vec2<f32>(var_3.x, -1317f), Struct_2(Struct_1(141807u, vec4<i32>(-18682i, var_2.x, -21386i, global0[global2[global2[global2[10744u]]]]), var_3.x, vec2<bool>(true, var_1.x)), vec2<bool>(true, var_1.x), vec3<bool>(false, true, var_1.x)), false, var_1.x), global2[~global2[1u]])), select(select(select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, true, true), vec3<bool>(var_1.x, true, var_1.x)), select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, var_1.x, false), vec3<bool>(false, false, var_1.x)), var_1.x), select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x))), !vec3<bool>(any(vec3<bool>(true, true, true)), true || var_1.x, all(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(vec3<bool>(all(global1[global2[8342u]]), true, false | var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, false, var_1.x), !var_1.x), !var_1.x)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = func_2();
    var var_1 = reverseBits(var_0.a.b);
    var var_2 = vec4<i32>(-var_0.a.b.x, dot(-(-var_0.a.b) + var_0.a.b, select(var_0.a.b, abs(var_0.a.b) / var_0.a.b, true)), firstLeadingBit(-14907i), ~min(func_2().a.b.x ^ (global0[14940u] | global0[58704u]), (u_input.a.x >> arg_0.x) * select(var_0.a.b.x, var_1.x, var_0.b.x)));
    let var_3 = vec4<i32>(min(global0[arg_0.x], -(~(-20668i)) % max(~var_1.x, -47553i)), clamp(0i, dot(firstLeadingBit(vec2<i32>(var_1.x, var_0.a.b.x)), u_input.a), dot(var_2.xx, ~(-u_input.a))), 23879i, -var_0.a.b.x);
    let var_4 = -((min(vec3<i32>(global0[global2[1u]], 0i, global0[11365u]), vec3<i32>(-10224i, var_0.a.b.x, var_0.a.b.x)) ^ vec3<i32>(4100i, var_2.x, global0[arg_0.x])) * min(reverseBits(vec3<i32>(60840i, var_1.x, var_1.x)), ~vec3<i32>(-11533i, u_input.a.x, 2147483647i))) - min(var_1.wyz, vec3<i32>(abs(-u_input.a.x), reverseBits(0i), max(firstTrailingBit(var_0.a.b.x), clamp(global0[63727u], var_3.x, var_0.a.b.x))));
    return func_2().c.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<f32>(round(ceil(-381f)), -(-(-706f)), arg_1.x, 643f);
    var var_1 = arg_0;
    let var_2 = arg_2;
    var var_3 = ~(vec2<u32>(abs(0u), arg_2.b.a.a) | ~vec2<u32>(max(global2[var_2.b.a.a], arg_2.b.a.a), var_2.b.a.a));
    var var_4 = -(~select(vec4<i32>(12589i, global0[dot(vec4<u32>(var_2.b.a.a, 17530u, var_2.b.a.a, arg_2.b.a.a), vec4<u32>(var_2.b.a.a, arg_2.b.a.a, var_2.b.a.a, arg_2.b.a.a))], ~(-1i), min(-1i, arg_2.b.a.b.x)), -(-vec4<i32>(29129i, u_input.a.x, -50671i, 21050i)), func_2().b.x));
    return arg_2.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = vec3<f32>(round(arg_2.a.c) / (-467f / -(673f + arg_0.c)), -510f, -arg_2.a.c);
    let var_1 = -(min(-(468f + 1571f), (arg_2.a.c * arg_0.c) * floor(392f)) - (step(arg_2.a.c, -arg_0.c) / -696f));
    global1 = array<vec4<bool>, 18>();
    var var_2 = arg_2.a.d.x;
    let var_3 = vec2<f32>(select(func_2().a.c, func_4(!(!arg_2.c), min(var_0, vec3<f32>(var_0.x, arg_2.a.c, var_0.x)) / var_0, Struct_3(var_0.zy, arg_2, !false, !false), !(arg_1.x | arg_1.x)).c, !(-arg_0.c < func_2().a.c)), 124f + -1661f);
    return arg_0.d.x | any(!vec4<bool>(arg_2.a.d.x, true, !arg_2.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 3>();
    let var_0 = u_input.a.x;
    var var_1 = func_5(func_4(!vec3<bool>(false, func_1(vec2<u32>(global2[4294967295u], global2[global2[global2[56079u]]])), false && true), trunc(vec3<f32>(-(-631f), sign(540f), -254f)), Struct_3(vec2<f32>(725f / -656f, func_2().a.c), func_2(), all(func_2().a.d), any(vec3<bool>(true, true, false))), select(!(!true), !(59765u > 0u), !(-209f > 1000f))), !func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_1(vec2<u32>(global2[global2[global2[global2[59378u]]]], 10787u))), vec3<f32>(min(-1217f, 1662f), abs(1000f), -1060f + -235f), Struct_3(-vec2<f32>(843f, 1678f), Struct_2(Struct_1(11594u, vec4<i32>(1i, 1i, -1i, -1i), -171f, vec2<bool>(false, false)), vec2<bool>(true, false), vec3<bool>(false, true, true)), !false, false), func_1(~vec2<u32>(global2[global2[0u]], global2[global2[1u]]))).d, Struct_2(func_2().a, func_3(Struct_3(exp2(vec2<f32>(-756f, 1506f)), Struct_2(Struct_1(global2[global2[0u]], vec4<i32>(u_input.a.x, -35812i, 1i, var_0), -183f, vec2<bool>(true, true)), vec2<bool>(false, false), vec3<bool>(true, false, false)), false, !true), global2[func_4(vec3<bool>(true, true, false), vec3<f32>(-1014f, -861f, -411f), Struct_3(vec2<f32>(-477f, -1590f), Struct_2(Struct_1(17605u, vec4<i32>(2147483647i, global0[global2[global2[73101u]]], var_0, 1i), -276f, vec2<bool>(true, true)), vec2<bool>(true, false), vec3<bool>(true, true, false)), true, false), true).a] % ~global2[516u]), vec3<bool>(any(!vec3<bool>(false, true, false)), any(!vec3<bool>(false, false, false)), (191f - 2689f) > -1652f)), abs(global2[~(8843u * global2[4294967295u])]));
    let var_2 = -var_0;
    let var_3 = Struct_3(-(-vec2<f32>(-(-138f), abs(1115f))), func_2(), true, sign(-(-(-762f))) >= (-1875f + (abs(483f) * -252f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(((vec4<f32>(-1876f, 1463f, 441f, var_3.b.a.c) * vec4<f32>(var_3.a.x, var_3.b.a.c, var_3.b.a.c, 2269f)) + -vec4<f32>(var_3.b.a.c, -2101f, -240f, 172f)) - ((vec4<f32>(var_3.a.x, var_3.a.x, -1000f, -639f) + vec4<f32>(var_3.b.a.c, 226f, var_3.b.a.c, -388f)) / vec4<f32>(574f, var_3.b.a.c, var_3.a.x, var_3.b.a.c))), u_input.a.x, ~(~(~clamp(vec4<u32>(var_3.b.a.a, 64939u, 1u, 3552u), vec4<u32>(1u, var_3.b.a.a, global2[var_3.b.a.a], global2[0u]), vec4<u32>(var_3.b.a.a, 1u, 0u, 65312u)))), ((0u | select(var_3.b.a.a, 0u, true)) << global2[65210u + (4294967295u & 0u)]) >> ~58175u, global2[~(((41566u % var_3.b.a.a) << (var_3.b.a.a * 1u)) ^ ~(0u * var_3.b.a.a))]);
}

