// {"0:0":[81,146,51,236]}
// Seed: 10604882244216498018

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(23012u, 1u, 33917u);

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = 24630u;
    global0 = reverseBits((~arg_0.d - ~(arg_0.d * arg_0.d)) >> (((vec3<u32>(global0.x, global0.x, 29592u) << arg_0.d) ^ arg_0.d) + ((arg_0.d ^ vec3<u32>(4294967295u, 79627u, 4294967295u)) | (arg_0.d - arg_0.d))));
    let var_1 = Struct_1(37424i);
    var var_2 = Struct_4((-1502f >= 563f) != !(!any(vec2<bool>(false, true))), !any(vec2<bool>(select(false, false, false), false)), -(-395f));
    let var_3 = var_1.a;
    return min(~countOneBits((var_0 | 3400u) + ~0u), firstLeadingBit(min(~(~0u), abs(~4294967295u))));
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = 1u;
    var_0 = 77301u;
    let var_1 = vec3<u32>(dot(countOneBits(global0.yy), ~vec2<u32>(0u, func_3(Struct_2(vec4<i32>(arg_0, arg_0, 0i, arg_0), Struct_1(21853i), -2143f, vec3<u32>(global0.x, u_input.a, u_input.a), vec4<i32>(arg_0, arg_0, 0i, 2147483647i))))), global0.x, 1u);
    let var_2 = min(arg_0, -862i) + (firstTrailingBit(dot(vec3<i32>(arg_0, arg_0, 0i) - vec3<i32>(arg_0, arg_0, 11567i), countOneBits(vec3<i32>(362i, arg_0, arg_0)))) % dot(reverseBits(~vec3<i32>(-17011i, arg_0, 1i)), -(vec3<i32>(0i, arg_0, arg_0) ^ vec3<i32>(arg_0, 5490i, -20701i))));
    let var_3 = vec3<i32>(select(arg_0, 2147483647i, any(!vec4<bool>(false, true, true, false))), 31914i, var_2) % (((vec3<i32>(1i, var_2, 1917i) | -vec3<i32>(14500i, -45819i, arg_0)) & -clamp(vec3<i32>(0i, var_2, 0i), vec3<i32>(-1i, arg_0, arg_0), vec3<i32>(-99589i, -26150i, 16446i))) * (vec3<i32>(-39874i, arg_0 * 0i, arg_0) + vec3<i32>(abs(var_2), var_2, clamp(var_2, 1i, var_2))));
    return Struct_5(Struct_4(false, false, -((-1492f * -239f) + (-229f / -106f))));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: i32, arg_3: bool) -> i32 {
    global0 = vec3<u32>(u_input.a, 50078u, global0.x << 0u);
    var var_0 = exp2(vec2<f32>(min(arg_0.a.c, 2415f), arg_0.a.c));
    let var_1 = countOneBits(-(vec3<i32>(arg_2, arg_2, 2147483647i) % vec3<i32>(arg_2, arg_1, 1i)) % ~(vec3<i32>(1i, arg_1, arg_2) & vec3<i32>(2147483647i, arg_1, 6262i))) & ~(select(abs(vec3<i32>(1i, 17705i, i32(-2147483648))), select(vec3<i32>(arg_1, i32(-2147483648), 1i), vec3<i32>(-6678i, 1i, -28151i), vec3<bool>(arg_3, false, arg_0.a.a)), arg_3) - ~(vec3<i32>(arg_2, arg_2, arg_1) * vec3<i32>(38856i, i32(-2147483648), 2147483647i)));
    let var_2 = dot(-(-(~(vec3<i32>(var_1.x, arg_2, arg_1) << vec3<u32>(17636u, 1u, 1u)))), vec3<i32>(-(abs(48438i) - countOneBits(-1i)), arg_1, firstLeadingBit(min(~arg_2, ~(-29746i)))));
    let var_3 = func_2(1i).a;
    return arg_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = vec3<i32>(-func_4(func_2(clamp(2147483647i, 0i, i32(-2147483648))), 1154i, dot(vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -11419i)), true), func_4(func_2(dot(~vec2<i32>(-21330i, 1i), vec2<i32>(-10460i, 63107i))), ~(-29451i), 11198i, false), 28247i);
    let var_1 = Struct_1(var_0.x);
    var var_2 = u_input.a;
    global0 = clamp(~(~countOneBits(vec3<u32>(arg_2, 18321u, 11630u))) >> vec3<u32>(countOneBits(~global0.x), dot(~global0.zx, vec2<u32>(arg_2, global0.x)), func_3(Struct_2(vec4<i32>(-32214i, 2147483647i, var_0.x, 2147483647i), Struct_1(var_1.a), -513f, vec3<u32>(4294967295u, u_input.a, u_input.a), vec4<i32>(-2631i, i32(-2147483648), var_0.x, 5279i)))), vec3<u32>(4294967295u, 4294967295u, global0.x ^ ~u_input.a), firstTrailingBit(min(~vec3<u32>(arg_2, 0u, 0u), vec3<u32>(global0.x, global0.x, 47103u)) | ~(~vec3<u32>(global0.x, 0u, global0.x))));
    var_2 = 101128u;
    return Struct_2(~select(firstLeadingBit(vec4<i32>(2147483647i, -36381i, var_0.x, var_1.a)), vec4<i32>(var_1.a, -18506i, var_0.x, 1775i) & vec4<i32>(-1i, -30299i, 28830i, var_1.a), all(vec2<bool>(false, true))) & -max(countOneBits(vec4<i32>(26847i, 2147483647i, -46992i, 2147483647i)), vec4<i32>(39248i, -67528i, -81767i, 3926i) % vec4<i32>(2147483647i, 1i, var_0.x, i32(-2147483648))), var_1, -302f * 315f, ~(~vec3<u32>(u_input.a >> 83157u, global0.x, ~52464u)), reverseBits(vec4<i32>(var_0.x, 64463i, var_1.a, var_0.x * dot(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_0.x, -55790i)))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = -(-floor(-vec4<f32>(-1000f, arg_0.c, arg_0.c, 1069f))) / ((select(floor(vec4<f32>(-1000f, -1068f, arg_0.c, arg_0.c)), -vec4<f32>(arg_0.c, -1000f, -375f, arg_0.c), !vec4<bool>(false, true, false, true)) + select(vec4<f32>(arg_0.c, 815f, -391f, arg_0.c) + vec4<f32>(-1393f, arg_0.c, 303f, arg_0.c), vec4<f32>(arg_0.c, arg_0.c, -1062f, arg_0.c), false)) - select(trunc(vec4<f32>(1131f, arg_0.c, arg_0.c, -1000f) / vec4<f32>(531f, arg_0.c, arg_0.c, arg_0.c)), vec4<f32>(-arg_0.c, floor(-981f), round(-1494f), arg_0.c - arg_0.c), !(!vec4<bool>(false, false, true, false))));
    global0 = ~(vec3<u32>(12830u, dot(func_1(vec3<f32>(-287f, -300f, var_0.x), -175f, u_input.a).d, vec3<u32>(u_input.a, 4528u, global0.x)), ~(global0.x & arg_0.d.x)) % (~(vec3<u32>(arg_0.d.x, 21857u, 1u) & vec3<u32>(global0.x, arg_0.d.x, global0.x)) - ~(~arg_0.d)));
    var var_1 = func_1(-select(max(var_0.zwy, var_0.ywz), -vec3<f32>(-522f, -805f, arg_0.c), !true) + abs((vec3<f32>(574f, 1000f, var_0.x) + vec3<f32>(arg_0.c, -319f, 854f)) + step(vec3<f32>(arg_0.c, var_0.x, -795f), var_0.ywz)), -646f, arg_0.d.x).b;
    let var_2 = arg_0;
    let var_3 = vec3<bool>(!func_2(clamp(abs(-52614i), -13322i >> global0.x, arg_0.e.x)).a.b, !(!all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true))), var_2.e.x <= -29795i);
    return Struct_3(func_1(vec3<f32>(var_0.x, -(-var_0.x), var_2.c - 839f), min(trunc(func_1(vec3<f32>(-623f, -463f, 1195f), var_2.c, 48469u).c), -step(arg_0.c, var_2.c)), u_input.a).d.yx, ceil(-floor(var_0.wxx) * round(vec3<f32>(-473f, 1216f, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec3<f32>(-233f + -(-314f), 935f, min(299f, 1623f)), -sign(abs(1000f)), 22312u));
    let var_1 = ~(-(~(21990i + 36281i)) << 1u);
    var var_2 = var_0;
    var var_3 = min(clamp(((vec4<u32>(0u, global0.x, var_2.a.x, 0u) & vec4<u32>(8256u, var_0.a.x, 1u, var_0.a.x)) + ~vec4<u32>(var_2.a.x, 0u, 4294967295u, 85414u)) * countOneBits(select(vec4<u32>(1u, 4294967295u, u_input.a, 54668u), vec4<u32>(1u, 0u, 1u, 16590u), true)), vec4<u32>(var_2.a.x, func_5(Struct_2(vec4<i32>(1i, 18859i, i32(-2147483648), var_1), Struct_1(var_1), var_0.b.x, vec3<u32>(var_2.a.x, u_input.a, var_0.a.x), vec4<i32>(-75261i, -1i, 40963i, 2147483647i))).a.x - (80317u | var_2.a.x), var_0.a.x, 4294967295u), countOneBits(vec4<u32>(~var_2.a.x, 4294967295u ^ u_input.a, 1u, ~u_input.a))), ~reverseBits(~vec4<u32>(67699u, 25499u, var_2.a.x, 14788u) + vec4<u32>(global0.x, 24762u, var_2.a.x, 9299u)));
    var_3 = vec4<u32>(abs(~1u), ~u_input.a, func_1(exp2(var_0.b) * var_2.b, -(-1000f), global0.x * 995u).d.x, var_3.x) * abs(~vec4<u32>(firstLeadingBit(75087u), 55830u ^ u_input.a, ~6450u, ~314u));
    let var_4 = Struct_4(false, !(!func_2(~var_1).a.a), var_2.b.x + (floor(-var_0.b.x) + -1287f));
    var var_5 = func_2((~max(-60305i, -5117i) << func_3(func_1(var_2.b, var_0.b.x, 8154u))) & (-(i32(-2147483648)) | ~min(-23069i, var_1)));
    var var_6 = Struct_5(Struct_4(true, var_5.a.b, 861f));
    let var_7 = func_2(-(~(~(-65199i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x % ~1u, min((-vec3<i32>(var_1, var_1, 1909i) - vec3<i32>(var_1, var_1, var_1)) + vec3<i32>(~var_1, abs(var_1), dot(vec3<i32>(4042i, var_1, var_1), vec3<i32>(var_1, var_1, var_1))), (vec3<i32>(var_1, var_1, -1i) << ~var_3.yzz) - (min(vec3<i32>(var_1, 91179i, var_1), vec3<i32>(var_1, i32(-2147483648), -39i)) >> ~var_3.xzy)), 431f, 7458i);
}

