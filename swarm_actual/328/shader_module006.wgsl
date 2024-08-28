// {"0:0":[25,96,53,73,106,30,51,43,49,50,0,146,98,138,217,27]}
// Seed: 3284946725468937504

struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn func_3() -> bool {
    global0 = array<u32, 30>();
    return !true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = func_3();
    let var_1 = func_3();
    var var_2 = vec2<u32>(dot(vec4<u32>(4294967295u, arg_0.c, global0[arg_0.c], global0[global0[25585u]]) % abs(vec4<u32>(arg_0.c, 30427u, global0[global0[4294967295u]], global0[4093u])), ~(vec4<u32>(global0[1u], global0[arg_0.c], 6209u, 20236u) % vec4<u32>(arg_0.c, 30975u, 4294967295u, 13444u))), abs(64464u)) ^ ~vec2<u32>(global0[min(abs(24642u), dot(vec3<u32>(0u, global0[1u], arg_0.c), vec3<u32>(arg_0.c, arg_0.c, 17464u)))], ~global0[0u] << (19104u - 4294967295u));
    let var_3 = vec2<bool>(!any(vec3<bool>(true, true, false)), all(vec4<bool>(all(select(vec2<bool>(var_0, var_1), vec2<bool>(arg_2, var_0), arg_3)), true, !arg_3, arg_3)));
    var var_4 = select(vec2<bool>((floor(arg_1.b.x) / abs(arg_0.a)) <= 1000f, arg_2), !vec2<bool>(arg_3, func_3()), var_3);
    return -1339f - arg_0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global0 = array<u32, 30>();
    var var_0 = 0i;
    var var_1 = Struct_2(-(func_2(Struct_2(arg_0.x, Struct_1(arg_2, vec3<f32>(arg_1.b.b.x, arg_1.b.b.x, arg_0.x)), global0[43473u]), Struct_1(arg_1.b.a, vec3<f32>(1028f, arg_1.b.b.x, arg_0.x)), all(vec4<bool>(true, true, false, true)), !false) * ((arg_0.x + arg_0.x) / 586f)), Struct_1(~(u_input.b.x / -1i) * -(-7150i), vec3<f32>(-(232f / 395f), 881f * exp2(320f), arg_0.x)), dot(((vec3<u32>(arg_1.c, 18372u, global0[36817u]) % vec3<u32>(arg_1.c, arg_1.c, 26907u)) / (vec3<u32>(4294967295u, 5819u, global0[0u]) * vec3<u32>(arg_1.c, 0u, arg_1.c))) * ~min(vec3<u32>(30305u, 37777u, 0u), vec3<u32>(global0[991u], 0u, 12492u)), ~(vec3<u32>(4294967295u, arg_1.c, 4455u) + vec3<u32>(4294967295u, 4294967295u, global0[arg_1.c])) | min(vec3<u32>(0u, global0[global0[0u]], 56607u) % vec3<u32>(43280u, 30771u, 4955u), vec3<u32>(0u, 1u, 1u))));
    var_0 = 34659i;
    var var_2 = vec2<u32>(countOneBits(global0[dot(abs(vec2<u32>(4294967295u, global0[global0[4294967295u]])), abs(vec2<u32>(arg_1.c, 0u)))] + ~reverseBits(var_1.c)), dot((~vec4<u32>(global0[29783u], var_1.c, arg_1.c, arg_1.c) << (vec4<u32>(arg_1.c, 4294967295u, 28123u, 1u) | vec4<u32>(1u, global0[0u], var_1.c, 0u))) & vec4<u32>(~0u, firstLeadingBit(global0[var_1.c]), select(arg_1.c, 4188u, false), arg_1.c), vec4<u32>(global0[~(~4294967295u)], ~global0[arg_1.c] % 0u, ~21480u, var_1.c)));
    return 1999f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~clamp(vec4<u32>(global0[~27454u], abs(~4294967295u), 0u, ~(76025u ^ global0[global0[33959u]])), ~vec4<u32>(global0[min(global0[1u], 14265u)], abs(global0[51301u]), select(9163u, 60974u, true), abs(1708u)), max(firstTrailingBit(min(vec4<u32>(1u, 0u, global0[0u], 43078u), vec4<u32>(7939u, 36024u, global0[6612u], global0[global0[global0[78081u]]]))), firstLeadingBit(firstLeadingBit(vec4<u32>(global0[0u], 4294967295u, 0u, global0[35286u])))));
    var var_1 = Struct_2(-(-(-func_1(vec4<f32>(-597f, 1000f, -834f, 1403f), Struct_2(1002f, Struct_1(1i, vec3<f32>(219f, -880f, 419f)), var_0.x), u_input.b.x))), Struct_1(-u_input.a, -vec3<f32>(-358f, min(-772f, 608f), -(-834f))), global0[var_0.x] & ~var_0.x);
    var var_2 = ~(-u_input.a);
    let var_3 = abs(-(round(vec4<f32>(var_1.a, 504f, var_1.a, -700f)) * (vec4<f32>(-1874f, 579f, 789f, -398f) + vec4<f32>(-483f, var_1.b.b.x, var_1.a, -1000f)))) - -(vec4<f32>(-var_1.a, 150f, ceil(var_1.b.b.x), -(-238f)) / -(vec4<f32>(var_1.b.b.x, var_1.a, var_1.a, -2838f) / vec4<f32>(1000f, 1612f, 501f, var_1.b.b.x)));
    global0 = array<u32, 30>();
    var_1 = Struct_2(-trunc(var_1.a) + var_3.x, Struct_1(-(-2147483647i), max(select(var_1.b.b, var_1.b.b * var_1.b.b, vec3<bool>(false, true, false)), step(vec3<f32>(var_1.a, -413f, -478f), var_3.xyx) - select(var_1.b.b, var_1.b.b, vec3<bool>(false, false, true)))), dot(abs(abs(var_0)), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<f32>(round(-var_1.b.b.x), -(-var_3.x), (674f / var_3.x) / -var_3.x), var_0.xw & var_0.xx, 0u, abs(~(i32(-2147483648))), var_1.b.a >> ~dot(vec3<u32>(var_0.x, 0u, 80363u), vec3<u32>(1u, global0[var_1.c], 49369u)));
}

