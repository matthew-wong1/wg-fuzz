// {"0:0":[118,122,213,111,18,207,225,32,34,45,206,49,178,67,15,74,98,24,211,255,158,42,156,5,197,190,0,25,227,111,141,121]}
// Seed: 14160339290794784421

struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(arg_0.c.a.x, u_input.a)), !(!vec2<bool>(arg_0.c.b.x, true)), arg_0.c.c / max(arg_0.b.c, abs(vec2<f32>(197f, arg_0.c.c.x))), 0i, -567i), max(u_input.a, countOneBits(arg_0.b.a.x)), clamp(~firstTrailingBit(arg_1.yy), u_input.b.wx, vec2<u32>(arg_1.x, min(arg_1.x, arg_1.x)) % vec2<u32>(25290u, arg_1.x)), arg_0.c);
    let var_1 = vec3<i32>((2147483647i << 1u) / -1i, ~var_0.a.d, firstTrailingBit(i32(-2147483648))) << vec3<u32>(~arg_1.x, 10128u, u_input.b.x % (~15239u + ~17578u));
    var var_2 = var_0.a.b.x;
    var var_3 = Struct_3(false, arg_0.c, Struct_1(var_1.xz % vec2<i32>(~2147483647i, clamp(u_input.a, var_1.x, 2147483647i)), var_0.a.b, -(exp2(vec2<f32>(arg_0.b.c.x, arg_0.b.c.x)) / var_0.a.c), var_1.x, 13153i % arg_0.c.a.x));
    var_2 = true;
    return -3535i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(arg_0.d.b.x, Struct_1(vec2<i32>(-1i, arg_0.a.a.x), vec2<bool>(countOneBits(1u) > (u_input.b.x * arg_0.c.x), !false), arg_0.a.c, select(-22284i, ~u_input.a | u_input.a, false), arg_0.d.e), Struct_1(vec2<i32>((arg_0.b | u_input.a) << ~1u, select(func_3(Struct_3(arg_0.d.b.x, arg_0.d, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(arg_0.d.b.x, arg_0.d.b.x), arg_0.a.c, u_input.a, arg_0.a.d)), vec3<u32>(11975u, arg_0.c.x, u_input.b.x), u_input.b.wx), u_input.a % 1i, true)), select(!arg_0.d.b, arg_0.d.b, true), sign(select(vec2<f32>(arg_0.d.c.x, arg_0.d.c.x), vec2<f32>(-1099f, -221f), arg_0.a.b.x)) + arg_0.d.c, arg_0.d.d, max(~11810i | arg_0.a.d, u_input.a)));
    let var_1 = 0u;
    var var_2 = -(-573f);
    var var_3 = -30146i;
    var_3 = min(-arg_0.d.d, 0i);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = u_input.b.zyy;
    var_1 = u_input.b.xwx ^ ~vec3<u32>(dot(~vec3<u32>(arg_0.c.x, var_1.x, 1792u), u_input.b.wzx), ~(43317u + 4294967295u), 4294967295u);
    var var_2 = 4294967295u;
    var_2 = dot(u_input.b.yyx, u_input.b.wyw);
    return func_2(func_2(arg_0)).a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_4(Struct_2(func_2(func_2(Struct_2(arg_0, i32(-2147483648), u_input.b.yx, Struct_1(arg_0.a, arg_0.b, vec2<f32>(218f, 970f), u_input.a, i32(-2147483648))))).d, func_2(Struct_2(Struct_1(arg_0.a, vec2<bool>(true, arg_0.b.x), vec2<f32>(arg_0.c.x, arg_0.c.x), i32(-2147483648), 47971i), -59552i, u_input.b.xw, Struct_1(vec2<i32>(2147483647i, arg_0.d), vec2<bool>(false, arg_0.b.x), arg_0.c, i32(-2147483648), i32(-2147483648)))).a.a.x, ~u_input.b.xy, arg_0), Struct_1(arg_0.a, select(select(vec2<bool>(false, false), vec2<bool>(true, arg_0.b.x), true), vec2<bool>(false, true), func_4(Struct_2(arg_0, 1i, u_input.b.yz, Struct_1(vec2<i32>(0i, u_input.a), vec2<bool>(true, false), vec2<f32>(arg_0.c.x, arg_0.c.x), arg_0.e, 25806i)), Struct_1(arg_0.a, arg_0.b, vec2<f32>(arg_0.c.x, -618f), u_input.a, 2147483647i)).b.x), -(-arg_0.c), arg_0.a.x, -22159i >> min(u_input.b.x, 4294967295u))), 0i, ~(((vec2<u32>(4294967295u, u_input.b.x) / u_input.b.yw) % ~u_input.b.yx) - u_input.b.yw), func_4(func_2(func_2(func_2(Struct_2(arg_0, arg_0.e, u_input.b.xx, arg_0)))), arg_0));
    var_0 = func_2(func_2(Struct_2(arg_0, arg_0.d, var_0.c, Struct_1(var_0.d.a / var_0.d.a, select(vec2<bool>(arg_0.b.x, var_0.d.b.x), var_0.d.b, arg_0.b), -var_0.d.c, i32(-2147483648), ~(i32(-2147483648))))));
    var_0 = Struct_2(func_4(Struct_2(func_2(func_2(Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(var_0.d.b.x, var_0.d.b.x), arg_0.c, var_0.d.e, -12647i), -7686i, u_input.b.zy, Struct_1(var_0.a.a, vec2<bool>(arg_0.b.x, var_0.d.b.x), arg_0.c, var_0.b, var_0.a.a.x)))).a, dot(vec4<i32>(33928i, var_0.d.d, -4212i, 8747i), vec4<i32>(arg_0.e, arg_0.a.x, u_input.a, 0i)), vec2<u32>(~u_input.b.x, dot(u_input.b.wx, u_input.b.xw)), Struct_1(~arg_0.a, vec2<bool>(var_0.d.b.x, true), var_0.d.c + var_0.d.c, 2147483647i, 2147483647i)), arg_0), var_0.a.a.x, ~(~(~vec2<u32>(u_input.b.x, u_input.b.x)) + vec2<u32>(u_input.b.x / 15515u, 23294u | 0u)), Struct_1(reverseBits(vec2<i32>(arg_0.a.x, u_input.a)) - abs(-var_0.d.a), func_2(func_2(func_2(Struct_2(arg_0, 34751i, vec2<u32>(u_input.b.x, var_0.c.x), arg_0)))).a.b, func_4(Struct_2(var_0.a, i32(-2147483648), ~u_input.b.wz, Struct_1(vec2<i32>(-1i, -21301i), arg_0.b, vec2<f32>(-1182f, arg_0.c.x), var_0.b, arg_0.e)), func_2(Struct_2(var_0.d, arg_0.e, vec2<u32>(u_input.b.x, var_0.c.x), var_0.a)).d).c, clamp(max(abs(1i), -1i - u_input.a), func_2(func_2(Struct_2(arg_0, var_0.d.d, vec2<u32>(var_0.c.x, 154758u), Struct_1(var_0.d.a, vec2<bool>(false, false), var_0.a.c, arg_0.a.x, var_0.a.d)))).d.a.x, 2147483647i), ~(countOneBits(var_0.a.a.x) | ~2147483647i)));
    let var_1 = -(var_0.a.c.x - 759f) + -235f;
    var_0 = Struct_2(arg_0, -(dot(vec2<i32>(-32678i, arg_0.e), vec2<i32>(-12255i, 2147483647i)) >> 4294967295u) << 75445u, var_0.c, func_4(Struct_2(var_0.d, u_input.a, vec2<u32>(u_input.b.x | u_input.b.x, u_input.b.x), func_4(func_2(Struct_2(var_0.d, arg_0.e, vec2<u32>(1u, 4294967295u), arg_0)), func_2(Struct_2(Struct_1(arg_0.a, var_0.d.b, vec2<f32>(var_0.a.c.x, 246f), 0i, u_input.a), arg_0.e, vec2<u32>(u_input.b.x, var_0.c.x), Struct_1(vec2<i32>(u_input.a, var_0.a.e), arg_0.b, var_0.a.c, var_0.b, var_0.d.a.x))).a)), arg_0));
    return var_0.a;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = arg_1.d.b.x;
    var_0 = arg_1.d.b.x;
    let var_1 = trunc(vec2<f32>(arg_0, -(-166f)));
    var var_2 = firstTrailingBit(~(87228u >> 0u));
    let var_3 = vec2<bool>(~clamp(~u_input.b.x, arg_1.c.x, arg_1.c.x) == u_input.b.x, !arg_1.d.b.x);
    return min(-vec4<f32>(1000f + 1507f, -1000f + arg_1.a.c.x, -(var_1.x + var_1.x), 807f), vec4<f32>(-(arg_0 / -408f), exp2(-var_1.x) + ceil(-var_1.x), -select(369f, -260f, false), var_1.x * -637f));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = arg_0 + step(-(arg_0 + (vec4<f32>(arg_1.x, -1322f, arg_1.x, arg_1.x) / arg_0)), arg_0);
    var var_1 = arg_0.x;
    let var_2 = u_input.a;
    var_1 = -1389f;
    var_0 = func_6((-269f - (-var_0.x + (arg_1.x * -1526f))) * (floor(var_0.x) + step(-777f / var_0.x, -1729f)), Struct_2(func_5(func_4(func_2(Struct_2(Struct_1(vec2<i32>(var_2, -1i), vec2<bool>(true, true), var_0.zw, 30909i, 40551i), u_input.a, u_input.b.yy, Struct_1(vec2<i32>(var_2, -2577i), vec2<bool>(false, true), var_0.yx, 18953i, u_input.a))), Struct_1(vec2<i32>(-44612i, var_2), vec2<bool>(false, false), vec2<f32>(390f, var_0.x), -52062i, 65573i))), -dot(vec4<i32>(794i, 1i, u_input.a, 12743i), vec4<i32>(0i, u_input.a, 19172i, u_input.a)) / ((0i & -20961i) ^ (-26546i ^ var_2)), ~(vec2<u32>(25902u, u_input.b.x) / vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec2<i32>(var_2, ~u_input.a), func_5(func_2(Struct_2(Struct_1(vec2<i32>(var_2, -6900i), vec2<bool>(true, false), var_0.xx, u_input.a, var_2), -71111i, vec2<u32>(0u, 883u), Struct_1(vec2<i32>(var_2, var_2), vec2<bool>(false, false), vec2<f32>(arg_0.x, arg_0.x), 2147483647i, 1i))).a).b, func_2(func_2(Struct_2(Struct_1(vec2<i32>(0i, 4673i), vec2<bool>(true, true), vec2<f32>(arg_0.x, arg_1.x), u_input.a, 0i), 2147483647i, u_input.b.wx, Struct_1(vec2<i32>(var_2, u_input.a), vec2<bool>(true, false), var_0.yw, 2147483647i, 0i)))).d.c, func_2(func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, 0i), vec2<bool>(false, false), vec2<f32>(arg_0.x, arg_0.x), u_input.a, var_2), u_input.a, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec2<i32>(18038i, var_2), vec2<bool>(true, true), vec2<f32>(arg_1.x, 518f), u_input.a, -16544i)))).b, i32(-2147483648))));
    return func_2(func_2(Struct_2(Struct_1(-vec2<i32>(28132i, var_2), !vec2<bool>(true, true), floor(arg_1.xx), firstTrailingBit(var_2), func_3(Struct_3(true, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true), vec2<f32>(-1000f, arg_1.x), var_2, -1i), Struct_1(vec2<i32>(10489i, u_input.a), vec2<bool>(true, true), arg_1.zx, 0i, var_2)), u_input.b.zyw, u_input.b.wy)), firstLeadingBit(-9865i), ~vec2<u32>(u_input.b.x, u_input.b.x) % (u_input.b.xz >> vec2<u32>(2949u, u_input.b.x)), Struct_1(vec2<i32>(u_input.a, u_input.a) >> vec2<u32>(u_input.b.x, u_input.b.x), func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, var_2), vec2<bool>(true, true), vec2<f32>(788f, 348f), -13191i, -16504i), 17644i, vec2<u32>(4294967295u, 0u), Struct_1(vec2<i32>(var_2, var_2), vec2<bool>(true, false), arg_1.yz, i32(-2147483648), -75305i))).d.b, arg_1.yx, ~u_input.a, -var_2)))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(!false, true & true), false), select(func_1(-vec4<f32>(-1606f, 1158f, -1067f, 181f), vec3<f32>(184f, -2051f, 294f)), vec2<bool>(false, !true), !func_5(Struct_1(vec2<i32>(-40616i, u_input.a), vec2<bool>(true, true), vec2<f32>(102f, 117f), 0i, -1i)).b.x), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), select(select(!func_1(vec4<f32>(686f, -1984f, 927f, 199f), vec3<f32>(1402f, -304f, 1000f)), select(vec2<bool>(true, false), !vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), func_2(func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true), vec2<f32>(1936f, 949f), u_input.a, 23724i), u_input.a, u_input.b.zw, Struct_1(vec2<i32>(u_input.a, i32(-2147483648)), vec2<bool>(true, true), vec2<f32>(-107f, 623f), u_input.a, -24148i)))).d.b), vec2<bool>(!any(vec4<bool>(true, false, true, false)), -(-645f) <= (-782f + 1172f)), all(vec3<bool>(!false, !true, true))), select(func_5(Struct_1(vec2<i32>(u_input.a, -1i), func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, -6592i), vec2<bool>(true, true), vec2<f32>(-298f, -185f), u_input.a, u_input.a), 1i, u_input.b.wz, Struct_1(vec2<i32>(18860i, 28079i), vec2<bool>(false, false), vec2<f32>(-964f, -496f), -24144i, u_input.a))).a.b, func_5(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false), vec2<f32>(315f, 1302f), 1i, u_input.a)).c, u_input.a, 1i)).b, !(!(!vec2<bool>(false, true))), -40701i <= (-8518i % (u_input.a ^ u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(trunc(-(1390f - 299f) / (exp2(-123f) / func_6(-1204f, Struct_2(Struct_1(vec2<i32>(u_input.a, 63166i), vec2<bool>(var_0.x, false), vec2<f32>(364f, -759f), 1i, 1i), -74408i, u_input.b.yz, Struct_1(vec2<i32>(5927i, u_input.a), vec2<bool>(false, true), vec2<f32>(680f, 953f), u_input.a, -1i))).x)), -(152f / -396f));
}

