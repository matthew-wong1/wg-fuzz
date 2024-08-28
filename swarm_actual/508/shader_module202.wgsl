// {"0:0":[58,187,186,242,125,128,67,227,198,200,52,115,70,96,70,21,187,227,14,120,223,192,123,90,99,250,75,248,7,159,156,91]}
// Seed: 4992095872820786504

struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec2<bool>(!(!false), !(!(false && any(vec4<bool>(false, false, false, false)))));
    var var_1 = Struct_2(Struct_1(abs(select(arg_0.a.a - arg_0.a.a, vec3<f32>(-1248f, arg_0.a.d, arg_0.a.a.x), vec3<bool>(var_0.x, true, false))), -(-(-vec3<i32>(arg_0.a.b.x, arg_0.a.b.x, 0i))), (vec4<u32>(u_input.c, arg_0.a.c.x, 30803u, 36274u) & (arg_0.a.c - vec4<u32>(arg_0.a.c.x, 1u, arg_0.a.c.x, arg_0.a.c.x))) >> vec4<u32>(u_input.c, u_input.c, 4294967295u, arg_0.a.c.x), (432f + -arg_0.a.a.x) / -arg_0.a.d));
    var_1 = arg_0;
    var_1 = Struct_2(Struct_1(-(-var_1.a.a) + -var_1.a.a, ~clamp(u_input.d.yyx, vec3<i32>(arg_0.a.b.x, arg_0.a.b.x, 1i), u_input.d.xzy + vec3<i32>(-16424i, u_input.a, u_input.a)), arg_0.a.c, step((300f + var_1.a.a.x) - -(-512f), max(-996f, -1380f))));
    let var_2 = ~(~(~arg_0.a.c));
    return !true;
}

fn func_4(arg_0: bool) -> vec3<f32> {
    let var_0 = ~vec2<i32>(~dot(vec3<i32>(0i, -34466i, 2233i), vec3<i32>(20051i, u_input.d.x, 0i)), (-7279i | u_input.d.x) << 62934u) << ((abs(vec2<u32>(1u, 23010u) ^ vec2<u32>(u_input.c, u_input.b)) * (vec2<u32>(u_input.c, u_input.c) >> select(vec2<u32>(u_input.c, 9334u), vec2<u32>(u_input.c, 51780u), arg_0))) >> abs(vec2<u32>(reverseBits(0u), u_input.b)));
    let var_1 = Struct_2(Struct_1(select(vec3<f32>(-392f - 1000f, -527f, -190f), step(vec3<f32>(564f, 688f, -889f) - vec3<f32>(390f, 339f, -522f), -vec3<f32>(-1787f, 351f, -1136f)), all(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0))), ((u_input.d.wxx * u_input.d.zyx) << (vec3<u32>(83572u, u_input.c, 0u) % vec3<u32>(u_input.c, 0u, u_input.b))) / -(vec3<i32>(-23510i, u_input.d.x, 18881i) / u_input.d.yyz), countOneBits(~(~vec4<u32>(24958u, 46893u, u_input.c, u_input.c))), -(1000f * -954f)));
    var var_2 = var_1;
    var_2 = Struct_2(Struct_1(vec3<f32>(-(1109f / 807f), (1494f * -561f) / -1812f, ceil(var_1.a.a.x) * -var_2.a.d), vec3<i32>(reverseBits(var_2.a.b.x), -firstTrailingBit(2147483647i), var_1.a.b.x), var_2.a.c, -max(458f, var_2.a.d) * step(var_1.a.a.x / -1327f, select(-498f, -471f, false))));
    var_2 = Struct_2(var_2.a);
    return round(vec3<f32>(ceil((var_2.a.a.x - var_1.a.a.x) * -879f), var_2.a.a.x, var_2.a.a.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = -2118f - 1000f;
    var_0 = trunc(-(-319f)) * -round(-475f * -278f);
    var_0 = -108f;
    var var_1 = Struct_1(max(func_4(func_3(Struct_2(Struct_1(vec3<f32>(1202f, 418f, -626f), vec3<i32>(26402i, u_input.a, 2147483647i), vec4<u32>(arg_1, 0u, arg_1, u_input.b), -2505f)))), max(-vec3<f32>(867f, -307f, -1152f), trunc(vec3<f32>(1304f, 1000f, 2145f) / vec3<f32>(-424f, -517f, -1197f)))), u_input.d.www, ~((~vec4<u32>(arg_1, arg_1, 0u, 0u) << vec4<u32>(u_input.c, 60293u, 79028u, 69996u)) - vec4<u32>(u_input.b, reverseBits(9575u), u_input.c, ~arg_1)), sign(-407f));
    var_1 = Struct_1(vec3<f32>(-var_1.d, var_1.a.x / min(-1799f + -1205f, -(-1576f)), -var_1.d), ~var_1.b, var_1.c, min(1000f, ((562f * 652f) + -var_1.a.x) + -(-var_1.a.x)));
    return Struct_1(vec3<f32>(trunc(func_4(true).x), -var_1.d - var_1.a.x, 573f) - sign(abs(vec3<f32>(var_1.d, var_1.a.x, var_1.d) / vec3<f32>(109f, -148f, 1298f))), vec3<i32>(-(var_1.b.x >> ~arg_1), var_1.b.x | ~(~0i), ~dot(-vec2<i32>(-43417i, u_input.a), u_input.d.wz)), ~vec4<u32>((arg_1 >> u_input.c) >> 1u, 1u, ~u_input.b % firstTrailingBit(arg_1), var_1.c.x), -(-268f) / -1000f);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = u_input.d.yz;
    let var_1 = arg_0.a.a.x;
    let var_2 = arg_0;
    var_0 = max(~((~arg_0.a.b.yx & (vec2<i32>(var_2.a.b.x, 1i) & var_2.a.b.xy)) - max(vec2<i32>(arg_1.b.x, i32(-2147483648)) - arg_1.b.xz, -arg_1.b.xx)), u_input.d.zz);
    var_0 = (vec2<i32>(~(~arg_0.a.b.x), ~(arg_0.a.b.x / var_0.x)) + (~vec2<i32>(arg_1.b.x, -1i) & arg_1.b.yz)) << (arg_0.a.c.zx / (countOneBits(~arg_1.c.zz) + ~(~var_2.a.c.zz)));
    return arg_2.xx;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(exp2(vec3<f32>(abs(-870f), -171f * 593f, 377f - 1403f)), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i), ~(~(~vec4<u32>(1u, 1u, 1075u, u_input.c))), -(-1000f)));
    let var_1 = -var_0.a.a.xy - vec2<f32>(var_0.a.d, -floor(var_0.a.d) * (ceil(var_0.a.a.x) * abs(var_0.a.d)));
    let var_2 = func_5(Struct_2(func_2(!(!vec2<bool>(true, true)), 45304u + (1u >> u_input.c), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), -1049f < var_0.a.d))), func_2(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), !vec2<bool>(false, false), !vec2<bool>(true, false)), select(!vec2<bool>(true, true), vec2<bool>(false, false), !true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), var_0.a.c.x, !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), !vec3<bool>(true, true, false), !true)), select(select(vec3<bool>(!true, true & true, all(vec2<bool>(false, false))), select(!vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), !vec3<bool>(!false, true && false, all(vec3<bool>(true, true, false))), select(!(!vec3<bool>(true, false, false)), vec3<bool>(false, true, true), vec3<bool>(true, func_3(Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, var_0.a.a.x))), all(vec4<bool>(true, false, true, true))))));
    let var_3 = true;
    var var_4 = var_0.a.b.x;
    return vec4<u32>((u_input.c / 0u) & (reverseBits(~var_0.a.c.x) % dot(vec4<u32>(var_0.a.c.x, var_0.a.c.x, 9468u, 4294967295u), ~var_0.a.c)), dot(~vec4<u32>(37246u * 4294967295u, var_0.a.c.x ^ 10914u, ~64287u, 25349u - u_input.c), ((var_0.a.c / vec4<u32>(u_input.c, var_0.a.c.x, u_input.b, u_input.b)) % max(var_0.a.c, vec4<u32>(0u, 0u, var_0.a.c.x, 1u))) * func_2(var_2, ~u_input.b, select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, var_3, false), false)).c), ~(var_0.a.c.x << 0u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-(abs(vec3<f32>(-151f, -1000f, -1065f) / vec3<f32>(-1545f, -223f, 1000f)) / abs(vec3<f32>(-904f, -1165f, -139f) * vec3<f32>(1062f, -1398f, -1000f))), u_input.d.wzw, ~func_1(), -func_2(vec2<bool>(true, 214f >= 579f), 83104u, !(!vec3<bool>(true, true, true))).d);
    var_0 = Struct_1(abs(var_0.a) - ((var_0.a + var_0.a) * trunc(vec3<f32>(1476f, var_0.d, -450f) * vec3<f32>(-539f, var_0.d, var_0.a.x))), ~u_input.d.yww, ~(~((var_0.c | vec4<u32>(4679u, 1u, 66392u, u_input.c)) >> vec4<u32>(4294967295u, 19235u, u_input.c, var_0.c.x))), func_2(select(!vec2<bool>(false, true), vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(634f < var_0.d, true)), ~u_input.b, vec3<bool>(!(!false), any(vec4<bool>(true, true, false, false)), !(var_0.a.x != -1306f))).d);
    var var_1 = -var_0.d;
    var var_2 = !vec4<bool>(false, any(vec3<bool>(all(vec3<bool>(false, false, true)), true, !true)), any(vec2<bool>(any(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, false)))), true || !all(vec4<bool>(false, false, false, false)));
    var var_3 = Struct_2(Struct_1(-ceil(vec3<f32>(-1688f, -1819f, var_0.a.x)) * func_4(!false), min(var_0.b, -vec3<i32>(var_0.b.x, -3192i, u_input.a) | vec3<i32>(-1i, 1i, -9417i)), ~countOneBits(var_0.c), var_0.a.x));
    var var_4 = func_2(var_2.zz, ~u_input.c, var_2.xzy);
    let var_5 = -var_0.a.x;
    var var_6 = func_2(select(select(select(!var_2.wz, select(vec2<bool>(false, var_2.x), var_2.zx, var_2.x), var_2.xy), select(select(var_2.yy, vec2<bool>(var_2.x, true), false), var_2.wz, true), false), select(select(!var_2.xy, func_5(Struct_2(var_3.a), Struct_1(var_3.a.a, u_input.d.xwz, var_0.c, var_4.a.x), vec3<bool>(var_2.x, false, false)), !var_2.x), !(!vec2<bool>(true, true)), !var_2.yz), all(select(vec3<bool>(var_2.x, true, false), select(var_2.zyw, var_2.zyx, var_2.x), true))), var_0.c.x, select(var_2.www, select(var_2.xxz, var_2.wyy, select(!vec3<bool>(false, var_2.x, var_2.x), var_2.xzw, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d, u_input.d, !vec4<bool>(var_2.x, false, true, true)) >> max(var_0.c, ~vec4<u32>(1u, var_4.c.x, u_input.b, 21850u)), 40962i);
}

