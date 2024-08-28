// {"0:0":[225,19,208,181,21,1,107,190,116,14,195,129,86,12,37,85]}
// Seed: 307167518226317044

struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2056f, Struct_1(vec3<f32>(454f, 472f, 552f), 1000f, vec3<bool>(true, true, false), vec4<u32>(13287u, 62530u, 1u, 56984u)), vec2<f32>(-359f, 962f), false);

var<private> global1: array<Struct_2, 23>;

var<private> global2: Struct_2 = Struct_2(-1033f, Struct_1(vec3<f32>(-412f, 152f, -115f), 1763f, vec3<bool>(false, false, true), vec4<u32>(42055u, 22512u, 4294967295u, 0u)), vec2<f32>(-702f, -640f), false);

var<private> global3: i32;

var<private> global4: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(124f, -1811f), vec2<f32>(297f, -1519f), vec2<f32>(435f, -1444f), vec2<f32>(-288f, 628f), vec2<f32>(-726f, -323f), vec2<f32>(-1046f, -259f), vec2<f32>(-1488f, 526f), vec2<f32>(984f, -1270f), vec2<f32>(-1987f, -158f), vec2<f32>(415f, 760f), vec2<f32>(-407f, 1854f), vec2<f32>(1587f, -610f), vec2<f32>(906f, 145f), vec2<f32>(106f, -2198f), vec2<f32>(-938f, 201f), vec2<f32>(-2879f, -1000f), vec2<f32>(725f, 699f), vec2<f32>(-1000f, -2164f), vec2<f32>(571f, 1144f), vec2<f32>(291f, -240f), vec2<f32>(-240f, 356f), vec2<f32>(971f, 1000f), vec2<f32>(-953f, 1559f), vec2<f32>(2593f, -720f), vec2<f32>(1558f, 155f), vec2<f32>(-438f, -193f), vec2<f32>(452f, 337f), vec2<f32>(2054f, 198f), vec2<f32>(535f, -2443f), vec2<f32>(1455f, -1344f), vec2<f32>(1571f, 1388f));

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<f32> {
    global4 = array<vec2<f32>, 31>();
    var var_0 = Struct_2(664f, arg_1, -vec2<f32>(global0.c.x, global2.b.a.x), select(any(!global2.b.c.yx), any(select(vec4<bool>(false, false, arg_1.c.x, false), !vec4<bool>(true, false, arg_1.c.x, global0.b.c.x), select(vec4<bool>(global0.d, false, true, global2.d), vec4<bool>(false, false, arg_1.c.x, global0.b.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, global0.d)))), false | global2.d));
    global2 = global1[global2.b.d.x];
    var var_1 = min(arg_2.xxz << ~var_0.b.d.xxx, vec3<i32>(-arg_2.x, abs(6296i), arg_2.x) | -(-vec3<i32>(u_input.a.x, arg_2.x, -1i))) % ((vec3<i32>(reverseBits(2147483647i), 31917i, arg_2.x) + vec3<i32>(min(u_input.a.x, -9579i), firstTrailingBit(u_input.a.x), ~u_input.a.x)) << ~vec3<u32>(arg_0.x, 40306u, 1u));
    global4 = array<vec2<f32>, 31>();
    return vec2<f32>(select(-var_0.c.x, abs(global2.a), false), select(arg_1.a.x, -1242f, global2.b.c.x));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = 2147483647i;
    global2 = Struct_2(-715f, Struct_1((vec3<f32>(global0.b.a.x, global2.c.x, global0.b.a.x) + vec3<f32>(727f, global2.a, global2.c.x)) - global0.b.a, 565f, select(vec3<bool>(true, !global2.d, any(vec3<bool>(false, global2.d, true))), !vec3<bool>(global0.d, global0.d, arg_0), true), firstLeadingBit(~countOneBits(global0.b.d))), abs(func_3(~(~vec2<u32>(5226u, global0.b.d.x)), Struct_1(vec3<f32>(534f, 248f, global0.c.x), 196f, select(vec3<bool>(global2.d, arg_0, global0.b.c.x), vec3<bool>(arg_0, arg_0, global2.d), global0.b.c), vec4<u32>(46027u, 12158u, global2.b.d.x, 1u)), firstTrailingBit(vec4<i32>(-65616i, 4405i, u_input.a.x, -4733i) >> vec4<u32>(10219u, global2.b.d.x, 13546u, 41952u)))), global0.d);
    global0 = Struct_2(abs(-global2.a), global0.b, vec2<f32>(func_3(vec2<u32>(global2.b.d.x, global2.b.d.x), global0.b, vec4<i32>(0i, 1i, u_input.a.x, 0i) % vec4<i32>(-838i, 1i, u_input.a.x, u_input.a.x)).x + exp2(2414f), sign(abs(min(global2.c.x, -507f)))), !(!arg_0));
    global4 = array<vec2<f32>, 31>();
    let var_1 = 0u;
    return Struct_2(global2.a, global2.b, -global2.b.a.yy, any(select(!(!vec4<bool>(false, false, global2.b.c.x, false)), vec4<bool>(true, true & true, !global2.b.c.x, true), !(!arg_0))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 23>();
    global0 = func_2(arg_1.b.b != -(-(arg_1.a / global0.a)));
    var var_0 = arg_1.b.a.yz;
    return Struct_2(trunc(-1088f) / 674f, func_2((global2.a <= abs(global2.c.x)) || global0.b.c.x).b, -ceil(-vec2<f32>(-427f, -581f)), global0.b.d.x == firstTrailingBit(global0.b.d.x / reverseBits(global0.b.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 31>();
    let var_0 = global2.d;
    var var_1 = func_1(u_input.a.x, global1[~55891u]);
    var_1 = func_2(global0.d);
    var var_2 = global2.b.d;
    var var_3 = var_1.b;
    let var_4 = Struct_1(global0.b.a, exp2(-1725f), select(vec3<bool>((var_3.d.x | 57981u) >= (global0.b.d.x / global0.b.d.x), global2.b.c.x, false), func_2(any(global2.b.c)).b.c, !global0.b.c), reverseBits(~global0.b.d));
    global2 = Struct_2(-(-(global0.a - (var_3.a.x * -1253f))), Struct_1(var_4.a, func_2(global0.d).a - 912f, var_3.c, ~vec4<u32>(1u, reverseBits(59329u), func_2(var_3.c.x).b.d.x, firstTrailingBit(var_1.b.d.x))), select(vec2<f32>(var_3.b, -1719f), exp2(-floor(global0.b.a.yx)), !func_2(true != true).b.c.zy), !select(var_4.c.x, func_1(32034i, func_2(false)).b.c.x, (global0.b.c.x & true) || all(var_3.c.zx)));
    var_2 = vec4<u32>(~(~var_1.b.d.x), ~clamp(var_4.d.x, 0u, 24898u) + var_3.d.x, ~var_2.x, ~clamp(select(1u, global0.b.d.x, var_1.d), 17581u, var_2.x)) - (~(~firstTrailingBit(var_4.d)) ^ select(~global2.b.d, (var_1.b.d << var_3.d) * reverseBits(vec4<u32>(var_3.d.x, var_4.d.x, global0.b.d.x, 4294967295u)), func_1(u_input.a.x, Struct_2(var_3.a.x, var_1.b, var_1.c, global0.d)).d));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, u_input.a, global0.a, global2.b.d.wz);
}

