// {"0:0":[184,52,105,229,158,36,193,139,217,59,29,207,22,231,230,123,137,143,150,131,121,209,254,11,12,129,117,241,182,182,104,201,224,193,153,4,131,161,23,79,220,80,235,4,160,233,238,175]}
// Seed: 8708236133552477759

struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 25759u), vec2<u32>(21947u, 45980u), vec2<u32>(43072u, 1u), vec2<u32>(74602u, 4831u), vec2<u32>(14011u, 8799u), vec2<u32>(0u, 0u), vec2<u32>(1u, 16713u), vec2<u32>(1u, 78806u), vec2<u32>(0u, 0u), vec2<u32>(4378u, 0u), vec2<u32>(4294967295u, 56334u), vec2<u32>(1u, 27257u), vec2<u32>(4294967295u, 57210u), vec2<u32>(98484u, 74799u), vec2<u32>(1u, 40632u), vec2<u32>(39228u, 1u), vec2<u32>(0u, 16987u), vec2<u32>(21794u, 0u), vec2<u32>(56119u, 3085u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(59057u, 1u), vec2<u32>(1503u, 25955u));

var<private> global1: i32 = 1i;

var<private> global2: array<vec2<f32>, 1>;

fn func_3() -> i32 {
    var var_0 = !(!vec2<bool>(all(!vec3<bool>(false, true, false)), select(!false, !false, any(vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(any(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)))));
    let var_2 = ~u_input.c.wz;
    global0 = array<vec2<u32>, 23>();
    var var_3 = select(-floor(-(-665f * 530f)), 1065f, (min(-355f, -(-1259f)) * (-(-1000f) - floor(-1036f))) <= -1311f);
    return select(u_input.c.x, u_input.c.x, var_1.a) % u_input.c.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global2 = array<vec2<f32>, 1>();
    let var_0 = Struct_2(84808u - (firstLeadingBit(~u_input.b) ^ u_input.d.x), vec2<i32>(firstTrailingBit(-1i), min(~func_3(), firstTrailingBit(32130i))), Struct_1(all(!vec2<bool>(false, false))), Struct_1(any(vec3<bool>(true | true, !true, false))), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))) || all(!vec2<bool>(true, true))));
    let var_1 = select(select(!vec3<bool>(var_0.c.a, var_0.d.a, true), vec3<bool>(var_0.d.a, var_0.d.a, !(392f <= 1534f)), select(!vec3<bool>(var_0.e.a, true, false), !select(vec3<bool>(var_0.d.a, var_0.c.a, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, var_0.d.a, var_0.d.a), vec3<bool>(true, var_0.e.a, var_0.d.a), vec3<bool>(false, var_0.d.a, var_0.e.a)))), vec3<bool>(!(!true), select(42378u, 0u, all(vec3<bool>(var_0.d.a, true, var_0.c.a))) >= countOneBits(4294967295u), !false), vec3<bool>(!(any(vec2<bool>(false, false)) | (222f <= 1323f)), all(select(!vec4<bool>(var_0.d.a, false, var_0.d.a, true), !vec4<bool>(false, false, false, false), select(vec4<bool>(true, var_0.c.a, false, var_0.c.a), vec4<bool>(var_0.c.a, var_0.d.a, false, true), true))), !(!true)));
    var var_2 = var_0.e;
    global1 = dot(~u_input.c.wyz, abs(countOneBits(countOneBits(clamp(vec3<i32>(2147483647i, var_0.b.x, u_input.c.x), vec3<i32>(5737i, u_input.c.x, var_0.b.x), vec3<i32>(-47388i, u_input.c.x, -1i))))));
    return Struct_3(max((vec4<f32>(-225f, -741f, 674f, -1327f) + max(vec4<f32>(-265f, 235f, -906f, -1000f), vec4<f32>(-671f, 644f, -1000f, 1442f))) - (-vec4<f32>(941f, 698f, 303f, 382f) + abs(vec4<f32>(-124f, 906f, 309f, 988f))), vec4<f32>(trunc(528f) - (-449f + 1265f), -(-560f), -673f, 251f)));
}

fn func_1(arg_0: bool) -> i32 {
    global1 = u_input.c.x;
    global0 = array<vec2<u32>, 23>();
    let var_0 = func_2(~min(vec2<u32>(62822u, 4294967295u) + vec2<u32>(1u, u_input.d.x), global0[4294967295u]));
    global0 = array<vec2<u32>, 23>();
    let var_1 = Struct_2(0u, vec2<i32>(abs(i32(-2147483648)) % 11381i, u_input.c.x & u_input.c.x), Struct_1(arg_0), Struct_1(clamp(abs(u_input.b), 0u - u_input.a.x, 133491u) >= u_input.b), Struct_1(!((u_input.c.x * 55684i) == u_input.c.x)));
    return firstTrailingBit(var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(-28544i, func_1(true | false), 0i, -(i32(-2147483648)))), ~vec3<u32>(45596u, dot(global0[u_input.d.x], u_input.a.zx) / u_input.b, ~(u_input.a.x ^ 4294967295u)), vec3<i32>(u_input.c.x, ~(-63604i), -(-6055i)) << u_input.a, u_input.c.x, func_3());
}

