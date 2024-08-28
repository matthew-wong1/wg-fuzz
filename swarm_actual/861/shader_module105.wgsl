// {"0:0":[98,133,205,75,245,101,179,143,97,75,236,24,183,217,130,157,11,3,223,7,18,86,135,174,35,35,155,38,31,204,206,116]}
// Seed: 3915781751899069850

struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, false, true, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, false, true, false, false, false, false, false, false, false, false);

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(!(!(!select(vec2<bool>(global0[65215u], global0[u_input.b]), vec2<bool>(false, true), global0[38919u]))));
    var var_1 = min(-1000f * -440f, exp2(ceil(855f)));
    var_0 = Struct_1(!vec2<bool>(!global0[u_input.b + u_input.b], false));
    let var_2 = reverseBits(vec4<u32>(1u, u_input.b, dot(abs(vec3<u32>(u_input.b, u_input.b, 102331u) + vec3<u32>(u_input.b, u_input.b, 99168u)), vec3<u32>(~32822u, u_input.b, u_input.b)), ~abs(49460u) >> ~u_input.b));
    var var_3 = !vec3<bool>(global0[~(~44150u)], all(var_0.a), true);
    return min(var_2.yw, ~var_2.wy + ~vec2<u32>(27042u | 1u, 4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_4(vec4<u32>(dot(~(~vec3<u32>(u_input.b, 6778u, 66638u)), vec3<u32>(97193u, u_input.b, u_input.b)), u_input.b + u_input.b, ~(~4294967295u), ~abs(countOneBits(u_input.b))), arg_1.x - -exp2(1344f), ~(clamp(min(vec2<u32>(3208u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(26931u, 1u), func_3()) | (vec2<u32>(5980u, 4294967295u) ^ ~vec2<u32>(u_input.b, 4294967295u))), vec2<u32>(firstLeadingBit(u_input.b), u_input.b));
    let var_1 = Struct_4(~((vec4<u32>(var_0.d.x, var_0.d.x, var_0.a.x, var_0.a.x) >> var_0.a) >> vec4<u32>(0u, var_0.d.x, var_0.a.x, 0u)) / ~countOneBits(~var_0.a), (-(var_0.b - arg_1.x) * -(-(-497f))) + arg_1.x, ~vec2<u32>(~(32121u * var_0.d.x), u_input.b), vec2<u32>(countOneBits(u_input.b), ~(16210u & 4294967295u)) * var_0.c);
    var_0 = var_1;
    var_0 = var_1;
    let var_2 = arg_1.yy;
    return select(select(select(!(!vec3<bool>(true, false, true)), !vec3<bool>(true, arg_0.a.x, false), select(!vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), global0[var_0.d.x]), any(arg_0.a))), !vec3<bool>(false, global0[~75330u], all(vec3<bool>(true, false, arg_0.a.x))), arg_0.a.x), vec3<bool>(!arg_0.a.x, false, all(vec3<bool>(false, true, true))), select(!select(vec3<bool>(true, true, global0[var_1.d.x]), vec3<bool>(global0[76840u], arg_0.a.x, false), all(vec4<bool>(arg_0.a.x, true, false, global0[u_input.b]))), vec3<bool>(false, trunc(var_1.b) > var_2.x, !(!global0[var_1.a.x])), all(!arg_0.a)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_4((vec4<u32>(9441u, u_input.b >> 107011u, 1u - u_input.b, u_input.b) << (~vec4<u32>(4294967295u, 0u, u_input.b, 1u) >> (vec4<u32>(u_input.b, 1u, 4294967295u, 22804u) * vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))) * (~(vec4<u32>(u_input.b, u_input.b, 81532u, 27090u) * vec4<u32>(0u, 0u, u_input.b, 4294967295u)) / vec4<u32>(clamp(u_input.b, 33511u, 11125u), u_input.b, u_input.b | u_input.b, u_input.b)), arg_0.x, vec2<u32>(max((4596u % u_input.b) ^ u_input.b, ~dot(vec4<u32>(5213u, 59210u, 13708u, 0u), vec4<u32>(54694u, 0u, 0u, 1u))), u_input.b), vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(u_input.b, dot(~vec4<u32>(36177u, 46011u, u_input.b, 0u), vec4<u32>(98094u, u_input.b, 19694u, u_input.b))));
    let var_1 = ~u_input.b * func_3().x;
    var_0 = Struct_4(vec4<u32>(0u, var_0.a.x, u_input.b % firstTrailingBit(var_1 - 26666u), var_1), (-1021f - (-840f / (var_0.b - arg_0.x))) / max(160f, (var_0.b + -1181f) / -1696f), var_0.a.xy, (~var_0.a.xz << (~vec2<u32>(1u, 88964u) << ~vec2<u32>(4294967295u, 4294967295u))) ^ vec2<u32>(~32903u / abs(u_input.b), 4294967295u));
    var var_2 = select(firstLeadingBit(vec3<u32>(~51465u - u_input.b, (2899u / var_0.a.x) << ~var_0.c.x, ~(u_input.b & var_0.c.x))), abs((vec3<u32>(1u, 36542u, u_input.b) << var_0.a.zyz) & ~(var_0.a.yxz + var_0.a.ywz)), true);
    var var_3 = global0[u_input.b];
    return Struct_2(vec3<i32>(select(u_input.c.x + u_input.a, u_input.a * u_input.c.x, arg_2.x), reverseBits(5001i), u_input.a) % vec3<i32>(~u_input.c.x, -8848i, u_input.c.x), vec4<u32>(~(~(~var_1)), clamp(var_0.c.x, 4294967295u, 1u % var_2.x) / 1567u, u_input.b, firstTrailingBit(~97129u)), !(!(!(!arg_2))), var_0.b, ~vec4<u32>(0u % firstTrailingBit(var_2.x), ~0u, (var_0.a.x | var_2.x) >> (25838u * 0u), var_1));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_4(~(arg_0.b | max(arg_0.e, func_4(vec2<f32>(1087f, arg_0.d), vec3<bool>(arg_0.c.x, true, false), arg_0.c).e)), arg_0.d, abs(select(~arg_0.e.yx, select(vec2<u32>(59400u, arg_0.e.x), arg_0.b.zz, arg_0.c.ww), func_4(vec2<f32>(1072f, 576f), arg_0.c.xxz, arg_0.c).c.yz) << func_4(vec2<f32>(arg_0.d, -291f) / vec2<f32>(1000f, -1981f), arg_0.c.xww, select(vec4<bool>(false, true, global0[u_input.b], global0[0u]), vec4<bool>(arg_0.c.x, false, true, true), arg_0.c)).b.yy), abs(vec2<u32>(dot(arg_0.b.yz, vec2<u32>(arg_0.e.x, u_input.b)), u_input.b)) % ~arg_0.e.xz);
    var var_2 = 1506f;
    let var_3 = ceil(step(vec2<f32>(arg_0.d, 1000f) + ceil(vec2<f32>(-490f, -1393f)), trunc(vec2<f32>(1000f, arg_0.d)) - vec2<f32>(-1350f, arg_0.d))) * -(-(vec2<f32>(arg_0.d, -1000f) - vec2<f32>(var_1.b, -1888f)) / exp2(vec2<f32>(arg_0.d, arg_0.d) / vec2<f32>(arg_0.d, arg_0.d)));
    var_2 = var_1.b;
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = ~firstTrailingBit(~select(vec2<u32>(53250u, 43430u), ~vec2<u32>(u_input.b, u_input.b), true));
    var var_1 = Struct_3(func_5(func_4(vec2<f32>(-886f, -576f), func_2(Struct_1(vec2<bool>(global0[80271u], false)), vec3<f32>(891f, 663f, 860f)), select(!vec4<bool>(true, true, false, global0[u_input.b]), !vec4<bool>(global0[11447u], false, false, true), !false))), 351f, Struct_1(select(func_5(func_5(Struct_2(vec3<i32>(u_input.a, 1i, 2147483647i), vec4<u32>(var_0.x, 0u, 61513u, 1u), vec4<bool>(global0[u_input.b], global0[1u], true, true), -661f, vec4<u32>(u_input.b, 33534u, 0u, var_0.x)))).c.zw, select(!vec2<bool>(global0[var_0.x], false), vec2<bool>(false, false), -1000f == -1294f), select(vec2<bool>(global0[u_input.b], false), vec2<bool>(true, global0[u_input.b]), u_input.a > u_input.c.x))));
    return -(-(-(-floor(var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(-(round(vec4<f32>(766f, -867f, -141f, 1000f)) - select(vec4<f32>(1780f, 316f, 843f, -696f), vec4<f32>(-1000f, -1000f, -200f, 434f), global0[u_input.b]))) / -(vec4<f32>(func_1(), -1149f, -(-473f), 748f - -1000f) + vec4<f32>(-832f, 584f / -467f, 496f, -122f / -1027f));
    global0 = array<bool, 29>();
    var var_1 = !vec2<bool>(!any(!vec2<bool>(global0[u_input.b], true)), global0[abs(~(15000u << u_input.b))]);
    let var_2 = -(var_0.x + max(var_0.x, 211f));
    global0 = array<bool, 29>();
    let var_3 = 155f > ((var_0.x + var_2) - ceil(-325f));
    let x = u_input.a;
    s_output = StorageBuffer(-4929i, step(564f, var_0.x), 497f, abs(firstLeadingBit(func_4(var_0.yz, !vec3<bool>(var_3, true, true), func_4(vec2<f32>(-1266f, 1052f), vec3<bool>(true, false, false), vec4<bool>(var_3, var_3, true, global0[u_input.b])).c).a.x)));
}

