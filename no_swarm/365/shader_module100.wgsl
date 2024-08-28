// {"0:0":[145,249,249,63]}
// Seed: 8357317072483890771

struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_4, 12>;

var<private> global2: Struct_2;

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    return ~countOneBits(vec2<u32>((0u + arg_0.a.d) / ~63900u, u_input.a));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = global2.e.zz;
    var var_0 = global0.x;
    let var_1 = !vec4<bool>(true, all(vec3<bool>(-274f > global2.a.c, !false, false)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), !vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), all(vec2<bool>(false, all(vec4<bool>(true, true, false, true)))));
    let var_2 = -global0.x;
    var_0 = -((global2.d.c * global2.e.x) + -388f) * (-1575f / round(370f));
    return Struct_1(vec2<u32>(~global2.a.d >> (27852u % 0u), dot(func_3(Struct_3(Struct_1(vec2<u32>(1974u, 4294967295u), global2.a.b, arg_0, 37513u)), 2147483647i, Struct_2(global2.d, global2.b, global2.a.b, global2.b, vec4<f32>(772f, global2.d.c, 582f, 766f))), global2.b.a % vec2<u32>(u_input.a, global2.d.a.x))) * (vec2<u32>(global2.b.d, global2.d.a.x | u_input.a) | (vec2<u32>(global2.d.a.x, 4294967295u) ^ min(global2.a.a, vec2<u32>(global2.a.d, global2.a.d)))), abs(vec3<i32>(1475i, ~global2.b.b.x, global2.d.b.x)), (1111f / 1060f) / abs(-303f), firstLeadingBit(~min(global2.b.d, global2.a.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_4 {
    return global1[global2.b.d];
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_1(select(func_3(Struct_3(Struct_1(global2.b.a, global2.a.b, global0.x, 0u)), -48450i ^ global2.b.b.x, Struct_2(global2.b, Struct_1(global2.b.a, vec3<i32>(global2.d.b.x, global2.d.b.x, -28230i), 167f, 78835u), global2.b.b, Struct_1(global2.b.a, vec3<i32>(global2.b.b.x, global2.b.b.x, 39740i), 1000f, 1u), vec4<f32>(1416f, arg_0.a.x, arg_1.x, -461f))), vec2<u32>(~u_input.a, global2.b.a.x ^ global2.b.d), !vec2<bool>(arg_0.c, arg_0.c)) % reverseBits(global2.a.a), clamp(vec3<i32>(global2.c.x, 1i, 9948i), min(vec3<i32>(global2.c.x, func_2(1131f).b.x, -67660i ^ global2.d.b.x), reverseBits(vec3<i32>(global2.c.x, -11406i, 7047i) / vec3<i32>(global2.c.x, i32(-2147483648), global2.a.b.x))), -vec3<i32>(0i, global2.a.b.x, ~2147483647i)), global0.x, func_2(-step(-global0.x, global2.a.c)).d);
    let var_1 = !(!select(select(vec2<bool>(arg_0.c, true), !vec2<bool>(arg_0.c, arg_0.c), false & arg_0.c), select(vec2<bool>(true, true), !vec2<bool>(arg_0.c, true), global2.b.c <= -2350f), select(select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, true), vec2<bool>(true, true)), vec2<bool>(arg_0.c, arg_0.c), false)));
    let var_2 = ~(~(30404u & ~var_0.a.x));
    var var_3 = ~func_2(min(-(-arg_0.a.x), -(-761f))).a.x;
    return Struct_3(global2.a);
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_5 {
    var var_0 = !false;
    let var_1 = i32(-2147483648);
    var var_2 = vec4<f32>(-(func_2(arg_2.a.c).c - 381f) - 1587f, 399f, -764f, -(714f + 181f));
    var var_3 = -global2.e - -vec4<f32>(-ceil(var_2.x), -380f, 1000f, -1187f);
    let var_4 = select(vec4<bool>(arg_0, arg_0, any(!select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_0, arg_0))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(arg_0, true)), true))), vec4<bool>(arg_0, var_1 >= min(-24930i, arg_2.a.b.x), !(any(vec4<bool>(false, true, arg_0, arg_0)) && !false), !(any(vec4<bool>(arg_0, true, false, false)) | !arg_0)), false);
    return Struct_5(Struct_2(arg_2.a, func_2(ceil(global2.e.x * 1124f)), clamp(-vec3<i32>(-1i, 2147483647i, global2.c.x) << select(vec3<u32>(global2.b.a.x, 4294967295u, arg_1.a.d), vec3<u32>(arg_2.a.a.x, arg_1.a.a.x, arg_1.a.d), var_4.yww), vec3<i32>(-1i, -21969i, -(-1i)), global2.b.b), func_2(-arg_2.a.c), -sign(vec4<f32>(arg_1.a.c, global2.b.c, -146f, -1886f) * global2.e)), global2.b, -1064f, select(vec4<u32>(arg_2.a.a.x * 0u, u_input.a, u_input.a / 1u, arg_2.a.a.x) + vec4<u32>(51344u - arg_1.a.d, select(11120u, 47207u, false), dot(vec3<u32>(u_input.a, global2.a.d, global2.a.a.x), vec3<u32>(0u, 69343u, arg_2.a.d)), ~68720u), (firstTrailingBit(vec4<u32>(1u, global2.d.a.x, 1u, arg_2.a.a.x)) ^ (vec4<u32>(arg_2.a.d, 91095u, 1u, global2.b.d) + vec4<u32>(25999u, 35917u, 0u, 60778u))) % vec4<u32>(u_input.a, u_input.a, ~global2.b.a.x, 62265u), all(select(!var_4, vec4<bool>(false, true, arg_0, var_4.x), false || true))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = func_6(false, func_5(func_4(func_2(-(-323f)), ~(vec4<i32>(global2.a.b.x, 17904i, 0i, global2.a.b.x) / vec4<i32>(global2.a.b.x, global2.d.b.x, global2.c.x, global2.b.b.x))), exp2(vec2<f32>(-global0.x, -(-1814f)))), func_5(Struct_4(min(global2.e.yyz / global2.e.yxz, select(vec3<f32>(-891f, global0.x, global0.x), global2.e.zxy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), 650f, arg_0.x & all(vec2<bool>(arg_0.x, false))), -sign(global2.e.xz)));
    var var_1 = vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, true, true, arg_0.x)), any(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true)), false, false | !arg_0.x)), arg_0.x, any(!(!select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, false), arg_0))), all(select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0, !(!vec3<bool>(arg_0.x, arg_0.x, false)))));
    let var_2 = var_0.b.b;
    let var_3 = -(var_0.a.d.b.x + -var_2.x);
    let var_4 = ~(~countOneBits(4294967295u));
    return ~global2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (global2.b.a + (~(~global2.b.a) - func_1(vec3<bool>(true, true, false)))) ^ select(global2.a.a, ~abs(global2.a.a) >> global2.a.a, !(!all(vec3<bool>(true, false, true))));
    var var_1 = global1[countOneBits(~(~4294967295u))];
    let var_2 = select(-global2.a.b.x, reverseBits((global2.c.x << select(global2.b.a.x, 0u, var_1.c)) * i32(-2147483648)), (var_1.a.x * global2.a.c) < -879f);
    var var_3 = ~(~(-func_5(global1[~1u], var_1.a.zz).a.b));
    let var_4 = func_6(false, Struct_3(func_2(2108f)), func_5(func_4(global2.a, (vec4<i32>(-8525i, -18944i, i32(-2147483648), global2.a.b.x) - vec4<i32>(-1i, var_2, var_2, i32(-2147483648))) >> (vec4<u32>(4294967295u, u_input.a, 6897u, 1u) * vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a))), -sign(global2.e.xz) + -vec2<f32>(-131f, global2.b.c))).a;
    var var_5 = Struct_5(Struct_2(func_5(func_4(var_4.b, vec4<i32>(80509i, var_4.b.b.x, 9338i, var_4.b.b.x) / vec4<i32>(-14913i, 2147483647i, global2.c.x, var_4.d.b.x)), -global2.e.yy + vec2<f32>(-564f, 1898f)).a, Struct_1(global2.a.a + ~vec2<u32>(var_0.x, 1u), select(~vec3<i32>(-65266i, global2.a.b.x, 0i), global2.d.b - var_4.c, select(var_1.c, var_1.c, true)), 1367f, ~(~u_input.a)), vec3<i32>(-1i << u_input.a, var_3.x, var_2 % var_4.b.b.x) % global2.a.b, Struct_1(~vec2<u32>(1u, var_0.x), vec3<i32>(2147483647i, select(global2.d.b.x, var_2, var_1.c), -19577i), -1126f, u_input.a), vec4<f32>(var_1.b, -(756f * var_4.a.c), step(-var_4.a.c, func_5(global1[var_0.x], vec2<f32>(-130f, global2.a.c)).a.c), (409f + var_4.e.x) - (1517f - global0.x))), global2.a, 146f, ~((vec4<u32>(0u, 1u, 73865u, var_0.x) * vec4<u32>(global2.d.a.x, 1u, var_4.d.a.x, u_input.a)) * ~vec4<u32>(u_input.a, 12257u, var_0.x, var_4.b.d)) * ~((vec4<u32>(var_0.x, 0u, var_0.x, u_input.a) & vec4<u32>(var_4.d.d, global2.b.d, var_4.d.d, 8547u)) | firstTrailingBit(vec4<u32>(47777u, var_4.d.a.x, global2.b.d, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.d.b.x / clamp(-36818i, global2.d.b.x, -37985i), 2378i, vec4<u32>((4294967295u * ~4294967295u) & ((global2.d.d | var_4.a.a.x) / (0u & u_input.a)), var_0.x % u_input.a, (dot(global2.d.a, vec2<u32>(global2.b.d, 4294967295u)) % dot(var_5.d, vec4<u32>(var_5.b.a.x, global2.d.a.x, 4294967295u, 0u))) % ~max(57640u, var_5.b.a.x), 1u), abs(~(26683i ^ (2147483647i + 1i))));
}

