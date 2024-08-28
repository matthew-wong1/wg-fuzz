// {"0:0":[237,180,111,160,62,154,34,253,4,7,74,37,226,92,77,85,121,162,62,225,175,84,52,135,191,133,43,202,142,200,122,193,235,197,166,50,117,10,226,73,73,122,45,158,222,150,111,220]}
// Seed: 13824610018333514596

struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_2;

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(any(vec4<bool>(false, false, true, true)), 0u != 51047u, u_input.b.x <= 0u, select(false, false, false)), !vec4<bool>(true, true, true, true)), max(vec3<i32>(i32(-2147483648), u_input.a, u_input.a), vec3<i32>(u_input.c, -1i, 1i)) / -(-vec3<i32>(u_input.a, u_input.a, u_input.c)), vec2<f32>(sign(max(1582f, -1256f)), select(850f, global1.a.x, false)), vec3<i32>(~firstTrailingBit(-14160i), u_input.a, ~abs(u_input.a)), vec4<i32>(u_input.a - (u_input.a >> u_input.b.x), -29039i, u_input.c, countOneBits(1i << u_input.b.x))), Struct_1(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, false, false, false)), select(!vec4<bool>(false, true, false, false), !vec4<bool>(false, true, false, true), u_input.b.x != 1u), select(!vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)), ~abs(~vec3<i32>(u_input.a, u_input.c, -45033i)), ceil(global1.a.ww) + ((vec2<f32>(2174f, global1.a.x) - global1.a.yw) + global1.a.ww), abs(countOneBits(vec3<i32>(22447i, -23565i, u_input.c)) / (vec3<i32>(2147483647i, u_input.a, i32(-2147483648)) >> u_input.b.yyw)), select((vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c) % vec4<i32>(u_input.c, 2147483647i, u_input.c, 11559i)) % (vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.c) | vec4<i32>(u_input.c, 1i, u_input.c, -12099i)), (vec4<i32>(u_input.c, u_input.c, u_input.c, -1i) | vec4<i32>(u_input.c, u_input.a, u_input.c, 16958i)) - -vec4<i32>(u_input.c, u_input.a, u_input.a, 45647i), !(2147483647i >= u_input.a))));
    var var_1 = u_input.b.x;
    var var_2 = ~var_0.a.b.x & ~dot(-var_0.b.e, var_0.b.e);
    var var_3 = Struct_2(-global1.a);
    return select(select(var_0.b.a, select(select(!var_0.a.a, select(vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a, var_0.b.a.x), select(vec4<bool>(var_0.a.a.x, true, true, var_0.b.a.x), var_0.a.a, var_0.a.a.x)), vec4<bool>(u_input.c >= var_0.b.d.x, false, u_input.b.x == 1u, !true), !select(vec4<bool>(var_0.a.a.x, var_0.b.a.x, var_0.b.a.x, false), var_0.b.a, false)), select(!var_0.b.a, select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.a.a.x, false), select(vec4<bool>(var_0.a.a.x, false, var_0.b.a.x, true), vec4<bool>(true, var_0.a.a.x, false, var_0.a.a.x), var_0.a.a.x), var_0.a.a), select(select(var_0.b.a, var_0.a.a, var_0.b.a), !var_0.b.a, var_0.b.a))), var_0.a.a, (-773f <= -4247f) || all(var_0.a.a));
}

fn func_2() -> Struct_3 {
    global0 = ~reverseBits(u_input.b.x);
    let var_0 = ~1i;
    let var_1 = Struct_3(Struct_1(select(func_3(), func_3(), vec4<bool>(any(vec2<bool>(false, false)), false, !true, all(vec2<bool>(true, false)))), vec3<i32>(reverseBits(var_0), -(-1i), ~var_0) - (-vec3<i32>(u_input.c, var_0, 25192i) >> u_input.b.xzx), vec2<f32>(-global1.a.x, -356f * global1.a.x), vec3<i32>(~dot(vec3<i32>(-1i, i32(-2147483648), u_input.c), vec3<i32>(-1i, var_0, u_input.c)), u_input.a, var_0), min(vec4<i32>(u_input.c << u_input.b.x, i32(-2147483648) & -1i, -30660i ^ var_0, countOneBits(0i)), -vec4<i32>(0i, var_0, i32(-2147483648), -32183i))), Struct_1(!select(vec4<bool>(false, false, false, true), !vec4<bool>(true, false, true, true), all(vec3<bool>(true, true, false))), -vec3<i32>(0i, u_input.a, var_0) % (vec3<i32>(1i, -49272i, 67136i) ^ min(vec3<i32>(var_0, -39707i, -21873i), vec3<i32>(u_input.c, i32(-2147483648), u_input.a))), vec2<f32>(3501f - global1.a.x, min(global1.a.x, -922f)), -((vec3<i32>(var_0, u_input.c, 13153i) >> vec3<u32>(46023u, u_input.b.x, 74007u)) % ~vec3<i32>(2147483647i, 1i, 0i)), (min(vec4<i32>(i32(-2147483648), -1i, var_0, i32(-2147483648)), vec4<i32>(var_0, var_0, 17192i, -6743i)) | ~vec4<i32>(-31812i, 1i, 0i, -1i)) / ~(vec4<i32>(-13921i, 5432i, u_input.a, 0i) % vec4<i32>(u_input.a, 36653i, -37794i, 81677i))));
    let var_2 = ~u_input.b.x;
    var var_3 = select(vec2<bool>(false, max(0i + var_0, -var_0) < u_input.c), var_1.a.a.wz, exp2(var_1.b.c.x) > var_1.b.c.x);
    return var_1;
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = func_2();
    global0 = dot(u_input.b * vec4<u32>(select(countOneBits(57489u), ~u_input.b.x, -1171f > -876f), 39338u, firstTrailingBit(~1u), ~1u), u_input.b);
    let var_1 = var_0.a.e.xz;
    var_0 = Struct_3(Struct_1(vec4<bool>(select(-244f, var_0.a.c.x, arg_0.x) <= (global1.a.x + -2916f), false & any(arg_0.xy), arg_0.x, trunc(281f) > global1.a.x), abs(var_0.b.d), min(var_0.a.c, -vec2<f32>(-816f, global1.a.x)) + vec2<f32>(573f / var_0.a.c.x, global1.a.x + global1.a.x), min(vec3<i32>(-11295i, -33268i, i32(-2147483648)), countOneBits(vec3<i32>(20945i, u_input.c, var_0.b.b.x) + vec3<i32>(u_input.a, var_0.b.d.x, 41363i))), max(firstTrailingBit(vec4<i32>(0i, u_input.c, 1i, 1i) >> u_input.b), abs(countOneBits(vec4<i32>(36911i, var_0.a.b.x, var_0.b.d.x, u_input.c))))), var_0.a);
    let var_2 = var_0.b;
    return countOneBits(-(-(~(var_2.e.zw - vec2<i32>(var_2.e.x, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global1.a;
    var_0 = global1.a;
    var var_1 = ~reverseBits(vec4<u32>(4294967295u, min(45857u, dot(u_input.b.wy, vec2<u32>(4294967295u, u_input.b.x))), (u_input.b.x % 67699u) << u_input.b.x, 4294967295u));
    var var_2 = max(-(vec2<i32>(-2147483647i, reverseBits(-48924i)) % func_1(vec3<bool>(true, false, true))), vec2<i32>(i32(-2147483648), i32(-2147483648)) * ~abs(func_1(vec3<bool>(true, false, true))));
    let var_3 = func_2();
    global1 = Struct_2(min(global1.a, vec4<f32>(-491f, var_0.x, -(-global1.a.x), 584f)));
    var var_4 = ~abs(-vec3<i32>(var_3.b.b.x, ~(i32(-2147483648)), -var_2.x));
    var var_5 = u_input.b.yz;
    var var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0i + 1i), global1.a.zzz / global1.a.yyw, ~5512i, ~var_1.x);
}

