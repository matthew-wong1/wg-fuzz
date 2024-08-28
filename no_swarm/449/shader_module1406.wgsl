// {"0:0":[157,120,255,122,44,91,171,13,111,9,33,72,131,233,109,69,24,219,175,132,41,63,124,230,33,60,179,145,242,143,70,196,25,217,70,231,162,63,137,150,87,84,65,14,69,78,178,13,83,16,17,35,170,63,135,64,167,199,1,205,84,211,225,75]}
// Seed: 5435481122140457639

struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    let var_0 = ceil(exp2(-(-arg_1.a.x)) / -arg_1.a.x);
    let var_1 = u_input.c;
    global0 = array<Struct_3, 7>();
    let var_2 = u_input.a;
    var var_3 = Struct_1(any(!select(vec3<bool>(true, arg_1.b.a, arg_1.b.a), vec3<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.b.x), vec3<bool>(arg_1.b.b.x, arg_1.b.b.x, true))), select(arg_1.b.b, select(arg_1.b.b, select(vec2<bool>(arg_1.b.b.x, arg_1.b.b.x), select(arg_1.b.b, arg_1.b.b, arg_1.b.b.x), arg_1.b.a), !all(vec3<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a))), vec2<bool>(select(arg_1.a.x, var_0, arg_1.b.b.x) >= var_0, any(vec2<bool>(false, arg_1.b.b.x)))), arg_2.yz);
    return any(vec4<bool>(!arg_1.b.b.x, clamp(4918i ^ arg_0, abs(9241i), 25331i % -1i) < -(u_input.b * var_2.x), !true, var_3.b.x));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = ~vec4<u32>(4294967295u, 37996u, 4294967295u, countOneBits(~arg_0));
    var var_1 = global0[clamp(clamp(~var_0.x, 28503u, 88102u), dot(~vec4<u32>(87644u, 0u, 43319u, 0u), var_0), arg_0) >> dot(~(~vec3<u32>(arg_0, 90580u, var_0.x)) - u_input.c.yxz, vec3<u32>(arg_0 * (var_0.x * 754u), min(4294967295u, 37143u), 0u))];
    var var_2 = !vec2<bool>(true, any(!vec2<bool>(var_1.b.b.b.x, var_1.b.b.b.x)));
    var_1 = Struct_3(~u_input.a.x, arg_3);
    var_2 = select(!(!(!(!arg_3.b.b))), select(!var_1.b.b.b, vec2<bool>(var_2.x, false), arg_3.b.b), select(arg_3.b.b, select(vec2<bool>(var_1.b.b.b.x, var_0.x != var_0.x), vec2<bool>(!var_2.x, true), var_2.x || any(var_1.b.b.b)), vec2<bool>(any(!vec4<bool>(var_2.x, false, true, false)), true)));
    return ~dot(~var_0.wyx, clamp(clamp(vec3<u32>(1u, u_input.d, 0u), vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(var_0.x, arg_0, var_0.x)) & ~var_0.yzw, firstLeadingBit(vec3<u32>(arg_0, 0u, 64565u) >> vec3<u32>(1u, 48934u, 0u)), ~firstLeadingBit(vec3<u32>(4294967295u, var_0.x, 41308u))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = -1i;
    let var_1 = global0[func_4(~u_input.d, any(select(!vec3<bool>(true, false, false), !(!vec3<bool>(false, false, true)), func_3(-47360i / -41535i, Struct_2(vec2<f32>(392f, 549f), Struct_1(true, vec2<bool>(false, true), vec2<i32>(64858i, -4519i))), vec3<i32>(1i, -11912i, 0i)))), ~(vec4<i32>(u_input.a.x & -1i, dot(vec2<i32>(-46946i, u_input.b), u_input.a.zy), 0i << 0u, -9429i) - -(-u_input.a)), Struct_2(ceil(vec2<f32>(-1090f / 1000f, -709f)), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, false), select(max(u_input.a.wz, u_input.a.xw), countOneBits(u_input.a.xw), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))))))];
    global0 = array<Struct_3, 7>();
    return Struct_2(-(-(-var_1.b.a)), Struct_1(func_3(u_input.b & ~(-8621i), Struct_2(var_1.b.a + var_1.b.a, Struct_1(true, vec2<bool>(true, false), var_1.b.b.c)), ~(vec3<i32>(u_input.b, 37164i, u_input.b) + u_input.a.yww)), var_1.b.b.b, ~((u_input.a.yx & vec2<i32>(u_input.b, u_input.a.x)) % -vec2<i32>(i32(-2147483648), u_input.a.x))));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = func_2();
    var var_2 = -(i32(-2147483648));
    var var_3 = global0[arg_1];
    global0 = array<Struct_3, 7>();
    return Struct_2(select(vec2<f32>(-(-722f), -1230f + 708f) + vec2<f32>(var_0.a.x + -946f, -(-2627f)), -(-(vec2<f32>(var_0.a.x, var_0.a.x) / var_3.b.a)), select(var_3.b.b.a, false, !(true || true))), func_2().b);
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(((41488u / u_input.c.x) % ~u_input.c.x) / 1u);
    global0 = array<Struct_3, 7>();
    var var_1 = arg_1.b;
    var var_2 = -(-arg_1.b.a.x) * arg_1.b.a.x;
    let var_3 = global0[~16980u];
    return func_5(-vec4<i32>(-1i, reverseBits(~2147483647i), ~u_input.a.x, ~func_5(u_input.a, 4294967295u, Struct_2(var_1.a, arg_1.b.b)).b.c.x), ~19109u, Struct_2(-(func_5(vec4<i32>(arg_1.a, arg_1.b.b.c.x, arg_1.a, var_1.b.c.x), u_input.d, Struct_2(arg_1.b.a, Struct_1(var_1.b.a, vec2<bool>(arg_1.b.b.a, false), var_3.b.b.c))).a * -var_1.a), func_5(firstTrailingBit(vec4<i32>(-1i, 1i, i32(-2147483648), 37032i)), ~u_input.c.x, Struct_2(vec2<f32>(var_3.b.a.x, var_1.a.x), func_5(u_input.a, 1u, Struct_2(arg_1.b.a, var_1.b)).b)).b)).b;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = vec3<bool>(i32(-2147483648) >= (12056i ^ u_input.b), all(!vec3<bool>(true, !arg_2, !arg_2)), !(!arg_1.x));
    var var_1 = Struct_2(-vec2<f32>(1526f - 1261f, -(223f - arg_0)), func_6(-265f - -floor(arg_0), Struct_3(22190i & 12089i, func_5(vec4<i32>(3730i, u_input.b, u_input.a.x, -22912i), 34197u - u_input.d, func_2()))));
    let var_2 = -ceil(816f);
    global0 = array<Struct_3, 7>();
    var_1 = func_2();
    return select(!vec2<bool>(!(!false), false), var_0.xy, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(-round(131f) <= (-315f * -min(-521f, 468f)), vec2<bool>(any(func_1(select(-942f, -1000f, true), vec2<bool>(false, true), false & false)), true), u_input.a.wx);
    var var_2 = func_2().b;
    let var_3 = -(var_1.c.x - countOneBits(~31683i));
    let var_4 = func_5(vec4<i32>(abs(-(-var_0)), -var_1.c.x, -var_0, -(~u_input.b)), 4294967295u, Struct_2((vec2<f32>(1000f, -921f) + -vec2<f32>(287f, -1107f)) + vec2<f32>(1365f / -1030f, -241f), func_6(func_2().a.x, Struct_3(-var_0, Struct_2(vec2<f32>(1545f, -1137f), var_1)))));
    var var_5 = var_4;
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-exp2((vec3<f32>(-301f, var_5.a.x, -1000f) / vec3<f32>(-568f, var_6.a.x, var_5.a.x)) + exp2(vec3<f32>(-240f, var_6.a.x, -287f))), -var_5.a.x, (614f / -849f) * -min(-var_5.a.x, var_5.a.x), u_input.d);
}

