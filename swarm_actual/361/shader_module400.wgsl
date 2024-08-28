// {"0:0":[219,114,248,205,134,236,72,254,143,5,40,218,103,205,37,73,146,136,35,87,203,234,130,49,178,59,61,163,161,44,178,21]}
// Seed: 10567842644035696122

struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = firstTrailingBit(~(firstLeadingBit(u_input.b.x) & ~min(u_input.b.x, 1u)));
    var_0 = firstTrailingBit(~2784u);
    var var_1 = max(dot(~firstTrailingBit(~vec2<i32>(u_input.c, u_input.c)), vec2<i32>((u_input.d << 8463u) % select(41772i, u_input.c, arg_0), abs(~0i))), -(-u_input.c));
    var var_2 = Struct_2(all(!(!select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0)))), -(~vec3<i32>(~(-1i), -5766i, i32(-2147483648) * u_input.c)));
    var var_3 = Struct_3(Struct_1(u_input.c, -vec3<f32>(-283f, arg_1 / arg_1, -853f), u_input.a.yz, vec2<i32>(i32(-2147483648), (48324i % -47068i) >> (24530u | 1u)), -var_2.b.x & ~(~u_input.c)), Struct_1((reverseBits(u_input.d) / u_input.d) ^ max(-var_2.b.x, 1i), vec3<f32>(-(-492f) - 918f, -880f, 306f / sign(arg_1)), u_input.a.xx, ~var_2.b.zz, -57972i), Struct_2(!(!(54063u > 66224u)), -var_2.b), Struct_1(clamp(firstTrailingBit(-u_input.d), clamp(-177i, i32(-2147483648), i32(-2147483648)) >> dot(u_input.b, u_input.b), var_2.b.x), -sign(-vec3<f32>(-310f, -1014f, 1000f)), (abs(vec2<u32>(33879u, u_input.b.x)) * ~u_input.b) * vec2<u32>(max(u_input.b.x, 30328u), 28128u), -var_2.b.yy, 0i));
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = -1000f;
    var var_1 = -(-(-vec4<f32>(exp2(697f), -(-307f), func_3(arg_1.x, -2414f), func_3(true, 703f))));
    var_1 = vec4<f32>(-(var_1.x + -476f), 284f, func_3(929f != (var_1.x * 959f), floor(var_1.x)), max(max(-var_1.x, -1159f + 447f), var_1.x)) / vec4<f32>(var_1.x + 829f, -2485f, 762f, -var_1.x);
    var var_2 = countOneBits(u_input.d);
    var_1 = vec4<f32>(max(-(-148f), (-var_1.x + -var_1.x) * -var_1.x), step(var_1.x, -1000f), trunc(-(-(-(-124f)))), select(-var_1.x, min(var_1.x, ceil(424f + 677f)), arg_0.a));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> vec2<i32> {
    var var_0 = func_2(func_2(Struct_2(arg_0.a, -arg_1.c.b), select(!(!vec3<bool>(arg_1.c.a, true, true)), select(!vec3<bool>(true, arg_1.c.a, true), vec3<bool>(false, false, false), !true), arg_1.c.a)), select(select(!(!vec3<bool>(arg_0.a, true, arg_0.a)), !vec3<bool>(arg_1.c.a, arg_0.a, true), vec3<bool>(!true, arg_0.a, u_input.a.x < arg_1.a.c.x)), !(!select(vec3<bool>(arg_1.c.a, arg_0.a, arg_1.c.a), vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, arg_1.c.a, false))), select(select(select(vec3<bool>(arg_1.c.a, arg_0.a, false), vec3<bool>(arg_0.a, false, arg_1.c.a), true), !vec3<bool>(true, arg_0.a, false), select(true, arg_0.a, arg_1.c.a)), select(!vec3<bool>(arg_1.c.a, arg_0.a, true), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(arg_0.a, true, false)), select(vec3<bool>(arg_0.a, arg_1.c.a, arg_0.a), vec3<bool>(false, arg_1.c.a, arg_0.a), false)), !vec3<bool>(arg_0.a, false, true)))).b.yy;
    let var_1 = arg_1.c.a;
    var_0 = ~arg_0.b.yx;
    var var_2 = -(-abs(-38294i));
    let var_3 = vec2<u32>(dot(~(~vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), firstLeadingBit(vec3<u32>(0u, 26432u, 33885u))) & arg_1.d.c.x, ~firstTrailingBit(13885u) ^ 8192u);
    return arg_1.b.d;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = (~(~vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x) >> vec3<u32>(u_input.a.x, 17850u, u_input.b.x)) / vec3<u32>(abs(~19296u), 89119u, 23570u + u_input.b.x)) % ~(max(u_input.a, u_input.a - vec3<u32>(u_input.a.x, 1u, 0u)) * u_input.a);
    var_0 = vec3<u32>(~(abs(14494u * 23847u) ^ 77178u), dot(max(min(var_0.xy, vec2<u32>(25003u, u_input.b.x) ^ var_0.zy), select(u_input.a.yy, vec2<u32>(4294967295u, 4294967295u), true) >> u_input.b), clamp(~var_0.zy ^ vec2<u32>(12930u, 4294967295u), abs(var_0.yy | vec2<u32>(var_0.x, var_0.x)), ~vec2<u32>(u_input.a.x, u_input.b.x) & max(vec2<u32>(u_input.b.x, 2055u), vec2<u32>(37705u, 46116u)))), ~39789u);
    var_0 = (vec3<u32>(reverseBits(var_0.x), countOneBits(var_0.x) | ~var_0.x, select(min(9984u, 1u), ~4294967295u, any(vec4<bool>(true, true, true, true)))) | ~(~vec3<u32>(var_0.x, 8057u, 79201u))) * countOneBits(u_input.a);
    var var_1 = Struct_3(Struct_1(u_input.c + arg_0.x, vec3<f32>(-829f, -ceil(-587f), -1812f), u_input.a.yx, arg_0, ~(~(1i * u_input.d))), Struct_1(arg_0.x, -(-vec3<f32>(1000f, -1066f, -1000f)), ~vec2<u32>(~1u, var_0.x), firstLeadingBit(clamp(min(vec2<i32>(0i, -43233i), arg_0), arg_0, arg_0 % arg_0)), -(0i << ~u_input.b.x)), func_2(func_2(Struct_2(true, vec3<i32>(arg_1, arg_0.x, arg_1) - vec3<i32>(u_input.d, -1i, -15873i)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(all(vec2<bool>(true, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), (-900f + -1323f) > -190f)), Struct_1(11261i, ((vec3<f32>(107f, -419f, 1000f) - vec3<f32>(1230f, -681f, 113f)) + -vec3<f32>(-1151f, 1010f, 1235f)) - trunc(-vec3<f32>(-1303f, 1660f, -1789f)), var_0.xz, countOneBits(vec2<i32>(arg_1, arg_0.x) | vec2<i32>(arg_1, 2147483647i)) | arg_0, 1i));
    var var_2 = max((var_1.c.b.x >> ((var_1.b.c.x + u_input.b.x) + (var_0.x | var_1.a.c.x))) / (-11563i | -1i), 10014i);
    return var_1.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> vec3<i32> {
    var var_0 = func_5(vec2<i32>(-max(arg_0.x, arg_0.x), -55046i) + func_4(func_2(Struct_2(false, arg_0), vec3<bool>(false, true, true)), Struct_3(Struct_1(0i, vec3<f32>(arg_1, arg_1, arg_1), u_input.b, vec2<i32>(u_input.c, -29511i), 1i), Struct_1(14963i, vec3<f32>(-1791f, 1434f, -633f), u_input.b, arg_0.yx, 423i), func_2(Struct_2(true, vec3<i32>(arg_0.x, arg_0.x, -3179i)), vec3<bool>(true, false, true)), Struct_1(u_input.c, vec3<f32>(arg_1, -375f, arg_1), u_input.b, vec2<i32>(arg_0.x, 0i), 1i)), abs(-437f)), -arg_0.x);
    var var_1 = Struct_3(Struct_1(1i ^ -1320i, -(var_0.b * var_0.b) + ((vec3<f32>(arg_1, var_0.b.x, 311f) * var_0.b) - -var_0.b), u_input.b, vec2<i32>(u_input.c, i32(-2147483648) << (var_0.c.x / u_input.a.x)), min(var_0.a, arg_0.x) & ((0i ^ arg_0.x) / u_input.d)), func_5(min(~(arg_0.xy % arg_0.zx), abs(arg_0.xz) << vec2<u32>(var_0.c.x, 9580u)), -(~reverseBits(u_input.c))), func_2(Struct_2(!(true == true), -abs(vec3<i32>(u_input.c, u_input.c, -1i))), select(vec3<bool>(false & true, true, true), select(!vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), !true), select(!vec3<bool>(true, true, false), !vec3<bool>(true, false, false), true))), func_5(var_0.d, ~dot(vec2<i32>(var_0.a, var_0.d.x), select(var_0.d, var_0.d, vec2<bool>(true, false)))));
    var_1 = Struct_3(func_5(var_1.b.d, 0i << ((u_input.a.x ^ u_input.a.x) | var_0.c.x)), func_5(arg_0.zy, ~1i), var_1.c, var_1.d);
    var_0 = func_5(var_0.d, ~(-(-5762i)));
    var var_2 = 683f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, reverseBits(countOneBits(vec3<i32>(-36587i, -1i, u_input.d) + vec3<i32>(-265i, -10262i, 1i))) * select(func_1(vec3<i32>(u_input.c, 15407i, 56444i), -1887f), vec3<i32>(u_input.d, u_input.c, i32(-2147483648)) * -vec3<i32>(u_input.d, u_input.d, 18393i), vec3<bool>(false, false, !true)));
    let var_1 = ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u);
    let var_2 = 1000f;
    var var_3 = 1u;
    let var_4 = -(-27822i);
    let var_5 = vec2<bool>(true, var_0.a);
    let var_6 = -(vec2<f32>(-690f + 1990f, -448f) * vec2<f32>(var_2, exp2(var_2))) / (-(-(vec2<f32>(-1000f, 886f) * vec2<f32>(-1141f, var_2))) + vec2<f32>(func_3(!false, -(-1540f)), -var_2 / (var_2 / 1006f)));
    var_3 = 14377u;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_1.wwz) >> vec3<u32>(~(~u_input.b.x), func_5(vec2<i32>(u_input.d, -1i), var_4).c.x ^ 0u, u_input.a.x / 4294967295u), (var_6 / vec2<f32>(exp2(2148f), var_2)) / -vec2<f32>(-902f, var_6.x / 1318f), var_1.x, u_input.d);
}

