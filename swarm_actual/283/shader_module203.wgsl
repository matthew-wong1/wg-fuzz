// {"0:0":[28,195,1,169,147,152,192,39,158,143,126,174,218,223,237,17,197,218,169,180,84,241,83,25]}
// Seed: 1512063581984155242

struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<vec2<bool>, 17>;

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = select(!global1[~(~(~0u))], global1[8621u], select(!global1[min(u_input.a, ~arg_1.b.a.x)], select(select(!vec2<bool>(false, false), global1[arg_1.b.a.x >> arg_1.b.a.x], vec2<bool>(false, true)), vec2<bool>(false, any(vec3<bool>(true, false, true))), false), select(!global1[abs(4294967295u)], vec2<bool>(false & true, any(vec4<bool>(true, false, true, false))), true)));
    global1 = array<vec2<bool>, 17>();
    var var_1 = arg_3.a.b.a.zxw;
    let var_2 = arg_3;
    var_1 = arg_3.a.b.a.yyy;
    return -firstLeadingBit(-24214i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    var var_0 = -max(func_3(select(vec3<f32>(1086f, arg_0.x, -1000f) / arg_0, sign(vec3<f32>(arg_0.x, -262f, 991f)), select(arg_1, vec3<bool>(arg_1.x, true, false), false)), Struct_2(-arg_0.yx, Struct_1(vec4<u32>(u_input.a, 4294967295u, 1u, 0u))), 1874u, Struct_3(Struct_2(vec2<f32>(global0[55276u], global0[u_input.a]), Struct_1(vec4<u32>(4294967295u, u_input.b, 0u, 27593u))))), -max(u_input.c.x, func_3(vec3<f32>(global0[u_input.b], global0[0u], arg_0.x), Struct_2(arg_0.xx, Struct_1(vec4<u32>(8087u, u_input.b, u_input.b, 29440u))), 1u, Struct_3(Struct_2(vec2<f32>(-1000f, -194f), Struct_1(vec4<u32>(u_input.a, u_input.b, 19596u, 16645u)))))));
    var var_1 = Struct_3(Struct_2(select(arg_0.yx - arg_0.yy, vec2<f32>(377f / 1691f, floor(-1639f)), arg_1.x), Struct_1((vec4<u32>(u_input.a, 39056u, u_input.a, 76523u) * vec4<u32>(0u, u_input.a, u_input.b, u_input.b)) + (vec4<u32>(47633u, 54260u, u_input.b, 48363u) * vec4<u32>(9141u, u_input.b, u_input.b, u_input.a)))));
    var var_2 = !all(vec4<bool>((-1863f + global0[u_input.b]) >= (-262f / 2618f), !(arg_1.x != false), false, true));
    let var_3 = var_1.a;
    var_1 = Struct_3(var_1.a);
    return false;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(!false, true, select(false, !(false & false), false)), !select(vec3<bool>(all(vec3<bool>(true, true, true)), !false, false), !(!vec3<bool>(false, false, false)), true), (!(!false) || func_2(trunc(vec3<f32>(-277f, -1000f, 625f)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))) | func_2(vec3<f32>(round(global0[0u]), abs(-1499f), 314f), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))));
    let var_1 = Struct_1(min(vec4<u32>(4294967295u, abs(u_input.b), arg_0, arg_0) | vec4<u32>(abs(arg_0), max(1u, arg_0), abs(arg_0), 109396u), ~(max(vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<u32>(70467u, arg_0, 444u, arg_0)) >> clamp(vec4<u32>(4294967295u, 65666u, 0u, 7350u), vec4<u32>(u_input.a, u_input.a, 11454u, arg_0), vec4<u32>(u_input.b, arg_0, u_input.b, arg_0)))));
    var var_2 = vec3<i32>(u_input.c.x, ~(((u_input.e + u_input.e) * clamp(u_input.e, 25213i, u_input.d)) | u_input.c.x), 6614i % 26027i);
    var var_3 = -(-select(vec3<f32>(global0[4169u] / global0[44403u], 984f / -1724f, global0[clamp(4294967295u, u_input.b, arg_0)]), vec3<f32>(global0[select(4294967295u, 0u, true)], global0[arg_0] + global0[1u], global0[arg_0] / global0[u_input.b]), true));
    var var_4 = var_3.x / -1925f;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_2(step(exp2(vec2<f32>(515f, -195f)), -vec2<f32>(519f, global0[57811u])), func_1(102907u)));
    global0 = array<f32, 28>();
    let var_1 = var_0.a.b;
    global0 = array<f32, 28>();
    let var_2 = vec2<bool>(false && any(vec3<bool>(false, 3242i > -64277i, select(true, true, false))), all(select(vec4<bool>(!false, true == false, any(vec4<bool>(false, true, false, false)), true | false), !vec4<bool>(true, false, false, false), false)));
    return -exp2(-549f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(~select(~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b), ~vec4<u32>(65021u, u_input.a, 0u, u_input.b), true & true)));
    var var_1 = !true;
    let var_2 = min(vec2<u32>(var_0.a.x / ~0u, 33738u % (~var_0.a.x >> reverseBits(34292u))), ~var_0.a.yx);
    global1 = array<vec2<bool>, 17>();
    let var_3 = -(-func_4(func_1(var_0.a.x))) < global0[~((u_input.b | (u_input.b | var_2.x)) % dot(var_2, vec2<u32>(u_input.a, 45073u)))];
    let x = u_input.a;
    s_output = StorageBuffer(312f, -(exp2(vec3<f32>(global0[var_2.x], 1049f, -694f) - vec3<f32>(global0[var_2.x], 975f, global0[var_2.x])) / vec3<f32>(-global0[78646u], global0[~var_0.a.x], -(-768f))), var_2.x);
}

