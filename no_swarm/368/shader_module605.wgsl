// {"0:0":[249,23,51,130,201,32,205,6,31,108,183,250,254,62,27,151,176,108,39,181,253,88,80,189,33,173,180,13,213,41,101,119,8,85,23,101,145,237,203,60,140,249,25,48,79,21,59,130]}
// Seed: 17595926413242263798

struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<vec3<f32>, 7>;

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = true;
    var var_1 = Struct_1(arg_0.a, false, !(-global0.x > -(global0.x / global0.x)), ~dot(vec2<u32>(abs(arg_0.d), u_input.e + u_input.e), firstLeadingBit(reverseBits(vec2<u32>(43996u, u_input.e)))), !arg_0.e);
    var var_2 = arg_0.a.x;
    let var_3 = Struct_2(vec2<u32>(dot(~vec4<u32>(7983u, 1u, 17257u, 0u), reverseBits(global1[13920u]) + ~vec4<u32>(u_input.e, arg_0.d, u_input.e, 4294967295u)), arg_0.d), Struct_1(abs(vec4<i32>(firstTrailingBit(var_1.a.x), max(arg_0.a.x, arg_0.a.x), min(arg_0.a.x, arg_0.a.x), -1i)), var_1.e.x, ((4294967295u | arg_0.d) != dot(vec4<u32>(70445u, 1u, u_input.e, u_input.e), vec4<u32>(1u, 4294967295u, 0u, var_1.d))) || all(vec3<bool>(false, var_1.e.x, arg_0.c)), ~(~0u), var_1.e));
    global2 = array<vec3<f32>, 7>();
    return ceil(vec2<f32>(global0.x, -1000f * -global0.x) - (-(vec2<f32>(global0.x, 1114f) / vec2<f32>(268f, 384f)) * -(vec2<f32>(global0.x, global0.x) / vec2<f32>(global0.x, 684f))));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = vec4<bool>(arg_0.b.c, any(vec2<bool>(all(vec4<bool>(arg_0.b.b, false, false, arg_0.b.c)), !arg_0.b.b)) && !arg_0.b.e.x, !false, !arg_0.b.b);
    let var_1 = arg_0.b;
    return sign(step(func_3(Struct_1(vec4<i32>(var_1.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), true, false, 53500u, vec3<bool>(true, true, false))), -(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)))) - vec2<f32>(-512f, -276f);
}

fn func_1() -> Struct_1 {
    var var_0 = -(-1541f);
    var var_1 = any(vec3<bool>(true & false, 512f < -global0.x, !true));
    let var_2 = global0.x - 1058f;
    global0 = -(vec2<f32>(1509f, global0.x) - func_2(Struct_2(vec2<u32>(u_input.e, 4294967295u), Struct_1(u_input.c, true, false, u_input.e, vec3<bool>(false, true, false))))) / vec2<f32>(func_3(Struct_1(u_input.c, !true, any(vec4<bool>(true, true, true, false)), u_input.e, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))).x, select(-1913f, -296f + global0.x, true && false) * round(-(-367f)));
    var var_3 = firstLeadingBit(clamp(vec4<i32>(i32(-2147483648), -(-3944i), ~55579i, -u_input.d), countOneBits(u_input.c - u_input.c), vec4<i32>(i32(-2147483648), -min(u_input.c.x, -1i), 0i, 0i)));
    return Struct_1(countOneBits(u_input.c), all(select(vec4<bool>(false == true, select(true, true, false), any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, false))), vec4<bool>(!true, !true, !true, true), select(!vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))))), var_2 > 1691f, ~select(dot(reverseBits(vec3<u32>(u_input.e, u_input.e, u_input.e)), vec3<u32>(4294967295u, u_input.e, 4294967295u) | vec3<u32>(49816u, 1u, u_input.e)), u_input.e << u_input.e, all(!vec3<bool>(true, true, true))), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !(!vec3<bool>(false, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(4294967295u) | abs(0u);
    var var_1 = sign(-floor(-(-773f))) / min(827f, -global0.x);
    let var_2 = u_input.a;
    let var_3 = abs(abs(vec3<u32>(~dot(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.e, 24067u)), u_input.e << ~u_input.e, 1u)));
    var var_4 = func_1();
    let var_5 = Struct_2(vec2<u32>(var_4.d, var_4.d), func_1());
    var_1 = func_2(Struct_2(var_5.a, var_5.b)).x;
    var var_6 = vec3<f32>(-exp2(108f) + -global0.x, 1000f, step(func_2(Struct_2(vec2<u32>(var_3.x, 4294967295u), func_1())).x, 871f));
    var var_7 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(-func_3(func_1()).x, max(vec2<f32>(-1000f, floor(1110f)) / -floor(vec2<f32>(-460f, var_6.x)), var_6.yz), u_input.c.zxy, select(firstLeadingBit(7971u), max(4294967295u, 91852u ^ ~55790u), false), global2[56679u]);
}

