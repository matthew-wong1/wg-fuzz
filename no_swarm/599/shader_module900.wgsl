// {"0:0":[231,45,91,190,127,52,247,69,245,201,78,86,224,194,155,133,193,26,182,4,110,107,107,47,248,4,31,23,111,165,179,157,50,228,180,143,158,187,206,106,162,26,190,139,9,59,242,188]}
// Seed: 6635757855701142281

struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 387f;

fn func_1() -> f32 {
    let var_0 = -(-(-501f) / 229f);
    global0 = var_0;
    let var_1 = 10185u;
    let var_2 = vec4<u32>(~firstLeadingBit(1u), (((5959u & var_1) & dot(vec4<u32>(4294967295u, u_input.c.x, 0u, var_1), vec4<u32>(4294967295u, var_1, 247u, 60309u))) + dot(vec4<u32>(var_1, 50791u, 6572u, var_1) + vec4<u32>(u_input.a, 29653u, u_input.b.x, var_1), vec4<u32>(u_input.b.x, u_input.a, 76155u, 4294967295u) / vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u))) * (~(~31168u) | ((var_1 | var_1) << 23997u)), var_1, reverseBits(28542u));
    let var_3 = Struct_2(Struct_1(vec2<i32>(-41718i, dot(vec2<i32>(13435i, -46142i), vec2<i32>(2147483647i, 1i)) - -1i), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), (1708f + 1366f) * -1502f, all(vec4<bool>(true, !true, false, false))), !vec2<bool>(!(var_0 >= -1000f), !(true && false)), ~vec3<i32>(i32(-2147483648), -(-13525i + -1i), 2147483647i), var_0);
    return -(-(-1128f));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global0 = -arg_2.c;
    var var_0 = Struct_4(max(vec2<i32>(-(-1208i), dot(vec2<i32>(arg_2.a.x, arg_0.x), vec2<i32>(arg_0.x, i32(-2147483648)))) * -(arg_2.a ^ vec2<i32>(arg_0.x, arg_0.x)), reverseBits(clamp(arg_2.a * vec2<i32>(arg_2.a.x, arg_0.x), arg_2.a % arg_2.a, vec2<i32>(arg_2.a.x, -13813i) / arg_2.a))), vec3<i32>(dot(firstLeadingBit(-vec3<i32>(0i, i32(-2147483648), arg_0.x)), vec3<i32>(1i, arg_2.a.x, 73878i) & vec3<i32>(39892i, arg_2.a.x, arg_0.x)), dot(vec4<i32>(arg_0.x, -36056i, arg_2.a.x, -1i) | vec4<i32>(arg_0.x, 0i, arg_0.x, arg_2.a.x), abs(-vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_0.x))), -(i32(-2147483648))), Struct_2(arg_2, arg_2.b.yz, abs(vec3<i32>(~arg_0.x, arg_2.a.x, arg_0.x)), sign(min(-arg_2.c, exp2(arg_2.c)))), false, arg_1 & (u_input.c.x >= (~u_input.c.x / 12354u)));
    var var_1 = Struct_2(Struct_1(vec2<i32>(arg_2.a.x, dot(firstTrailingBit(vec3<i32>(i32(-2147483648), arg_2.a.x, arg_0.x)), vec3<i32>(0i, arg_0.x, arg_2.a.x))), !arg_2.b, arg_2.c, (~u_input.a / (1u & u_input.c.x)) <= firstLeadingBit(5203u)), vec2<bool>(false, all(select(select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, var_0.e, arg_2.d), vec4<bool>(true, false, true, var_0.d)), select(vec4<bool>(arg_2.b.x, false, true, false), vec4<bool>(arg_1, var_0.e, false, var_0.e), true), arg_0.x > var_0.b.x))), vec3<i32>(arg_0.x, (-var_0.b.x | 115512i) << (19537u | 4294967295u), ~arg_2.a.x), var_0.c.d);
    let var_2 = Struct_1(~arg_2.a, vec3<bool>(any(select(!vec2<bool>(arg_2.d, true), !var_0.c.a.b.zx, select(vec2<bool>(var_1.b.x, var_0.e), arg_2.b.zz, var_1.a.b.zy))), true, any(!(!arg_2.b.zx))), min(-(-882f - (-1525f - 1000f)), func_1()), arg_1);
    var var_3 = !vec2<bool>(var_1.b.x, all(var_1.b));
    return select(vec4<bool>(!arg_1, false, true, false), !(!select(vec4<bool>(false, var_0.d, true, var_0.d), select(vec4<bool>(arg_1, var_1.a.d, false, var_1.a.d), vec4<bool>(false, var_1.b.x, true, var_2.d), vec4<bool>(false, false, arg_2.b.x, var_0.d)), var_0.d)), select(!(!vec4<bool>(var_3.x, true, true, true)), vec4<bool>(all(var_2.b.zy), var_3.x, arg_2.a.x <= dot(vec3<i32>(-4382i, -22075i, -35481i), vec3<i32>(30989i, var_2.a.x, arg_0.x)), var_1.b.x), var_3.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    let var_0 = select(!vec4<bool>(true, !any(vec4<bool>(arg_2, false, arg_2, true)), arg_2, true), vec4<bool>(arg_1.b.x, arg_2, false, false), true);
    var var_1 = arg_1.a;
    let var_2 = Struct_4(vec2<i32>(i32(-2147483648), abs((i32(-2147483648) << 4294967295u) / 0i)), firstLeadingBit(~arg_1.c), Struct_2(arg_1.a, select(select(select(var_1.b.xz, vec2<bool>(false, arg_2), var_0.x), select(vec2<bool>(arg_2, true), var_1.b.yz, var_0.yw), !true), select(select(vec2<bool>(var_0.x, false), var_1.b.zy, vec2<bool>(false, false)), arg_1.b, arg_1.b), !vec2<bool>(true, false)), arg_1.c, arg_0), any(func_3(vec2<i32>(arg_1.a.a.x, -6628i), !true, Struct_1(arg_1.a.a, vec3<bool>(var_0.x, var_0.x, false), 149f, arg_1.b.x))) || var_1.b.x, func_1() >= -(-(arg_0 - -652f)));
    let var_3 = vec4<f32>(arg_0, min(var_2.c.d, 1137f * -1207f), 434f, var_1.c);
    let var_4 = u_input.a;
    return max(~(~(-(-var_2.a))), ~(~vec2<i32>(-21948i, -1i) & vec2<i32>(firstTrailingBit(var_1.a.x), -var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-((vec2<i32>(45146i, -1i) ^ vec2<i32>(1i, 2147483647i)) << reverseBits(u_input.b.yx)) | (-select(vec2<i32>(11037i, -1i), vec2<i32>(0i, i32(-2147483648)), true) >> (~u_input.c << vec2<u32>(u_input.c.x, 4294967295u))), select(vec3<bool>((431f * 1613f) <= min(453f, -181f), any(!vec3<bool>(true, true, false)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))), vec3<bool>((u_input.b.x != 25439u) || (false && false), !(1u > 1u), any(!vec3<bool>(true, false, false))), !vec3<bool>(true, -1i >= 0i, false)), -1241f, false);
    global0 = round(min(-(-477f - -1040f), var_0.c)) - step(var_0.c, trunc(-1157f));
    let var_1 = -454f;
    global0 = func_1();
    var var_2 = abs(vec3<i32>(-1i, 0i, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(dot(var_0.a / ~vec2<i32>(42860i, var_0.a.x), ~var_0.a / func_2(var_1, Struct_2(Struct_1(vec2<i32>(2147483647i, var_2.x), vec3<bool>(var_0.b.x, true, var_0.d), var_1, var_0.d), vec2<bool>(var_0.d, true), vec3<i32>(var_2.x, 2147483647i, -9894i), -818f), var_0.b.x)) << ~(~(~u_input.b.x)), vec4<u32>(0u, dot(firstLeadingBit(countOneBits(vec4<u32>(u_input.c.x, u_input.a, 49202u, u_input.a))), countOneBits(vec4<u32>(16824u, u_input.c.x, u_input.c.x, 71282u) ^ vec4<u32>(1u, u_input.c.x, 1u, u_input.a))), reverseBits(~u_input.a) & reverseBits(~u_input.c.x), 4294967295u), dot(abs(select(vec3<i32>(2147483647i, var_0.a.x, -13121i) + vec3<i32>(var_0.a.x, 34932i, var_2.x), countOneBits(vec3<i32>(var_2.x, -55271i, var_2.x)), vec3<bool>(var_0.b.x, true, true))), firstLeadingBit(abs(reverseBits(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x))))), var_2.yy);
}

