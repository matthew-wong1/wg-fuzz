// {"0:0":[136,251,51,52,53,87,37,198,133,61,241,81,219,248,239,255,32,104,61,195,61,88,37,43,96,26,146,42,71,143,187,96,151,201,127,81,82,202,164,201,135,199,224,1,212,252,97,194]}
// Seed: 11665114975279632532

struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec4<bool>;

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_1(step(abs(trunc(561f)), ceil(1033f)) / ceil(-838f), global1.yxw, -128f);
    var var_1 = arg_1.x;
    let var_2 = select(var_0.b.zz, vec2<bool>(!global1.x, global0.x), !(!select(global1.x, var_0.b.x, false) | (true && (-39548i < i32(-2147483648)))));
    let var_3 = i32(-2147483648);
    global0 = select(var_2, vec2<bool>(((1191f - var_0.c) - (var_0.a / var_0.c)) <= (-var_0.c - (var_0.c / -375f)), var_0.b.x || !(1u >= u_input.a.x)), !var_0.b.yy);
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    var var_0 = ~(~(~arg_1)) >> u_input.d;
    var var_1 = arg_0;
    var var_2 = select(reverseBits(-u_input.b.x) + (firstTrailingBit(0i) & (-63613i / -31919i)), arg_1 | ~(~1i % u_input.c), u_input.a.x < u_input.d);
    var var_3 = Struct_2(Struct_1(var_1.a.c - -(-1573f), select(func_3(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), u_input.a), !vec3<bool>(false, false, false), !vec3<bool>(global1.x, false, global0.x)), 462f), !arg_0.a.b);
    var var_4 = 0u;
    return vec4<bool>(select(step(-839f, sign(-500f)) > arg_0.a.a, !(!(!global0.x)), any(select(vec2<bool>(var_3.a.b.x, true), func_3(vec4<u32>(13597u, u_input.a.x, u_input.d, u_input.d), vec2<u32>(43950u, 0u)).xz, var_3.b.xx))), !(abs(-1642f) <= select(var_1.a.c, var_3.a.a, var_3.b.x)), false, arg_0.a.b.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = min(-2643f, ((ceil(785f) * sign(1158f)) * ceil(-914f)) - (abs(-2334f + -648f) - select(abs(-101f), -1253f * -294f, false)));
    let var_1 = clamp(u_input.a, ~u_input.a, select(vec2<u32>(dot(vec3<u32>(u_input.d, 43125u, 4294967295u) ^ vec3<u32>(u_input.d, 4294967295u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.d) * vec3<u32>(6841u, 1u, 4920u)), u_input.d), (clamp(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) >> ~u_input.a) / (vec2<u32>(u_input.d, 0u) % countOneBits(vec2<u32>(u_input.d, 4294967295u))), select(global1.yy, vec2<bool>(!false, false), !(!global1.yz))));
    let var_2 = max(~u_input.c % ~u_input.b.x, i32(-2147483648));
    let var_3 = true;
    let var_4 = select(vec4<bool>(var_3, false, any(vec4<bool>(global1.x, true, 45377u > u_input.d, !false)), all(global1.yw)), func_4(Struct_2(Struct_1(296f - 531f, func_3(vec4<u32>(u_input.d, var_1.x, u_input.a.x, var_1.x), var_1), var_0), vec3<bool>(true, !false, global1.x || global0.x)), ~u_input.b.x - (i32(-2147483648) * -78676i)), func_4(Struct_2(Struct_1(var_0 + 1316f, global1.zyz, -1389f), !global1.zwz), 8549i).x);
    return global1.xwz;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = Struct_2(arg_0, vec3<bool>(true, arg_0.b.x, global1.x));
    let var_1 = Struct_2(arg_0, arg_0.b);
    var var_2 = Struct_2(var_1.a, func_4(Struct_2(var_1.a, vec3<bool>(select(var_0.b.x, false, false), false, true)), max(-92028i / i32(-2147483648), arg_1) | reverseBits(select(i32(-2147483648), u_input.b.x, global1.x))).xyx);
    var var_3 = var_0.a.c;
    var var_4 = 719f;
    return -var_1.a.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_2.a;
    let var_1 = arg_2;
    var_0 = Struct_1(func_5(Struct_1(arg_2.a.c, func_2(), arg_2.a.a), (min(u_input.b.x, 2147483647i) * 24756i) & min(clamp(u_input.b.x, u_input.c, -1i), 24866i * 1i)), func_3(arg_3, countOneBits(vec2<u32>(u_input.a.x, 0u) / reverseBits(vec2<u32>(u_input.d, 25699u)))), func_5(var_1.a, -3123i));
    let var_2 = Struct_1(-967f, func_3(~(vec4<u32>(arg_3.x, u_input.d, 0u, arg_3.x) >> arg_3) / select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), select(vec4<u32>(5983u, arg_3.x, 36059u, arg_3.x), arg_3, var_1.a.b.x), !vec4<bool>(global1.x, global0.x, var_1.a.b.x, global1.x)), vec2<u32>(1u & dot(vec2<u32>(4294967295u, u_input.a.x), arg_3.yw), ~(~29627u))), exp2(-(var_1.a.c / -(-651f))));
    global1 = select(select(select(select(vec4<bool>(false, global0.x, false, true), !vec4<bool>(var_0.b.x, false, false, true), true & true), !select(vec4<bool>(true, false, global0.x, false), vec4<bool>(true, global1.x, var_1.b.x, arg_2.b.x), vec4<bool>(false, false, arg_2.b.x, false)), any(select(vec3<bool>(true, global0.x, false), vec3<bool>(false, var_0.b.x, arg_2.b.x), var_2.b.x))), vec4<bool>(all(func_4(var_1, 18878i).yx), var_1.a.b.x, arg_2.a.b.x, true), var_0.b.x), !(!select(vec4<bool>(true, arg_2.a.b.x, global1.x, true), func_4(Struct_2(arg_2.a, var_0.b), 8174i), !arg_2.b.x)), !select(vec4<bool>(func_2().x, any(var_1.b), global1.x & arg_2.a.b.x, false), select(!vec4<bool>(true, true, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, true, true, global1.x), var_1.b.x), true));
    return !func_4(Struct_2(var_2, select(var_2.b, var_0.b, !true)), u_input.b.x).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!select(!vec2<bool>(global1.x, false), global1.xx, !global0.x), vec2<bool>(!(global1.x == false), func_1(ceil(-663f), u_input.a.x, Struct_2(Struct_1(116f, vec3<bool>(global0.x, global0.x, true), -496f), global1.xxx), vec4<u32>(35891u, 0u, u_input.a.x, u_input.d))), vec2<bool>(global0.x, false));
    let var_0 = Struct_1(-(select(ceil(-853f), trunc(-1686f), 1939f == 1312f) * -644f), !global1.wxx, -(-200f) / -1434f);
    var var_1 = -(-(-floor(734f)));
    var var_2 = dot(countOneBits(~select(min(vec3<u32>(1u, u_input.a.x, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), ~vec3<u32>(1u, 48751u, 4294967295u), func_4(Struct_2(Struct_1(var_0.a, var_0.b, -1000f), vec3<bool>(true, true, global0.x)), 1i).wzy)), vec3<u32>(~(1u - u_input.a.x), u_input.a.x, 22813u) / min(vec3<u32>(u_input.a.x, 1u, 61905u), countOneBits(firstLeadingBit(vec3<u32>(0u, 14440u, 90691u)))));
    let var_3 = Struct_2(Struct_1(-320f - var_0.a, func_3(~vec4<u32>(0u, 1u, 4294967295u, 21717u), vec2<u32>(7239u * u_input.a.x, 0u)), 616f), !func_3(~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 51294u)), abs(vec2<u32>(u_input.d, u_input.a.x))));
    let var_4 = vec4<u32>(25915u, ~u_input.a.x + u_input.d, 4294967295u >> (~26260u ^ (u_input.a.x << 71302u)), 4397u | ~(u_input.d << u_input.d)) % vec4<u32>(~(~90568u) | 21119u, 1u, dot(min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 31051u)), firstLeadingBit(u_input.a) | vec2<u32>(32197u, u_input.a.x)), u_input.a.x);
    let var_5 = vec4<bool>(false, all(vec4<bool>(all(vec4<bool>(var_0.b.x, true, global0.x, var_0.b.x)), any(var_0.b), !false, true)), true, true);
    var var_6 = Struct_2(Struct_1(exp2(max(var_0.a, 1030f) + abs(var_3.a.a)), vec3<bool>(global1.x, func_2().x && (global1.x && global0.x), !all(var_3.a.b)), 1125f), !global1.yzx);
    var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4.x), dot(vec2<i32>(u_input.c, -7891i), max((u_input.b.zx >> u_input.a) / u_input.b.zz, u_input.b.xz * vec2<i32>(u_input.b.x, u_input.c))), dot(~var_4.yxy, max(var_4.xww, ~var_4.wwx)), -896f - ((var_0.a * -var_3.a.a) + -286f), u_input.c);
}

