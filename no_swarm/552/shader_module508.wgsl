// {"0:0":[223,241,33,86,190,49,191,83,95,88,159,1,184,75,30,71,173,72,53,10,241,87,144,230,197,110,45,80,46,74,77,240,226,110,201,92,14,43,82,57,173,232,128,96,28,49,24,163,241,69,192,121,21,109,84,169,143,106,110,47,57,7,117,88]}
// Seed: 10266329633570989881

struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    var var_0 = Struct_3(vec3<f32>(step(1000f, -arg_1) * 920f, -((arg_1 * arg_1) * (arg_0.x + arg_0.x)), arg_0.x));
    var_0 = Struct_3(-select(vec3<f32>(arg_0.x, arg_1, arg_1) / vec3<f32>(var_0.a.x, arg_0.x, -645f), var_0.a / (var_0.a * vec3<f32>(arg_1, arg_0.x, arg_1)), !true & select(true, true, true)));
    var_0 = Struct_3(-(vec3<f32>(arg_0.x, 919f, 375f) * floor(var_0.a)));
    let var_1 = 1i;
    var var_2 = Struct_3(vec3<f32>(round(ceil(max(arg_1, arg_0.x))), -exp2(245f - -141f), (arg_0.x + -124f) + ((-693f + var_0.a.x) + abs(arg_0.x))));
    return floor((var_2.a.x / -ceil(var_0.a.x)) / min(716f, -arg_1));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = arg_1.b;
    var var_1 = func_3(vec2<f32>(-arg_1.c.a, arg_1.a.x) + ((-arg_1.a / vec2<f32>(arg_1.a.x, 986f)) / step(vec2<f32>(595f, arg_1.d.a), -arg_1.a)), -1104f);
    let var_2 = ~(-vec4<i32>(-1i, 117882i, i32(-2147483648), -1i) >> (firstLeadingBit(~vec4<u32>(8943u, u_input.c.x, 15842u, u_input.c.x)) | (clamp(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(arg_2.b, arg_0, arg_1.c.b, 29586u), vec4<u32>(4294967295u, 3849u, 1u, arg_0)) | min(vec4<u32>(u_input.d.x, 39496u, arg_2.b, arg_2.b), vec4<u32>(arg_2.b, 0u, arg_0, 7500u)))));
    let var_3 = select(firstTrailingBit(u_input.d), vec2<u32>(~(~arg_2.b), countOneBits(dot(u_input.e << vec2<u32>(34384u, 72618u), u_input.c))), select(select(!vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_1.b, arg_1.b), select(vec2<bool>(arg_1.b, false), vec2<bool>(false, false), arg_1.b), true), arg_1.b && arg_1.b), vec2<bool>(any(vec2<bool>(arg_1.b, false)) | arg_1.b, true), max(var_2.x ^ -1i, 7437i) < -19843i));
    let var_4 = Struct_1(534f, arg_0);
    return var_2.x | var_2.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_2(-select(vec2<f32>(-382f, 192f) * vec2<f32>(466f, -127f), vec2<f32>(1440f, 424f * 486f), arg_2.x), (false && !select(arg_2.x, arg_2.x, true)) | (func_2(u_input.a, Struct_2(vec2<f32>(452f, -654f), arg_2.x, Struct_1(167f, arg_1.x), Struct_1(-2212f, arg_0)), Struct_1(395f, 0u)) == abs(reverseBits(i32(-2147483648)))), Struct_1(step(-1632f - 1309f, -1077f + 1583f) + -1183f, 0u), Struct_1(674f, arg_1.x));
    var var_1 = ~vec2<u32>(arg_1.x, var_0.d.b);
    let var_2 = all(vec3<bool>(arg_2.x, false, 24144i == ~(-13667i))) || ((sign(246f * -229f) == ((1000f * -1090f) / -(-1325f))) & false);
    var_0 = Struct_2(-(vec2<f32>(var_0.d.a, var_0.a.x) + -vec2<f32>(1983f, var_0.c.a)), any(vec3<bool>(all(!vec4<bool>(false, var_0.b, true, var_0.b)), var_2, var_2)), Struct_1(exp2(-500f) - 690f, ~(24753u / 0u)), var_0.d);
    var_1 = arg_1.yx << vec2<u32>(arg_0, 27742u);
    return ~vec3<i32>(~(~(-50339i)), -16747i, -61687i + ~8061i) % firstTrailingBit(vec3<i32>(-1i, reverseBits(clamp(10831i, -65520i, 62385i)), -11647i));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = -1707f;
    var var_1 = Struct_2(-max(exp2(step(vec2<f32>(487f, arg_1.x), arg_1.xx)), arg_1.yx), (reverseBits(abs(u_input.b.x)) / u_input.e.x) <= (dot(firstLeadingBit(u_input.b), vec3<u32>(1u, u_input.a, 5528u) * u_input.b) * (41599u & ~96023u)), Struct_1((-1877f * 1286f) * trunc(arg_1.x), ((u_input.c.x % u_input.d.x) * countOneBits(u_input.a)) & u_input.c.x), Struct_1(abs(max(arg_1.x - arg_1.x, -478f / 1000f)), max(1u, select(u_input.e.x, 1u, false) >> max(33627u, u_input.d.x))));
    var_1 = Struct_2(-sign(-vec2<f32>(var_1.a.x, 269f)) - (-var_1.a / arg_1.yx), any(!(!select(vec2<bool>(arg_0, var_1.b), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b)))), var_1.d, Struct_1(110f, ~9602u & clamp(~u_input.e.x, min(var_1.c.b, 54767u), var_1.d.b)));
    let var_2 = Struct_2(ceil(var_1.a) / (vec2<f32>(937f, ceil(-1207f)) / (arg_1.zy / sign(arg_1.xx))), ~(4294967295u * 4294967295u) <= (u_input.d.x << 106773u), var_1.d, Struct_1(323f, firstTrailingBit(4294967295u >> u_input.e.x)));
    var_0 = abs(step(-563f, (func_3(var_1.a, -307f) / abs(var_2.c.a)) - 502f));
    return arg_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = step(func_4(all(select(!vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), -vec3<f32>(-119f, 1457f, 485f) - -(vec3<f32>(262f, 1298f, -929f) + vec3<f32>(818f, -942f, 866f)), 53860i * -(-(-43792i)), select(func_1(1u, select(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.e.x), vec3<bool>(true, false, false)), !vec3<bool>(true, false, true)), clamp(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), select(vec3<i32>(77320i, 38044i, -15508i), vec3<i32>(2785i, 27698i, 30344i), false), vec3<i32>(i32(-2147483648), 5387i, -12010i)), select(all(vec4<bool>(false, true, true, false)), 131f >= -2597f, true || true))), -(-(-vec2<f32>(1633f, -1326f)) - -ceil(vec2<f32>(-1000f, 412f))));
    let var_1 = Struct_2(floor(vec2<f32>(max(-(-837f), abs(var_0.x)), -864f)), !(firstLeadingBit(42657i * -38710i) <= 2147483647i), Struct_1(var_0.x, u_input.a), Struct_1(-var_0.x, u_input.c.x));
    var_0 = -var_1.a;
    var var_2 = vec4<u32>(countOneBits(dot(vec2<u32>(firstTrailingBit(11907u), var_1.c.b - 1u), vec2<u32>(~u_input.b.x, dot(u_input.b, u_input.b)))), 32398u, ~(~var_1.d.b), 0u);
    var_0 = -(vec2<f32>(var_0.x, var_1.a.x) * vec2<f32>(exp2(var_1.d.a) - (var_0.x * 442f), ceil(var_1.a.x * -506f)));
    var var_3 = vec3<f32>((ceil(-1157f) * var_1.d.a) * -333f, var_0.x, -step(var_0.x, var_1.a.x) * 475f);
    let var_4 = Struct_1(floor(-var_1.d.a / var_0.x), 17561u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, select(firstLeadingBit(select(vec2<u32>(17457u, var_1.d.b) * var_2.yz, u_input.d, true)), ~var_2.xy, vec2<bool>(all(vec3<bool>(false, true, var_1.b)), !true)), (firstLeadingBit(vec3<i32>(19927i, 39689i, 60943i)) ^ min(vec3<i32>(2147483647i, 2147483647i, 12881i), vec3<i32>(-8540i, i32(-2147483648), 2147483647i) & vec3<i32>(42364i, -1i, i32(-2147483648)))) * (select(vec3<i32>(0i, -1i, -68108i) << var_2.zyy, -vec3<i32>(5627i, -12488i, i32(-2147483648)), select(false, true, true)) - reverseBits(vec3<i32>(54477i, 1i, -1i) ^ vec3<i32>(i32(-2147483648), 2147483647i, -2285i))));
}

