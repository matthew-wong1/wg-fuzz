// {"0:0":[142,91,167,222,14,207,6,4,228,128,151,0,140,222,211,59]}
// Seed: 4625166279283223074

struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-237i, 699i);

var<private> global1: array<u32, 6>;

var<private> global2: i32 = 0i;

fn func_2() -> vec4<i32> {
    global0 = -(~((-vec2<i32>(34576i, global0.x) << u_input.a.xx) << ~u_input.a.zx));
    var var_0 = abs(u_input.a.x);
    let var_1 = -(-trunc(-(vec2<f32>(590f, 533f) - vec2<f32>(-1000f, 1071f))));
    return vec4<i32>(1i / -global0.x, global0.x, 1i, clamp(-1i, (abs(-36273i) % 1i) + ((global0.x * 0i) >> 0u), global0.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -vec3<i32>(arg_0, -((-4183i * -9536i) - -1i), arg_0);
    global0 = vec2<i32>(arg_0, ~var_0.x);
    var var_1 = clamp(countOneBits(-19946i >> (global1[u_input.a.x] << global1[global1[u_input.a.x]])), dot(select(vec2<i32>(var_0.x, 1i) >> u_input.a.zy, -var_0.yx, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<i32>(2147483647i, -28205i % arg_1.b)), arg_1.b) & 22700i;
    var var_2 = Struct_2(vec4<u32>(0u, 12836u, ~66205u, u_input.a.x), arg_1);
    let var_3 = Struct_2(var_2.a, Struct_1(abs(abs(u_input.a.x)) >> arg_1.a, var_0.x));
    return Struct_1(87798u, ((~(-1i) & -1i) ^ countOneBits(2147483647i % 34960i)) - (1i | var_3.b.b));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = func_3((dot(func_2(), vec4<i32>(-41894i, global0.x, -18787i, -1i)) << ~(u_input.a.x & u_input.a.x)) * -(-(~1i)), Struct_1((78347u * 4294967295u) % 4294967295u, i32(-2147483648)));
    var var_1 = ~u_input.a.zx;
    var var_2 = arg_0.x;
    var var_3 = Struct_2(~(~abs(vec4<u32>(0u, 40225u, global1[12569u], 4294967295u)) >> vec4<u32>(var_0.a * 46124u, 1u, abs(4294967295u), ~11146u)), func_3(-29686i, var_0));
    let var_4 = Struct_3(sign(349f));
    return true;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> Struct_4 {
    global2 = ~((arg_1.x * ((-1i << 4294967295u) - (global0.x / arg_0))) ^ arg_0);
    var var_0 = select((-54224i | -65053i) + ~min(12147i, 0i), dot(arg_1.yz << select(u_input.a.xy, vec2<u32>(1u, global1[u_input.a.x]), true), vec2<i32>(2147483647i, 2522i) % arg_1.yz), !all(vec3<bool>(false, false, false))) >> global1[55929u];
    var var_1 = reverseBits(global1[reverseBits(u_input.a.x)]);
    var var_2 = min(u_input.a.xx, ~reverseBits(~vec2<u32>(global1[global1[4294967295u]], 4294967295u)));
    let var_3 = Struct_4(func_3(~arg_1.x, Struct_1(~48935u & ~u_input.a.x, arg_0 | -arg_1.x)), !(!(firstLeadingBit(u_input.a.x) <= ~1u)), Struct_2(clamp(~(vec4<u32>(4294967295u, 0u, 4294967295u, 102664u) + vec4<u32>(27028u, var_2.x, global1[var_2.x], u_input.a.x)), vec4<u32>(var_2.x, var_2.x, var_2.x, 42098u) - vec4<u32>(u_input.a.x, var_2.x, var_2.x, 1u), abs(abs(vec4<u32>(var_2.x, 0u, 0u, 1u)))), func_3(1i >> 1u, Struct_1(39250u, 3025i))), arg_2);
    return Struct_4(var_3.c.b, max(~var_3.c.b.b, -var_3.a.b) != (58874i & (abs(arg_2) % (var_3.d ^ i32(-2147483648)))), Struct_2(vec4<u32>(96261u * select(1u, u_input.a.x, true), ~firstLeadingBit(var_3.c.a.x), u_input.a.x, 52466u), Struct_1(12349u, var_3.a.b)), global0.x | (-global0.x + -(~(i32(-2147483648)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.x, countOneBits(select(~(~vec3<i32>(global0.x, -31766i, i32(-2147483648))), -(vec3<i32>(i32(-2147483648), -1i, 1i) % vec3<i32>(-9742i, global0.x, 0i)), vec3<bool>(select(false, false, false), func_1(vec2<bool>(false, false)), false))), global0.x);
    var var_1 = Struct_1(1u, -18177i);
    let var_2 = -abs(-732f) / -(-(-248f));
    var var_3 = -vec3<f32>(-392f, 2337f, select(var_2, trunc(576f), 9416u <= var_1.a));
    let var_4 = ~(-firstTrailingBit(countOneBits(-vec4<i32>(23746i, -14419i, global0.x, var_1.b))));
    var var_5 = func_4(dot(-var_4, max(~(~vec4<i32>(var_0.c.b.b, var_1.b, -28992i, 13808i)), var_4)), clamp(~vec3<i32>(global0.x >> 29399u, var_0.d, global0.x), ~(vec3<i32>(var_1.b, var_1.b, global0.x) * var_4.xzz), vec3<i32>(0i, 10204i & 2147483647i, -1i - ~26260i)), -(i32(-2147483648))).a;
    var var_6 = -func_3(countOneBits(var_1.b) / global0.x, Struct_1(var_1.a ^ (4294967295u * var_1.a), -var_1.b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(max(-878f, select(1313f, 729f, false)) - (var_3.x * -(-var_3.x)), ~(u_input.a.x & u_input.a.x), firstLeadingBit(35195u));
}

