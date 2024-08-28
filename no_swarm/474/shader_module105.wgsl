// {"0:0":[81,143,242,166,188,16,111,216]}
// Seed: 3565183856064883794

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(30074u, 2055u);

var<private> global2: array<vec2<f32>, 12>;

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    global2 = array<vec2<f32>, 12>();
    var var_0 = Struct_2(!vec3<bool>(28430u != (global0.c.a & 4294967295u), all(select(vec3<bool>(global0.d, false, global0.d), vec3<bool>(false, false, true), true)), true), global1.x, arg_0.d, arg_0.d, arg_2);
    let var_1 = -global0.b.x;
    var_0 = Struct_2(!vec3<bool>(any(arg_0.a.zy), any(select(vec3<bool>(arg_2.x, arg_0.e.x, global0.d), vec3<bool>(global0.d, arg_0.a.x, global0.d), arg_2.www)), true), arg_0.b, global0.a, arg_0.c, var_0.e);
    let var_2 = firstTrailingBit(~min((vec4<u32>(arg_0.c.a, global1.x, 0u, global1.x) % vec4<u32>(var_0.b, 45689u, arg_0.c.a, 20370u)) ^ ~vec4<u32>(arg_0.b, var_0.c.a, 0u, var_0.b), vec4<u32>(~7068u, global1.x / 1u, global1.x, countOneBits(global1.x))));
    return global0.a;
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = global0.c;
    global0 = arg_1;
    var var_1 = arg_1;
    let var_2 = round(-2862f);
    let var_3 = Struct_2(!vec3<bool>(false, !true, all(select(vec3<bool>(true, true, var_1.d), vec3<bool>(true, arg_1.d, arg_1.d), var_1.d))), 25154u, global0.c, Struct_1(~0u), select(vec4<bool>(var_1.d, !true, !var_1.d, true), select(select(select(vec4<bool>(true, true, true, arg_1.d), vec4<bool>(false, var_1.d, false, false), vec4<bool>(false, global0.d, var_1.d, var_1.d)), vec4<bool>(true, var_1.d, true, true), !vec4<bool>(true, arg_1.d, global0.d, false)), !vec4<bool>(false, global0.d, arg_1.d, var_1.d), !(false | true)), false));
    return select(step(global0.b, -select(trunc(vec4<f32>(1000f, 462f, 154f, global0.b.x)), global0.b * vec4<f32>(var_2, var_2, -1958f, arg_1.b.x), 23182u >= 26184u)), vec4<f32>(513f, global0.b.x * -var_2, -741f, step(global0.b.x, 183f)), !(!select(!vec4<bool>(false, var_3.e.x, false, global0.d), vec4<bool>(global0.d, arg_1.d, false, var_1.d), all(vec4<bool>(false, global0.d, true, var_1.d)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    global2 = array<vec2<f32>, 12>();
    let var_0 = 19567u;
    return !vec4<bool>(17211u < (4294967295u - (var_0 & 26034u)), arg_2.d, true, arg_3.d);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    let var_0 = global0.c;
    let var_1 = max(u_input.a, u_input.a ^ u_input.a) >> (~1u - arg_3);
    global2 = array<vec2<f32>, 12>();
    let var_2 = vec4<i32>(0i, firstLeadingBit(-51744i ^ var_1), -12993i, u_input.a);
    var var_3 = all(select(vec4<bool>(true, any(vec4<bool>(true, true, arg_1.a.x, true)), any(arg_1.e), false), func_4(global0.b.xy, global0.b.wyx, Struct_3(Struct_1(13964u), -vec4<f32>(arg_0, 1019f, arg_0, global0.b.x), func_2(Struct_2(vec3<bool>(arg_1.a.x, false, arg_1.a.x), global0.c.a, Struct_1(1u), arg_1.d, vec4<bool>(global0.d, global0.d, true, false)), 2147483647i, vec4<bool>(arg_1.e.x, true, false, true)), false), Struct_3(Struct_1(arg_1.b), func_3(2147483647i, Struct_3(Struct_1(arg_1.c.a), global0.b, Struct_1(137353u), false)), Struct_1(0u), any(vec2<bool>(true, arg_1.e.x)))), arg_1.a.x));
    return ~global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_1(round(1808f), Struct_2(select(vec3<bool>(global0.d, false, global0.d), vec3<bool>(global0.d, global0.d, global0.d), global0.d), 4294967295u, Struct_1(4294967295u), Struct_1(65527u), vec4<bool>(global0.d, global0.d, true, global0.d)), vec2<u32>(abs(9629u), select(75237u, global0.c.a, global0.d)), ~(~global0.c.a)));
    global1 = clamp(select(~(select(vec2<u32>(global0.a.a, 0u), vec2<u32>(global1.x, 1u), global0.d) / select(vec2<u32>(var_0.a, global1.x), vec2<u32>(global1.x, var_0.a), vec2<bool>(global0.d, true))), vec2<u32>(firstLeadingBit(6762u), var_0.a), global0.d | false), select(~vec2<u32>(11738u, 38361u) & (vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(var_0.a, 19653u)), reverseBits(vec2<u32>(0u, 4294967295u)) & vec2<u32>(global0.c.a, global0.a.a), !(!vec2<bool>(global0.d, false))) % select(~(vec2<u32>(4294967295u, 0u) << vec2<u32>(u_input.b, global1.x)), vec2<u32>(u_input.b, 1u) * (vec2<u32>(global1.x, u_input.b) >> vec2<u32>(27658u, var_0.a)), select(vec2<bool>(true, global0.d), vec2<bool>(false, global0.d), select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), vec2<bool>(true, false)))), ~(~vec2<u32>(4294967295u, 0u) / (abs(vec2<u32>(66962u, 1u)) & (vec2<u32>(global0.a.a, 75393u) | vec2<u32>(u_input.b, var_0.a)))));
    let var_1 = vec4<bool>(global0.d, any(!vec2<bool>(-12448i >= 1i, any(vec4<bool>(global0.d, global0.d, global0.d, global0.d)))), !all(func_4(select(global0.b.xw, global0.b.yy, false), global0.b.yxy + global0.b.wzw, Struct_3(global0.a, vec4<f32>(1160f, global0.b.x, global0.b.x, global0.b.x), global0.a, global0.d), Struct_3(global0.c, global0.b, Struct_1(u_input.b), global0.d)).zz), !false);
    var var_2 = Struct_1(~global1.x);
    let var_3 = Struct_1(dot(~vec3<u32>(~global1.x, ~0u, 1u & var_0.a), vec3<u32>(~max(51153u, 1u), ~var_0.a, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs((vec4<u32>(var_2.a, global1.x, 92108u, global1.x) + vec4<u32>(global1.x, global0.c.a, global1.x, 53044u)) & (vec4<u32>(4294967295u, 62462u, var_2.a, global0.a.a) + vec4<u32>(var_0.a, global1.x, 1u, var_0.a))) << reverseBits(~vec4<u32>(1u, 17654u, 1u, global0.a.a)), vec4<u32>(34914u, u_input.b, ~0u * ((0u >> u_input.b) + 31181u), (~global1.x * var_2.a) | u_input.b), -((vec3<i32>(u_input.a, u_input.a, 1i) | vec3<i32>(u_input.a, -62091i, u_input.a)) | ~vec3<i32>(2147483647i, u_input.a, u_input.a)) / ((firstLeadingBit(vec3<i32>(-25660i, -1i, u_input.a)) * firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -1569i))) | vec3<i32>(1i, u_input.a, u_input.a)), select(select(reverseBits(reverseBits(vec4<u32>(4294967295u, var_2.a, global1.x, global1.x))), vec4<u32>(var_3.a, 48437u % 50090u, 0u & 44274u, ~var_3.a), var_1.x), firstLeadingBit(select(vec4<u32>(1u, 1u, 26325u, 4294967295u), ~vec4<u32>(1882u, 13615u, global1.x, var_2.a), select(true, false, false))), !var_1), 469f * -221f);
}

