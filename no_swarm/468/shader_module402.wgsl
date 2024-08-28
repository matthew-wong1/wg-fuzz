// {"0:0":[241,66,141,80,236,141,59,81,120,247,143,42,74,254,66,141,255,28,207,176,17,61,112,44,147,119,84,113,95,87,179,189,122,92,208,232,231,39,142,12,246,118,129,67,137,131,76,10]}
// Seed: 11541594908794127023

struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(21660i, 35186i, 38246i, 1i, 0i, -1i, 63685i, 48405i, 1653i, 63395i, 0i, 1i, 28296i, 1i, 50936i, 2147483647i, -17322i, i32(-2147483648), 2147483647i, 19389i, 48565i, 14227i, 25043i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(1049f, vec3<f32>(347f, 784f, 2104f), vec2<bool>(true, true));

var<private> global2: array<f32, 24>;

var<private> global3: array<i32, 32>;

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_3(abs(vec4<u32>(~u_input.a, 1u % 31732u, u_input.a, u_input.a)) ^ vec4<u32>(firstLeadingBit(73052u), ~(1u << 4294967295u), (45397u >> u_input.a) % u_input.a, max(0u & 59679u, ~u_input.a)), ~(~reverseBits(vec3<u32>(u_input.a, 27038u, u_input.a) >> vec3<u32>(1u, u_input.a, 0u))), -969f, vec2<u32>(82303u * ((1u * u_input.a) | (u_input.a >> u_input.a)), 89548u >> 4294967295u), Struct_1(~(~vec3<u32>(75374u, u_input.a, u_input.a)), min(~vec4<u32>(1u, 4294967295u, 1u, 1u), max(vec4<u32>(43045u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 124839u, u_input.a, u_input.a))) | ((vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 27667u, u_input.a)) + (vec4<u32>(0u, 1u, 1u, 1u) & vec4<u32>(67625u, 62365u, 23960u, 46721u)))));
    var var_1 = ~countOneBits(~reverseBits(30193u));
    let var_2 = vec4<i32>(countOneBits(abs(u_input.b.x)), 20199i, -global0[abs(countOneBits(~0u))], ~max(u_input.b.x, -1i));
    var var_3 = vec2<u32>(dot(~vec4<u32>(~19502u, 1538u, var_0.e.b.x % u_input.a, var_0.b.x), select(reverseBits(var_0.a + vec4<u32>(1u, 0u, 61282u, 6573u)), var_0.a, all(arg_0))), 5269u);
    let var_4 = select(i32(-2147483648), abs(-1i), all(select(vec4<bool>(arg_0.x, false, arg_0.x, global1.c.x), vec4<bool>(global1.c.x, true, arg_0.x, global1.c.x), select(vec4<bool>(global1.c.x, global1.c.x, true, arg_0.x), vec4<bool>(false, true, true, global1.c.x), global1.c.x)))) < u_input.c.x;
    return max(~(~var_0.a.xw), ~var_0.a.zx);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = !(!select(!(!vec3<bool>(global1.c.x, global1.c.x, false)), !vec3<bool>(global1.c.x, global1.c.x, global1.c.x), global1.c.x));
    global2 = array<f32, 24>();
    var var_1 = arg_0.e;
    return vec4<u32>(10170u, 31168u, 61489u * var_1.a.x, arg_3.e.a.x);
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_1(vec3<u32>(~(~26440u), 4294967295u + (u_input.a - u_input.a), abs(~(u_input.a | 63337u))), func_4(Struct_3(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, 0u) & vec3<u32>(4294967295u, 1u, 4294967295u), global1.b.x * arg_0.x, vec2<u32>(4294967295u, 0u), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(2534u, u_input.a, 29287u, 1083u))), Struct_3(~vec4<u32>(u_input.a, 9761u, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), -arg_0.x, func_3(vec3<bool>(global1.c.x, false, global1.c.x)), Struct_1(vec3<u32>(u_input.a, 0u, 90805u), vec4<u32>(37463u, 41164u, u_input.a, 84479u))), vec3<i32>(firstTrailingBit(-48981i), global3[41891u + u_input.a], 0i), Struct_3(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(u_input.a, u_input.a, u_input.a), 156f, vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<u32>(37630u, u_input.a, 1u), vec4<u32>(0u, 0u, u_input.a, u_input.a)))) << select(vec4<u32>(~17448u, ~4294967295u, u_input.a, func_4(Struct_3(vec4<u32>(2687u, 63019u, 4294967295u, u_input.a), vec3<u32>(13950u, 4294967295u, u_input.a), global1.a, vec2<u32>(69738u, u_input.a), Struct_1(vec3<u32>(4294967295u, 61181u, u_input.a), vec4<u32>(1605u, u_input.a, 4294967295u, u_input.a))), Struct_3(vec4<u32>(u_input.a, u_input.a, 62876u, 0u), vec3<u32>(1u, 0u, u_input.a), 151f, vec2<u32>(u_input.a, 0u), Struct_1(vec3<u32>(u_input.a, 8416u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), u_input.c.xww, Struct_3(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 1u), -1000f, vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(39048u, u_input.a, u_input.a, 1u)))).x), (vec4<u32>(13946u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) * vec4<u32>(u_input.a, 6151u, 4294967295u, 62876u), select(vec4<bool>(global1.c.x, true, false, global1.c.x), select(vec4<bool>(false, global1.c.x, global1.c.x, true), vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), false), any(vec4<bool>(false, true, global1.c.x, global1.c.x)))));
    return Struct_4(abs(-global1.a) / (534f * arg_0.x), Struct_2(max(ceil(725f), global1.a + -1661f) / sign(-global2[1u]), vec3<f32>(round(129f) + max(-176f, 147f), -608f, floor(round(global1.a))), global1.c), vec3<u32>(abs(~dot(vec3<u32>(49892u, u_input.a, u_input.a), vec3<u32>(var_0.a.x, 29729u, u_input.a))), ~(8706u | var_0.a.x) << ~(u_input.a >> 11404u), abs(~32440u)), global2[~(~(~var_0.b.x - (0u & var_0.b.x)))]);
}

fn func_1() -> vec4<u32> {
    global0 = array<i32, 24>();
    let var_0 = func_2(-(-global1.b.zx));
    let var_1 = select(vec3<bool>(false, true, !false), select(vec3<bool>(select(!global1.c.x, !false, true), true | var_0.b.c.x, !(!var_0.b.c.x)), vec3<bool>(false, func_2(var_0.b.b.zy).b.c.x, global1.c.x), var_0.b.c.x), global1.c.x | var_0.b.c.x);
    global3 = array<i32, 32>();
    let var_2 = -(-var_0.a);
    return ~abs(abs(vec4<u32>(7694u ^ var_0.c.x, 25424u | 4294967295u, abs(1u), u_input.a | 35923u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    global3 = array<i32, 32>();
    global2 = array<f32, 24>();
    global3 = array<i32, 32>();
    global3 = array<i32, 32>();
    var var_0 = !global1.c.x;
    let var_1 = Struct_1(~(~(vec3<u32>(u_input.a, u_input.a, 68767u) * ~vec3<u32>(u_input.a, 32177u, u_input.a))), func_1() / ((vec4<u32>(u_input.a, 1u, 1u, u_input.a) & min(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 63170u, u_input.a, 34241u))) >> clamp(vec4<u32>(4294967295u, 10499u, u_input.a, 27973u), abs(vec4<u32>(u_input.a, 4202u, u_input.a, u_input.a)), ~vec4<u32>(15618u, 1u, u_input.a, 1u))));
    var var_2 = global1.a;
    global3 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a * 1u, global2[~15202u], 48400u >> (select(7593u << u_input.a, reverseBits(var_1.b.x), !global1.c.x) >> 4294967295u), clamp(u_input.c, -(~u_input.c) + (u_input.c * vec4<i32>(36037i, 1i, 23594i, 9240i)), (min(u_input.c, vec4<i32>(1i, i32(-2147483648), -18984i, 21855i)) >> vec4<u32>(0u, 2326u, u_input.a, u_input.a)) ^ (vec4<i32>(1i, 30611i, 0i, 4673i) % u_input.c)));
}

