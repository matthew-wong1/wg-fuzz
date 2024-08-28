// {"0:0":[250,112,98,78,40,243,110,67,240,34,229,65,193,114,167,144,148,21,216,149,165,189,130,245,20,172,232,63,127,20,187,192,144,139,67,222,155,48,79,209,162,171,145,103,200,234,32,54]}
// Seed: 5397534393229256320

struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global2: Struct_1 = Struct_1(1i, vec2<bool>(true, true));

var<private> global3: array<vec4<u32>, 17>;

fn func_3() -> vec2<u32> {
    global0 = array<bool, 3>();
    var var_0 = global2.b.x | (u_input.c.x > 2147483647i);
    let var_1 = ~global1.x;
    var var_2 = vec4<f32>(-ceil(sign(ceil(-714f))), floor(-939f), trunc(-906f) / -(-(1381f - -1256f)), 1359f);
    let var_3 = -u_input.d;
    return countOneBits(vec2<u32>(~var_1, var_1));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global1 = abs(abs(~reverseBits(func_3())));
    let var_0 = Struct_1(u_input.d.x, vec2<bool>(global0[0u], any(select(select(vec4<bool>(global0[global1.x], global2.b.x, global2.b.x, true), vec4<bool>(global0[global1.x], global2.b.x, global2.b.x, true), true), select(vec4<bool>(global0[26756u], false, true, global0[global1.x]), vec4<bool>(true, global2.b.x, global0[4294967295u], true), vec4<bool>(global2.b.x, true, false, global0[0u])), select(vec4<bool>(global0[52657u], true, global0[global1.x], global0[1u]), vec4<bool>(global0[global1.x], global0[17749u], false, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, global0[global1.x], global0[17885u]))))));
    let var_1 = var_0;
    let var_2 = select(select(select(!(!vec3<bool>(true, true, false)), vec3<bool>(true, any(vec2<bool>(false, global0[global1.x])), -2447f > arg_0), var_1.b.x), select(select(!vec3<bool>(global2.b.x, true, false), vec3<bool>(false, true, false), !vec3<bool>(false, true, true)), vec3<bool>(true, var_1.b.x || true, var_1.b.x), !false), !select(!vec3<bool>(var_0.b.x, var_0.b.x, global2.b.x), !vec3<bool>(global0[global1.x], false, var_0.b.x), select(vec3<bool>(global2.b.x, var_1.b.x, true), vec3<bool>(false, true, var_1.b.x), false))), select(!select(!vec3<bool>(false, var_1.b.x, true), vec3<bool>(global2.b.x, var_1.b.x, true), vec3<bool>(global0[3570u], global0[global1.x], var_0.b.x)), !vec3<bool>(var_1.b.x | global2.b.x, var_0.b.x, false), vec3<bool>(-1000f <= (454f / -400f), true, min(global1.x, 24199u) != (global1.x << 1u))), select(select(select(vec3<bool>(true, true, var_0.b.x), !vec3<bool>(true, true, false), select(vec3<bool>(var_1.b.x, global0[16451u], global2.b.x), vec3<bool>(global2.b.x, true, var_0.b.x), var_1.b.x)), vec3<bool>(i32(-2147483648) != var_1.a, var_1.b.x, select(global0[global1.x], false, false)), false), !vec3<bool>(any(vec3<bool>(global0[53765u], global0[global1.x], false)), any(vec4<bool>(false, var_0.b.x, var_1.b.x, false)), var_0.b.x | var_0.b.x), !vec3<bool>(true, all(vec3<bool>(true, true, global2.b.x)), var_0.b.x)));
    global2 = Struct_1(dot(~vec2<i32>(-3092i, global2.a % u_input.d.x), vec2<i32>(1991i, (-1i + 0i) | var_0.a)), !var_1.b);
    return min(select(firstTrailingBit(~clamp(u_input.c, vec4<i32>(-4072i, u_input.b.x, var_1.a, 2147483647i), vec4<i32>(-1i, var_1.a, var_0.a, -31107i))), u_input.c + u_input.c, !vec4<bool>(-36635i > var_0.a, 4294967295u > 52777u, var_0.b.x, var_0.b.x)), vec4<i32>(clamp(reverseBits(1i), global2.a, u_input.d.x), 1i, -(~(~25054i)), 1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = (-(-vec4<f32>(823f, 1139f, -937f, -1542f) * -vec4<f32>(-220f, -205f, 402f, -1295f)) * select(sign(vec4<f32>(1053f, 689f, 1437f, -729f)), trunc(vec4<f32>(-1937f, 207f, 392f, 102f)), select(vec4<bool>(true, global2.b.x, global0[1u], global2.b.x), vec4<bool>(global2.b.x, true, global0[1u], global2.b.x), false && false))) / vec4<f32>(-288f - step(select(-700f, -528f, global2.b.x), select(-452f, -531f, global2.b.x)), -(-select(1711f, -1584f, global2.b.x)), -(-579f / floor(-859f)), -345f);
    let var_1 = select(var_0 * (round(vec4<f32>(-888f, var_0.x, var_0.x, var_0.x)) * (-var_0 * vec4<f32>(var_0.x, 962f, var_0.x, var_0.x))), var_0, !vec4<bool>(global2.b.x, !global2.b.x | false, (-20705i >> 71977u) < -1i, false));
    var var_2 = Struct_1(arg_1.x, vec2<bool>(any(select(vec2<bool>(global2.b.x, global0[0u]), vec2<bool>(global0[global1.x], true), global2.b.x & global2.b.x)), !(true == (global0[10065u] || true))));
    var var_3 = Struct_1(i32(-2147483648) & firstTrailingBit(dot(arg_0.xwx / arg_0.yww, u_input.c.wyz << vec3<u32>(global1.x, 4602u, 25995u))), !var_2.b);
    var var_4 = vec2<u32>(~dot(vec2<u32>(select(global1.x, 58111u, global2.b.x), 4294967295u), select(vec2<u32>(global1.x, 4294967295u), vec2<u32>(4294967295u, global1.x), var_2.b) & vec2<u32>(global1.x, 4294967295u)), 4294967295u);
    return vec4<f32>(ceil(722f), -step(var_0.x, var_1.x), (-(-270f) / min(1842f, 766f)) * -1251f, 1529f) / (trunc(trunc(vec4<f32>(var_1.x, 865f, -789f, var_0.x))) * vec4<f32>(-(-511f), -551f, select(1293f, -1677f / var_0.x, !false), var_1.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = select((-u_input.c.xzw % -u_input.d) ^ -vec3<i32>(arg_1, arg_1, global2.a), vec3<i32>(global2.a, 75838i - u_input.c.x, global2.a & global2.a) - reverseBits(u_input.c.xzy / u_input.d), select(!select(vec3<bool>(true, global0[global1.x], true), vec3<bool>(true, global2.b.x, true), false), select(!vec3<bool>(global0[34081u], global0[global1.x], false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), global2.b.x), !false), all(!vec4<bool>(global0[59509u], false, true, true)))) & (u_input.c.xxz & firstLeadingBit(~countOneBits(vec3<i32>(arg_1, 9780i, arg_1))));
    global1 = func_3() & (~countOneBits(min(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x))) / vec2<u32>(~37667u >> (global1.x - 54252u), 0u ^ ~11566u));
    let var_1 = Struct_1(((-1i - func_2(arg_0.x).x) + ~dot(var_0.xz, vec2<i32>(2147483647i, i32(-2147483648)))) << 0u, vec2<bool>(false, any(!vec3<bool>(false, global0[global1.x], global2.b.x))));
    global0 = array<bool, 3>();
    global2 = var_1;
    return var_1;
}

fn func_1() -> vec2<u32> {
    global2 = func_5(select(func_4(func_2(110f), vec2<i32>(-3316i, -4948i) + vec2<i32>(14051i, global2.a), u_input.c.xx / u_input.d.xy) / sign(sign(vec4<f32>(-502f, 782f, -1000f, -353f))), -vec4<f32>(441f, 1108f, -767f, 1000f) / sign(vec4<f32>(798f, 1398f, -198f, 562f)), true), dot(~(vec2<i32>(global2.a, 0i) >> vec2<u32>(global1.x, 4294967295u)) / ~firstTrailingBit(u_input.b), (~vec2<i32>(-54715i, 11662i) % ~u_input.c.zy) + -firstLeadingBit(u_input.d.yx)));
    global3 = array<vec4<u32>, 17>();
    var var_0 = Struct_1(16588i, vec2<bool>(false, false));
    global0 = array<bool, 3>();
    global3 = array<vec4<u32>, 17>();
    return ~(vec2<u32>(global1.x, 0u) * ~(~abs(vec2<u32>(global1.x, 4294967295u))));
}

fn func_6(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = floor(-596f);
    let var_1 = func_5(vec4<f32>(ceil(sign(1182f)), var_0 / step(-1498f, var_0), var_0, -(219f + -146f)) * ceil(select(vec4<f32>(1015f, var_0, var_0, 1054f) - vec4<f32>(506f, 789f, -2977f, 337f), vec4<f32>(1716f, var_0, 867f, 691f), !false)), u_input.d.x * -9443i);
    global2 = func_5(max(vec4<f32>(sign(var_0), min(var_0, 583f), var_0, min(-1000f, 967f)), vec4<f32>(-1321f, 1133f * 319f, trunc(var_0), var_0)) * (-(-vec4<f32>(277f, var_0, var_0, 1610f)) / vec4<f32>(-(-1000f), var_0, abs(396f), 468f)), -1i);
    global2 = var_1;
    var var_2 = select(!(!(!vec3<bool>(true, global2.b.x, false))), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), global2.b.x), !vec3<bool>(true, false, true), !var_1.b.x)), all(select(!select(vec4<bool>(var_1.b.x, true, global0[arg_0.x], true), vec4<bool>(false, false, true, var_1.b.x), true), vec4<bool>(!global2.b.x, all(vec2<bool>(false, var_1.b.x)), var_1.b.x | global0[0u], 2147483647i == 2147483647i), select(!vec4<bool>(global0[1730u], global0[4515u], false, false), vec4<bool>(true, false, var_1.b.x, var_1.b.x), !vec4<bool>(false, global2.b.x, true, false)))));
    return var_1;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> StorageBuffer {
    global1 = func_1();
    var var_0 = func_6(~firstTrailingBit(min(~vec2<u32>(406u, global1.x), ~vec2<u32>(global1.x, global1.x))));
    var var_1 = global1.x ^ abs((8622u % global1.x) / ~(~global1.x));
    let var_2 = abs(vec2<i32>(875i, arg_0.a));
    var var_3 = var_0.b;
    return StorageBuffer(vec4<u32>(global1.x, 1u ^ 39572u, ~dot(~vec2<u32>(33510u, global1.x), select(vec2<u32>(global1.x, global1.x), vec2<u32>(15950u, 1u), false)), 0u), trunc(exp2(-180f) + 1392f) / -(floor(-294f) + round(773f)), ~(~(~vec2<u32>(1u, 78730u))) & (vec2<u32>(reverseBits(global1.x), global1.x) & ~(vec2<u32>(0u, global1.x) * vec2<u32>(global1.x, global1.x))), firstTrailingBit(u_input.c - (~vec4<i32>(-1i, var_2.x, 2147483647i, var_2.x) << global3[~2263u])), ~(-31216i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, global2.b);
    let x = u_input.a;
    s_output = func_7(func_6(min(func_1(), vec2<u32>(~global1.x, global1.x))), !(!(!select(vec3<bool>(global2.b.x, false, global2.b.x), vec3<bool>(true, global0[45156u], global2.b.x), vec3<bool>(true, false, global2.b.x)))));
}

