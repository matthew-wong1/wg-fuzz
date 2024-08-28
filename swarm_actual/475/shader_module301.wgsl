// {"0:0":[239,125,174,156,22,165,20,96,195,137,124,6,72,248,206,186,148,173,11,49,41,63,6,232,100,74,223,254,3,146,150,186,254,105,111,97,241,88,113,136,126,49,42,211,197,240,39,245,80,49,120,254,15,129,122,208,76,181,10,248,253,4,88,24]}
// Seed: 6340311178924253874

struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(440f, 1170f), vec3<u32>(43676u, 20839u, 40622u), vec3<i32>(-7289i, -20076i, 2147483647i), -1i, vec2<i32>(1i, 28833i));

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = Struct_1(-(-(round(global1.a) + arg_1.e.a)), ~arg_1.e.b << ~(~(arg_1.c.zzw << vec3<u32>(17937u, global1.b.x, u_input.c))), vec3<i32>(~arg_2.a, ~dot(clamp(vec4<i32>(global1.d, global1.d, 2147483647i, -4885i), vec4<i32>(global1.e.x, arg_2.a, i32(-2147483648), arg_2.a), vec4<i32>(arg_1.e.c.x, 58876i, u_input.a.x, i32(-2147483648))), vec4<i32>(0i, u_input.a.x, arg_2.a, global1.d)), arg_2.a), global1.c.x, vec2<i32>(-1i, 37694i));
    global1 = arg_1.e;
    global0 = select(!vec3<bool>(any(vec3<bool>(arg_3, arg_3, true)), (arg_1.a / -353f) <= -127f, false), !(!vec3<bool>(arg_2.c <= 2371f, global0.x, select(true, global0.x, global0.x))), vec3<bool>(any(arg_1.b), all(select(arg_1.b.xz, select(global0.yx, vec2<bool>(true, arg_1.b.x), global0.yz), 16442i != i32(-2147483648))), global0.x));
    var var_1 = global1.b.xz;
    return vec3<bool>(arg_1.b.x, true, arg_1.b.x);
}

fn func_2() -> vec3<bool> {
    global0 = !select(select(select(func_3(global1.a.x, Struct_3(global1.a.x, vec3<bool>(false, global0.x, global0.x), vec4<u32>(global1.b.x, u_input.d.x, 24858u, 1u), i32(-2147483648), Struct_1(vec2<f32>(-1092f, -1543f), u_input.d.wzw, global1.c, -752i, u_input.a)), Struct_2(u_input.a.x, 1u, global1.a.x), true), func_3(global1.a.x, Struct_3(global1.a.x, vec3<bool>(global0.x, global0.x, global0.x), u_input.d, -46153i, Struct_1(vec2<f32>(-348f, -852f), global1.b, vec3<i32>(i32(-2147483648), global1.e.x, 1i), 1i, u_input.a)), Struct_2(53923i, global1.b.x, global1.a.x), true), func_3(global1.a.x, Struct_3(global1.a.x, vec3<bool>(global0.x, true, global0.x), vec4<u32>(0u, u_input.e.x, u_input.d.x, 57064u), i32(-2147483648), Struct_1(global1.a, u_input.d.wzz, vec3<i32>(1i, global1.d, 0i), u_input.a.x, u_input.a)), Struct_2(global1.c.x, 15856u, -370f), false)), vec3<bool>(-327f >= global1.a.x, global0.x, i32(-2147483648) >= 15035i), true), func_3(global1.a.x, Struct_3(1161f + 1350f, !vec3<bool>(global0.x, false, true), abs(vec4<u32>(u_input.e.x, 41083u, 19266u, 16953u)), firstLeadingBit(-11499i), Struct_1(global1.a, global1.b, global1.c, 56986i, vec2<i32>(global1.d, global1.e.x))), Struct_2(-13370i, 30748u & global1.b.x, -1504f), global0.x), max(countOneBits(-25499i), 2147483647i / -39444i) == 12094i);
    var var_0 = firstLeadingBit(u_input.e);
    let var_1 = Struct_3(ceil(739f + -617f) + trunc(-min(-2905f, 127f)), vec3<bool>(global1.b.x == (~var_0.x & (4294967295u >> global1.b.x)), true, !(!(-1057f <= 709f))), vec4<u32>(reverseBits(4294967295u), u_input.b.x, var_0.x, ~15630u), min(global1.e.x, 0i), Struct_1(-global1.a, ~(~(vec3<u32>(global1.b.x, var_0.x, global1.b.x) * u_input.b)), vec3<i32>(-1i, 2147483647i, -34833i | ~229i), u_input.a.x, abs(u_input.a)));
    var var_2 = -(~select(clamp(-1i, clamp(-36228i, 1i, global1.c.x), -u_input.a.x), select(~(-15561i), ~1i, true), global0.x));
    var var_3 = Struct_3(global1.a.x, !(!select(!var_1.b, !var_1.b, 1u != var_0.x)), max(firstLeadingBit(countOneBits(u_input.d)), vec4<u32>(var_0.x, 56221u, firstTrailingBit(54150u), 4032u)), dot(abs(var_1.e.e | max(vec2<i32>(u_input.a.x, -9011i), u_input.a)), vec2<i32>(-abs(var_1.e.c.x), (0i - i32(-2147483648)) - -(-70165i))), var_1.e);
    return vec3<bool>(var_1.b.x, !(3531u <= (global1.b.x << ~var_3.c.x)), false);
}

fn func_1() -> Struct_1 {
    global0 = vec3<bool>(global0.x, global0.x, -18761i == i32(-2147483648));
    global0 = select(select(select(func_2(), select(vec3<bool>(false, global0.x, true), func_2(), select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, false), true)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, global0.x), !vec3<bool>(false, false, true))), !vec3<bool>(all(vec2<bool>(false, global0.x)), -922f < 2152f, 53215u == u_input.e.x), select(func_2(), !(!vec3<bool>(true, global0.x, true)), all(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, false, false, false), global0.x)))), !func_2(), func_2());
    global1 = Struct_1(select(vec2<f32>(abs(global1.a.x), -global1.a.x), vec2<f32>(global1.a.x, select(global1.a.x, 756f / 1188f, false)), !func_2().xz), ~countOneBits(vec3<u32>(~4294967295u, ~63623u, u_input.b.x)), ~vec3<i32>(0i, ~(i32(-2147483648)), 12672i), -19913i % 12704i, vec2<i32>((global1.d | (u_input.a.x ^ 21536i)) & -20604i, ~dot(vec3<i32>(1i, 8617i, -1i), vec3<i32>(u_input.a.x, global1.d, u_input.a.x))));
    let var_0 = 0u;
    let var_1 = countOneBits(global1.c);
    return Struct_1(trunc((vec2<f32>(global1.a.x, -1199f) - (vec2<f32>(global1.a.x, global1.a.x) - vec2<f32>(global1.a.x, -482f))) - global1.a), ~u_input.d.wzy >> vec3<u32>(global1.b.x, 4294967295u, reverseBits(1u) + ~u_input.c), -abs(global1.c), 35226i, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(all(vec3<bool>(!global0.x, global0.x, !global0.x)), !(global1.a.x <= -(-2103f)), true);
    global0 = vec3<bool>(any(vec2<bool>(!global0.x, global0.x)), global0.x | !false, global0.x);
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(0i) - ~(~2147483647i)), vec3<f32>(global1.a.x, -(-380f) + -(var_0.a.x * global1.a.x), var_0.a.x));
}

