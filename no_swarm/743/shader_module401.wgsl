// {"0:0":[61,224,126,136]}
// Seed: 13153596627463794439

struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1644f, 1000f, -1089f, 418f, 168f, -854f, 356f, -380f, -209f, 703f, 1618f, -1000f, 1560f, 1415f, -519f, 1000f, 1081f, 356f, 1083f, 463f, 1142f, 668f, 2291f, -279f, 208f, 352f);

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 77352u, 31697u, 8759u), vec4<u32>(43609u, 1u, 0u, 0u), vec4<u32>(1u, 40114u, 100024u, 34761u), vec4<u32>(1u, 1u, 4294967295u, 77451u));

var<private> global2: array<i32, 30> = array<i32, 30>(-1i, i32(-2147483648), -19778i, -42387i, 2147483647i, 6985i, 0i, -31686i, 36542i, -399i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 6416i, 560i, -5212i, 36651i, 2147483647i, 27529i, -27776i, 30797i, 46582i, 20769i, -8740i, 1i, -1i, -51159i, -1i, -36365i);

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_1.c.e;
    var var_1 = arg_1.c.c;
    return vec2<f32>(1081f, select(var_1.b.x - var_0.a.x, -var_1.b.x * -279f, arg_2.x));
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = Struct_3(Struct_1(-204f, func_3(arg_1.b.zwy, Struct_4(Struct_1(1082f, vec2<f32>(137f, -360f), arg_0), vec4<i32>(global2[65401u], global2[1u], -41842i, 1i) | vec4<i32>(1i, -32550i, global2[23646u], -6773i), Struct_3(Struct_1(arg_1.a, arg_1.b.wz, -8448i), Struct_2(arg_1.b.xyy), Struct_1(772f, vec2<f32>(-1611f, global0[105324u]), arg_0), global1[u_input.a], Struct_2(arg_1.b.ywz))), !(!vec2<bool>(true, false))), -32452i), Struct_2(arg_1.b.xwy), Struct_1(-(-347f) + 714f, -(-arg_1.b.zz), arg_0), abs(vec4<u32>(0u, clamp(1u, u_input.a, u_input.a) - u_input.a, 1u, arg_2)), Struct_2(vec3<f32>(-1109f, -683f, arg_1.b.x) * arg_1.b.zzy));
    let var_1 = global1[dot(vec3<u32>(1u, firstTrailingBit(dot(global1[arg_2 + 4294967295u], global1[67405u])), var_0.d.x), vec3<u32>(21064u, ~(var_0.d.x << u_input.a), 69931u - ~(~u_input.a)))];
    global1 = array<vec4<u32>, 4>();
    let var_2 = min((vec3<u32>(4294967295u, 53338u, 0u) / ((var_1.wzw / vec3<u32>(var_0.d.x, 0u, 1u)) % countOneBits(var_1.wwz))) >> ~(~var_1.xwx), vec3<u32>(clamp(dot(~global1[0u], vec4<u32>(2803u, 9633u, 55901u, u_input.a)), firstTrailingBit(~0u), 0u), 1u % min(0u, dot(var_0.d.xzx, var_1.zwy)), clamp(~arg_2, max(var_0.d.x, 1u), var_1.x)));
    var_0 = Struct_3(var_0.c, var_0.e, Struct_1(global0[~(~(29486u ^ var_2.x))], -(-(vec2<f32>(arg_1.a, var_0.c.b.x) / vec2<f32>(var_0.e.a.x, 1038f))), var_0.c.c), ~(~select(~vec4<u32>(var_2.x, 0u, 4294967295u, var_1.x), global1[var_1.x] * global1[arg_2], any(vec4<bool>(true, false, true, true)))), Struct_2(-floor(var_0.b.a) + max(vec3<f32>(arg_1.a, -1000f, 1569f), -vec3<f32>(var_0.b.a.x, 154f, 483f))));
    return ~(~dot(~vec4<u32>(var_0.d.x, 8683u, 1u, var_0.d.x), max(vec4<u32>(20215u, 3393u, 23929u, 4294967295u), vec4<u32>(7890u, 26999u, var_2.x, 4294967295u)) << global1[~var_0.d.x]));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec2<bool> {
    global2 = array<i32, 30>();
    var var_0 = arg_0;
    return vec2<bool>(all(vec2<bool>(true, -arg_1.a.b.x >= -global0[67160u])), !(any(vec3<bool>(true, false, false)) & false) || true);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> vec2<i32> {
    let var_0 = select(func_4(dot(firstLeadingBit(vec4<u32>(arg_0.x, 38331u, arg_0.x, 0u)), vec4<u32>(firstLeadingBit(4294967295u), ~u_input.a, func_2(-1i, Struct_5(523f, vec4<f32>(676f, global0[1u], -1418f, -949f)), u_input.a), countOneBits(arg_3))), Struct_3(Struct_1(-(-1139f), sign(vec2<f32>(209f, 316f)), global2[reverseBits(22669u)]), Struct_2(max(vec3<f32>(arg_2, -676f, -703f), vec3<f32>(arg_2, 540f, global0[arg_3]))), Struct_1(arg_2, vec2<f32>(global0[95573u], -1259f), -64531i), vec4<u32>(firstTrailingBit(38139u), 4294967295u, 1u, 4294967295u), Struct_2(-vec3<f32>(global0[arg_0.x], arg_2, global0[arg_0.x]))), 89100u, dot(vec3<i32>(-26474i, -55155i, 1i) ^ (vec3<i32>(global2[u_input.a], -6223i, global2[4294967295u]) & vec3<i32>(global2[4294967295u], global2[39672u], global2[4294967295u])), vec3<i32>(-2147483647i, global2[abs(0u)], ~global2[u_input.a]))), select(!arg_1.wy, func_4(u_input.a, Struct_3(Struct_1(arg_2, vec2<f32>(global0[24195u], 114f), i32(-2147483648)), Struct_2(vec3<f32>(global0[u_input.a], arg_2, global0[arg_3])), Struct_1(global0[u_input.a], vec2<f32>(304f, 1293f), global2[u_input.a]), vec4<u32>(25000u, 78111u, 10204u, arg_3), Struct_2(vec3<f32>(-1380f, arg_2, -1567f))), clamp(arg_0.x, 6016u - arg_3, 1u & arg_0.x), select(~global2[arg_0.x], 9153i, arg_1.x)), !true), false);
    let var_1 = arg_1.wy;
    global0 = array<f32, 26>();
    var var_2 = Struct_2(trunc(-(-vec3<f32>(482f, -1037f, global0[4294967295u]))));
    var var_3 = func_2(global2[1u], Struct_5(-arg_2, exp2(vec4<f32>(-arg_2, var_2.a.x, 1339f, arg_2))), ~u_input.a | u_input.a);
    return -vec2<i32>(firstTrailingBit(global2[~abs(4294967295u)]), 10801i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 4>();
    var var_0 = vec3<u32>(u_input.a | reverseBits(4294967295u), ~(~u_input.a), u_input.a);
    var var_1 = max(~firstTrailingBit(1i), global2[~u_input.a]) | (firstTrailingBit(dot(func_1(vec3<u32>(106470u, 19815u, 35197u), vec4<bool>(false, true, false, false), 1687f, var_0.x), countOneBits(vec2<i32>(4668i, 4987i)))) & (countOneBits(reverseBits(0i)) % 1i));
    var var_2 = 1000f;
    var_1 = abs(-1i) % 1i;
    var var_3 = !((1u % ~7650u) != ~(u_input.a ^ (0u | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec3<i32>(17181i + 19094i, -global2[73982u], max(38837i, global2[51654u])), abs(vec3<i32>(global2[32714u], -4997i, global2[1u])), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), exp2(global0[~85624u]), -abs(abs(17852i)), global2[var_0.x], select(max(-(-690f), -global0[var_0.x]) * global0[~(~var_0.x)], -global0[func_2(global2[~u_input.a], Struct_5(-759f, vec4<f32>(global0[4294967295u], -1000f, global0[u_input.a], global0[u_input.a])), abs(1u))], true));
}

