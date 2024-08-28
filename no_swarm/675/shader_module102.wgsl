// {"0:0":[130,241,197,215,245,63,222,238]}
// Seed: 16713138821257817905

struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.c.x;
    var_0 = !arg_0.c.x;
    let var_1 = arg_0;
    var var_2 = vec4<f32>(var_1.a.x, round(-(-761f)) * -1355f, sign(468f), -arg_0.a.x);
    var_0 = !var_1.c.x;
    return !(!false);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = max(arg_2.a, vec3<f32>(ceil(-step(arg_0.x, -1443f)), -(-202f), step(-(-arg_1.x), 1000f)));
    var var_1 = Struct_2(~arg_2.b.x);
    let var_2 = -330f / (-ceil(abs(arg_2.a.x)) * var_0.x);
    let var_3 = Struct_2(~countOneBits(arg_2.b.x));
    let var_4 = arg_2.a;
    return vec3<bool>(arg_2.c.x, select(~0u < 1u, !arg_2.c.x, all(arg_2.c.wz) == any(arg_2.c.xxy)), arg_2.c.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<bool>((!false && false) | func_2(Struct_1(sign(vec3<f32>(-658f, 2129f, -1556f)), ~vec4<u32>(85729u, 4294967295u, 21814u, 4294967295u), !vec4<bool>(arg_1, arg_0.x, true, arg_1), -vec2<i32>(u_input.a.x, -30307i))), false, any(!select(select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, true, arg_0.x), false), vec3<bool>(true, arg_0.x, arg_1), !arg_0.x)));
    var_0 = select(select(func_3(vec2<f32>(-184f * 1124f, -1000f), vec3<f32>(-(-995f), -144f, 102f), Struct_1(vec3<f32>(1074f, -291f, 999f) - vec3<f32>(-365f, 201f, 275f), ~vec4<u32>(50178u, 0u, 56361u, 5423u), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, arg_1, true), false), clamp(u_input.a, u_input.a, vec2<i32>(-33540i, u_input.a.x)))), !(!(!vec3<bool>(false, arg_1, false))), vec3<bool>(all(select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_1, arg_1, false, false), true)), !arg_1, !var_0.x)), select(vec3<bool>(!(arg_0.x && var_0.x), any(vec3<bool>(arg_0.x, true, arg_1)), false), select(!(!vec3<bool>(true, false, arg_1)), vec3<bool>(true, 1408f < -206f, false & false), !(!vec3<bool>(false, false, var_0.x))), !vec3<bool>(!false, all(vec3<bool>(arg_1, true, true)), !true)), false);
    let var_1 = Struct_1(vec3<f32>(-(-round(1432f)), -608f, select(-369f, -abs(-747f), arg_1)), ~max(vec4<u32>(68516u, 42420u, 37370u, 1u) | vec4<u32>(2738u, 0u, 13439u, 4294967295u), ~vec4<u32>(25303u, 26227u, 51460u, 0u)) | firstLeadingBit(abs(vec4<u32>(12138u, 40966u, 8601u, 55899u))), vec4<bool>(all(!func_3(vec2<f32>(-1000f, -1117f), vec3<f32>(-1644f, -1099f, 1641f), Struct_1(vec3<f32>(299f, -839f, -1388f), vec4<u32>(0u, 75438u, 4294967295u, 70928u), vec4<bool>(false, var_0.x, false, var_0.x), u_input.a))), !select(all(vec3<bool>(false, var_0.x, arg_0.x)), all(vec3<bool>(true, arg_0.x, arg_0.x)), true), ceil(-(-385f)) > (-(-405f) / -(-1574f)), !true), vec2<i32>(u_input.a.x, -2795i - (~u_input.a.x << (4294967295u * 0u))));
    let var_2 = -trunc(min(-372f, -209f) - 1000f) + min(-((-1152f / var_1.a.x) + floor(var_1.a.x)), var_1.a.x);
    var_0 = func_3(-(-trunc(vec2<f32>(var_2, var_2))) + -vec2<f32>(-392f, var_2), vec3<f32>(-select(-434f - var_2, var_2 - var_1.a.x, var_0.x), var_2, var_1.a.x), var_1);
    return Struct_1(step(vec3<f32>(select(var_2, exp2(var_2), false), var_1.a.x + -var_2, -var_2 * step(226f, -837f)), (min(vec3<f32>(797f, -564f, 492f), var_1.a) - ceil(vec3<f32>(var_2, var_2, 908f))) * floor(vec3<f32>(var_2, -1000f, var_2) + vec3<f32>(var_2, 1744f, var_1.a.x))), vec4<u32>(~(~(var_1.b.x & 0u)), min(47836u, ~var_1.b.x), 25162u, (0u - 0u) / ((var_1.b.x | var_1.b.x) - 8372u)), vec4<bool>(any(var_1.c.xz), !false, var_0.x || (-(-192f) >= -var_1.a.x), ~(30000u - var_1.b.x) < abs(max(var_1.b.x, var_1.b.x))), ~var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(select(~func_1(!vec2<bool>(true, false), 49659u < arg_0.b.x).b.x, 0u, func_1(arg_1.yx, arg_0.d.x != (-65031i + arg_0.d.x)).c.x));
    var var_1 = exp2(vec2<f32>(trunc(arg_0.a.x), arg_0.a.x));
    let var_2 = arg_1.x;
    let var_3 = vec4<f32>(423f, -arg_0.a.x, -step(step(arg_0.a.x, max(arg_0.a.x, var_1.x)), min(-(-270f), -var_1.x)), -arg_0.a.x);
    let var_4 = func_1(arg_0.c.yx, !func_2(arg_0));
    return func_1(var_4.c.zw, func_1(select(func_1(!arg_1.yz, true && false).c.xy, vec2<bool>(arg_1.x, func_3(var_4.a.xy, vec3<f32>(arg_0.a.x, var_4.a.x, var_3.x), arg_0).x), func_1(var_4.c.yw, !false).c.yy), var_4.c.x).c.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_2(arg_0.b.x);
    let var_1 = 125452u;
    var var_2 = select(var_1, ~var_0.a, any(select(select(arg_0.c, vec4<bool>(true, arg_0.c.x, arg_0.c.x, false), select(arg_0.c, vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true), arg_0.c)), vec4<bool>(arg_0.c.x || arg_0.c.x, arg_1.x == 1730f, select(arg_0.c.x, arg_0.c.x, false), false), -arg_1.x < sign(arg_0.a.x))));
    var var_3 = arg_0;
    var_3 = Struct_1(vec3<f32>(-1042f, sign(-531f), -357f), vec4<u32>(var_0.a, 4294967295u, countOneBits(var_0.a), arg_0.b.x), !select(!arg_0.c, func_4(arg_0, select(vec4<bool>(arg_0.c.x, false, var_3.c.x, true), var_3.c, vec4<bool>(var_3.c.x, arg_0.c.x, arg_0.c.x, true))).c, vec4<bool>(func_4(arg_0, vec4<bool>(true, arg_0.c.x, arg_0.c.x, var_3.c.x)).c.x, any(arg_0.c.yx), 1u != 4356u, false)), vec2<i32>(arg_0.d.x * -3173i, arg_0.d.x));
    return vec4<u32>(arg_0.b.x, dot(func_4(func_1(vec2<bool>(true, arg_0.c.x), arg_0.c.x), arg_0.c).b.zxw, vec3<u32>(42024u, var_0.a, arg_0.b.x) | (arg_0.b.yyz | var_3.b.xzz)) % countOneBits(~49411u), 10225u, dot(max(arg_0.b.wyz, abs(select(arg_0.b.xzx, arg_0.b.zxy, var_3.c.wxx))), arg_0.b.zxx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_4(func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), false), 1u < 24660u), func_1(func_1(vec2<bool>(true, true), false).c.zw, true).c), -(-vec3<f32>(-2137f, 887f, -303f)) * ceil(vec3<f32>(1203f, 267f, 449f))), ~84945u >> (~func_4(Struct_1(vec3<f32>(-887f, 371f, -103f), vec4<u32>(52393u, 1u, 0u, 4294967295u), vec4<bool>(true, true, true, true), vec2<i32>(1i, u_input.a.x)), vec4<bool>(true, true, true, true)).b.x / min(1287u ^ 1u, ~4294967295u)), max(abs(0u) / 16923u, ~(~4294967295u)) % ~(~10550u ^ abs(0u)));
}

