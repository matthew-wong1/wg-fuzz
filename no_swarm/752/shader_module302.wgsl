// {"0:0":[29,234,6,162,122,56,217,12,89,128,227,96,242,247,248,218,141,115,206,163,235,99,95,213,86,115,214,165,208,106,70,169]}
// Seed: 11979017360577223115

struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 1i, -18044i), vec3<u32>(19797u, 60275u, 0u), 18986i, vec3<u32>(45135u, 14891u, 68129u), 0u);

var<private> global1: Struct_2;

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<u32> {
    global0 = Struct_1(vec3<i32>(u_input.d, 27950i, dot(global0.a.zy, firstLeadingBit(global0.a.xy)) + (-(-17650i) << reverseBits(48121u))), vec3<u32>(dot(~vec2<u32>(global1.c.b.x, 8579u), arg_2.c.d.zx) >> ~(~arg_1.a.e), arg_2.d.d.x, ~4294967295u), global1.d.c, select(abs(~vec3<u32>(arg_3.x, 0u, arg_1.a.e)), (arg_1.c.d - vec3<u32>(1u, global0.e, 1u)) | ~arg_1.a.b, select(any(vec2<bool>(false, false)), !(arg_2.b != arg_2.b), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))), ~(~(global1.a.b.x ^ u_input.a.x) ^ reverseBits(arg_3.x)));
    global1 = Struct_2(arg_2.d, -(-global1.b), Struct_1(arg_2.d.a, (vec3<u32>(global1.a.d.x, 4294967295u, 4294967295u) + global1.a.d) + ~(global0.d % vec3<u32>(arg_1.d.e, arg_1.a.e, arg_2.c.b.x)), u_input.b, abs(vec3<u32>(abs(9906u), 1u << u_input.a.x, firstLeadingBit(global1.c.d.x))), 1u), Struct_1(global0.a, ~(~clamp(arg_3.yxw, arg_1.a.d, vec3<u32>(global0.e, 40156u, 28698u))), firstTrailingBit(arg_1.a.c), select(~global1.d.d + ~vec3<u32>(0u, global0.b.x, 18366u), firstTrailingBit(global1.d.b / arg_2.d.b), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), select(arg_1.d.b.x, global1.d.e, -(-26474i) >= i32(-2147483648))), arg_1.e);
    let var_0 = ~arg_3;
    var var_1 = dot(~(-clamp(max(vec2<i32>(-24768i, -23143i), global0.a.zy), -vec2<i32>(arg_2.d.c, arg_2.d.a.x), global1.d.a.xy)), ~vec2<i32>(u_input.d, 22107i));
    global1 = Struct_2(arg_2.c, -648f, Struct_1(firstLeadingBit(~global1.c.a >> arg_2.a.d), arg_1.d.d % countOneBits(arg_1.d.d * global0.b), dot(firstTrailingBit(~arg_1.d.a), arg_2.d.a), ~abs(global1.d.d), ((arg_3.x % arg_2.d.d.x) | 4294967295u) >> select(var_0.x + 4294967295u, 98962u, !true)), Struct_1(~(arg_2.d.a << var_0.ywz), arg_1.a.d, arg_2.e.x, var_0.yyw, ~(~(~4294967295u))), countOneBits(vec2<i32>(global1.a.c, arg_1.e.x)));
    return vec2<u32>(countOneBits(abs(~arg_1.a.e)), ~arg_3.x) / select(~global0.d.zz, ~vec2<u32>(~1u, arg_2.a.d.x), !all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = -439f;
    global1 = Struct_2(global1.d, -(-556f), global1.d, Struct_1(-min(vec3<i32>(arg_1.x, global1.a.c, arg_2.a.x), abs(global0.a)), vec3<u32>(~arg_0 % dot(vec3<u32>(1u, arg_0, u_input.a.x), arg_2.b), ~(~1u), dot(func_3(268f, Struct_2(Struct_1(vec3<i32>(-1i, -9474i, 2147483647i), arg_2.d, -4914i, vec3<u32>(43928u, 1u, arg_0), 41115u), global1.b, global1.d, Struct_1(vec3<i32>(-7852i, 0i, global0.c), vec3<u32>(60445u, global1.a.e, 28981u), arg_2.a.x, global0.d, 4294967295u), arg_1), Struct_2(Struct_1(global1.d.a, vec3<u32>(arg_0, 0u, arg_0), -5655i, vec3<u32>(global0.e, 21035u, 7649u), 17703u), 694f, Struct_1(vec3<i32>(arg_2.a.x, -1i, u_input.d), vec3<u32>(global1.d.b.x, 32506u, u_input.e), arg_1.x, global1.d.d, 37821u), arg_2, global0.a.zx), vec4<u32>(global0.d.x, 39655u, 1u, global1.c.e)), global1.c.b.zz >> arg_2.d.yx)), min((2147483647i + u_input.d) | (-55199i << u_input.a.x), -37982i), vec3<u32>(u_input.a.x, 14268u * arg_0, (1u / arg_0) & 47527u), 0u), clamp(abs(-arg_1), ~(vec2<i32>(arg_2.c, 1i) / arg_2.a.zy) | -min(vec2<i32>(u_input.d, 0i), vec2<i32>(32090i, u_input.d)), reverseBits(firstLeadingBit(~arg_1))));
    var var_1 = global1.c.c;
    var var_2 = select(round(vec4<f32>(arg_3.x, select(arg_3.x, -736f, true), var_0, -477f)) - -vec4<f32>(trunc(var_0), 219f / 453f, var_0 - global1.b, step(var_0, 899f)), -abs(vec4<f32>(arg_3.x, 1381f, -143f, var_0) * -vec4<f32>(global1.b, -788f, 1000f, var_0)), all(select(vec3<bool>(true, !false, !true), vec3<bool>(false | false, all(vec4<bool>(false, false, true, false)), false), !(!true))));
    let var_3 = Struct_2(global1.a, min(var_2.x, 1389f / -(-867f)), arg_2, Struct_1(-(~(global0.a >> vec3<u32>(86147u, u_input.c.x, 65795u))), ~global0.b, ~arg_1.x, ((vec3<u32>(4294967295u, 1u, global0.b.x) & global1.d.d) * ~vec3<u32>(60538u, global0.b.x, global1.d.e)) - global1.a.b, 4294967295u), -select(global0.a.yz << global1.d.b.zy, vec2<i32>(arg_2.c, -36630i), !false) * -((vec2<i32>(global0.c, u_input.d) + vec2<i32>(-54753i, -1i)) & (global0.a.yz & vec2<i32>(arg_2.c, 7351i))));
    return Struct_2(var_3.c, var_3.b, arg_2, Struct_1(~abs(-vec3<i32>(global0.c, 2147483647i, 1i)), vec3<u32>(arg_2.e, ~848u, dot(vec4<u32>(4294967295u, u_input.c.x, 71338u, 6623u), vec4<u32>(u_input.e, u_input.e, var_3.c.b.x, var_3.d.d.x))) / vec3<u32>(global0.e, ~arg_0, dot(global0.d, vec3<u32>(global1.a.b.x, 1u, 1u))), u_input.d, var_3.a.b, global1.c.b.x << 63386u), var_3.a.a.zx);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<bool>(1u <= arg_0.x, all(select(vec4<bool>(all(vec2<bool>(true, false)), !false, !true, global1.a.a.x < 2147483647i), !vec4<bool>(false, true, false, false), vec4<bool>(true & false, true, false, select(true, false, false)))));
    global0 = global1.c;
    var var_1 = -arg_1.b;
    var var_2 = ~0i;
    var_2 = abs(reverseBits(~min(i32(-2147483648), 13629i)) / (abs(global1.d.c ^ 1i) % ((arg_1.d.a.x & -18766i) * (-34790i + 13964i))));
    return 80166u;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!(!vec3<bool>(-1623f >= -142f, true || false, false)));
    let var_1 = !all(vec4<bool>(u_input.a.x > (0u + global0.b.x), false, false, var_0.x));
    let var_2 = Struct_1(vec3<i32>(global1.d.a.x ^ (0i ^ 1i), u_input.d, i32(-2147483648)), vec3<u32>(func_4(arg_2.d / arg_2.d, func_2(global0.e, arg_1.xx, Struct_1(global0.a, global0.b, -4762i, global0.d, arg_2.e), vec2<f32>(294f, -955f))) - 0u, 0u, reverseBits(0u)), abs(0i) | ~(-(-1i)), vec3<u32>(u_input.c.x - 0u, 6860u, ~min(min(51454u, 12375u), 0u)), ~arg_2.e);
    global0 = Struct_1(global1.c.a, ~(~(vec3<u32>(global1.c.b.x, 4294967295u, 0u) + global1.d.b) & ~abs(vec3<u32>(global1.c.b.x, var_2.d.x, global0.b.x))), func_2(31337u, (global1.c.a.yx << vec2<u32>(1u, 40952u)) - -(var_2.a.zx % arg_1.yz), arg_2, -(-(-vec2<f32>(global1.b, arg_0)))).d.c, vec3<u32>(func_3(round(global1.b * 980f), func_2(var_2.e - 50035u, arg_1.zz, func_2(u_input.c.x, global1.c.a.xy, global1.a, vec2<f32>(global1.b, -180f)).c, vec2<f32>(1385f, global1.b)), func_2(~0u, global0.a.zy, Struct_1(var_2.a, vec3<u32>(169u, u_input.a.x, 1u), global1.e.x, vec3<u32>(global1.d.d.x, 27074u, 19808u), arg_2.b.x), vec2<f32>(arg_0, -1000f) + vec2<f32>(327f, arg_0)), vec4<u32>(global1.d.e, 1u ^ 1u, var_2.d.x | 4294967295u, ~0u)).x, global1.d.d.x, ~4294967295u), arg_2.d.x);
    var var_3 = arg_0 * -exp2(select(-1114f, 287f, var_1) + (global1.b / -1045f));
    return Struct_1((arg_2.a << reverseBits(vec3<u32>(68635u, global1.d.b.x, var_2.e))) | ~(-arg_2.a >> global1.a.d), global0.d, reverseBits(3490i), vec3<u32>(clamp(~(u_input.e - arg_2.d.x), 13539u, ~(var_2.d.x - global0.b.x)), 4294967295u, u_input.e), 28460u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(global1.b, -global1.d.a, global1.d), 750f, global1.c, Struct_1(vec3<i32>(abs(u_input.d) * (u_input.d % -30764i), ~global0.c, -1i), global1.a.b, -u_input.d, ~(~vec3<u32>(26381u, global1.a.e, 1u) & (global0.b % global1.c.d)), 54334u), vec2<i32>(global1.e.x << (global1.a.d.x >> 1u), ~u_input.d) | vec2<i32>(global0.a.x, global0.c));
    global0 = func_2(u_input.a.x, clamp(global0.a.yz, ~((global1.a.a.yx >> u_input.c) & (vec2<i32>(-38059i, global0.c) - vec2<i32>(15639i, i32(-2147483648)))), (-vec2<i32>(2147483647i, -3298i) + (global0.a.xz >> vec2<u32>(15436u, 0u))) >> vec2<u32>(func_2(u_input.a.x, global1.c.a.xz, Struct_1(global1.c.a, vec3<u32>(global1.a.e, global0.b.x, 4294967295u), global0.a.x, global1.a.b, 4835u), vec2<f32>(global1.b, global1.b)).d.b.x, ~global0.e)), Struct_1(~(~(~global0.a)), vec3<u32>(4294967295u, 62248u, 5074u / 1u) * abs(min(global0.b, global1.d.b)), -1i >> (global1.a.d.x ^ select(1u, 69528u, false)), ~max(min(global0.d, vec3<u32>(u_input.e, 0u, global0.d.x)), func_1(global1.b, vec3<i32>(global0.c, global0.a.x, 5983i), global1.a).d), abs(dot(vec3<u32>(u_input.a.x, 4294967295u, u_input.e), vec3<u32>(global1.c.d.x, 0u, 45893u) | global0.d))), vec2<f32>(-1044f + global1.b, sign(111f)) - -step(select(vec2<f32>(-713f, global1.b), vec2<f32>(global1.b, -418f), vec2<bool>(false, false)), -vec2<f32>(global1.b, 902f))).a;
    var var_0 = vec4<u32>(~global1.c.b.x / func_1(-1316f, global0.a, global1.d).d.x, 69372u, global1.c.e, 4294967295u >> (1u / u_input.e)) << vec4<u32>(func_4(~(~vec3<u32>(global0.e, 4294967295u, global0.e)), Struct_2(func_2(u_input.c.x, global1.d.a.xy, global1.a, vec2<f32>(-765f, -992f)).d, global1.b, Struct_1(global1.a.a, global0.d, global1.e.x, global0.d, global1.c.b.x), func_2(u_input.e, vec2<i32>(43115i, global1.c.a.x), Struct_1(global0.a, vec3<u32>(0u, 149674u, u_input.c.x), u_input.d, global0.d, global0.b.x), vec2<f32>(global1.b, 516f)).c, vec2<i32>(global1.a.c, global0.a.x) * vec2<i32>(-55203i, global0.a.x))), (reverseBits(1u) << ~u_input.e) ^ (countOneBits(4294967295u) & (global1.c.d.x / global1.c.d.x)), firstTrailingBit(~func_3(1363f, Struct_2(Struct_1(global1.a.a, global1.a.b, 35850i, global0.d, 1u), -1000f, global1.a, global1.c, vec2<i32>(u_input.b, 12770i)), Struct_2(Struct_1(vec3<i32>(-12891i, 0i, i32(-2147483648)), vec3<u32>(global1.a.d.x, global0.d.x, 60135u), global0.a.x, global0.d, u_input.a.x), global1.b, global1.c, Struct_1(global0.a, global0.d, global0.c, vec3<u32>(global1.d.e, 101275u, global0.b.x), u_input.a.x), global0.a.zz), vec4<u32>(u_input.a.x, 1u, u_input.a.x, global1.d.b.x)).x), global0.b.x);
    var var_1 = vec2<u32>(1u, min(dot(global0.b, vec3<u32>(4294967295u, global0.b.x, u_input.a.x)), global1.c.e) * ~7480u);
    var var_2 = ~(countOneBits(0u) << func_3(global1.b, func_2(98432u >> var_0.x, vec2<i32>(global1.e.x, -15409i), global1.d, -vec2<f32>(576f, global1.b)), func_2(~1123u, -global1.e, func_1(-1575f, global1.c.a, global1.a), vec2<f32>(-1344f, global1.b)), ~(vec4<u32>(var_0.x, global0.b.x, 42903u, 34503u) - vec4<u32>(var_1.x, var_1.x, 4294967295u, global1.d.e))).x);
    var_2 = var_0.x ^ firstLeadingBit(global1.d.e);
    let var_3 = -(~(-u_input.d));
    var var_4 = Struct_1(-vec3<i32>(46937i, ~(i32(-2147483648)), countOneBits(global1.a.c) << (4294967295u - 4294967295u)), ~clamp(global1.a.d, vec3<u32>(global1.d.b.x, 20801u, var_0.x), vec3<u32>(global1.a.d.x, global0.b.x, 20327u)) | var_0.xzx, ~global1.e.x, ((select(vec3<u32>(u_input.c.x, 1u, global1.c.b.x), vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<bool>(true, true, true)) % (vec3<u32>(var_0.x, var_1.x, 1u) >> global0.b)) / abs(global1.d.b)) >> (vec3<u32>(1u, ~u_input.c.x, var_1.x & var_1.x) | ~(var_0.wxx * global0.d)), abs(clamp(~(u_input.c.x / var_0.x), ~(0u ^ var_1.x), u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-((-1i & global0.c) / ~global0.c)), vec4<i32>(2147483647i, -1i, ~global0.c, -(~(~var_4.c))));
}

