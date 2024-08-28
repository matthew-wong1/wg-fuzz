// {"0:0":[81,174,43,219,43,95,176,243,111,125,129,76,173,233,5,84,170,179,207,245,192,68,136,247,238,96,11,210,57,248,159,141,232,102,25,63,56,53,34,9,176,227,150,209,189,76,113,199]}
// Seed: 16403315389447720431

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = any(!vec2<bool>((arg_2.b.x % 1u) <= ~arg_2.b.x, arg_3.a));
    global0 = !true;
    let var_0 = -select(vec3<i32>(abs(-2147483647i), arg_3.d.x, arg_1), -((vec3<i32>(arg_0.x, u_input.a.x, arg_3.d.x) * u_input.d) + vec3<i32>(-12363i, 12791i, 2147483647i)), any(select(!vec2<bool>(false, true), select(vec2<bool>(arg_3.a, arg_2.a), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(arg_2.a, arg_3.a), vec2<bool>(false, arg_3.a), arg_2.a))));
    let var_1 = vec3<i32>(-24211i, -reverseBits(dot(select(vec4<i32>(arg_3.d.x, 1i, 0i, 6101i), vec4<i32>(1i, arg_3.d.x, arg_1, 14410i), vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a)), vec4<i32>(var_0.x, 30082i, 0i, u_input.b.x))), arg_2.d.x);
    let var_2 = vec4<u32>(((~arg_2.b.x | firstTrailingBit(arg_3.b.x)) >> 94826u) - arg_2.b.x, abs((~arg_3.b.x & 62112u) >> (arg_2.b.x / firstLeadingBit(u_input.c))), dot((abs(vec4<u32>(arg_3.b.x, 22160u, arg_2.b.x, arg_2.b.x)) * reverseBits(vec4<u32>(143u, u_input.c, 2119u, 44944u))) << ~(vec4<u32>(54432u, 4294967295u, 1u, 1u) & vec4<u32>(36250u, u_input.c, arg_2.b.x, 1u)), ~(vec4<u32>(arg_3.b.x, 4294967295u, 0u, 23436u) << (vec4<u32>(arg_2.b.x, u_input.c, u_input.c, arg_3.b.x) % vec4<u32>(u_input.c, 61663u, 0u, 1u)))), arg_3.b.x);
    return all(select(vec2<bool>(false, true), !(!vec2<bool>(false, arg_3.a)), vec2<bool>(true, arg_2.a)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = any(!vec4<bool>(!false, false, !false, any(vec4<bool>(true, true, true, false)))) && all(vec4<bool>(!(u_input.a.x == 16779i), !(false != true), true, 108412u > u_input.c));
    var_0 = any(vec2<bool>(!func_3(u_input.d.yy, -(-38071i), Struct_1(true, vec3<u32>(u_input.c, 4294967295u, u_input.c), -1221f, u_input.d), Struct_1(false, vec3<u32>(u_input.c, 0u, 1u), arg_0, vec3<i32>(u_input.b.x, 2147483647i, u_input.d.x))), false));
    var var_1 = -953f;
    global0 = any(vec2<bool>(func_3(u_input.b, u_input.d.x, Struct_1(false, vec3<u32>(u_input.c, 0u, u_input.c), arg_0, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a.x)), Struct_1(true, vec3<u32>(4294967295u, 36847u, 1u), -260f, u_input.d)) & !(!true), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), !vec2<bool>(true, false), !true))));
    var var_2 = !(!false);
    return Struct_1(true, firstLeadingBit(~(~(vec3<u32>(u_input.c, 8363u, u_input.c) + vec3<u32>(u_input.c, 51027u, u_input.c)))), arg_0, reverseBits(u_input.d));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_2(-(round(-383f) / (-820f / step(-502f, 720f))));
    var var_1 = !select(!(!select(vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(var_0.a, true, var_0.a, false), true)), vec4<bool>(var_0.c == -var_0.c, var_0.a, var_0.a, all(!vec2<bool>(var_0.a, var_0.a))), !all(vec3<bool>(var_0.a, true, false)));
    var var_2 = clamp(4294967295u >> 20532u, func_2(-1641f).b.x, min(firstLeadingBit(1u), ~(~u_input.c) | u_input.c));
    let var_3 = max(step(-select(-639f, 157f, var_1.x), 885f) - -(-621f), -398f);
    var var_4 = vec4<bool>(var_0.a, var_3 > -1650f, all(!select(!vec4<bool>(false, false, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, true, var_0.a))), true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(((~4294967295u * (1u & u_input.c)) / (0u + 22233u)) % ~(u_input.c + 12956u), u_input.c, ~u_input.c, reverseBits(func_1(38823u * 4294967295u)) | ~(~47574u));
    var var_1 = -301f / abs(max(2366f, -961f) - -1592f);
    var_1 = -floor(-1000f);
    let var_2 = func_2((1128f / ceil(-(-821f))) * func_2((445f + 458f) - 638f).c);
    var var_3 = reverseBits(vec4<i32>((firstLeadingBit(1i) | firstTrailingBit(u_input.b.x)) & ((5707i * var_2.d.x) / (u_input.a.x >> var_0.x)), ~(7985i * abs(-1i)), 32059i, -(-(-56017i))));
    var_1 = 422f;
    var_1 = -(-min(1574f, -718f * var_2.c));
    let var_4 = var_0.x;
    var var_5 = func_2(ceil(floor(var_2.c) - -1160f));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(var_5.d.x % i32(-2147483648), var_3.x % 2147483647i) << ~var_0.wz), u_input.a.x, -(-vec3<f32>(var_2.c, round(var_2.c), -var_2.c)), max(min(vec2<i32>(1i, -1i), var_2.d.xy) & vec2<i32>(u_input.b.x, -43565i), vec2<i32>(~(-19237i), var_3.x / var_5.d.x)) + u_input.d.yy);
}

