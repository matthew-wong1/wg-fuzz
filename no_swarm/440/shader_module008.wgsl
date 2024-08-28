// {"0:0":[15,120,213,158,84,65,191,71,14,220,183,229,195,236,233,250,143,128,216,119,38,168,255,199]}
// Seed: 9328033450345761263

struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn func_2(arg_0: vec2<u32>) -> f32 {
    return trunc(-(602f + (-206f / -1114f))) * -305f;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    global0 = -(-(-256f + 1534f)) - 693f;
    global0 = ceil(ceil(max(394f, -1059f)));
    var var_0 = Struct_2(!select(vec4<bool>(u_input.c == 1i, arg_0, arg_0, arg_0), vec4<bool>(true && true, arg_0, !arg_0, !true), select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, false, arg_0, true), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, arg_0, false, arg_0)))), arg_2.d.xw, max(arg_2.d.xxy, ~arg_2.a.xwy), true, Struct_1(~arg_2.d, arg_2.a.x, -102f, arg_1.xzz, -(-467f) + -(-1571f * -1640f)));
    return -1000f >= (-931f + var_0.e.e);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = min(-1199f, (floor(max(arg_3.x, 1000f)) + -(-210f)) * -arg_3.x);
    var_0 = 1102f / 684f;
    let var_1 = vec3<f32>(func_2(~u_input.b), -(min(-1047f, 1275f) / abs(-367f)), 132f - -(-627f)) * trunc(vec3<f32>(ceil(-(-564f)), -arg_3.x / arg_3.x, arg_3.x));
    var var_2 = !select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), select(!(!vec4<bool>(true, true, true, false)), vec4<bool>(!true, func_3(true, vec4<i32>(i32(-2147483648), u_input.a, arg_1, u_input.c), Struct_3(vec4<u32>(arg_0.x, 60218u, 4294967295u, arg_0.x), arg_2.x, vec4<i32>(arg_1, arg_2.x, u_input.c, 0i), vec4<u32>(arg_0.x, u_input.b.x, u_input.b.x, arg_0.x))), !true, any(vec3<bool>(true, true, false))), true), all(vec4<bool>(var_1.x <= var_1.x, func_3(false, vec4<i32>(-27809i, -21707i, 24856i, arg_1), Struct_3(vec4<u32>(u_input.b.x, 77300u, arg_0.x, 4294967295u), -67773i, vec4<i32>(0i, 38859i, -7299i, -24640i), vec4<u32>(arg_0.x, 18200u, arg_0.x, u_input.b.x))), 1u != 0u, false & true)));
    var var_3 = Struct_4(Struct_3(firstLeadingBit(select(~vec4<u32>(arg_0.x, 16657u, arg_0.x, arg_0.x), vec4<u32>(15733u, 19504u, 4192u, 28129u), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), 1i, min(firstLeadingBit(~vec4<i32>(arg_1, u_input.c, arg_2.x, arg_2.x)), ~(~vec4<i32>(u_input.a, arg_2.x, 1i, -1i))), vec4<u32>(max(clamp(59651u, 0u, u_input.b.x), 11573u), ~3773u - u_input.b.x, 4294967295u, arg_0.x)), vec3<f32>(round(322f), arg_3.x * exp2(var_1.x / 450f), -ceil(321f)));
    return -(-var_3.a.b ^ arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstLeadingBit(vec4<u32>(u_input.b.x, 8597u, ~34862u, u_input.b.x) / select(vec4<u32>(26428u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 46808u, 4294967295u), u_input.a <= u_input.c)), -(1i + 2147483647i), vec4<i32>(func_1(~vec2<u32>(1u, u_input.b.x), -(-1i), vec3<i32>(-(-380i), -u_input.c, u_input.a), ceil(vec2<f32>(-142f, -1046f))), 5625i, ~1i, (dot(vec3<i32>(1i, u_input.c, 0i), vec3<i32>(u_input.a, 0i, -34310i)) << 45756u) - -u_input.c), (vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, u_input.b.x, ~4294967295u) >> (~vec4<u32>(9258u, u_input.b.x, u_input.b.x, 1u) | vec4<u32>(24360u, u_input.b.x, 133888u, u_input.b.x))) ^ countOneBits(clamp(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), ~vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 29232u), false))));
    var var_1 = Struct_3(~abs(~var_0.d), dot((abs(vec3<i32>(var_0.c.x, 2147483647i, 0i)) / (vec3<i32>(var_0.b, var_0.b, i32(-2147483648)) | var_0.c.yxy)) & -var_0.c.wwy, var_0.c.zyx ^ var_0.c.yxz), var_0.c >> vec4<u32>(~u_input.b.x << var_0.a.x, var_0.a.x, ~var_0.d.x, ~(0u >> u_input.b.x)), vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u));
    var var_2 = dot(var_0.c.zxx, -reverseBits(vec3<i32>(-1i, -31934i, var_1.b)) & -(-var_1.c.zxz)) > (16165i ^ (-(i32(-2147483648)) | min(var_0.c.x, -67399i)));
    var var_3 = vec2<bool>(true, any(select(vec2<bool>(true, !false), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(true, true, false, false)), !false))));
    var var_4 = vec3<i32>(u_input.c, reverseBits(var_1.b ^ -(-1i)), abs(7402i)) - clamp(vec3<i32>(clamp(-86943i, var_1.c.x - u_input.a, var_1.c.x), ~0i + (5060i >> u_input.b.x), u_input.c), vec3<i32>(u_input.a, -47396i, firstLeadingBit(var_1.b)), var_1.c.zzx);
    let var_5 = Struct_4(Struct_3(~vec4<u32>(u_input.b.x, ~var_0.a.x, ~var_1.d.x, dot(var_0.a.yz, vec2<u32>(4294967295u, 1u))), -var_1.c.x, select(var_1.c % ~var_1.c, -vec4<i32>(u_input.a, -57299i, -8302i, var_1.b), var_3.x), select(~firstTrailingBit(vec4<u32>(var_1.a.x, var_1.a.x, var_1.d.x, 0u)), select(vec4<u32>(var_1.d.x, 4294967295u, 4294967295u, 4294967295u) / vec4<u32>(4294967295u, var_1.a.x, var_0.a.x, u_input.b.x), var_0.a, vec4<bool>(true, var_3.x, var_3.x, false)), select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, true, true, false), var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), 84059i <= -4410i))), sign(ceil(vec3<f32>(-367f, -990f, -416f) - vec3<f32>(-393f, 809f, 547f)) * -vec3<f32>(395f, -118f, -147f)));
    let var_6 = u_input.b;
    let var_7 = Struct_1(var_1.a, (~(4294967295u % u_input.b.x) | var_6.x) ^ (~(~var_0.d.x) / (min(0u, var_5.a.a.x) - (0u ^ 0u))), var_5.b.x, vec3<i32>(dot(var_1.c.xw, var_0.c.xx), 2147483647i & var_0.b, ~(-select(i32(-2147483648), var_0.c.x, var_3.x))), step(var_5.b.x - -1017f, -(-1608f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.zx, var_5.a.d);
}

