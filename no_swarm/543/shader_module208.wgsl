// {"0:0":[98,234,172,113,164,201,107,186,163,17,114,8,225,90,14,105,108,159,81,184,86,175,89,255,71,182,160,188,138,224,73,199,44,12,37,85,30,171,50,123,26,30,157,139,219,29,7,231,32,67,89,87,201,109,64,11,36,163,209,107,128,68,109,24]}
// Seed: 988113275535396998

struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_1(max(~vec4<u32>(arg_0.b.x, ~arg_0.c, firstLeadingBit(u_input.d.x), arg_0.a.x - 4294967295u), arg_0.a - u_input.b), max(abs(reverseBits(u_input.b.xy + vec2<u32>(u_input.b.x, arg_0.c))), arg_0.b << clamp(clamp(arg_0.a.zx, u_input.d.zx, arg_0.a.yx), arg_0.b, vec2<u32>(u_input.d.x, 3639u) - vec2<u32>(u_input.e, 12787u))), abs(~u_input.e), ~arg_0.d, arg_0.e);
    let var_1 = false;
    let var_2 = u_input.a;
    var var_3 = ~firstLeadingBit(arg_0.b);
    var var_4 = ~(~(~(vec3<u32>(arg_0.b.x, arg_0.c, 1u) * u_input.d)));
    return vec4<u32>(countOneBits(dot((var_0.a.xwx ^ u_input.b.wwy) - ~var_0.a.zzw, ~vec3<u32>(22516u, 4294967295u, 4294967295u) ^ vec3<u32>(var_0.a.x, 7311u, 4294967295u))), 356u, dot(~(~vec4<u32>(var_3.x, 7181u, var_4.x, 4294967295u)) % firstTrailingBit(vec4<u32>(var_4.x, 78252u, var_0.a.x, var_3.x)), ~vec4<u32>(var_3.x | 50631u, u_input.b.x, var_3.x, var_3.x)), ~((select(var_3.x, arg_0.a.x, false) / (1u / 65805u)) - (~var_4.x << 4294967295u)));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    var var_0 = ~(~(-1i + -19535i));
    var var_1 = ~(~(~vec4<u32>(u_input.e, 317u, 55680u, u_input.e) * abs(u_input.b))) / select(u_input.b, ~u_input.b % (func_3(Struct_1(u_input.b, u_input.b.yw, u_input.d.x, vec4<i32>(12209i, 5211i, i32(-2147483648), arg_0), vec4<i32>(u_input.c, 31135i, u_input.c, u_input.c)), 132f) * vec4<u32>(u_input.b.x, 1u, u_input.d.x, 44938u)), true);
    var var_2 = (step(-2004f + sign(-1276f), (-468f * -1000f) / (-744f + -606f)) + 158f) - (-min(802f * -1209f, -1163f - -896f) - (-812f + -(-1192f)));
    var var_3 = select(ceil((vec2<f32>(431f, -104f) * vec2<f32>(-1000f, -1429f)) - vec2<f32>(-492f, -(-403f))), select(vec2<f32>(1563f, -(-698f - -374f)), floor(-vec2<f32>(351f, -1361f)), !vec2<bool>(-30488i >= arg_0, all(vec4<bool>(true, true, true, false)))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(false, true), !vec2<bool>(false, true)), !select(!vec2<bool>(false, false), vec2<bool>(false, false), !vec2<bool>(false, true)), !(!(1i > arg_0))));
    var_1 = (u_input.b - ((~u_input.b ^ (u_input.b + u_input.b)) / (~vec4<u32>(u_input.b.x, 57005u, 65782u, 4294967295u) - u_input.b))) % ~(~(~vec4<u32>(53431u, var_1.x, 1u, 41505u)));
    return -(-vec3<f32>(exp2(floor(1041f)), var_3.x, -(-1000f)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(40270u, 1u);
    let var_1 = select(firstLeadingBit(vec4<u32>(9247u, 1u - var_0.x, u_input.b.x, ~(~13841u))), (vec4<u32>(32279u, 0u, u_input.b.x, var_0.x & u_input.d.x) % ~(~u_input.b)) + (~u_input.b << ((vec4<u32>(5943u, var_0.x, 18792u, 4294967295u) << vec4<u32>(u_input.e, 0u, var_0.x, 33409u)) / countOneBits(vec4<u32>(0u, 0u, u_input.b.x, var_0.x)))), false);
    var var_2 = (max(func_2(37237i), (vec3<f32>(864f, arg_1.b, arg_1.b) / vec3<f32>(-313f, arg_1.b, 1470f)) + select(vec3<f32>(arg_1.b, 414f, 378f), vec3<f32>(1386f, 264f, arg_1.b), true)) / vec3<f32>((-1247f / arg_1.b) - (-1350f * -733f), -exp2(-940f), select(arg_1.b, sign(arg_1.b), false))) - min(-(-(vec3<f32>(954f, 1344f, arg_1.b) * vec3<f32>(734f, arg_1.b, 1187f))), -(step(vec3<f32>(-1000f, arg_1.b, arg_1.b), vec3<f32>(arg_1.b, arg_1.b, 223f)) / (vec3<f32>(2583f, arg_1.b, arg_1.b) / vec3<f32>(-579f, 847f, 1000f))));
    let var_3 = Struct_1(vec4<u32>(0u, 4294967295u * 4294967295u, firstLeadingBit(u_input.b.x), 4098u), vec2<u32>(var_1.x, (u_input.e ^ dot(vec3<u32>(u_input.d.x, 91691u, 0u), u_input.b.wxy)) ^ 4294967295u), 56852u, -clamp(~vec4<i32>(-46289i, u_input.a.x, i32(-2147483648), arg_1.a.x), vec4<i32>(2147483647i, 0i, 0i, 1i) ^ vec4<i32>(u_input.a.x, arg_1.a.x, u_input.c, 33024i), vec4<i32>(18251i, 2817i, arg_1.a.x, -32250i) >> vec4<u32>(u_input.d.x, 12170u, var_0.x, 1u)) * ~vec4<i32>(max(u_input.a.x, u_input.c), ~arg_1.a.x, u_input.c, abs(-5677i)), ~vec4<i32>(countOneBits(-arg_1.a.x), (-1i - i32(-2147483648)) + (2147483647i << var_0.x), max(arg_1.a.x << var_0.x, -44243i), u_input.c));
    var var_4 = Struct_1(~(~(~(var_1 - var_1))), select(vec2<u32>(select(dot(u_input.b, u_input.b), 1u, var_1.x > 2979u), abs(47688u)), vec2<u32>(~4294967295u << 0u, var_3.b.x), vec2<bool>(select(arg_0, false, all(vec2<bool>(true, arg_1.c))), true)), clamp(~9168u << (23231u - u_input.d.x), 0u, var_1.x), ~var_3.d, var_3.e);
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = -u_input.a.x;
    let var_1 = true;
    var var_2 = 2147483647i;
    let var_3 = arg_0;
    let var_4 = var_3.b;
    return firstLeadingBit(~(~reverseBits(vec2<u32>(u_input.b.x, u_input.e)))) ^ (abs(~clamp(u_input.b.zw, u_input.b.yz, vec2<u32>(30148u, 47802u))) ^ firstLeadingBit(vec2<u32>(firstTrailingBit(u_input.d.x), 40735u)));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(false, arg_0, !(!all(!vec3<bool>(false, arg_0, true))));
    let var_1 = Struct_2(~(-(~u_input.a ^ vec2<i32>(1i, arg_1.d.x))), max(((841f - 1559f) / (-331f - -268f)) / -224f, (-(-947f) / func_2(-77157i).x) / -362f), any(!vec3<bool>(arg_0, all(vec3<bool>(arg_0, false, arg_0)), !arg_0)));
    var var_2 = -(~(~(73950i / (u_input.a.x | -58053i))));
    var_2 = u_input.a.x;
    var_2 = -1i - 7298i;
    return func_1(all(vec2<bool>(!false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-(-u_input.a) >> ((vec2<u32>(3727u, u_input.d.x) + (vec2<u32>(1u, u_input.d.x) / u_input.b.xz)) >> (vec2<u32>(u_input.e, u_input.d.x) % ~vec2<u32>(u_input.b.x, u_input.e))), (244f / -752f) - -148f, countOneBits(u_input.d.x) < dot(min(vec4<u32>(20178u, 0u, 55239u, u_input.e) / u_input.b, ~u_input.b), u_input.b));
    var_0 = func_5(false, Struct_1(vec4<u32>(~(u_input.b.x / 162166u), 9915u, u_input.e, u_input.d.x * u_input.b.x), func_4(func_1(false, Struct_2(vec2<i32>(var_0.a.x, -13104i), var_0.b, false)), -vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -29184i)) & ~u_input.d.yz, func_4(func_1(!true, Struct_2(vec2<i32>(-1i, 0i), var_0.b, var_0.c)), (vec4<i32>(-33860i, -12749i, 1i, 38582i) | vec4<i32>(2147483647i, 1i, i32(-2147483648), u_input.c)) << u_input.b).x, -abs(vec4<i32>(var_0.a.x, 26907i, var_0.a.x, u_input.a.x) + vec4<i32>(u_input.a.x, 2147483647i, 1i, -37003i)), select(-(-vec4<i32>(var_0.a.x, var_0.a.x, u_input.c, -10302i)), -vec4<i32>(-23037i, i32(-2147483648), i32(-2147483648), u_input.c), reverseBits(u_input.d.x) > 0u)));
    var_0 = func_1(any(select(vec2<bool>(false || var_0.c, var_0.c && false), vec2<bool>(!true, var_0.c), select(!vec2<bool>(true, false), !vec2<bool>(false, true), select(true, var_0.c, true)))), func_1(func_5(any(select(vec4<bool>(var_0.c, true, true, var_0.c), vec4<bool>(var_0.c, false, var_0.c, var_0.c), var_0.c)), Struct_1(countOneBits(vec4<u32>(u_input.d.x, u_input.e, 29849u, u_input.b.x)), select(u_input.b.xy, vec2<u32>(4294967295u, u_input.d.x), vec2<bool>(false, false)), 1u % 23317u, vec4<i32>(u_input.c, u_input.c, -1i, var_0.a.x), vec4<i32>(-9097i, -6063i, i32(-2147483648), 1i) | vec4<i32>(34100i, -23751i, u_input.a.x, -1i))).c, Struct_2(vec2<i32>(var_0.a.x, u_input.c) >> ~vec2<u32>(14000u, 0u), var_0.b, any(vec3<bool>(var_0.c, var_0.c, var_0.c)))));
    let var_1 = Struct_2((~var_0.a / (~u_input.a * vec2<i32>(u_input.a.x, u_input.c))) >> vec2<u32>(1u, 1u), func_5(false, Struct_1(clamp(~vec4<u32>(1u, 4294967295u, u_input.e, u_input.e), vec4<u32>(u_input.d.x, 37629u, u_input.e, 12624u), vec4<u32>(1u, 49704u, 41430u, u_input.b.x)), ~firstTrailingBit(u_input.b.yw), ~80305u >> ~u_input.d.x, reverseBits(-vec4<i32>(var_0.a.x, -25261i, var_0.a.x, -36579i)), abs(clamp(vec4<i32>(i32(-2147483648), var_0.a.x, var_0.a.x, 62440i), vec4<i32>(u_input.c, u_input.c, u_input.a.x, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, 0i, -22526i))))).b, (-16233i - ((var_0.a.x * -1i) / dot(u_input.a, u_input.a))) < -14387i);
    var var_2 = u_input.e;
    let var_3 = Struct_1(vec4<u32>(4294967295u, u_input.d.x, u_input.b.x, ~dot(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.b.x, 0u))), ~(firstLeadingBit(u_input.b.yw % vec2<u32>(u_input.b.x, 1u)) & vec2<u32>(~u_input.d.x, u_input.d.x)), ~(u_input.b.x + ~countOneBits(u_input.e)), (-(-vec4<i32>(var_1.a.x, -1245i, -1i, u_input.c)) % abs(vec4<i32>(-1i, var_0.a.x, u_input.c, var_1.a.x) ^ vec4<i32>(u_input.c, var_1.a.x, u_input.a.x, var_0.a.x))) & vec4<i32>(~select(1i, 2147483647i, false), var_1.a.x, func_1(false, var_1).a.x, u_input.a.x), -vec4<i32>(var_1.a.x, ~clamp(var_1.a.x, 2865i, 1i), ~var_1.a.x, ~var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(dot(var_3.d.xyw ^ (var_3.d.wyy + vec3<i32>(var_0.a.x, 17746i, var_0.a.x)), vec3<i32>(var_0.a.x, ~var_3.e.x, clamp(~var_0.a.x, 11719i, 45227i << 4294967295u))), ~(~(~53178u)) ^ (2639u - ~(1u >> 36960u)), abs(~9763u) << 105112u);
}

