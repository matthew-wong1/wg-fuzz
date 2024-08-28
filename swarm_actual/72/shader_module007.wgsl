// {"0:0":[236,107,94,119,173,153,16,174]}
// Seed: 11113135375427481016

struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec2<u32> {
    global0 = Struct_4(min(vec2<u32>(dot(vec4<u32>(1u, global0.a.x, 51205u, global0.a.x), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 81012u)), 58054u), vec2<u32>(52482u - arg_0.x, 1u * arg_0.x)) * ((firstTrailingBit(arg_0) >> global0.a) ^ (vec2<u32>(arg_0.x, global0.a.x) | firstLeadingBit(vec2<u32>(global0.a.x, 12179u)))), Struct_2(vec3<bool>(all(vec2<bool>(true, false)), all(!vec4<bool>(global0.b.b.x, false, global0.c.b, global0.b.b.x)), true || any(vec2<bool>(true, global0.b.a.x))), !global0.b.a.xz), Struct_1(i32(-2147483648), 0i <= ~(~global0.d)), -max(firstTrailingBit(i32(-2147483648)), global0.c.a) - (dot(reverseBits(vec4<i32>(global0.d, u_input.a.x, -1i, 0i)), ~vec4<i32>(31361i, u_input.a.x, i32(-2147483648), -38980i)) >> (~global0.a.x / dot(vec4<u32>(0u, arg_0.x, global0.a.x, global0.a.x), vec4<u32>(global0.a.x, 26707u, 4294967295u, arg_0.x)))));
    global0 = Struct_4(global0.a, global0.b, Struct_1(2147483647i, all(!global0.b.b)), ~dot(vec4<i32>(27543i, 9674i, 83984i, 2147483647i), abs(vec4<i32>(global0.d, global0.d, u_input.a.x, -41666i))) / -1i);
    global0 = Struct_4(arg_0, global0.b, global0.c, 2147483647i);
    let var_0 = abs(~select((vec2<u32>(arg_0.x, 1u) << arg_0) + arg_0, ~max(arg_0, vec2<u32>(arg_0.x, 39935u)), select(global0.b.b, global0.b.b, all(vec2<bool>(global0.b.b.x, global0.b.b.x)))));
    global0 = Struct_4(vec2<u32>(47284u, var_0.x), Struct_2(vec3<bool>(!select(global0.b.b.x, global0.c.b, global0.c.b), false, global0.c.b), vec2<bool>(!(global0.c.b && global0.b.a.x), !(true & global0.b.a.x))), global0.c, -44i);
    return ~(((var_0 << ~vec2<u32>(var_0.x, 4294967295u)) % ~min(vec2<u32>(global0.a.x, 4294967295u), arg_0)) | ~max(vec2<u32>(17097u, 1u), global0.a | vec2<u32>(18555u, global0.a.x)));
}

fn func_2() -> u32 {
    let var_0 = ~(vec3<i32>(28896i | (u_input.a.x % i32(-2147483648)), ~(~(-48321i)), -1i) % ~(-(-vec3<i32>(global0.d, 3208i, 2147483647i))));
    global0 = Struct_4(~(~func_3(vec2<u32>(global0.a.x, global0.a.x) ^ global0.a, vec4<f32>(581f, -1369f, -260f, 1432f) - vec4<f32>(2123f, -1596f, -457f, -124f))), Struct_2(select(global0.b.a, global0.b.a, global0.c.b), select(global0.b.b, !(!global0.b.b), any(vec4<bool>(false, global0.c.b, false, global0.b.b.x)) && (global0.c.b | true))), global0.c, u_input.a.x);
    var var_1 = vec2<u32>(~(~select(global0.a.x, abs(global0.a.x), true & false)), global0.a.x);
    global0 = Struct_4(~(abs(vec2<u32>(global0.a.x, 1u)) + ~vec2<u32>(65909u, 1u)), global0.b, global0.c, -global0.c.a);
    var var_2 = -(-((1194f + 170f) + -958f)) > -1205f;
    return dot(max(~vec2<u32>(func_3(global0.a, vec4<f32>(918f, -268f, -252f, 1537f)).x, clamp(1u, 29482u, 1u)), vec2<u32>(func_3(reverseBits(global0.a), select(vec4<f32>(567f, 264f, 293f, 412f), vec4<f32>(1642f, 1316f, -852f, -285f), global0.c.b)).x, countOneBits(~4294967295u))), min(vec2<u32>(31084u, global0.a.x) >> func_3(global0.a, vec4<f32>(829f, -1000f, 776f, 676f)), ~(~global0.a)) ^ firstTrailingBit(global0.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = -1i;
    global0 = Struct_4(vec2<u32>(1u, select(~1u, 8998u, !global0.b.a.x)) * (~vec2<u32>(global0.a.x, global0.a.x) + vec2<u32>(firstLeadingBit(4294967295u), arg_1.x / 51828u)), Struct_2(!arg_3.a, !(!select(vec2<bool>(false, false), arg_3.b, global0.b.b))), Struct_1(-global0.d, global0.c.b), -var_1 | ~(-(global0.c.a % 1i)));
    var var_2 = -select(vec3<f32>(-(-(-1083f)), arg_2, step(-299f - var_0, min(765f, arg_2))), vec3<f32>(-1540f, select(-806f, 1160f, false) * -arg_0.x, arg_0.x), !vec3<bool>(global0.b.a.x, arg_3.a.x, !true));
    return vec2<u32>(~(global0.a.x * ~(arg_1.x ^ global0.a.x)), ~33410u);
}

fn func_1() -> f32 {
    global0 = Struct_4(~func_4(-floor(vec2<f32>(-770f, 130f)), vec4<u32>(func_2(), 92738u, 4294967295u, 2013u), trunc(-813f * -1537f), Struct_2(!global0.b.a, select(global0.b.a.zy, global0.b.a.xx, global0.b.a.zy))), Struct_2(!vec3<bool>(global0.b.a.x, true, !global0.c.b), vec2<bool>(any(vec4<bool>(global0.b.a.x, global0.b.a.x, global0.c.b, false)) && !global0.b.b.x, all(!vec2<bool>(false, true)))), Struct_1(global0.d >> countOneBits(abs(global0.a.x)), select(global0.c.b, true, true | true) | true), global0.d ^ -global0.d);
    global0 = Struct_4(~global0.a, Struct_2(select(vec3<bool>(global0.b.a.x, any(vec2<bool>(global0.c.b, false)), !global0.c.b), select(global0.b.a, global0.b.a, all(vec4<bool>(true, global0.b.b.x, true, global0.b.b.x))), select(!global0.b.a, !vec3<bool>(true, true, global0.c.b), false && global0.b.b.x)), global0.b.a.xx), Struct_1(global0.d >> 0u, !global0.c.b), 2147483647i);
    global0 = Struct_4(global0.a, Struct_2(global0.b.a, select(select(!global0.b.b, global0.b.b, global0.b.a.zx), vec2<bool>(!global0.b.b.x, select(global0.b.b.x, global0.b.b.x, true)), any(global0.b.a.yz))), global0.c, dot(~vec4<i32>(firstTrailingBit(2147483647i), clamp(global0.d, 27164i, u_input.a.x), -u_input.a.x, min(u_input.a.x, 0i)), max(vec4<i32>(-(-42770i), -global0.d, ~u_input.a.x, ~global0.c.a), -vec4<i32>(global0.d, -1i, u_input.a.x, -58021i))));
    var var_0 = Struct_3(Struct_2(select(vec3<bool>(!global0.b.a.x, global0.d == 2147483647i, false), vec3<bool>(true, !true, global0.b.b.x), !true), select(vec2<bool>(global0.b.a.x, false), global0.b.b, !global0.b.b)), 162f, !global0.b.a, global0.c, global0.a.x);
    var var_1 = Struct_1(u_input.a.x, any(select(vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, global0.c.b), select(vec4<bool>(global0.b.a.x, false, false, var_0.a.b.x), vec4<bool>(false, var_0.d.b, var_0.c.x, var_0.a.b.x), false), global0.c.b)) || var_0.d.b);
    return (((-1241f - -406f) - -trunc(var_0.b)) / 655f) + -486f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-abs(vec3<f32>(ceil(-510f), -882f, -1039f)));
    let var_1 = sign(822f) - -465f;
    var var_2 = -(vec4<f32>(-var_1 / 1184f, var_1, -var_1, -(-299f) - step(-736f, var_0.x)) * -vec4<f32>(609f, -2316f + 1000f, func_1(), -326f));
    var var_3 = vec3<bool>(any(vec4<bool>(false, false, any(vec4<bool>(false, true, false, true)), !all(vec4<bool>(global0.c.b, global0.c.b, global0.c.b, false)))), -7159i != (u_input.a.x | global0.d), global0.b.a.x);
    global0 = Struct_4(func_3(vec2<u32>(2854u, ~7900u), -trunc(-vec4<f32>(var_1, 1000f, 1155f, var_0.x))), Struct_2(select(vec3<bool>(false, true, !global0.c.b), vec3<bool>(false, var_3.x, !global0.b.b.x), !vec3<bool>(var_3.x, false, false)), select(global0.b.b, !select(global0.b.b, vec2<bool>(false, false), vec2<bool>(global0.b.a.x, false)), var_3.yy)), Struct_1(dot(vec3<i32>(u_input.a.x, u_input.a.x, -1i), select(vec3<i32>(-19184i, global0.d, -35297i), vec3<i32>(-23016i, global0.c.a, 25421i), global0.c.b)) ^ -(0i - global0.d), all(global0.b.a)), -1i);
    var var_4 = abs(var_1);
    let var_5 = global0.c;
    global0 = Struct_4(reverseBits(~(~global0.a)) / vec2<u32>(global0.a.x, max(1u, 1u)), Struct_2(global0.b.a, vec2<bool>((u_input.a.x >= global0.c.a) & all(vec2<bool>(false, true)), false)), Struct_1(-var_5.a, !(!var_3.x)), select(29208i % -var_5.a, global0.d, false) + ((-(-53590i) | firstTrailingBit(var_5.a)) * dot(vec2<i32>(0i, -3402i) / vec2<i32>(var_5.a, 16601i), -u_input.a)));
    var var_6 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~reverseBits(u_input.a.x)), -var_2.x);
}

