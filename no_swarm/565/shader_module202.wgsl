// {"0:0":[65,46,142,46,187,182,220,40,253,134,175,175,125,239,201,230]}
// Seed: 2551594194811617566

struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-48i, Struct_1(vec4<u32>(39093u, 1u, 78127u, 17090u), 1005f, 466f, false, vec3<i32>(-702i, -31210i, 4735i)), true, true), Struct_3(-12399i, Struct_1(vec4<u32>(1u, 4294967295u, 121370u, 13684u), -940f, -229f, true, vec3<i32>(-4729i, i32(-2147483648), 8997i)), true, true), Struct_3(10793i, Struct_1(vec4<u32>(4294967295u, 0u, 39349u, 1u), 935f, -839f, true, vec3<i32>(3079i, i32(-2147483648), 1i)), false, false), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 24708u, 0u, 28751u), -1846f, 1108f, true, vec3<i32>(-2693i, 0i, i32(-2147483648))), true, true), Struct_3(2147483647i, Struct_1(vec4<u32>(53932u, 4294967295u, 36141u, 0u), -1546f, -144f, false, vec3<i32>(2147483647i, 1i, 16245i)), false, false), Struct_3(5833i, Struct_1(vec4<u32>(1u, 15715u, 67776u, 4294967295u), 1153f, -858f, true, vec3<i32>(1i, 1i, -16792i)), true, false));

var<private> global1: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn func_3(arg_0: vec3<u32>) -> bool {
    global1 = array<vec3<bool>, 19>();
    global1 = array<vec3<bool>, 19>();
    global0 = array<Struct_3, 6>();
    var var_0 = any(!select(!vec4<bool>(false, true, false, false), vec4<bool>(true != true, u_input.a < -43243i, !false, u_input.d > 1i), !(24514u < u_input.b)));
    let var_1 = Struct_4(vec2<i32>(u_input.a, ~u_input.a));
    return !(!(!false && true));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = min(~abs(~11522u) % arg_0, 4294967295u);
    let var_1 = ~(u_input.a + u_input.a);
    let var_2 = select(select(!vec4<bool>(!false, 5344i >= var_1, !false, !true), !vec4<bool>(-21395i < 0i, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), true), vec4<bool>(select(func_3(vec3<u32>(var_0, 21561u, u_input.b)), u_input.b > 0u, -669f != 1262f), all(!vec4<bool>(true, false, false, true)), true || true, u_input.a < (u_input.a % u_input.d))), !(!select(!vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), 17218u >= 36601u);
    global0 = array<Struct_3, 6>();
    let var_3 = var_2.wy;
    return !var_2.yxz;
}

fn func_1() -> u32 {
    global0 = array<Struct_3, 6>();
    var var_0 = Struct_4(-vec2<i32>(1i % u_input.a, 0i));
    var var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), all(global1[u_input.c])), vec4<bool>(-230f >= -780f, !true, all(vec2<bool>(false, true)), true), vec4<bool>(368f >= -1522f, u_input.c == 21166u, true, all(vec3<bool>(false, false, false))))), !any(func_2(~22675u)), func_3(vec3<u32>(~10060u + reverseBits(u_input.c), 36290u + (u_input.b & 0u), countOneBits(u_input.c) % ~5030u)), true);
    var_0 = Struct_4(var_0.a ^ -var_0.a);
    var_1 = !vec4<bool>(any(!var_1.yyy), func_2(~min(0u, 1u)).x, !(!func_2(19836u).x), !(!(!false)));
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(firstLeadingBit(firstLeadingBit(-vec2<i32>(1i, u_input.d))) / ((firstTrailingBit(vec2<i32>(i32(-2147483648), u_input.d)) | firstLeadingBit(vec2<i32>(u_input.d, u_input.a))) >> abs(vec2<u32>(38508u, u_input.b) * vec2<u32>(u_input.b, u_input.c))), vec2<i32>(u_input.a, ~u_input.d));
    let var_1 = firstTrailingBit(-vec4<i32>((-1i >> u_input.b) >> (u_input.c % 1u), var_0.x, var_0.x, ~(u_input.d * 23936i)));
    var_0 = -(~var_1.xy);
    var var_2 = Struct_2(-(-5505i), Struct_1(~vec4<u32>(38047u * u_input.c, 18381u / 24167u, ~28228u, clamp(92329u, u_input.b, 4294967295u)), -1154f, -328f, any(!(!vec4<bool>(true, false, true, true))), var_1.xzw + (-vec3<i32>(var_1.x, i32(-2147483648), var_0.x) - vec3<i32>(0i, var_0.x, 1i))), Struct_1(vec4<u32>(reverseBits(u_input.c * 4294967295u), firstLeadingBit(~u_input.c), ~48520u | func_1(), ~u_input.c % ~u_input.b), -select(-1369f / -1000f, max(1000f, 373f), false), -121f / (exp2(1522f) - step(-591f, 1350f)), all(vec2<bool>(true | false, func_2(u_input.c).x)), var_1.zxz), Struct_1(~(~vec4<u32>(55254u, 1u, u_input.b, 1u)) + vec4<u32>(~u_input.c, ~u_input.c, ~0u, u_input.c + u_input.c), 237f / step(trunc(425f), step(-1127f, 1000f)), -(-(-447f) + sign(364f)), true, countOneBits(vec3<i32>(firstTrailingBit(-1i), ~var_1.x, ~var_0.x))), vec3<i32>(dot(vec4<i32>(var_0.x, var_0.x, 9816i, 44520i) ^ (vec4<i32>(var_0.x, -25437i, var_1.x, u_input.d) * vec4<i32>(var_0.x, 0i, 58197i, 2147483647i)), ~(-vec4<i32>(var_1.x, u_input.d, -1i, var_0.x))), -33131i, u_input.d >> 1u));
    var var_3 = -select(vec2<i32>(-dot(vec4<i32>(u_input.d, var_2.d.e.x, u_input.a, var_1.x), var_1), dot(vec3<i32>(var_1.x, -25200i, -156i), vec3<i32>(var_1.x, 39198i, var_2.c.e.x) + vec3<i32>(var_0.x, var_2.a, var_0.x))), -var_1.ww, select(select(!vec2<bool>(true, false), func_2(5419u).yx, select(vec2<bool>(false, false), vec2<bool>(false, var_2.b.d), var_2.d.d)), vec2<bool>(i32(-2147483648) > u_input.a, any(vec4<bool>(true, var_2.d.d, false, true))), ~var_0.x != -6850i));
    let x = u_input.a;
    s_output = StorageBuffer(-(-((var_2.b.b - -159f) - -217f)), 34485u, var_2.c.a.wz, vec4<f32>(abs(-var_2.d.c), -699f, var_2.c.b * var_2.c.b, var_2.c.c - var_2.c.b));
}

