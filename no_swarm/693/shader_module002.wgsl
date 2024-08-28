// {"0:0":[189,234,145,70,192,49,106,148,33,20,172,194,6,54,199,60,150,22,61,163,19,182,230,130]}
// Seed: 14555365399649717941

struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_5 = Struct_5(1u, false, vec4<f32>(1294f, 556f, -1000f, 300f));

var<private> global2: bool = false;

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_3(true, global0.zy, Struct_1(clamp(countOneBits(global0.zz), vec2<u32>(global0.x, 41283u), (global0.zy << vec2<u32>(global0.x, 1u)) | select(global0.yw, vec2<u32>(arg_0, 1u), vec2<bool>(false, global1.b))), ~(i32(-2147483648)), -global1.c.x, vec3<bool>(!(!global1.b), !true, false)), ~reverseBits(select(vec4<u32>(global1.a, arg_0, 1u, global0.x), vec4<u32>(global1.a, u_input.c, u_input.c, 0u), global1.b)) - (abs(vec4<u32>(arg_0, 4294967295u, global1.a, global1.a)) ^ ~vec4<u32>(96890u, arg_0, 42461u, 4294967295u)), reverseBits(firstLeadingBit(-u_input.a)) - (vec2<i32>(-u_input.a.x, 58953i % -19467i) - ~vec2<i32>(u_input.d, u_input.b)));
    global1 = Struct_5(select((16373u / global1.a) - (arg_0 >> 0u), global0.x * var_0.c.a.x, var_0.a) * ~global0.x, var_0.a, vec4<f32>(global1.c.x, global1.c.x, (1000f - floor(-1359f)) + exp2(var_0.c.c), -(-abs(global1.c.x))));
    let var_1 = var_0.c;
    var var_2 = Struct_1(~(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13346u, 80177u)) * max(countOneBits(global0.zz), var_0.b)), -1i, -(-(var_1.c * (1237f * 1208f))), vec3<bool>(!var_0.c.d.x, !all(vec2<bool>(global1.b, false)), var_0.a));
    global0 = vec4<u32>(global0.x, max(~var_2.a.x, dot(~var_0.d, ~vec4<u32>(var_1.a.x, 4294967295u, 12543u, u_input.c)) + dot(~vec2<u32>(0u, 25280u), var_2.a)), global1.a, arg_0);
    return 36400u + firstLeadingBit(arg_0);
}

fn func_2() -> Struct_1 {
    global0 = clamp(max(~(~(vec4<u32>(7016u, global0.x, 0u, global0.x) << vec4<u32>(4294967295u, global0.x, 0u, 4294967295u))), ~vec4<u32>(func_3(0u), ~global0.x, 0u << global1.a, 6290u - global1.a)), clamp((min(vec4<u32>(u_input.c, 4294967295u, 58722u, 27011u), vec4<u32>(global0.x, global0.x, 1u, 13684u)) * max(vec4<u32>(0u, 1u, u_input.c, 0u), vec4<u32>(1963u, 85281u, global1.a, 42301u))) | vec4<u32>(4294967295u, global1.a & global0.x, select(4294967295u, global1.a, false), u_input.c), min(vec4<u32>(67134u, u_input.c, 100098u << u_input.c, 15688u * 0u), ~(~vec4<u32>(0u, 1u, 2693u, global0.x))), clamp(vec4<u32>(4294967295u, global1.a, 15599u, u_input.c), ~vec4<u32>(43669u, u_input.c, 4775u, 32059u), ~vec4<u32>(4294967295u, u_input.c, 10934u, 1u)) | vec4<u32>(4294967295u % global1.a, global1.a * u_input.c, ~global0.x, global0.x)), ~select(vec4<u32>(global1.a, global0.x * 1u, 1u, 7878u % 1u), vec4<u32>(u_input.c, 1058u, u_input.c | 1u, global1.a * 27042u), ~u_input.b <= ~u_input.d));
    global2 = false;
    let var_0 = global1.c.ww;
    let var_1 = global1.b;
    global0 = ~(~(abs(vec4<u32>(62989u, u_input.c, global0.x, 1u)) % vec4<u32>(u_input.c, global0.x, u_input.c, global1.a))) ^ firstLeadingBit((vec4<u32>(global0.x, global0.x, 1u, u_input.c) / (vec4<u32>(38799u, global1.a, 7153u, global0.x) * vec4<u32>(global1.a, global1.a, global1.a, 25644u))) >> vec4<u32>(firstTrailingBit(u_input.c), abs(54941u), ~94256u, global1.a << global1.a));
    return Struct_1(~select(~vec2<u32>(u_input.c, 10576u), select(vec2<u32>(u_input.c, 0u), global0.yx, global1.b), false) % vec2<u32>(1u, ~(u_input.c - 0u)), ~min(~u_input.d * 2147483647i, u_input.b), global1.c.x / global1.c.x, !(!vec3<bool>(global1.b, var_0.x < var_0.x, var_0.x >= global1.c.x)));
}

fn func_1() -> Struct_5 {
    let var_0 = global1.b;
    global2 = !(!all(vec4<bool>(!global1.b, true, u_input.a.x > 2147483647i, !global1.b)));
    var var_1 = Struct_5(dot(vec2<u32>(~global1.a, 92978u) + (abs(vec2<u32>(15696u, 4265u)) + ~global0.xy), (abs(global0.wy) ^ abs(vec2<u32>(global1.a, 55806u))) - (min(vec2<u32>(u_input.c, u_input.c), global0.yz) / ~vec2<u32>(1u, 96872u))), !(!any(vec2<bool>(global1.b, false))), global1.c);
    var var_2 = var_1.b;
    let var_3 = func_2();
    return Struct_5(min(global1.a, 1u), !var_3.d.x, vec4<f32>(236f, -(-140f) * (948f / var_1.c.x), var_1.c.x, ceil(sign(-2064f))) + vec4<f32>(ceil(global1.c.x), var_1.c.x / var_3.c, -(-566f), (var_3.c / var_3.c) / (1108f / var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_2(func_1().c.x, func_2(), 873u / ~(~(~u_input.c)), sign(exp2(floor(global1.c.x - global1.c.x))));
    let var_1 = func_1();
    global0 = vec4<u32>(4294967295u, ~abs(1u), ~(~(~dot(vec4<u32>(global0.x, global1.a, var_1.a, var_1.a), vec4<u32>(global1.a, 21090u, var_1.a, var_0.b.a.x)))), ~(~var_1.a));
    var_0 = Struct_2(1462f, func_2(), abs(global0.x), -(-var_0.b.c));
    var var_2 = func_2().d.yx;
    var var_3 = firstLeadingBit(vec2<i32>(max(2147483647i, -1i), max(~u_input.a.x, i32(-2147483648))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(1u), 18764u % 87055u) % vec2<u32>(global0.x ^ 4294967295u, 45020u), var_0.b.a.x, ~vec3<i32>(firstTrailingBit(u_input.a.x) ^ -1i, firstTrailingBit(2147483647i * 69596i), dot(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1077i, u_input.a.x))), global0.yzx);
}

