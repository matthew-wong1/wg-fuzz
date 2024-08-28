// {"0:0":[108,56,75,50,206,73,113,19,70,59,143,67,253,168,160,19,124,143,111,254,220,141,220,225,127,212,205,99,61,58,176,197]}
// Seed: 18263997758818293555

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

var<private> global3: vec2<f32> = vec2<f32>(-1346f, -1879f);

var<private> global4: array<Struct_3, 22>;

fn func_3() -> u32 {
    let var_0 = u_input.d & ~(~0u);
    var var_1 = global4[reverseBits(var_0 | ~firstLeadingBit(4294967295u >> u_input.c.x))];
    global2 = Struct_3(vec4<bool>(global2.a.x, !false, all(!vec3<bool>(true, false, true)), -8826i <= (~u_input.e - ~u_input.e)), global2.b, global2.c);
    var var_2 = dot(vec3<u32>(1u, firstTrailingBit(~u_input.d), var_0 ^ abs(var_0)), firstLeadingBit(clamp(vec3<u32>(u_input.c.x, u_input.c.x, 0u) ^ select(vec3<u32>(1u, 18313u, 1847u), vec3<u32>(u_input.d, 28429u, 0u), vec3<bool>(false, false, false)), ~vec3<u32>(global1.x, 66844u, 22350u) << vec3<u32>(0u, var_0, global1.x), vec3<u32>(77945u, 416u, global1.x) - ~vec3<u32>(4294967295u, global1.x, global1.x))));
    var var_3 = u_input.e;
    return 114273u & 0u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: f32) -> u32 {
    global1 = ~vec3<u32>(min(global1.x - 1u, 96797u), 4294967295u, reverseBits(func_3())) & ~(reverseBits(min(vec3<u32>(0u, 94638u, 4294967295u), vec3<u32>(u_input.d, global1.x, 12069u))) / (vec3<u32>(0u, u_input.c.x, 0u) << ~vec3<u32>(u_input.c.x, 37200u, 0u)));
    var var_0 = -1155f;
    global4 = array<Struct_3, 22>();
    var_0 = arg_2;
    global2 = global4[global1.x];
    return 4294967295u ^ 1u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = Struct_2(select(-vec3<f32>(-524f + global2.c, global2.c, -arg_0), -sign(-vec3<f32>(arg_0, arg_0, 1287f)), vec3<bool>(~u_input.b < arg_1.b.x, all(select(global2.a, global2.a, vec4<bool>(true, arg_1.a.x, false, true))), arg_1.c.x == arg_1.c.x)), trunc(trunc(abs(vec4<f32>(-309f, global3.x, 1453f, global3.x))) - (trunc(vec4<f32>(global3.x, global3.x, 1967f, 1301f)) / (vec4<f32>(arg_0, global3.x, global3.x, global2.c) * vec4<f32>(global3.x, global2.c, 1000f, -453f)))));
    let var_1 = arg_1.a.x;
    let var_2 = -select(i32(-2147483648), arg_2, false);
    global0 = array<vec3<i32>, 29>();
    return Struct_3(global2.a, select(!select(select(global2.a.yzw, vec3<bool>(arg_1.a.x, false, global2.b.x), vec3<bool>(arg_1.a.x, true, true)), select(global2.b, vec3<bool>(true, global2.a.x, true), global2.a.wzx), -23763i < u_input.a.x), vec3<bool>(!false && all(global2.a.zw), any(select(vec4<bool>(true, global2.a.x, true, true), global2.a, global2.a)), false), !(!select(vec3<bool>(true, arg_1.a.x, false), global2.b, global2.b))), 1665f);
}

fn func_1() -> vec4<f32> {
    var var_0 = u_input.c;
    let var_1 = u_input.e - ((u_input.a.x - dot(~vec4<i32>(30209i, u_input.b, u_input.e, 0i), ~vec4<i32>(u_input.b, u_input.e, 1698i, -70226i))) >> (((global1.x - var_0.x) + clamp(u_input.c.x, global1.x, u_input.d)) * ~u_input.d));
    global3 = step(-vec2<f32>(2239f, global3.x), vec2<f32>(-(-566f * -1705f), -(global3.x + global3.x) / global3.x));
    global4 = array<Struct_3, 22>();
    let var_2 = func_4(global3.x, Struct_1(vec2<bool>(!(true | global2.b.x), global2.a.x), vec4<i32>(var_1, 86302i, -(i32(-2147483648)) - ~var_1, abs(u_input.a.x)), vec4<u32>(4294967295u + 4294967295u, var_0.x, dot(vec3<u32>(var_0.x, var_0.x, global1.x), vec3<u32>(u_input.d, 62936u, 1u)) >> func_2(false, global2.a.x, global3.x, 1000f), u_input.c.x)), i32(-2147483648));
    return vec4<f32>(-1187f, global3.x, var_2.c / (var_2.c * -396f), -352f - -floor(global2.c * 1119f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-(-(step(vec3<f32>(global3.x, global3.x, -697f), vec3<f32>(287f, 782f, global2.c)) / (vec3<f32>(global3.x, global3.x, global3.x) + vec3<f32>(global3.x, 377f, -926f)))), min(ceil((vec4<f32>(1000f, 504f, -723f, global3.x) - vec4<f32>(-1758f, global2.c, global2.c, 935f)) * min(vec4<f32>(global2.c, global3.x, global2.c, 308f), vec4<f32>(global3.x, -398f, -324f, global3.x))), abs(round(func_1()))));
    let var_1 = vec3<u32>(reverseBits(8969u), 12206u, 32454u >> min(dot(select(vec3<u32>(global1.x, u_input.c.x, u_input.c.x), vec3<u32>(global1.x, 43823u, 0u), global2.a.zzw), vec3<u32>(34126u, global1.x, global1.x)), ~(0u - global1.x)));
    global4 = array<Struct_3, 22>();
    let var_2 = Struct_2(-var_0.b.yzy, -(-var_0.b));
    let var_3 = func_4(-func_4(global3.x, Struct_1(vec2<bool>(global2.a.x, false), vec4<i32>(u_input.a.x, u_input.e, u_input.e, 1i) % vec4<i32>(u_input.b, u_input.a.x, 0i, 0i), vec4<u32>(5093u, u_input.d, u_input.d, global1.x)), (u_input.e - -2979i) ^ ~u_input.a.x).c, Struct_1(global2.b.xy, -(abs(vec4<i32>(1i, u_input.e, -11489i, u_input.a.x)) >> (vec4<u32>(36416u, global1.x, var_1.x, u_input.c.x) | vec4<u32>(4294967295u, 0u, 46470u, 4294967295u))), ~(~(~vec4<u32>(1u, u_input.c.x, var_1.x, 61183u)))), ~36938i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(-u_input.a.x), ~(-14182i), u_input.a.x) / (vec3<i32>(-46165i - u_input.a.x, u_input.b, u_input.a.x) / -(vec3<i32>(37677i, u_input.e, i32(-2147483648)) + vec3<i32>(i32(-2147483648), 7161i, 11242i))), -(-abs(u_input.a.zz | u_input.a.zy)), ~func_2(global2.a.x, !false, -1138f, global2.c - -var_0.b.x), -round(-var_0.a.x));
}

