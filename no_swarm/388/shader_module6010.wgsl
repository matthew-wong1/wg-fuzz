// {"0:0":[7,62,192,176,156,155,145,203,138,47,0,79,47,51,3,158,4,39,114,86,59,42,38,69,61,226,134,215,56,168,68,109,75,117,132,84,189,231,54,186,51,161,32,84,123,78,9,197,173,26,76,135,231,24,163,69,54,92,105,160,199,20,55,190]}
// Seed: 16426513482558808997

struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 25> = array<i32, 25>(i32(-2147483648), 24042i, i32(-2147483648), -13837i, 65634i, -12860i, 2147483647i, -54822i, 31004i, i32(-2147483648), 0i, -1i, -56861i, 9413i, 0i, -5413i, -53137i, 0i, 1i, 0i, 1i, 0i, -18886i, -1i, 45726i);

fn func_1() -> vec3<i32> {
    let var_0 = dot(global0.xxy, u_input.c.xzw);
    var var_1 = Struct_2(Struct_1(abs(reverseBits(vec2<u32>(3365u, global0.x))), vec4<f32>(1000f, -sign(-635f), -(-1000f / -447f), -(-(-311f)))), ~2147483647i);
    let var_2 = var_1.a.b.x;
    var var_3 = ~vec4<i32>(-43775i, 74844i, -abs(u_input.a.x) % 73175i, -46609i);
    return var_3.wzy & -vec3<i32>(6711i, max(~2147483647i, firstTrailingBit(var_3.x)), ~var_1.b >> (47495u | 19969u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(~(vec2<u32>(arg_3.a.x, 1u) ^ ~abs(arg_3.a)), max(vec4<f32>(arg_1.a.b.x, abs(2100f) / (arg_2 + 390f), 1000f + (arg_2 / arg_3.b.x), -245f), sign(-vec4<f32>(-2004f, 1000f, arg_2, arg_2)) * arg_3.b));
    let var_1 = Struct_1(u_input.c.yz ^ arg_3.a, arg_3.b);
    global1 = array<i32, 25>();
    var var_2 = ~(~u_input.d) >> (u_input.d / u_input.c);
    global0 = ~u_input.d;
    return vec3<bool>(any(select(select(vec2<bool>(false, false), !vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, false), !vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), !any(select(vec2<bool>(false, false), !vec2<bool>(true, false), !vec2<bool>(false, false))), any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), false)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(arg_3, firstTrailingBit(~(~(-41968i))));
    var var_1 = Struct_2(Struct_1(~abs(firstTrailingBit(arg_3.a)), vec4<f32>(arg_2, abs(295f - -553f), -113f + max(1511f, 1284f), -var_0.a.b.x - (460f + arg_3.b.x))), reverseBits(var_0.b + ~dot(vec3<i32>(-25974i, 0i, global1[global0.x]), vec3<i32>(-31237i, u_input.a.x, var_0.b))));
    var var_2 = Struct_1(reverseBits(~firstLeadingBit(abs(var_0.a.a))), vec4<f32>(arg_2, (arg_3.b.x * var_1.a.b.x) * var_0.a.b.x, -arg_3.b.x * -(-var_0.a.b.x), var_1.a.b.x + arg_2));
    let var_3 = Struct_1(max(arg_3.a, global0.xw), -ceil(vec4<f32>(1416f / var_1.a.b.x, var_0.a.b.x, 1828f, arg_2)));
    let var_4 = firstTrailingBit(-11949i);
    return u_input.d;
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = select(~vec4<u32>(u_input.d.x, 1u, 0u, u_input.d.x) / reverseBits(vec4<u32>(1u, global0.x, 15588u, global0.x)), min(vec4<u32>(4294967295u, 10127u, global0.x, 0u - 3413u), reverseBits(u_input.d >> u_input.d)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))) | func_4(vec2<u32>(dot(global0.xwy, ~vec3<u32>(global0.x, 0u, u_input.c.x)), abs(u_input.d.x)), all(select(!vec3<bool>(false, false, true), func_3(vec4<i32>(46385i, -15894i, global1[u_input.d.x], u_input.a.x), Struct_2(Struct_1(vec2<u32>(8511u, 32946u), vec4<f32>(1000f, -882f, -2027f, -1730f)), u_input.e), -1000f, Struct_1(u_input.c.yz, vec4<f32>(179f, -634f, 807f, -239f))), vec3<bool>(true, false, false))), 3606f, Struct_1(vec2<u32>(u_input.c.x, firstLeadingBit(1u)), -vec4<f32>(524f, -337f, 184f, -1669f)));
    return ~u_input.c.xw;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>((282f + 1058f) * 787f, exp2((1565f / (102f / arg_2.b.x)) / 162f), floor(-(-1059f / arg_2.b.x)) / 1749f, abs(-411f + (1173f / arg_2.b.x)));
    var_0 = vec4<f32>(var_0.x, select(step(arg_2.b.x, -1467f) * -arg_2.b.x, -var_0.x - arg_2.b.x, arg_1) - (1021f * ((arg_2.b.x * arg_2.b.x) / -2351f)), 526f, -(-abs(698f)) + ceil(-(-arg_2.b.x)));
    global1 = array<i32, 25>();
    let var_1 = abs(-(var_0.wzz + -(arg_2.b.yxw * vec3<f32>(802f, arg_2.b.x, -206f))));
    global1 = array<i32, 25>();
    return Struct_1(~(~u_input.d.yz + func_4(arg_2.a | u_input.d.wy, arg_1, -1337f, arg_2).yz), (sign(arg_2.b + vec4<f32>(1087f, var_0.x, 1916f, arg_2.b.x)) - -abs(arg_2.b)) / vec4<f32>(-(var_0.x + 184f), abs(var_0.x) / var_1.x, select(-(-1534f), -957f, false & arg_1), trunc(377f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(select(~(i32(-2147483648)), 3644i, false), u_input.e, countOneBits(-(-u_input.e)));
    global0 = vec4<u32>(~firstLeadingBit(u_input.b), ~dot(~u_input.c, ~vec4<u32>(global0.x, global0.x, global0.x, 0u)) + ~(u_input.c.x >> (103589u | u_input.b)), ((min(global0.x, 4294967295u) | global0.x) ^ (37466u / 1u)) >> (4294967295u * firstTrailingBit(107833u)), ~((~0u + 1u) << dot(select(global0.xx, global0.yw, false), u_input.d.yw & u_input.c.wz)));
    let var_1 = 1000f;
    let var_2 = exp2(var_1);
    let var_3 = vec2<f32>(var_1 * -(-(var_1 * var_2)), -235f);
    let var_4 = vec3<i32>(abs(u_input.e), -global1[~(12414u % u_input.c.x)], firstLeadingBit(~(2147483647i ^ 0i))) - func_1();
    var var_5 = func_5(dot(u_input.c, u_input.d), true, Struct_1(u_input.c.zx + func_2(-vec3<i32>(var_4.x, var_4.x, global1[u_input.d.x])), -(-vec4<f32>(var_3.x, var_3.x, -628f, var_1)) - -(vec4<f32>(968f, var_2, var_2, var_1) / vec4<f32>(var_1, -1000f, var_3.x, -271f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~32996u - (var_5.a.x >> var_5.a.x), u_input.c.x - func_5(firstTrailingBit(44369u), true | true, Struct_1(u_input.c.yy, vec4<f32>(632f, var_1, var_1, -3015f))).a.x, func_2(vec3<i32>(firstLeadingBit(38773i), u_input.e + var_0.x, -21688i >> 1286u)).x, func_2((u_input.a + vec3<i32>(-1i, u_input.a.x, var_4.x)) >> vec3<u32>(7502u, 59309u, var_5.a.x)).x), ~vec3<u32>(global0.x, dot(vec2<u32>(4294967295u, u_input.c.x), u_input.c.zw + u_input.d.zy), global0.x), abs(~vec2<i32>(-67994i, var_4.x)) * ~countOneBits(vec2<i32>(u_input.a.x, 8045i)));
}

