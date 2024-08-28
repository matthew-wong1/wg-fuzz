// {"0:0":[161,119,99,175,206,0,150,189,177,190,100,28,195,193,101,227,136,23,140,106,127,223,141,106,171,84,5,86,182,72,53,44]}
// Seed: 1963253877762587094

struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64217u;

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_4) -> bool {
    let var_0 = min(0u, 12211u);
    let var_1 = -2183i;
    let var_2 = Struct_5(arg_3, (~2113i ^ 0i) & -64792i, 426f, vec3<i32>(1i, -var_1 * -4471i, u_input.c ^ u_input.a), min(arg_2 + ~firstTrailingBit(arg_2), ~(~(~vec2<u32>(var_0, arg_2.x)))));
    global0 = ~arg_2.x << (arg_2.x | var_0);
    let var_3 = Struct_3(Struct_1(vec3<bool>(arg_0, false, false), vec4<i32>(u_input.a, dot(arg_3.b.a.b.zw, ~vec2<i32>(arg_1.c, arg_3.a.a.b.x)), ~dot(vec2<i32>(u_input.c, var_1), var_2.d.yz), var_2.a.b.a.b.x), select(arg_0, arg_1.a.c, !any(vec4<bool>(arg_1.a.c, false, arg_3.a.a.c, var_2.a.b.a.c)))), Struct_1(select(!(!arg_3.a.a.a), !vec3<bool>(false, false, arg_0), 1221f != select(var_2.a.b.b, arg_1.b, arg_1.a.c)), arg_1.a.b, all(vec2<bool>(!false, var_2.a.a.a.c))));
    return !true;
}

fn func_2() -> u32 {
    global0 = 0u;
    global0 = dot(~u_input.b.yy, ~vec2<u32>(clamp(61731u, 0u, 0u), u_input.b.x >> 54632u) & countOneBits((u_input.b.xx % u_input.b.yz) & ~vec2<u32>(u_input.b.x, u_input.b.x)));
    var var_0 = Struct_2(Struct_1(vec3<bool>(all(vec3<bool>(false, false, true)) && (u_input.c != u_input.c), func_3(!false, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<i32>(-26899i, 1i, 2147483647i, -1353i), false), 1161f, u_input.c), vec2<u32>(59133u, 61178u), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.c, 1i, u_input.a, -22729i), true), 392f, u_input.a), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(u_input.a, u_input.c, -31825i, u_input.c), false), 2331f, u_input.c), -989f)), false != !false), vec4<i32>(u_input.c, u_input.a + -2838i, dot(firstLeadingBit(vec2<i32>(u_input.c, 61161i)), vec2<i32>(-14987i, u_input.c) ^ vec2<i32>(u_input.c, 18412i)), ~(-14319i)), true), -1151f, -(i32(-2147483648)));
    let var_1 = (var_0.a.b.zx % min(var_0.a.b.yx, var_0.a.b.xz)) + vec2<i32>(2147483647i, ~(abs(-40993i) >> u_input.b.x));
    global0 = ~(4294967295u << u_input.b.x);
    return u_input.b.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> vec4<bool> {
    let var_0 = ~((35098u >> (arg_1 << arg_1)) | select(countOneBits(u_input.b.x), arg_1, any(vec2<bool>(false, false)))) | (func_2() << (arg_1 ^ (select(40982u, arg_1, true) << 1u)));
    var var_1 = u_input.b;
    var_1 = u_input.b >> u_input.b;
    var var_2 = Struct_3(Struct_1(select(vec3<bool>(true, false, true), select(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, arg_2)), !vec3<bool>(arg_2, arg_2, false), !vec3<bool>(arg_2, false, arg_2)), vec3<bool>(false, !false, !arg_2)), max(-vec4<i32>(u_input.c, u_input.a, u_input.c, arg_0.x) + (arg_0 | arg_0), arg_0), arg_2), Struct_1(vec3<bool>(true, (2173f / 481f) == (384f + 143f), false), firstTrailingBit(arg_0), arg_2));
    var_2 = Struct_3(Struct_1(var_2.b.a, -(vec4<i32>(u_input.a, var_2.b.b.x, 0i, var_2.a.b.x) * select(vec4<i32>(var_2.b.b.x, 1i, 1i, 19479i), vec4<i32>(u_input.c, 2147483647i, var_2.b.b.x, -1083i), vec4<bool>(var_2.b.c, arg_2, var_2.a.c, true))), arg_2), Struct_1(!select(var_2.a.a, !vec3<bool>(true, var_2.a.a.x, arg_2), var_2.a.a), vec4<i32>(-(-1i), arg_0.x, -var_2.a.b.x, countOneBits(u_input.c)), true));
    return vec4<bool>(true, !(!(arg_2 | !false)), var_2.a.c, any(vec2<bool>(!var_2.a.c, arg_2)) & !any(var_2.a.a.zx));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = select(vec4<bool>(any(func_1(-arg_3.b.a.b, u_input.b.x, false || arg_3.a.a.a.x)), arg_1.a.a.x, true, any(arg_3.b.a.a)), !select(select(vec4<bool>(false, true, arg_3.b.a.a.x, true), !vec4<bool>(true, true, arg_3.a.a.a.x, arg_1.a.a.x), select(vec4<bool>(arg_1.a.c, false, true, true), vec4<bool>(arg_1.a.c, false, false, arg_3.b.a.c), vec4<bool>(false, arg_3.b.a.c, arg_3.b.a.c, arg_1.a.a.x))), vec4<bool>(arg_1.a.a.x, func_1(vec4<i32>(arg_1.a.b.x, i32(-2147483648), -2997i, -46270i), 4294967295u, true).x, arg_1.a.a.x, any(arg_1.a.a.xy)), select(!vec4<bool>(arg_1.a.a.x, arg_1.a.c, false, arg_3.a.a.c), func_1(arg_3.a.a.b, 51264u, true), func_1(vec4<i32>(i32(-2147483648), 0i, arg_2, u_input.c), 0u, false))), vec4<bool>(true, arg_1.a.c, !all(func_1(vec4<i32>(2147483647i, u_input.c, 40611i, -37150i), 1u, true).wxz), !func_3(true & arg_3.a.a.c, arg_3.b, ~vec2<u32>(0u, u_input.b.x), arg_3)));
    global0 = firstLeadingBit(u_input.b.x);
    let var_1 = Struct_5(Struct_4(arg_3.b, Struct_2(Struct_1(select(arg_3.b.a.a, arg_1.a.a, vec3<bool>(true, var_0.x, var_0.x)), arg_3.a.a.b & arg_1.a.b, var_0.x), -arg_1.b + exp2(arg_0), firstLeadingBit(~1i)), arg_3.b.b * (max(arg_0, 1429f) * (183f * -2290f))), select(arg_2, 15318i, arg_3.b.a.c), 1068f, vec3<i32>(reverseBits(firstLeadingBit(-134i)), 2147483647i, ~arg_3.b.a.b.x), ~(abs(u_input.b.zz) & ~vec2<u32>(u_input.b.x, u_input.b.x)) & min(abs(vec2<u32>(u_input.b.x, u_input.b.x)), ~(~vec2<u32>(22944u, u_input.b.x))));
    global0 = var_1.e.x;
    var var_2 = arg_3;
    return StorageBuffer(vec3<u32>(86141u, ~var_1.e.x, (0u << (u_input.b.x ^ u_input.b.x)) | firstTrailingBit(1u)), 737f, dot(reverseBits(var_2.b.a.b), vec4<i32>(arg_1.c, arg_3.a.c, -10133i, 81467i) * arg_1.a.b) - dot(countOneBits(vec2<i32>(i32(-2147483648), var_1.d.x)) ^ (var_2.a.a.b.xy & vec2<i32>(arg_2, -14032i)), vec2<i32>(arg_3.b.c, -1i) / firstTrailingBit(arg_3.b.a.b.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x << ~4294967295u;
    global0 = u_input.b.x;
    let var_0 = ~(~(~(~countOneBits(vec2<i32>(2147483647i, u_input.c)))));
    let var_1 = var_0;
    global0 = ~u_input.b.x >> u_input.b.x;
    let x = u_input.a;
    s_output = func_4(sign(floor(-1077f) - -(-1000f)), Struct_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, true))), min(vec4<i32>(u_input.a, 2147483647i, -55429i, var_1.x) - vec4<i32>(-25949i, var_1.x, -13078i, -1997i), -vec4<i32>(var_1.x, var_1.x, var_0.x, var_0.x)), false), -478f, var_1.x), select(dot(vec2<i32>(-var_1.x, 0i * 16595i), -vec2<i32>(var_0.x, 0i)), var_0.x, all(!func_1(vec4<i32>(-59127i, u_input.c, var_0.x, 0i), 4294967295u, true))), Struct_4(Struct_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec4<i32>(var_0.x, var_0.x, var_0.x, 15843i) / vec4<i32>(0i, 2310i, u_input.c, -29229i), any(vec2<bool>(false, true))), -456f, -(-18583i)), Struct_2(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), reverseBits(vec4<i32>(-38880i, -16838i, -1i, 1i)), false), 757f, u_input.c | (1i | u_input.c)), -1266f));
}

