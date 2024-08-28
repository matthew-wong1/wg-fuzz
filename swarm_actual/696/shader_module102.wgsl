// {"0:0":[210,189,61,143,109,20,132,208,198,40,211,187,203,23,144,225,189,16,238,135,45,253,70,23,232,243,148,113,242,6,197,86]}
// Seed: 12337539522193314008

struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, vec3<f32>(-1639f, 1000f, 462f), vec3<i32>(28090i, i32(-2147483648), -88329i));

var<private> global1: vec4<f32> = vec4<f32>(-766f, 1014f, 532f, 696f);

var<private> global2: vec3<u32>;

var<private> global3: u32 = 96819u;

var<private> global4: vec3<u32>;

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(select(global1.x, step(-655f, -(1091f + 882f)), false), global1.wwz, vec3<i32>(u_input.a.x, u_input.a.x | (abs(-54879i) + global0.c.x), u_input.a.x));
    let var_1 = max(~global0.c.x, u_input.a.x);
    var var_2 = dot(vec3<u32>(global4.x, ~(~1u) << dot(vec2<u32>(arg_0.x, arg_0.x), arg_0 - u_input.b), global4.x), reverseBits(~vec3<u32>(global2.x, 4294967295u, global4.x) - vec3<u32>(1u, 4294967295u, u_input.c)) * ((~vec3<u32>(4294967295u, global2.x, 0u) & vec3<u32>(u_input.b.x, arg_0.x, 1u)) % (vec3<u32>(23631u, u_input.b.x, 0u) / vec3<u32>(4294967295u, 4294967295u, 41627u))));
    var var_3 = Struct_2(reverseBits(clamp(var_0.c.yz, min(vec2<i32>(var_1, i32(-2147483648)), vec2<i32>(var_0.c.x, 2147483647i)), var_0.c.zx)), Struct_1(1115f, ceil(vec3<f32>(-433f, ceil(global0.a), var_0.b.x)), u_input.a));
    let var_4 = -round(global0.b);
    return -abs(-800f * ((var_4.x + 1400f) * -176f));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = global0.c.x;
    var var_1 = func_3(~vec2<u32>(~reverseBits(global4.x), global2.x));
    let var_2 = Struct_2(vec2<i32>(~(-20033i), 24678i), Struct_1(1904f, -abs(vec3<f32>(global0.a, global0.b.x, global1.x)), vec3<i32>(21811i, -u_input.a.x, 2147483647i << (global4.x % 11776u))));
    var var_3 = !select(any(!arg_0.xz), arg_0.x, arg_0.x);
    let var_4 = countOneBits(var_2.b.c);
    return u_input.c >> ~(~1u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    global2 = ((~(~vec3<u32>(global2.x, global4.x, 83062u)) / ~(~vec3<u32>(0u, u_input.c, 4294967295u))) << ~select(select(vec3<u32>(0u, global4.x, global2.x), vec3<u32>(1u, global2.x, 4294967295u), vec3<bool>(false, true, false)), select(vec3<u32>(global4.x, global2.x, 1u), vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<bool>(true, false, true)), !false)) | (((firstTrailingBit(vec3<u32>(67205u, 0u, u_input.b.x)) - (vec3<u32>(1u, 1u, 42085u) >> vec3<u32>(global4.x, u_input.c, 1u))) % vec3<u32>(~u_input.c, firstTrailingBit(u_input.c), ~u_input.b.x)) << (abs(~vec3<u32>(u_input.c, global2.x, 44940u)) * ~(vec3<u32>(u_input.c, 25012u, 4285u) % vec3<u32>(77125u, 21813u, u_input.c))));
    let var_0 = func_2(select(vec4<bool>(true, !false, !(!true), -13323i <= (-1i / arg_0.c.x)), !(!vec4<bool>(false, true, true, false)), false));
    let var_1 = vec4<i32>(0i, ~(~(-11711i / -56807i)), ~(countOneBits(u_input.a.x) % ~2147483647i), reverseBits(abs(select(1i, global0.c.x, false)))) - -countOneBits(~vec4<i32>(arg_0.c.x, 1i, arg_0.c.x, -36515i));
    global2 = firstLeadingBit(select(clamp(vec3<u32>(global4.x, u_input.c, global2.x) ^ vec3<u32>(u_input.b.x, global2.x, global4.x), ~vec3<u32>(0u, 4294967295u, 17552u), vec3<u32>(4294967295u, 0u, u_input.c)), ~vec3<u32>(1u, 27329u, global2.x), !select(true, false, false)) + clamp(~(vec3<u32>(u_input.c, 29417u, global2.x) % vec3<u32>(u_input.c, 1u, 2700u)), vec3<u32>(4294967295u, 54569u, u_input.b.x) & vec3<u32>(var_0, global2.x, global2.x), vec3<u32>(global4.x >> global4.x, ~97723u, ~u_input.b.x)));
    var var_2 = sign(exp2(arg_2.x));
    return max(global1.x, ((-124f + (-154f - arg_2.x)) - -sign(-1572f)) / -1886f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>) -> StorageBuffer {
    let var_0 = !(!select(vec3<bool>(arg_1.x, true, !true), select(vec3<bool>(false, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !arg_1.x), vec3<bool>(!false, arg_1.x, arg_1.x)));
    global0 = Struct_1(-253f, global1.xzx + abs(global1.yzz), global0.c);
    var var_1 = Struct_2(vec2<i32>(firstTrailingBit(1i), ~u_input.a.x) + -(-u_input.a.xx << vec2<u32>(global4.x, 4294967295u)), Struct_1(-107f, global0.b, abs(-global0.c) >> (select(vec3<u32>(55558u, u_input.c, 4294967295u), vec3<u32>(0u, 1u, global2.x), arg_1.x) * ~vec3<u32>(u_input.b.x, 18591u, u_input.b.x))));
    let var_2 = exp2(-(arg_0.x - step(868f, var_1.b.a))) + 1076f;
    let var_3 = var_1.b;
    return StorageBuffer(-vec3<i32>(var_1.a.x, ~u_input.a.x, -2147483647i << ~0u), -(vec4<f32>(var_1.b.b.x, arg_0.x, var_1.b.b.x, var_3.a) + vec4<f32>(225f, var_2, arg_0.x, 589f)) + vec4<f32>(global0.b.x, 1269f, 535f, -1422f), max(vec4<u32>(u_input.c, 12534u, func_2(vec4<bool>(false, var_0.x, true, false)), global4.x & global2.x), min(vec4<u32>(56237u, global4.x, global2.x, 4294967295u), vec4<u32>(4294967295u, 105169u, u_input.b.x, 46433u) << vec4<u32>(0u, u_input.c, global4.x, u_input.c))) * ~select(vec4<u32>(u_input.b.x, 6845u, 5946u, 71300u) % vec4<u32>(4294967295u, global2.x, u_input.c, 68984u), vec4<u32>(u_input.b.x, 12687u, 9782u, 40341u), true), -var_2, firstTrailingBit(~abs(~global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(abs(abs(global0.c.x)), ~dot(global0.c, global0.c) * ((2147483647i ^ 2147483647i) << ~41157u)), Struct_1(global0.b.x, global1.wxx, vec3<i32>(~32064i, -u_input.a.x, ~global0.c.x)));
    let var_1 = 0u;
    global3 = global4.x;
    var var_2 = var_0.b;
    var var_3 = vec4<i32>(abs(~(-59217i)), var_0.a.x, var_2.c.x, countOneBits(~(-37785i) ^ (global0.c.x % u_input.a.x))) | ((-(vec4<i32>(i32(-2147483648), 1i, u_input.a.x, var_0.b.c.x) / vec4<i32>(var_2.c.x, i32(-2147483648), global0.c.x, var_0.b.c.x)) ^ ((vec4<i32>(-25997i, var_0.a.x, 2147483647i, 31638i) << vec4<u32>(var_1, var_1, global2.x, var_1)) << min(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(73988u, 29330u, u_input.b.x, u_input.b.x)))) % reverseBits(-(vec4<i32>(var_2.c.x, var_2.c.x, var_0.b.c.x, var_2.c.x) / vec4<i32>(var_2.c.x, u_input.a.x, -6066i, global0.c.x))));
    let var_4 = vec4<f32>((1606f - (-1000f / var_2.b.x)) - -var_0.b.b.x, min(max(var_2.a, var_0.b.b.x) * -203f, -(-633f)), global0.a / floor(-399f), sign(-(-509f / 481f))) - vec4<f32>(global1.x, trunc(var_0.b.a), -select(min(var_2.a, global0.a), global0.b.x, true), floor(sign(-var_0.b.a)));
    var var_5 = select(vec3<i32>(56075i, 0i, global0.c.x), vec3<i32>(countOneBits(-11502i), -var_0.b.c.x, i32(-2147483648) / global0.c.x), (false & !false) || (1u > 69084u)) ^ var_2.c;
    let var_6 = (-max(-(-4675i), global0.c.x >> 66540u) | u_input.a.x) * -(-6685i);
    var_5 = reverseBits(-global0.c);
    let x = u_input.a;
    s_output = func_4(floor(vec2<f32>(var_0.b.a, select(1188f, 504f, false)) / -global0.b.xy), vec4<bool>(func_1(Struct_1(var_2.a, vec3<f32>(-1182f, -2125f, global1.x), var_2.c), global1.x / global0.a, vec2<f32>(1444f, global0.a) + var_4.wy) < (-1406f + global1.x), any(select(!vec4<bool>(false, false, false, true), !vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), any(vec2<bool>(any(vec2<bool>(true, false)), true)), all(!(!vec4<bool>(true, true, true, false)))));
}

