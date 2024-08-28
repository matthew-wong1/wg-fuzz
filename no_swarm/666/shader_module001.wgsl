// {"0:0":[240,47,89,31,41,159,239,97,83,190,250,4,173,70,139,62,105,82,85,25,73,145,37,185,167,182,228,79,139,12,232,200,5,28,120,188,137,76,21,145,31,209,4,82,124,112,42,81]}
// Seed: 4672441749147427267

struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = !(!(u_input.a.x <= (arg_2.x ^ -(-1i))));
    global0 = var_0;
    let var_1 = arg_0;
    global0 = var_0;
    global0 = var_0;
    return arg_0.d;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, firstLeadingBit((arg_2.a.x % u_input.a.x) | (var_0 >> u_input.b.x)), -47165i), arg_1.x);
    var var_2 = exp2(exp2(vec3<f32>(1623f, 186f, var_1.b) * vec3<f32>(arg_2.b, -201f, arg_1.x)) * -select(vec3<f32>(-949f, arg_1.x, arg_1.x), vec3<f32>(arg_2.b, arg_2.b, var_1.b), arg_3)) + (vec3<f32>(arg_1.x, arg_2.b, -(-1032f)) - min(round(vec3<f32>(-2037f, var_1.b, 1004f)) + (vec3<f32>(-666f, var_1.b, 848f) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), -(vec3<f32>(var_1.b, arg_2.b, arg_1.x) / vec3<f32>(arg_2.b, 805f, 724f))));
    var var_3 = vec3<u32>(arg_0, ~arg_0, u_input.b.x);
    let var_4 = round(vec4<f32>(arg_1.x / -(-(-190f)), min(-(arg_2.b - var_1.b), -744f / 366f), select(max(753f, -594f), min(min(-170f, arg_1.x), var_1.b), arg_3), step(select(367f, 331f, false) - -735f, -arg_2.b)));
    return -arg_2.b * -(-1101f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = arg_2.x;
    var var_1 = func_2(Struct_2(func_2(Struct_2(arg_0, arg_1.a.yzx / u_input.a, Struct_1(arg_0.a, arg_0.b), arg_0), ~(4294967295u | u_input.b.x), select(reverseBits(arg_0.a.xw), vec2<i32>(1i, 20583i), var_0), -(-720f)), vec3<i32>(5209i + (-22949i * -23750i), select(func_2(Struct_2(Struct_1(arg_0.a, -411f), vec3<i32>(-1i, 36798i, arg_0.a.x), Struct_1(arg_0.a, arg_1.b), Struct_1(arg_0.a, 1000f)), u_input.b.x, vec2<i32>(arg_0.a.x, u_input.a.x), arg_1.b).a.x, -7554i / i32(-2147483648), !true), dot(arg_1.a.wzy, vec3<i32>(2755i, arg_1.a.x, arg_0.a.x))), Struct_1(~(-arg_0.a), step(798f, arg_1.b / arg_1.b)), Struct_1(max(arg_1.a, vec4<i32>(-29963i, u_input.a.x, -11150i, arg_0.a.x)), 1540f)), (1u % 4294967295u) % firstLeadingBit(~dot(vec4<u32>(12856u, 4294967295u, 7757u, 1u), vec4<u32>(50041u, 2017u, 1u, 27670u))), firstLeadingBit(vec2<i32>(~70554i / arg_0.a.x, 2147483647i & -1i)), arg_0.b);
    var_1 = func_2(Struct_2(Struct_1(clamp(vec4<i32>(u_input.c, -1903i, u_input.a.x, arg_0.a.x), var_1.a, vec4<i32>(u_input.c, var_1.a.x, -80608i, -31140i)), arg_0.b), reverseBits(vec3<i32>(countOneBits(arg_1.a.x), -arg_1.a.x, -arg_0.a.x)), Struct_1(-(~arg_0.a), floor(arg_0.b - var_1.b)), func_2(Struct_2(Struct_1(arg_0.a, var_1.b), abs(vec3<i32>(var_1.a.x, arg_0.a.x, 5782i)), func_2(Struct_2(arg_0, var_1.a.wzz, arg_0, Struct_1(arg_0.a, -1502f)), arg_3.x, vec2<i32>(arg_1.a.x, u_input.a.x), arg_1.b), arg_1), dot(~u_input.b.zww, arg_3), vec2<i32>(dot(var_1.a, arg_0.a), ~(i32(-2147483648))), arg_1.b)), max(~abs(10912u), 2387u), var_1.a.ww, -1088f);
    let var_2 = select(trunc(trunc(vec2<f32>(631f, arg_1.b)) / vec2<f32>(-1113f, 1192f)) * -(-vec2<f32>(var_1.b, arg_0.b) / vec2<f32>(1034f, var_1.b)), vec2<f32>(select(func_2(Struct_2(arg_0, u_input.a, arg_1, Struct_1(vec4<i32>(6875i, 0i, -59154i, 0i), var_1.b)), u_input.b.x + u_input.b.x, vec2<i32>(-1i, var_1.a.x), var_1.b).b, -arg_0.b - (var_1.b + var_1.b), any(select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, true), var_0))), -arg_1.b), select(arg_2.yx, !select(!vec2<bool>(arg_2.x, var_0), select(arg_2.xz, vec2<bool>(false, true), vec2<bool>(var_0, true)), all(arg_2.zz)), select(!(!vec2<bool>(false, false)), !select(arg_2.yw, arg_2.yx, true), var_0)));
    var var_3 = select(~u_input.b.zzz, u_input.b.xxw, 121f < (-arg_0.b * trunc(-1746f))) << ~(vec3<u32>(101472u, ~arg_3.x, arg_3.x) / reverseBits(vec3<u32>(72083u, 11869u, 0u)));
    return vec2<u32>(~dot(vec3<u32>(var_3.x, 0u, var_3.x), ~u_input.b.wyx) % (firstTrailingBit(0u | 1u) << var_3.x), dot(vec2<u32>(firstTrailingBit(arg_3.x * 4294967295u), dot(vec3<u32>(u_input.b.x, arg_3.x, 0u), u_input.b.xzz)), vec2<u32>(arg_3.x, firstLeadingBit(65826u))));
}

fn func_1() -> i32 {
    global0 = !(!true);
    var var_0 = !all(select(vec2<bool>(any(vec4<bool>(true, true, false, true)), any(vec2<bool>(false, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(false, true)), !vec2<bool>(false, false)));
    var_0 = false;
    var var_1 = func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.c, -1354i, clamp(2147483647i, u_input.c, u_input.a.x)), -1354f / func_3(~u_input.b.x, sign(vec2<f32>(-1000f, 633f)), func_2(Struct_2(Struct_1(vec4<i32>(1i, u_input.a.x, -20446i, u_input.a.x), -1107f), vec3<i32>(u_input.c, 2147483647i, -26880i), Struct_1(vec4<i32>(24560i, i32(-2147483648), u_input.c, 24717i), 537f), Struct_1(vec4<i32>(u_input.a.x, i32(-2147483648), -2777i, 2147483647i), 1084f)), 75597u, vec2<i32>(u_input.a.x, 0i), 172f), !false)), func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<i32>(u_input.c, 0i, u_input.c, u_input.a.x), 297f), u_input.a, Struct_1(vec4<i32>(1i, 0i, 77456i, u_input.c), -175f), Struct_1(vec4<i32>(-1i, u_input.a.x, -12437i, u_input.a.x), -2079f)), ~4294967295u, u_input.a.yy, -384f), min(~u_input.a, u_input.a), Struct_1(firstLeadingBit(vec4<i32>(1i, 10442i, u_input.a.x, -44751i)), 1000f), func_2(Struct_2(Struct_1(vec4<i32>(u_input.a.x, -36234i, u_input.c, u_input.c), -449f), u_input.a, Struct_1(vec4<i32>(u_input.c, 0i, u_input.a.x, 1i), 166f), Struct_1(vec4<i32>(1373i, -41669i, u_input.a.x, u_input.a.x), 1074f)), 0u % u_input.b.x, u_input.a.xy, -(-173f))), u_input.b.x, vec2<i32>(u_input.a.x, ~u_input.a.x) % u_input.a.yz, -2820f), select(vec4<bool>(true, select(true == true, any(vec4<bool>(false, true, false, true)), 126f > -1220f), false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), vec4<bool>(false || (840f <= 1333f), true, false, !all(vec3<bool>(false, false, true))), !(!(!vec4<bool>(false, false, false, false)))), abs(~(~vec3<u32>(4294967295u, u_input.b.x, 1u))));
    var_1 = ~((abs(u_input.b.wz / vec2<u32>(6163u, var_1.x)) - vec2<u32>(95237u, var_1.x)) | max(~vec2<u32>(0u, u_input.b.x), min(select(vec2<u32>(2006u, var_1.x), u_input.b.zw, vec2<bool>(false, true)), u_input.b.xy)));
    return dot(max(abs((vec4<i32>(25966i, -39304i, -21825i, 0i) + vec4<i32>(35557i, u_input.a.x, -20801i, u_input.a.x)) + -vec4<i32>(-1i, 0i, u_input.c, -1i)), ~(vec4<i32>(u_input.c, -32241i, u_input.a.x, u_input.c) / vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.c)) << u_input.b), (vec4<i32>(u_input.c, dot(u_input.a, u_input.a), ~(-53034i), abs(1i)) * (select(vec4<i32>(2147483647i, u_input.c, u_input.a.x, 0i), vec4<i32>(-59240i, u_input.a.x, u_input.a.x, 0i), false) & (vec4<i32>(u_input.c, 2147483647i, -28445i, 2147483647i) & vec4<i32>(-1i, u_input.a.x, -1706i, -1i)))) - ((firstTrailingBit(vec4<i32>(0i, 20213i, u_input.a.x, u_input.c)) * vec4<i32>(i32(-2147483648), -41894i, -1i, i32(-2147483648))) + vec4<i32>(max(2147483647i, 20007i), -27672i ^ -56264i, 120499i >> 8795u, -11616i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = firstTrailingBit(vec4<i32>(~func_1(), countOneBits(u_input.c), -dot(-vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c), ~vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i)), u_input.c));
    var_0 = (select(vec4<i32>(u_input.a.x, 0i | i32(-2147483648), var_0.x, u_input.a.x), (vec4<i32>(9087i, var_0.x, 1i, -1i) & vec4<i32>(-16515i, var_0.x, 14885i, var_0.x)) & func_2(Struct_2(Struct_1(vec4<i32>(67362i, u_input.a.x, -1629i, 40166i), 1560f), u_input.a, Struct_1(vec4<i32>(var_0.x, u_input.a.x, 2147483647i, 27734i), 643f), Struct_1(vec4<i32>(36538i, -25772i, u_input.c, u_input.c), 503f)), u_input.b.x, vec2<i32>(var_0.x, var_0.x), -696f).a, select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))) ^ (~abs(vec4<i32>(81972i, i32(-2147483648), 76821i, var_0.x)) ^ -select(vec4<i32>(1859i, u_input.c, 0i, -4838i), vec4<i32>(2147483647i, var_0.x, u_input.c, -40364i), false))) - (vec4<i32>(select(func_1(), var_0.x, false), var_0.x, ~var_0.x, u_input.c) / vec4<i32>(i32(-2147483648), -func_2(Struct_2(Struct_1(vec4<i32>(var_0.x, -28405i, var_0.x, var_0.x), -947f), vec3<i32>(u_input.a.x, 0i, -112i), Struct_1(vec4<i32>(-15873i, u_input.a.x, 2147483647i, -20822i), -1705f), Struct_1(vec4<i32>(0i, 0i, -1i, 16635i), 157f)), u_input.b.x, u_input.a.yx, 803f).a.x, firstLeadingBit(var_0.x), func_1()));
    global0 = false;
    var_0 = vec4<i32>(-(i32(-2147483648) >> ~35114u), (0i << abs(u_input.b.x >> u_input.b.x)) | var_0.x, 2147483647i, reverseBits(min(abs(var_0.x ^ 1i), -(~var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec4<u32>(1732u, u_input.b.x, 28988u, u_input.b.x), u_input.b, vec4<bool>(false, true, false, false)) ^ (u_input.b / vec4<u32>(4294967295u, 1u, u_input.b.x, 4294967295u)))), -2001f, -(-vec3<f32>(-1902f - -1264f, -1000f, 253f)), var_0.yy, u_input.a.x & func_1());
}

