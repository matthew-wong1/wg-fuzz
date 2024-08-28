// {"0:0":[63,154,210,125,213,92,163,204,76,136,170,73,141,23,152,215,4,68,172,64,2,24,179,139,103,251,235,215,240,108,211,74,159,27,95,2,84,209,181,10,149,246,37,147,19,210,255,219]}
// Seed: 8809725661446691976

struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~(~(~0u) + clamp(29394u, 36698u, u_input.a));
    var_0 = select(25053u, 1u, !true);
    var_0 = ~max(~u_input.b.x, abs(firstLeadingBit(u_input.b.x))) | countOneBits(max(4294967295u, u_input.a));
    let var_1 = round(-978f + 1152f);
    var var_2 = ~select(-(-vec3<i32>(23291i, i32(-2147483648), -34221i)), ~(-(vec3<i32>(-29610i, -20451i, 12812i) * vec3<i32>(-46125i, -39134i, 51809i))), !select(select(arg_0, vec3<bool>(true, true, false), vec3<bool>(true, false, arg_0.x)), vec3<bool>(false, false, false), !arg_0));
    return (min(28850u, u_input.b.x) + u_input.a) + ~u_input.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = !select(vec2<bool>(all(!vec4<bool>(arg_1.b, arg_3.a, true, true)), arg_1.b == arg_1.b), vec2<bool>(arg_1.b || true, arg_1.b), vec2<bool>(1u >= func_3(vec3<bool>(false, false, true)), arg_3.b || (true | arg_3.b)));
    var_0 = vec2<bool>(all(select(vec4<bool>(any(vec4<bool>(arg_3.b, arg_1.b, true, true)), all(vec4<bool>(var_0.x, false, var_0.x, false)), false, !arg_1.b), !vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), !select(vec4<bool>(true, arg_3.a, arg_1.b, arg_1.b), vec4<bool>(false, arg_1.b, true, arg_3.a), var_0.x))), any(vec2<bool>(false, !arg_3.b)));
    var_0 = !select(!vec2<bool>(var_0.x, false != false), select(vec2<bool>(false, false), !(!vec2<bool>(arg_3.b, false)), abs(arg_1.c.x) == ~(-1i)), select(vec2<bool>(all(vec3<bool>(true, false, false)), arg_1.a <= -251f), select(select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, false), vec2<bool>(false, false)), select(vec2<bool>(true, arg_3.b), vec2<bool>(arg_3.a, var_0.x), vec2<bool>(var_0.x, arg_3.a)), all(vec3<bool>(var_0.x, var_0.x, arg_1.b))), arg_3.a));
    var_0 = !vec2<bool>(all(vec2<bool>(!arg_1.b, false)), true);
    var_0 = select(!vec2<bool>(arg_3.b, any(vec3<bool>(true, false, arg_1.b))), select(!select(select(vec2<bool>(arg_3.b, arg_3.a), vec2<bool>(var_0.x, arg_3.b), arg_1.b), !vec2<bool>(true, false), true), select(!vec2<bool>(var_0.x, false), select(select(vec2<bool>(true, var_0.x), vec2<bool>(arg_3.b, false), false), !vec2<bool>(var_0.x, false), all(vec4<bool>(true, false, arg_3.a, true))), any(!vec3<bool>(arg_3.b, false, true))), any(select(!vec4<bool>(arg_3.a, true, arg_3.b, arg_3.b), !vec4<bool>(arg_1.b, true, false, false), !vec4<bool>(arg_1.b, arg_3.a, var_0.x, false)))), vec2<bool>(true, !(dot(arg_1.c, vec3<i32>(arg_1.c.x, -34494i, 20153i)) <= (arg_1.c.x * -1369i))));
    return select(arg_1.c.x, -1i ^ -arg_1.c.x, !(!arg_1.b));
}

fn func_1() -> Struct_5 {
    let var_0 = firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a >> ~(u_input.c.x >> u_input.a), u_input.b.x));
    var var_1 = ~dot(var_0 * ~var_0, countOneBits(~vec3<u32>(u_input.a, 1u, u_input.c.x))) * (var_0.x & ~(~max(68197u, u_input.c.x)));
    let var_2 = vec4<i32>(1i * 31863i, -(-firstLeadingBit(func_2(var_0, Struct_1(1291f, false, vec3<i32>(26386i, 2147483647i, -17886i)), u_input.b.wy, Struct_3(false, true)))), 25735i, 1i & dot(-(-vec4<i32>(41340i, 1i, 2147483647i, -1i)), ~(~vec4<i32>(16443i, 1i, -4367i, -1i))));
    var_1 = ~u_input.b.x - 4294967295u;
    var var_3 = -((step(vec4<f32>(-130f, 752f, 554f, 3215f) / vec4<f32>(893f, 551f, -434f, -1083f), -vec4<f32>(476f, -457f, 369f, -667f)) + -sign(vec4<f32>(-1452f, 750f, -1000f, -455f))) * vec4<f32>(step(ceil(379f), 906f * -383f), 1361f / trunc(1000f), -2348f, min(679f + -261f, min(147f, 568f))));
    return Struct_5(-var_3.x, Struct_3(select(select(all(vec3<bool>(false, true, true)), true, all(vec3<bool>(false, true, false))), var_2.x <= var_2.x, ~var_0.x == u_input.b.x), (!true == !false) || (892f < (var_3.x / var_3.x))), ~(~vec4<i32>(0i % i32(-2147483648), var_2.x, ~var_2.x, -var_2.x)), vec2<bool>(false, !false & true), Struct_3(any(vec3<bool>(false, all(vec4<bool>(true, false, true, false)), var_0.x != u_input.a)), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)))));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> vec4<u32> {
    let var_0 = select(select(!(!(!arg_0.d)), !func_1().d, func_1().d), vec2<bool>(!(!true & false), (~u_input.b.x * min(u_input.c.x, u_input.c.x)) == (~4294967295u + (u_input.c.x / u_input.b.x))), arg_0.d);
    var var_1 = vec3<i32>(firstTrailingBit(-(~0i)), arg_0.c.x, -(~(24101i + arg_1))) / arg_0.c.yxz;
    var_1 = vec3<i32>(-2147483647i - countOneBits(~dot(arg_0.c, vec4<i32>(2147483647i, arg_1, i32(-2147483648), var_1.x))), min(~(~var_1.x), -1i), arg_0.c.x | 27386i);
    var var_2 = ~firstTrailingBit(vec4<i32>(~(arg_1 * 2147483647i), -(~arg_0.c.x), arg_1, arg_0.c.x));
    var var_3 = -52786i;
    return abs(max(~reverseBits(u_input.b), ~vec4<u32>(4294967295u, ~47838u, 69407u, u_input.c.x % 75068u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), abs(i32(-2147483648) % 1i), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)) & true) / u_input.c;
    var var_1 = Struct_5(236f, func_1().b, vec4<i32>(countOneBits(-(2147483647i | 7711i)), -9875i, reverseBits(select(2147483647i, func_2(var_0.yyy, Struct_1(-196f, true, vec3<i32>(-1i, -36861i, 6542i)), vec2<u32>(u_input.b.x, var_0.x), Struct_3(false, false)), true)), ~(-3967i & -1i) / -33430i), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), !false), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), !false), !select(func_1().d, select(vec2<bool>(true, true), vec2<bool>(true, true), false), !false), !(!(!vec2<bool>(false, false)))), Struct_3(-40056i == -dot(vec3<i32>(-13286i, 4567i, 1i), vec3<i32>(24872i, -1i, 41125i)), true));
    var var_2 = Struct_2(Struct_1(-min(select(var_1.a, var_1.a, true), var_1.a), var_1.e.a, var_1.c.wyy), var_1.c.xx >> (~(vec2<u32>(var_0.x, 59628u) % vec2<u32>(1u, var_0.x)) ^ u_input.b.zw), Struct_1(sign(-(1000f / -846f)), 5271u == ~u_input.a, select(func_1().c.xyx, reverseBits(vec3<i32>(var_1.c.x, -18720i, -1i)), true)), var_0.www, Struct_1(exp2(floor(-(-1000f))), var_1.d.x, ~(-vec3<i32>(27514i, -25236i, -1i) | vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x))));
    let var_3 = -var_1.c.xzz * firstLeadingBit(vec3<i32>(-var_1.c.x, var_2.e.c.x, abs(-(-27755i))));
    let var_4 = firstLeadingBit(var_0.yyw | var_2.d);
    var var_5 = vec3<f32>(-min(1230f, var_1.a), ceil(round(-552f)) + var_2.c.a, var_2.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(-var_1.c.www >> var_2.d), ~vec3<u32>(~(~var_4.x), 29791u, select(min(var_2.d.x, 0u), u_input.a >> var_0.x, !false)), ~(~firstLeadingBit(var_0) ^ vec4<u32>(~0u, ~u_input.c.x, ~0u, 1u)), abs(round(var_5.xx)));
}

