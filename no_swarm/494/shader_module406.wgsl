// {"0:0":[64,127,180,140]}
// Seed: 16272029463019621383

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = (vec4<i32>(firstLeadingBit(arg_1.b.x), 0i % 2147483647i, clamp(21974i, 0i >> 4294967295u, 2147483647i), dot(~vec4<i32>(2147483647i, u_input.a, -90361i, arg_0), ~vec4<i32>(u_input.a, -20835i, arg_1.b.x, arg_1.b.x))) ^ vec4<i32>(7144i, u_input.a, -16333i, -40031i)) | ((-vec4<i32>(2147483647i, u_input.a, u_input.a, arg_0) * (vec4<i32>(arg_0, 1i, -22357i, arg_1.b.x) >> abs(vec4<u32>(1u, 36144u, 17476u, 4294967295u)))) - vec4<i32>(dot(vec3<i32>(u_input.a, -1i, 35370i), countOneBits(vec3<i32>(0i, -11993i, arg_1.b.x))), -(-44871i), countOneBits(arg_0) ^ arg_1.b.x, u_input.a % -1i));
    var var_1 = !any(vec2<bool>(any(vec3<bool>(false, true, false)), !any(vec4<bool>(true, false, true, true))));
    var var_2 = true;
    var var_3 = ~(dot(vec4<u32>(4294967295u, 4294967295u, 0u, 67307u) % vec4<u32>(86622u, 0u, 0u, 76661u), select(vec4<u32>(4294967295u, 4499u, 82696u, 84647u), vec4<u32>(4294967295u, 118469u, 0u, 3991u), vec4<bool>(true, false, true, false))) / 45916u) < (((~18727u << (0u >> 4294967295u)) / 73087u) | countOneBits(0u));
    var_2 = !(!(!false));
    return !(!(!vec4<bool>(false, all(vec2<bool>(true, true)), !false, !true)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: bool) -> vec3<bool> {
    global0 = any(func_3(-u_input.a, Struct_3(Struct_1(127f), vec3<i32>(u_input.a, -30774i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 57510i), Struct_1(-1000f)))) & (any(vec4<bool>(arg_3 & true, !arg_3, arg_3, arg_3)) && arg_3);
    var var_0 = Struct_2(Struct_1(-select(481f, -491f, true) + -912f));
    let var_1 = Struct_4(min(abs(abs(vec2<u32>(arg_1, arg_2))), min(clamp(vec2<u32>(58420u, 4294967295u), vec2<u32>(21445u, arg_1), vec2<u32>(arg_0, arg_2)), min(vec2<u32>(arg_1, 4294967295u), vec2<u32>(20470u, 1u))) * clamp(vec2<u32>(4294967295u, arg_2), vec2<u32>(arg_2, arg_0) | vec2<u32>(27253u, 0u), vec2<u32>(arg_0, arg_2))), min(var_0.a.a, -(var_0.a.a - 159f)) - -var_0.a.a);
    global0 = arg_3;
    var var_2 = ~arg_0 / (arg_1 * (~4294967295u % ~countOneBits(0u)));
    return !(!(!vec3<bool>(!true, all(vec2<bool>(true, true)), false || arg_3)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_4(~firstLeadingBit(~max(vec2<u32>(0u, arg_0.x), vec2<u32>(arg_0.x, 4294967295u))), -(-1558f) + sign(609f));
    var var_1 = arg_0.x < ~abs(min(arg_0.x, arg_0.x % 1u));
    var_1 = true;
    global0 = func_3((arg_1.x - 2147483647i) % -1i, Struct_3(Struct_1(ceil(-(-382f))), ~countOneBits(~vec3<i32>(arg_1.x, u_input.a, 1i)), Struct_1(-(-var_0.b)))).x;
    var var_2 = reverseBits(~10366i);
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_5(Struct_2(Struct_1(575f)));
    global0 = !(!(!(-1390f > var_0.a.a.a)));
    var var_1 = -(-arg_0.b);
    global0 = true & (arg_0.a.x > max(4294967295u, 46273u));
    var_1 = var_0.a.a.a * var_0.a.a.a;
    return Struct_4((arg_0.a & arg_0.a) ^ vec2<u32>(~(~arg_1), (1u + 1u) + 17960u), -(-((var_0.a.a.a - -209f) * floor(var_0.a.a.a))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_5(func_4(vec3<u32>(~4294967295u, abs(59634u), 43800u - 60234u) * vec3<u32>(~0u, 0u << 1729u, dot(vec2<u32>(1u, 15253u), vec2<u32>(0u, 58959u))), ~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(0u, 26886u) * vec2<u32>(1u, 27450u))), func_2(dot(vec3<u32>(6738u, 46006u, 1u), countOneBits(vec3<u32>(4294967295u, 83603u, 4294967295u))), 4294967295u, select(dot(vec4<u32>(96250u, 4294967295u, 1u, 2574u), vec4<u32>(40596u, 4294967295u, 10463u, 1u)), 16794u >> 5882u, true), -u_input.a > -u_input.a), !func_2(firstTrailingBit(60698u), 42222u, 11589u | 14218u, true).x), dot(vec3<u32>(max(4294967295u, 5950u << 68760u), firstTrailingBit(4294967295u), 4294967295u), reverseBits(vec3<u32>(12136u, 4294967295u, 28056u)) << ((vec3<u32>(4294967295u, 34033u, 57017u) * vec3<u32>(4294967295u, 14231u, 1u)) ^ firstTrailingBit(vec3<u32>(16114u, 0u, 4294967295u)))));
    let var_1 = reverseBits(abs(vec4<u32>(var_0.a.x % var_0.a.x, 4294967295u, reverseBits(4294967295u), 1u ^ var_0.a.x) % countOneBits(firstLeadingBit(vec4<u32>(var_0.a.x, var_0.a.x, 9088u, 25602u)))));
    var var_2 = Struct_1(max(var_0.b, var_0.b));
    var_2 = Struct_1(func_4(var_1.zyx, ~(vec2<i32>(u_input.a, 29031i) % select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true)), func_2(var_0.a.x, var_1.x, 13170u, !true), true | false).b);
    return firstLeadingBit(reverseBits(var_1.yy));
}

fn func_6(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = max(-11772i, 2508i | -93134i);
    var var_1 = !(!vec2<bool>(1226f < sign(699f), (arg_0.x >> 16071u) >= 1u));
    var var_2 = firstLeadingBit(u_input.a);
    let var_3 = select(!func_3(dot(vec3<i32>(2147483647i, -53262i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, 2147483647i)), Struct_3(Struct_1(352f), ~vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(-1000f))).yw, !select(func_3(select(0i, 0i, true), Struct_3(Struct_1(178f), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(-1564f))).wx, vec2<bool>(any(vec2<bool>(true, false)), var_1.x), vec2<bool>(-537f > 732f, !true)), vec2<bool>(!true, any(select(func_2(arg_0.x, arg_0.x, 7873u, var_1.x).zz, !vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)))));
    var_2 = u_input.a + u_input.a;
    return Struct_2(Struct_1(((-373f + 219f) + -276f) + ((-994f / -2057f) - ceil(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (-199f * 1498f) <= ceil(abs(max(round(-1078f), -1158f + 572f)));
    let var_1 = func_6(~func_1());
    global0 = all(vec2<bool>(!true, false));
    let var_2 = select(vec3<bool>(var_0, select(-u_input.a, ~u_input.a, !var_0) <= -(~0i), any(func_3(i32(-2147483648), Struct_3(Struct_1(var_1.a.a), vec3<i32>(u_input.a, u_input.a, u_input.a), var_1.a))) | false), func_3((-20409i >> func_4(vec3<u32>(86500u, 1u, 0u), vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(true, true, true), false).a.x) % ((-21731i - u_input.a) % 48461i), Struct_3(var_1.a, firstLeadingBit(vec3<i32>(35348i, 7571i, -1i)) * ~vec3<i32>(42868i, u_input.a, u_input.a), var_1.a)).wzx, vec3<bool>(firstLeadingBit(1u) >= func_1().x, all(vec3<bool>(var_0 && var_0, !true, var_0 && var_0)), var_0));
    var var_3 = Struct_4(vec2<u32>(dot(vec4<u32>(23232u & 31352u, 4294967295u * 9967u, ~71026u, dot(vec4<u32>(1u, 4294967295u, 27076u, 1u), vec4<u32>(1u, 36023u, 4294967295u, 90357u))), countOneBits(select(vec4<u32>(1u, 97951u, 22733u, 1u), vec4<u32>(40178u, 62521u, 1u, 0u), vec4<bool>(var_0, true, var_0, true)))), ~(~(15756u << 0u))), func_4(~(vec3<u32>(11724u, 0u, 173949u) | clamp(vec3<u32>(0u, 0u, 10992u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(54023u, 4294967295u, 0u))), -(~firstTrailingBit(vec2<i32>(u_input.a, i32(-2147483648)))), vec3<bool>(false == var_0, any(var_2.yy), true), false).b);
    var_3 = func_5(Struct_4(var_3.a, -var_3.b * func_4(vec3<u32>(var_3.a.x, var_3.a.x, var_3.a.x), -vec2<i32>(u_input.a, -1172i), !var_2, false).b), func_5(func_4(~select(vec3<u32>(var_3.a.x, 68540u, 96395u), vec3<u32>(var_3.a.x, var_3.a.x, var_3.a.x), false), ~min(vec2<i32>(-35525i, 1i), vec2<i32>(-6328i, -1i)), vec3<bool>(false, any(vec3<bool>(true, var_0, var_0)), var_2.x), true), abs(dot(vec3<u32>(var_3.a.x, var_3.a.x, 1u) | vec3<u32>(var_3.a.x, var_3.a.x, 0u), select(vec3<u32>(50733u, 4294967295u, 4294967295u), vec3<u32>(0u, var_3.a.x, var_3.a.x), var_0)))).a.x);
    var_3 = Struct_4(~(vec2<u32>(73726u, var_3.a.x) * ~countOneBits(var_3.a)), -2242f);
    var var_4 = func_6((vec2<u32>(dot(vec4<u32>(var_3.a.x, 4294967295u, var_3.a.x, 29382u), vec4<u32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x)), 0u) >> ~var_3.a) ^ vec2<u32>(~(51441u & 19896u), func_1().x - min(4294967295u, var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, u_input.a % ((-37673i % i32(-2147483648)) >> var_3.a.x), -max(clamp(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a), countOneBits(vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.a, u_input.a) | -vec2<i32>(-11403i, i32(-2147483648))), var_3.a.x, sign(round(abs(-vec4<f32>(364f, var_3.b, var_1.a.a, var_4.a.a)))));
}

