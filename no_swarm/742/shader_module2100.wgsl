// {"0:0":[158,176,201,147]}
// Seed: 14733090926117677419

struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true));

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = -1581f > floor((-1823f - (-535f + -940f)) * exp2(-(-1747f)));
    let var_1 = -(-(((-1291f / -400f) * -388f) * -(-750f)));
    let var_2 = -174f;
    var var_3 = Struct_2(u_input.a, Struct_1(var_2, -vec3<i32>(abs(arg_0), arg_0 << 18462u, arg_0 + arg_0), var_0, ~arg_0 % -51911i), Struct_1(-floor(-var_2), -((vec3<i32>(arg_0, 2147483647i, 12583i) & vec3<i32>(2147483647i, arg_0, i32(-2147483648))) - (vec3<i32>(2147483647i, arg_0, 2147483647i) % vec3<i32>(-17207i, arg_0, arg_0))), (39339u >= u_input.a) || ((var_0 | false) || var_0), arg_0), vec4<u32>(u_input.a, ~firstTrailingBit(48254u), u_input.a, dot(vec3<u32>(4294967295u & u_input.a, u_input.a / 55254u, u_input.a), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 4294967295u, u_input.a)))), ~(~vec3<u32>(~u_input.a, dot(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~u_input.a)));
    global2 = array<Struct_4, 8>();
    return vec3<i32>(44703i, 0i, var_3.c.b.x - firstLeadingBit(1i)) | (-(var_3.b.b % select(var_3.b.b, var_3.c.b, false)) + ~vec3<i32>(arg_0 ^ -22026i, var_3.b.d, ~var_3.b.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = 131084u != arg_0.x;
    global1 = array<vec2<bool>, 15>();
    global2 = array<Struct_4, 8>();
    global1 = array<vec2<bool>, 15>();
    let var_1 = vec4<i32>(-20561i << dot(~arg_1.d, vec4<u32>(u_input.a, 0u, arg_0.x, arg_1.a) | arg_1.d), -arg_1.b.d, ~clamp(25157i, arg_1.c.d | arg_1.c.b.x, arg_1.b.d >> arg_1.a), ((-1i & arg_1.b.d) & firstTrailingBit(arg_1.b.b.x)) - ~(-arg_1.b.d)) | global0[arg_1.a];
    return reverseBits(clamp(2147483647i, ~((i32(-2147483648) >> 67422u) - 1i), var_1.x));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = func_4(vec3<u32>(~(4294967295u - 0u), u_input.a, (u_input.a ^ 26225u) & (arg_0 | arg_0)) >> (~vec3<u32>(arg_0, 49204u, u_input.a) << ~(~vec3<u32>(4294967295u, 0u, 1u))), Struct_2(reverseBits(4294967295u / (11800u - 26566u)), Struct_1(-157f, select(vec3<i32>(33762i, -118883i, 11388i) | vec3<i32>(2147483647i, 1i, 1i), func_3(0i), any(vec3<bool>(false, true, true))), false, 1i | dot(global0[u_input.a], global0[0u])), Struct_1(-1108f, abs(clamp(vec3<i32>(-10411i, 2147483647i, -36856i), vec3<i32>(24864i, i32(-2147483648), -12648i), vec3<i32>(-55677i, 3479i, -39741i))), false, 53352i), (~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) << vec4<u32>(11218u, u_input.a, 1u, u_input.a)) + (vec4<u32>(arg_0, arg_0, 65470u, arg_0) | vec4<u32>(4294967295u, arg_0, 31279u, u_input.a)), vec3<u32>(u_input.a, 9978u, 4294967295u) + ((vec3<u32>(u_input.a, 0u, arg_0) | vec3<u32>(u_input.a, u_input.a, 46922u)) + vec3<u32>(u_input.a, 0u, 17320u))), abs(vec2<f32>(trunc(440f) * floor(374f), min(-1000f, 996f) / 1020f)));
    var var_1 = Struct_4(!any(vec3<bool>(arg_0 < 1u, true, -591f >= -142f)));
    var_0 = ~(-1i) << ((~(~1u) | ~47261u) * u_input.a);
    var var_2 = firstTrailingBit(1u & u_input.a);
    global2 = array<Struct_4, 8>();
    return vec2<i32>(0i, func_4(abs(vec3<u32>(arg_0, 0u, u_input.a ^ arg_0)), Struct_2(arg_0 % u_input.a, Struct_1(-1000f, vec3<i32>(44160i, 56226i, 29105i) ^ vec3<i32>(54395i, 45144i, 71502i), false, firstLeadingBit(-65827i)), Struct_1(-(-588f), ~vec3<i32>(11315i, 2147483647i, 0i), 1i < -1i, 2147483647i), ~vec4<u32>(4294967295u, u_input.a, 0u, 25487u), vec3<u32>(1u / arg_0, u_input.a >> u_input.a, 0u)), -floor(floor(vec2<f32>(-679f, -599f)))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(-((745f / 2564f) - (109f + 1000f)), vec3<i32>(-max(-29447i, 16252i), 20357i, countOneBits(-14806i)), !arg_0, dot(~vec2<i32>(11560i, 2147483647i) & func_2(u_input.a), ~(-vec2<i32>(-42407i, -46691i)))), false, -(-(-861f)), ~vec3<u32>(75458u, u_input.a, u_input.a & 4294967295u), vec3<bool>(!(!arg_0), false, arg_0));
    let var_1 = firstLeadingBit(countOneBits(0i));
    let var_2 = var_1;
    global2 = array<Struct_4, 8>();
    global1 = array<vec2<bool>, 15>();
    return Struct_4(all(!vec4<bool>(0i == var_1, true, var_0.e.x, arg_0)));
}

fn func_5(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = max(vec3<u32>(max((0u & 31985u) + u_input.a, u_input.a), 4944u, 1u), vec3<u32>(u_input.a, u_input.a % 22817u, dot(vec3<u32>(44396u, u_input.a, u_input.a), (vec3<u32>(77054u, u_input.a, 3653u) * vec3<u32>(u_input.a, 8269u, u_input.a)) & countOneBits(vec3<u32>(u_input.a, 4612u, 4294967295u)))));
    var var_1 = countOneBits(reverseBits(countOneBits(firstLeadingBit(vec2<i32>(-1i, 1i))) ^ (vec2<i32>(20434i, 0i) >> vec2<u32>(39845u, u_input.a))));
    global1 = array<vec2<bool>, 15>();
    var var_2 = 2975i;
    global1 = array<vec2<bool>, 15>();
    return ~vec2<u32>(var_0.x, dot(min(var_0.xy, var_0.zz), firstTrailingBit(var_0.zx))) - (var_0.zy + vec2<u32>(~u_input.a, u_input.a));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0.x, Struct_1(arg_1, vec3<i32>(~1001i, max(2147483647i, func_4(vec3<u32>(5636u, 0u, arg_0.x), Struct_2(0u, Struct_1(arg_1, vec3<i32>(60381i, 8544i, i32(-2147483648)), true, 14451i), Struct_1(-1000f, vec3<i32>(i32(-2147483648), 2147483647i, 1i), true, -1i), vec4<u32>(arg_0.x, u_input.a, arg_0.x, 1u), vec3<u32>(arg_0.x, arg_0.x, u_input.a)), vec2<f32>(arg_1, arg_1))), -(-3528i >> arg_0.x)), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), firstLeadingBit(i32(-2147483648) % 45708i) * ~clamp(2147483647i, 1i, 1i)), Struct_1(-651f, -firstTrailingBit(vec3<i32>(2147483647i, 35125i, 4435i)) << ((vec3<u32>(0u, 0u, 1u) ^ vec3<u32>(14645u, arg_0.x, u_input.a)) | vec3<u32>(38095u, 1u, 0u)), true, reverseBits(i32(-2147483648))), ~vec4<u32>(~u_input.a, 15995u, select(~57121u, arg_0.x, !true), ~71383u), abs(vec3<u32>(u_input.a, ~114079u, u_input.a)) & vec3<u32>(abs(~u_input.a), abs(~arg_0.x), (0u + arg_0.x) * dot(vec4<u32>(u_input.a, 99809u, 4294967295u, u_input.a), vec4<u32>(25801u, u_input.a, 30703u, 30369u))));
    let var_1 = any(!select(global1[~(arg_0.x % var_0.d.x)], !vec2<bool>(var_0.c.c, var_0.b.c), !vec2<bool>(false, true)));
    var var_2 = all(!vec3<bool>(var_0.c.c, func_1(var_1).a, any(vec3<bool>(false, var_1, var_1)))) || var_0.b.c;
    let var_3 = !select(select(!select(vec4<bool>(true, true, var_0.b.c, var_1), vec4<bool>(true, var_1, var_0.c.c, var_0.b.c), var_0.b.c), !(!vec4<bool>(var_0.c.c, var_0.c.c, var_0.b.c, true)), vec4<bool>(false, var_1, arg_0.x >= arg_0.x, !var_0.b.c)), !vec4<bool>(true, 22454u <= 83592u, !false, false), !select(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, var_0.c.c, false, false), vec4<bool>(true, var_1, false, true)), select(vec4<bool>(var_1, var_1, true, var_0.c.c), vec4<bool>(false, var_0.c.c, var_1, var_1), var_0.c.c), vec4<bool>(var_0.b.c, var_1, false, var_0.c.c)));
    var_2 = var_0.c.c || false;
    return Struct_1(arg_1 - sign(-1000f), vec3<i32>(-1i, ~(0i), i32(-2147483648)), all(var_3.yyz) | true, var_0.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    var var_0 = Struct_3(func_6(func_5(func_1(!false)), 386f), false, -((-1004f / -971f) / (exp2(-871f) + -(-2289f))), (((vec3<u32>(u_input.a, 14752u, u_input.a) - vec3<u32>(u_input.a, 0u, u_input.a)) | ~vec3<u32>(1u, u_input.a, u_input.a)) | (~vec3<u32>(87373u, 57434u, 16346u) | vec3<u32>(42066u, u_input.a, u_input.a))) % ~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>((max(0i, 47681i) == ~2147483647i) == !any(vec4<bool>(true, true, true, false)), false, !(!(!true))));
    let var_1 = -(var_0.c - -(-trunc(var_0.a.a)));
    var var_2 = ceil(vec2<f32>(-(-1951f), (round(var_1) - 2239f) - (var_1 * var_0.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(-19596i, dot(var_0.a.b, vec3<i32>(-27271i, 0i, var_0.a.b.x)), any(vec2<bool>(true, false))) >> var_0.d.x, var_0.a.d << ~firstTrailingBit(var_0.d.x), ~(-2147483647i)), firstLeadingBit(firstTrailingBit(~(vec3<i32>(-1i, 2147483647i, 1i) ^ var_0.a.b))), 270f, -select(exp2(var_0.a.a), -303f / -124f, false) * ((func_6(var_0.d.yx, -1372f).a - select(var_1, 750f, true)) * var_0.c), dot(firstTrailingBit(-vec3<i32>(1i, 41787i, var_0.a.d)), min(var_0.a.b, vec3<i32>(27469i, var_0.a.d, var_0.a.b.x) / var_0.a.b)) >> firstTrailingBit(57613u & ~var_0.d.x));
}

