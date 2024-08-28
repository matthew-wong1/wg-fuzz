// {"0:0":[27,53,224,6,187,156,148,116,111,167,196,242,206,238,182,53,224,57,6,223]}
// Seed: 15681304062670952593

struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(1u, 20137u, 42893u, 41247u, 2521u, 0u, 4294967295u, 1u, 91711u, 1u, 61540u, 0u, 0u, 4294967295u, 69652u, 0u, 8863u, 0u, 21655u, 58266u, 4294967295u, 1u, 89097u, 46238u, 0u, 0u, 120407u, 70204u, 1u, 1u, 1u);

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(2147483647i, vec2<u32>(64121u, 4294967295u), vec3<u32>(1u, 76378u, 8200u)), Struct_1(-13891i, vec2<u32>(4294967295u, 57540u), vec3<u32>(21142u, 4294967295u, 93877u)), Struct_1(1051i, vec2<u32>(1u, 22085u), vec3<u32>(32625u, 36240u, 56587u)), Struct_1(-26403i, vec2<u32>(0u, 1u), vec3<u32>(15730u, 0u, 1u)), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 19189u), vec3<u32>(1u, 4294967295u, 23011u)), Struct_1(-9998i, vec2<u32>(38309u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4477u)), Struct_1(1i, vec2<u32>(0u, 11387u), vec3<u32>(0u, 20123u, 17968u)), Struct_1(22870i, vec2<u32>(56587u, 4294967295u), vec3<u32>(1u, 4294967295u, 103305u)), Struct_1(-1i, vec2<u32>(1u, 1u), vec3<u32>(40230u, 26126u, 39082u)), Struct_1(0i, vec2<u32>(54925u, 0u), vec3<u32>(29165u, 1u, 74082u)), Struct_1(-32929i, vec2<u32>(1u, 0u), vec3<u32>(0u, 90230u, 25567u)), Struct_1(-36386i, vec2<u32>(4187u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u)), Struct_1(-21703i, vec2<u32>(20727u, 0u), vec3<u32>(1u, 48304u, 18689u)), Struct_1(-3699i, vec2<u32>(75336u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(-15505i, vec2<u32>(1u, 4294967295u), vec3<u32>(38690u, 75584u, 49405u)), Struct_1(i32(-2147483648), vec2<u32>(46429u, 27668u), vec3<u32>(19122u, 2529u, 4294967295u)), Struct_1(-43399i, vec2<u32>(0u, 0u), vec3<u32>(78448u, 4744u, 13653u)), Struct_1(1i, vec2<u32>(46977u, 1u), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(i32(-2147483648), vec2<u32>(62113u, 4294967295u), vec3<u32>(1u, 7569u, 29838u)), Struct_1(-37870i, vec2<u32>(71099u, 62717u), vec3<u32>(0u, 77670u, 48632u)), Struct_1(-13761i, vec2<u32>(1u, 1u), vec3<u32>(0u, 0u, 1u)), Struct_1(2147483647i, vec2<u32>(65805u, 39727u), vec3<u32>(1u, 6106u, 15593u)), Struct_1(-57010i, vec2<u32>(0u, 0u), vec3<u32>(1u, 0u, 34492u)), Struct_1(2147483647i, vec2<u32>(0u, 4294967295u), vec3<u32>(22560u, 0u, 1u)), Struct_1(-19698i, vec2<u32>(6882u, 18456u), vec3<u32>(8704u, 58690u, 32853u)), Struct_1(i32(-2147483648), vec2<u32>(18036u, 4294967295u), vec3<u32>(45058u, 95830u, 94807u)));

var<private> global4: Struct_1;

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = reverseBits(arg_1.c);
    let var_1 = Struct_1(dot(vec3<i32>(clamp(dot(vec2<i32>(u_input.d, arg_1.a), vec2<i32>(arg_1.a, u_input.d)), global4.a & u_input.d, arg_1.a), -u_input.d, -1i), global1[var_0.x]), var_0.zz, vec3<u32>(arg_1.c.x, (3528u << max(arg_0.x, 86460u)) % global4.c.x, 1u));
    let var_2 = Struct_1(0i, arg_0.yz, ~vec3<u32>(abs(~arg_0.x), arg_1.c.x, 6109u));
    global1 = array<vec3<i32>, 22>();
    global3 = array<Struct_1, 26>();
    return 4294967295u;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.b.x;
    var var_1 = arg_0;
    var var_2 = !vec3<bool>(!(!false), -253f >= (select(-812f, -722f, false) * -470f), !true);
    let var_3 = Struct_2(global3[func_3(vec4<u32>(dot(clamp(vec4<u32>(var_0, 28702u, global0[global0[global4.c.x]], 15332u), vec4<u32>(73155u, 17255u, 0u, 4294967295u), vec4<u32>(97237u, 0u, 0u, global0[arg_0.b.x])), firstTrailingBit(vec4<u32>(4294967295u, arg_0.c.x, global4.c.x, var_0))), global4.b.x, 4294967295u, 9120u), Struct_1(2147483647i + dot(global1[arg_0.b.x], global1[24213u]), (global4.b % arg_0.c.yx) ^ firstTrailingBit(arg_0.c.yz), ~(vec3<u32>(1u, 4294967295u, global0[u_input.c]) * vec3<u32>(4294967295u, 1u, 17559u))))], -vec2<f32>(-step(-1000f, 258f), exp2(458f) + -(-446f)), arg_0, (~(~vec3<u32>(var_0, global0[13798u], var_1.b.x)) + (vec3<u32>(0u, var_0, 0u) & ~arg_0.c)) ^ firstTrailingBit(vec3<u32>(var_1.c.x, 81774u, u_input.c)), 23812u / (func_3(vec4<u32>(4294967295u, 0u, u_input.a, global4.c.x), global3[global0[abs(u_input.e)]]) ^ dot(select(var_1.c, vec3<u32>(31444u, 0u, global4.c.x), true), select(var_1.c, vec3<u32>(u_input.e, 2880u, 4458u), vec3<bool>(var_2.x, var_2.x, var_2.x)))));
    let var_4 = firstTrailingBit(~firstTrailingBit(global4.a)) % global4.a;
    return any(vec3<bool>(true | (-var_4 <= 1i), !var_2.x & !false, -(-1236f / var_3.b.x) >= sign(454f + var_3.b.x)));
}

fn func_1() -> f32 {
    let var_0 = !select(vec3<bool>(!true | func_2(global3[u_input.a]), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(!true, !true, false)), !(!(true & false)));
    var var_1 = 1510f;
    let var_2 = dot(~select(vec4<u32>(global0[u_input.a], 98126u, 26108u, 0u), vec4<u32>(1u, u_input.c, global4.b.x, 39822u), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, false, var_0.x, false))) * countOneBits(countOneBits(vec4<u32>(18602u, 0u, u_input.e, 7592u))), vec4<u32>(130486u, 4294967295u, (18505u / 4294967295u) & ~global4.c.x, ~abs(0u)) * vec4<u32>(dot(vec4<u32>(u_input.e, global4.b.x, u_input.e, 45250u) * vec4<u32>(89537u, u_input.a, global0[u_input.c], 22227u), reverseBits(vec4<u32>(global4.b.x, global0[u_input.c], 7235u, global4.c.x))), 4294967295u, ~(~global4.b.x), u_input.a * ~global0[u_input.a]));
    global2 = all(var_0.xx);
    global0 = array<u32, 31>();
    return 429f - min(-(-1000f * 369f) - 1701f, -(-(-(-224f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1;
    global3 = array<Struct_1, 26>();
    global4 = global3[~(~(~(global0[select(global4.b.x, 4294967295u, arg_1)] & 31354u)))];
    global2 = !false & true;
    let var_1 = global3[3898u];
    return global3[dot(~abs(~vec3<u32>(72136u, global0[global0[var_1.c.x]], global0[global4.b.x])), firstTrailingBit(vec3<u32>(max(~64284u, firstLeadingBit(1u)), min(var_1.c.x, 1u), var_1.b.x | (4294967295u * 1u))))];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(-(-(-(-324f))), func_1(), ceil(-551f), -((992f - -743f) * -(-1051f))), true, min(~countOneBits(firstLeadingBit(vec4<i32>(47914i, u_input.b, 40687i, u_input.d))), -(min(vec4<i32>(global4.a, -10853i, i32(-2147483648), u_input.d), vec4<i32>(u_input.b, u_input.d, global4.a, global4.a)) % -vec4<i32>(u_input.b, i32(-2147483648), global4.a, global4.a))));
    var var_1 = vec2<f32>(1000f + -(-621f), -(-868f / -351f) / -161f) * vec2<f32>(max(1029f, (-551f + -988f) + trunc(-1152f)), ceil(898f));
    var var_2 = vec2<u32>(1u + func_4(vec4<f32>(-147f, 322f, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, -220f), var_1.x == -647f, vec4<i32>(-54991i, 1i, -58245i, var_0.a) | vec4<i32>(-6588i, 50223i, var_0.a, -11111i)).b.x, ~(~4294967295u)) << var_0.c.zz;
    global1 = array<vec3<i32>, 22>();
    global3 = array<Struct_1, 26>();
    var var_3 = vec2<bool>(false, any(vec2<bool>(1384f >= -var_1.x, !false)));
    global4 = func_4(-vec4<f32>(var_1.x, var_1.x / -1000f, 118f, var_1.x), var_3.x, vec4<i32>(firstLeadingBit(-1i + global4.a) * reverseBits(var_0.a & var_0.a), dot(clamp(vec3<i32>(global4.a, u_input.d, u_input.b) >> vec3<u32>(1u, 1u, var_0.c.x), firstTrailingBit(global1[global0[global0[global4.c.x]]]), min(global1[u_input.a], vec3<i32>(var_0.a, global4.a, -32497i))), vec3<i32>(max(-274i, u_input.b), -18934i, var_0.a + global4.a)), abs(dot(vec4<i32>(0i, -1i, var_0.a, u_input.d), vec4<i32>(var_0.a, -1i, u_input.d, global4.a)) + u_input.b), firstTrailingBit(var_0.a) - ((global4.a << 0u) - u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, ~0u, (dot(var_0.b, vec2<u32>(global0[u_input.c], u_input.e)) << clamp(0u, global0[global4.b.x], global0[u_input.e])) >> var_2.x), -(-step(vec3<f32>(var_1.x, 505f, var_1.x), vec3<f32>(var_1.x, var_1.x, 1137f)) * max(vec3<f32>(-594f, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x), select(vec3<f32>(-1000f, -1860f, -519f), vec3<f32>(var_1.x, var_1.x, -376f), vec3<bool>(true, false, var_3.x)))), vec4<i32>(-var_0.a, global4.a, var_0.a, -11402i), -var_1.x, vec3<i32>(var_0.a, max(global4.a, 1i << 1u), global4.a * (dot(vec2<i32>(1i, 11617i), vec2<i32>(global4.a, global4.a)) + u_input.b)));
}

