// {"0:0":[107,11,107,10,66,147,180,10,148,237,132,253,94,54,107,24]}
// Seed: 12731253963396245290

struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 14>;

var<private> global2: vec3<f32> = vec3<f32>(1573f, -1643f, 267f);

fn func_3(arg_0: bool) -> i32 {
    var var_0 = select(global2.x - max(1641f, global1[abs(45205u)]), -230f * abs(-global2.x), any(select(select(global0.yx, vec2<bool>(global0.x, true), arg_0), vec2<bool>(arg_0, false), global0.x))) - global1[0u];
    var var_1 = 0u;
    var var_2 = 5398i;
    return -countOneBits(countOneBits(2147483647i));
}

fn func_2() -> vec4<i32> {
    var var_0 = global1[1u];
    global1 = array<f32, 14>();
    var var_1 = Struct_4(Struct_3(Struct_1(29787u, vec2<bool>(any(global0.yz), global0.x), -global2.x), global0.x, vec2<bool>(func_3(global0.x) == -61449i, !true)), !(!(!select(global0.zx, vec2<bool>(global0.x, global0.x), global0.xz))), vec3<u32>(firstTrailingBit(0u), 0u, ((4294967295u | 66759u) * (21388u + 4294967295u)) + ~26821u));
    let var_2 = !any(vec2<bool>(global0.x, global0.x));
    let var_3 = vec3<f32>(150f, abs(round(574f + (-711f + global2.x))), -var_1.a.a.c);
    return ((~(-vec4<i32>(u_input.c, u_input.b, -1i, 0i)) & -vec4<i32>(u_input.a.x, -1i, i32(-2147483648), -588i)) << vec4<u32>(dot(vec4<u32>(4294967295u, var_1.a.a.a, var_1.a.a.a, 11478u) + vec4<u32>(82737u, 4294967295u, var_1.c.x, 1u), vec4<u32>(1u, var_1.c.x, var_1.c.x, var_1.c.x) % vec4<u32>(var_1.c.x, var_1.c.x, 4294967295u, var_1.c.x)), countOneBits(var_1.a.a.a), 1u << var_1.a.a.a, 1u)) >> firstTrailingBit((vec4<u32>(var_1.a.a.a, 1u, 4294967295u, var_1.a.a.a) / vec4<u32>(var_1.a.a.a, var_1.c.x, var_1.a.a.a, var_1.c.x)) & firstTrailingBit(abs(vec4<u32>(32768u, 0u, 4294967295u, 0u))));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = min(~(~countOneBits(u_input.a.x)), dot(min(vec4<i32>(u_input.c, 30714i, u_input.b, 2147483647i), vec4<i32>(-10750i, -33211i, 2147483647i, u_input.a.x)) >> vec4<u32>(arg_0.c.x, 8034u, arg_0.c.x, arg_0.a.a.a), func_2())) & -(-u_input.b);
    var var_1 = Struct_2(arg_0.a.a, arg_0.a.a);
    let var_2 = vec2<bool>(!true, any(var_1.a.b) || true);
    let var_3 = true;
    var var_4 = false;
    return vec2<bool>(~func_2().x >= u_input.a.x, arg_0.b.x);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_5(5374i, arg_0.b, select(func_1(Struct_4(Struct_3(Struct_1(4294967295u, arg_1.b, 999f), arg_0.c.x, vec2<bool>(false, false)), global0.xy, ~vec3<u32>(arg_1.a, arg_1.a, 33538u))), func_1(Struct_4(Struct_3(Struct_1(arg_1.a, arg_1.b, global1[18632u]), global0.x, vec2<bool>(arg_1.b.x, global0.x)), vec2<bool>(arg_0.c.x, global0.x), vec3<u32>(arg_1.a, 4294967295u, arg_1.a) | vec3<u32>(arg_1.a, 1u, 0u))), true));
    var var_1 = Struct_3(Struct_1(arg_1.a >> 0u, vec2<bool>(false, true), step(-713f, (var_0.b.x * 1203f) * -877f)), all(select(vec4<bool>(0i >= 0i, global0.x, true, all(vec3<bool>(arg_1.b.x, false, arg_0.c.x))), vec4<bool>(func_1(Struct_4(Struct_3(arg_1, true, var_0.c), arg_1.b, vec3<u32>(10245u, arg_1.a, 88293u))).x, arg_1.b.x, -1296f <= arg_1.c, !var_0.c.x), any(vec3<bool>(var_0.c.x, global0.x, global0.x)))), func_1(Struct_4(Struct_3(Struct_1(79375u, vec2<bool>(arg_0.c.x, var_0.c.x), global2.x), arg_0.c.x, select(arg_0.c, arg_1.b, arg_0.c.x)), !select(arg_0.c, var_0.c, vec2<bool>(true, var_0.c.x)), ~clamp(vec3<u32>(arg_1.a, 12508u, 137567u), vec3<u32>(12424u, arg_1.a, arg_1.a), vec3<u32>(0u, arg_1.a, arg_1.a)))));
    let var_2 = arg_1.b.x;
    var var_3 = arg_0;
    let var_4 = -364f < var_1.a.c;
    return select(func_1(Struct_4(Struct_3(var_1.a, all(global0.xy), select(vec2<bool>(var_1.b, var_1.c.x), vec2<bool>(false, var_3.c.x), vec2<bool>(true, var_2))), vec2<bool>(any(vec4<bool>(var_2, arg_1.b.x, var_3.c.x, arg_0.c.x)), var_2 & var_2), ~select(vec3<u32>(1u, 33795u, 26371u), vec3<u32>(1u, 23026u, 0u), true))), var_3.c, !func_1(Struct_4(Struct_3(Struct_1(16071u, arg_0.c, 1094f), var_4, vec2<bool>(true, true)), vec2<bool>(arg_1.b.x, false), vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(0u, 4294967295u, 6012u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(((17434u & 4294967295u) / (66038u / 4294967295u)) - (min(4294967295u, 0u) << 1u)) << max(~firstLeadingBit(firstLeadingBit(0u)), 55651u);
    global1 = array<f32, 14>();
    var_0 = 65828u + (52021u * (26150u >> reverseBits(dot(vec4<u32>(75121u, 1u, 4294967295u, 4294967295u), vec4<u32>(8084u, 1u, 4294967295u, 1u)))));
    var var_1 = func_4(Struct_5(i32(-2147483648), vec4<f32>(-(-326f), (global1[57567u] + -1651f) + 1784f, -(-(-1727f)), global1[0u]), select(!global0.zx, !func_1(Struct_4(Struct_3(Struct_1(33703u, global0.xz, -927f), global0.x, global0.zx), global0.yz, vec3<u32>(0u, 7402u, 3058u))), func_1(Struct_4(Struct_3(Struct_1(8793u, vec2<bool>(global0.x, global0.x), 1711f), global0.x, vec2<bool>(true, global0.x)), vec2<bool>(global0.x, global0.x), vec3<u32>(64353u, 4294967295u, 30762u))))), Struct_1(0u, !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, true)), step(1273f, (-761f - global2.x) + abs(-1748f))));
    var var_2 = Struct_2(Struct_1(~dot(select(vec3<u32>(56720u, 0u, 54749u), vec3<u32>(14783u, 1u, 36329u), vec3<bool>(true, true, var_1.x)), ~vec3<u32>(1u, 2671u, 4294967295u)), !global0.xx, (ceil(global1[0u]) + 229f) - 560f), Struct_1(40840u, func_1(Struct_4(Struct_3(Struct_1(0u, vec2<bool>(false, global0.x), global2.x), var_1.x, vec2<bool>(var_1.x, true)), func_1(Struct_4(Struct_3(Struct_1(1u, global0.yz, global1[1u]), false, global0.zx), global0.xz, vec3<u32>(11675u, 27565u, 1u))), ~vec3<u32>(66384u, 31868u, 6398u))), 1761f * global1[0u]));
    let x = u_input.a;
    s_output = StorageBuffer(max(trunc(-vec4<f32>(var_2.a.c, global1[var_2.a.a], 886f, global2.x)), max(-vec4<f32>(global1[0u], -250f, -1000f, var_2.a.c), max(vec4<f32>(global1[var_2.a.a], global2.x, var_2.a.c, -729f), vec4<f32>(global2.x, 768f, global1[var_2.a.a], global1[79208u]))) / vec4<f32>(-global1[var_2.a.a], max(global2.x, -583f), -423f - var_2.a.c, global1[max(var_2.a.a, var_2.a.a)])));
}

