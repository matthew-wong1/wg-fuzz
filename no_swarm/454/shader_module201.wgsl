// {"0:0":[188,220,152,198,125,247,172,216,201,190,129,4,167,243,153,133,77,192,70,84]}
// Seed: 5659899142810704859

struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true), Struct_5(true));

var<private> global2: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(false), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(true), Struct_5(false));

var<private> global3: array<f32, 12> = array<f32, 12>(851f, -2328f, -873f, 1396f, 893f, -166f, 821f, 385f, 1000f, -554f, -623f, 577f);

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = !(!false);
    var var_1 = select(arg_3, !(!select(select(vec2<bool>(arg_1.b, false), arg_3, arg_3.x), arg_3, !false)), vec2<bool>(all(!vec2<bool>(var_0, arg_3.x)), true | false));
    global0 = u_input.d << (abs((arg_1.c.x ^ 1u) ^ (arg_1.c.x | arg_1.c.x)) * 0u);
    global0 = -65653i;
    global2 = array<Struct_5, 16>();
    return ~(~(~vec4<u32>(4294967295u, arg_2, 53369u, 4294967295u)) & vec4<u32>(arg_1.c.x, 4294967295u, ~(23776u | 4294967295u), 1u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(firstLeadingBit(~dot(arg_1.zww + vec3<u32>(arg_2.a, 62117u, 28037u), ~arg_1.yww)), firstLeadingBit(arg_2.b), -arg_2.d.x, select(arg_2.d, ~(-(arg_2.b.zz ^ arg_2.d)), all(select(arg_0, select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x)), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))));
    var var_1 = 236f;
    let var_2 = select(global3[firstLeadingBit(~(1u << 1u) + var_0.a)], global3[abs(0u) ^ abs(1u)], arg_0.x);
    var var_3 = vec2<bool>(!false, arg_0.x);
    let var_4 = Struct_4(Struct_1(((vec3<f32>(global3[59216u], var_2, global3[39858u]) + vec3<f32>(var_2, -2227f, var_2)) + -vec3<f32>(1111f, -284f, global3[15534u])) * -(-vec3<f32>(global3[arg_1.x], -812f, 1000f)), arg_0.x, vec2<u32>(6677u, countOneBits(4294967295u))), Struct_1(vec3<f32>(global3[var_0.a], -(-312f), -global3[var_0.a]) / (vec3<f32>(409f, -876f, 587f) / vec3<f32>(var_2, -1108f, var_2)), var_3.x, ~(vec2<u32>(u_input.e, 4294967295u) & clamp(vec2<u32>(var_0.a, var_0.a), vec2<u32>(4294967295u, 0u), arg_1.wy))), 29965u, Struct_1(round(vec3<f32>(644f, ceil(global3[var_0.a]), max(420f, -1000f))), false, vec2<u32>(var_0.a, arg_1.x)));
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    global3 = array<f32, 12>();
    let var_0 = Struct_4(Struct_1(arg_0.a.a, func_4(vec4<bool>(u_input.b == u_input.a, arg_0.a.c.x > u_input.e, arg_0.b.b | false, !arg_0.c.b), func_3(-vec4<f32>(735f, arg_0.c.a.x, 279f, arg_0.a.a.x), arg_0.c, 0u, vec2<bool>(arg_0.c.b, true)), Struct_3(firstLeadingBit(u_input.a), vec3<i32>(-10604i, 4471i, u_input.d) / vec3<i32>(u_input.d, u_input.d, u_input.d), reverseBits(0i), vec2<i32>(-8521i, -1i) ^ vec2<i32>(u_input.d, u_input.d))), arg_0.b.c), arg_0.c, 8942u, Struct_1(((vec3<f32>(global3[arg_0.b.c.x], 292f, -228f) + vec3<f32>(arg_1, 1422f, 342f)) / (arg_0.c.a * vec3<f32>(global3[u_input.c], 139f, global3[u_input.e]))) * -vec3<f32>(arg_1, arg_1, -1000f), arg_0.b.b, min(vec2<u32>(49751u, ~u_input.e), ~vec2<u32>(1u, arg_0.a.c.x) / (vec2<u32>(53880u, 4294967295u) - arg_0.a.c))));
    var var_1 = Struct_2(Struct_1(-(-arg_0.c.a) - arg_0.b.a, select(any(select(vec3<bool>(true, arg_0.b.b, var_0.d.b), vec3<bool>(var_0.d.b, var_0.d.b, arg_0.a.b), var_0.a.b)), var_0.d.b || var_0.a.b, all(vec4<bool>(true, false, var_0.a.b, var_0.b.b))), var_0.b.c % arg_0.c.c), Struct_1(min((var_0.a.a - arg_0.c.a) * -arg_0.b.a, sign(arg_0.b.a) / (var_0.b.a - vec3<f32>(arg_0.c.a.x, arg_1, var_0.b.a.x))), !arg_0.b.b, abs(arg_0.b.c) ^ ((var_0.d.c << vec2<u32>(u_input.b, u_input.a)) * reverseBits(vec2<u32>(4701u, 81600u)))), var_0.d);
    let var_2 = select(-(-vec2<f32>(var_0.a.a.x, global3[var_0.d.c.x])), vec2<f32>(-arg_0.b.a.x, arg_1) + -vec2<f32>(global3[42960u], -1223f), !vec2<bool>(!true, !false)) * vec2<f32>(var_0.d.a.x - -arg_1, -564f);
    let var_3 = firstTrailingBit(u_input.d);
    return reverseBits(clamp(-(-(vec2<i32>(u_input.d, 0i) % vec2<i32>(u_input.d, u_input.d))), -abs(vec2<i32>(var_3, var_3)), vec2<i32>(~var_3 | (var_3 << 28843u), ~(~(-27540i)))));
}

fn func_1() -> Struct_4 {
    let var_0 = -16486i ^ -8946i;
    var var_1 = -clamp(vec2<i32>(-38894i * u_input.d, abs(u_input.d) % (1i << 0u)), vec2<i32>(-u_input.d, 1i) ^ (func_2(Struct_2(Struct_1(vec3<f32>(1183f, global3[7251u], 239f), false, vec2<u32>(1u, 17355u)), Struct_1(vec3<f32>(global3[u_input.e], 234f, 629f), false, vec2<u32>(u_input.c, 1u)), Struct_1(vec3<f32>(global3[u_input.a], -460f, 845f), true, vec2<u32>(u_input.c, 1u))), 867f) + func_2(Struct_2(Struct_1(vec3<f32>(-2262f, global3[4294967295u], global3[u_input.e]), false, vec2<u32>(u_input.b, u_input.c)), Struct_1(vec3<f32>(1321f, -340f, 446f), true, vec2<u32>(21769u, 3440u)), Struct_1(vec3<f32>(-1000f, 910f, 990f), false, vec2<u32>(9900u, 20165u))), global3[4294967295u])), max(-vec2<i32>(var_0, 29638i), vec2<i32>(u_input.d, var_0)));
    global0 = dot(~firstTrailingBit(countOneBits(vec2<i32>(i32(-2147483648), -52078i) & vec2<i32>(-21201i, u_input.d))), reverseBits(vec2<i32>(-1i, 19174i)));
    let var_2 = vec4<u32>(~9694u * 1u, 4294967295u, dot(countOneBits(select(select(vec2<u32>(1u, 8489u), vec2<u32>(1u, 68055u), true), vec2<u32>(60786u, u_input.c) & vec2<u32>(53052u, 0u), vec2<bool>(true, false))), abs(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.b), vec2<bool>(true, false)) | ~vec2<u32>(u_input.b, u_input.c))), 1u);
    global1 = array<Struct_5, 28>();
    return Struct_4(Struct_1((select(vec3<f32>(409f, -186f, global3[var_2.x]), vec3<f32>(global3[var_2.x], -1485f, 1146f), true) * min(vec3<f32>(global3[var_2.x], global3[u_input.b], global3[4294967295u]), vec3<f32>(global3[33532u], global3[u_input.a], -546f))) / (vec3<f32>(global3[28040u], global3[u_input.c], -1541f) / -vec3<f32>(1069f, 1151f, global3[var_2.x])), all(vec4<bool>(26787u < 1u, all(vec2<bool>(false, true)), false, false & false)), vec2<u32>(countOneBits(32495u), ~var_2.x) >> (vec2<u32>(11047u, 27486u) ^ (vec2<u32>(6993u, var_2.x) << var_2.yw))), Struct_1(-(-vec3<f32>(1389f, global3[u_input.a], -1610f) - -vec3<f32>(global3[1u], -687f, global3[var_2.x])), any(!(!vec4<bool>(false, false, false, false))), ~vec2<u32>(1u, 0u)), ~var_2.x / 0u, Struct_1(-(-(-vec3<f32>(-470f, global3[0u], global3[u_input.a]))), !(-global3[0u] < -global3[u_input.c]), (vec2<u32>(u_input.e, 13272u) - vec2<u32>(u_input.a, u_input.e)) % func_3(vec4<f32>(351f, 1000f, 108f, 1000f), Struct_1(vec3<f32>(global3[107737u], global3[59533u], -342f), false, var_2.ww), ~u_input.a, vec2<bool>(true, true)).yx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 16>();
    var var_0 = Struct_1((step(-vec3<f32>(global3[1u], 230f, global3[u_input.b]), -vec3<f32>(808f, global3[u_input.c], -919f)) * ((vec3<f32>(-311f, 470f, -1050f) / vec3<f32>(702f, -373f, -863f)) * -vec3<f32>(1000f, global3[u_input.e], 1412f))) + vec3<f32>(-1837f, abs(-1310f), 202f), !false, select(~countOneBits(vec2<u32>(1u, 0u)), clamp(vec2<u32>(u_input.b, u_input.a) >> vec2<u32>(49862u, u_input.e), vec2<u32>(0u, u_input.e) | vec2<u32>(13003u, u_input.a), ~vec2<u32>(39654u, 4294967295u)), !true) ^ vec2<u32>(4294967295u, ~12513u));
    var var_1 = func_1();
    global2 = array<Struct_5, 16>();
    var var_2 = vec2<bool>(func_4(vec4<bool>(!var_1.d.b, !any(vec3<bool>(true, false, false)), all(vec2<bool>(var_1.a.b, var_0.b)), !(-1022f > -1748f)), ~vec4<u32>(0u, var_0.c.x | u_input.c, var_0.c.x, var_0.c.x), Struct_3(16997u, -(-vec3<i32>(u_input.d, u_input.d, u_input.d)), reverseBits(2147483647i), vec2<i32>(u_input.d, i32(-2147483648)) % vec2<i32>(31598i, u_input.d))), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_0.c.x, (4294967295u << u_input.b) + (var_0.c.x ^ var_0.c.x)), vec3<f32>(global3[func_1().d.c.x], global3[func_3(-(vec4<f32>(var_0.a.x, global3[1u], 1672f, -1899f) + vec4<f32>(var_0.a.x, var_0.a.x, -932f, var_0.a.x)), var_1.a, ~(~49058u), select(select(vec2<bool>(false, false), vec2<bool>(var_2.x, true), var_1.b.b), !vec2<bool>(var_2.x, false), var_1.a.b)).x], ceil(-(-var_0.a.x))), func_1().a.a.x, clamp(0u, var_0.c.x, var_1.d.c.x), sign(floor(vec3<f32>(-582f, -global3[80801u], -532f))));
}

