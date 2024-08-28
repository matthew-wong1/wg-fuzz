// {"0:0":[46,109,23,233]}
// Seed: 14958812479467722427

struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, false, true, true, true, true, false);

var<private> global2: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(7457u, 4294967295u, 34689u, 1u), vec4<u32>(4294967295u, 0u, 26384u, 17209u), vec4<u32>(61929u, 4294967295u, 70773u, 1u), vec4<u32>(2239u, 1u, 71665u, 35255u), vec4<u32>(110308u, 0u, 34188u, 18822u), vec4<u32>(0u, 0u, 21404u, 1u), vec4<u32>(1u, 9119u, 1509u, 4294967295u), vec4<u32>(14306u, 0u, 12533u, 28302u), vec4<u32>(48925u, 1616u, 57214u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 106166u), vec4<u32>(101819u, 38354u, 17651u, 58898u), vec4<u32>(1u, 0u, 45304u, 51075u), vec4<u32>(1u, 50935u, 20450u, 17031u), vec4<u32>(88197u, 0u, 47042u, 19485u), vec4<u32>(0u, 51968u, 2983u, 3548u), vec4<u32>(25366u, 9277u, 1u, 54199u), vec4<u32>(54142u, 28012u, 11363u, 49590u), vec4<u32>(1u, 0u, 29413u, 1u), vec4<u32>(49515u, 75715u, 36192u, 0u), vec4<u32>(40200u, 0u, 4294967295u, 4294967295u), vec4<u32>(30982u, 39568u, 11139u, 1u), vec4<u32>(4294967295u, 1u, 24367u, 46742u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(1u, 111195u, 4294967295u, 11790u), vec4<u32>(2966u, 1u, 0u, 469u), vec4<u32>(16991u, 4294967295u, 42405u, 51533u), vec4<u32>(60411u, 0u, 4294967295u, 1u), vec4<u32>(23023u, 1u, 4294967295u, 15195u));

var<private> global3: Struct_1 = Struct_1(false, vec3<i32>(2147483647i, 0i, -537i), vec2<f32>(-329f, 817f), false);

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    global2 = array<vec4<u32>, 29>();
    global1 = array<bool, 8>();
    var var_0 = Struct_1(true, ~(vec3<i32>(0i, ~(-42392i), u_input.a) / vec3<i32>(~54265i, global3.b.x | global3.b.x, global3.b.x)), global3.c, global3.d);
    var var_1 = !(!vec3<bool>(arg_1.x, true, !select(global1[3256u], global1[49133u], false)));
    let var_2 = dot(~(-(vec3<i32>(i32(-2147483648), var_0.b.x, 42658i) >> (vec3<u32>(9746u, 4294967295u, 19704u) << vec3<u32>(0u, 79339u, 1u)))), countOneBits(select(~vec3<i32>(var_0.b.x, global3.b.x, global3.b.x), vec3<i32>(11419i, global3.b.x, u_input.a) ^ global3.b, !(!vec3<bool>(global3.d, var_1.x, var_0.a)))));
    return -2413f * (-global3.c.x / trunc(global3.c.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32) -> vec3<i32> {
    let var_0 = !true;
    var var_1 = ~vec4<u32>(5501u, ~(~arg_1.x & 4294967295u), ~abs(dot(arg_1.zx, vec2<u32>(68700u, 56639u))), arg_1.x);
    global0 = array<vec4<f32>, 20>();
    var_1 = ((vec4<u32>(~var_1.x, var_1.x + var_1.x, 51806u, 56575u + var_1.x) % (max(global2[var_1.x], vec4<u32>(2902u, arg_1.x, var_1.x, 35702u)) - ~global2[var_1.x])) >> (firstLeadingBit(~global2[var_1.x]) % select(global2[arg_1.x] - global2[var_1.x], reverseBits(vec4<u32>(60884u, var_1.x, 44301u, 11380u)), arg_0))) % max(vec4<u32>(arg_1.x, ~(var_1.x ^ 0u), 1413u, 28144u), global2[reverseBits(var_1.x)]);
    let var_2 = Struct_1(!false, -abs(vec3<i32>(arg_2 & u_input.a, u_input.a, min(u_input.a, global3.b.x))), vec2<f32>(floor(221f), min(1039f + 668f, -1267f) / -(-184f / global3.c.x)), all(select(vec3<bool>(false, any(arg_0.xy), true), !arg_0.zyz, arg_0.yzw)));
    return firstLeadingBit(max(vec3<i32>(dot(-vec4<i32>(u_input.a, 1i, i32(-2147483648), u_input.a), firstLeadingBit(vec4<i32>(-6823i, u_input.a, arg_2, var_2.b.x))), countOneBits(-31869i), firstTrailingBit(~arg_2)), vec3<i32>(arg_2, -clamp(40811i, global3.b.x, 2147483647i), arg_2 * 11576i)));
}

fn func_2() -> Struct_1 {
    let var_0 = global3.c.x;
    global3 = Struct_1(!(!all(vec3<bool>(false, false, false)) == (-(-414f) <= -global3.c.x)), func_3(vec4<bool>(global3.a, true, global1[dot(min(vec2<u32>(1u, 18798u), vec2<u32>(32794u, 0u)), vec2<u32>(1u, 0u) - vec2<u32>(4294967295u, 14713u))], abs(global3.b.x) > -16608i), vec3<u32>(1u, ~1u % countOneBits(4294967295u), countOneBits(dot(vec3<u32>(17562u, 31039u, 4294967295u), vec3<u32>(49242u, 35082u, 4294967295u)))), (-37545i / -1i) - min(max(global3.b.x, global3.b.x), 0i)), (exp2(vec2<f32>(-310f, global3.c.x)) * (vec2<f32>(140f, global3.c.x) - global3.c)) + (vec2<f32>(global3.c.x, -(-143f)) + global3.c), ~abs(36281u >> 33215u) < (firstLeadingBit(1u) ^ ~(~23621u)));
    var var_1 = Struct_1(global3.a, global3.b, -((sign(vec2<f32>(global3.c.x, -472f)) * select(vec2<f32>(global3.c.x, global3.c.x), global3.c, global3.a)) + min(exp2(vec2<f32>(global3.c.x, global3.c.x)), global3.c)), !all(vec3<bool>(false, any(vec2<bool>(global3.a, global1[31947u])), false)));
    global1 = array<bool, 8>();
    var_1 = Struct_1(true, abs(abs(abs(vec3<i32>(1412i, var_1.b.x, 2147483647i)))) >> ~(max(vec3<u32>(14562u, 4294967295u, 0u), vec3<u32>(0u, 19026u, 0u)) ^ ~vec3<u32>(0u, 19017u, 4294967295u)), var_1.c, true && true);
    return Struct_1(1804f < global3.c.x, -(~global3.b), (min(ceil(global3.c), -var_1.c) / vec2<f32>(ceil(global3.c.x), -1055f)) * vec2<f32>(-(-2394f), -(-(-470f))), !(!global1[~4294967295u]));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(all(!vec4<bool>(false, arg_2, false, true)) == true, vec3<i32>(1i & arg_0.b.x, -(~(~u_input.a)), -18030i), abs(exp2(global3.c)), arg_3.b.x > abs(1i));
    global1 = array<bool, 8>();
    var var_1 = vec4<u32>(abs(firstTrailingBit(24538u)), clamp(47728u, abs(~firstTrailingBit(13794u)), dot(vec2<u32>(93666u, ~1u), select(vec2<u32>(50345u, 4294967295u) >> vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 39873u), any(vec2<bool>(global1[1u], false))))), 4294967295u, 0u);
    let var_2 = func_2();
    var_1 = vec4<u32>(var_1.x, 0u, 0u, firstLeadingBit(86076u)) ^ countOneBits(abs(~clamp(global2[28937u], global2[33020u], global2[29816u])));
    return StorageBuffer(-vec4<f32>(func_1(-global3.b, !vec2<bool>(true, false)), min(620f, var_2.c.x) + ceil(var_2.c.x), arg_0.c.x, -var_2.c.x * -198f), (floor(arg_1.yxx / arg_1.xyw) - (select(arg_1.yxw, arg_1.yzw, arg_0.a) * (arg_1.xwx / vec3<f32>(global3.c.x, var_0.c.x, global3.c.x)))) / vec3<f32>(-1022f, -691f, sign(-1228f)), ~var_1.ww, clamp(~select(vec2<u32>(0u, var_1.x) | vec2<u32>(var_1.x, 44319u), var_1.xz << vec2<u32>(1u, 4554u), vec2<bool>(var_2.d, arg_2)), vec2<u32>(firstTrailingBit(32980u), var_1.x), ~vec2<u32>(11058u << 35094u, firstTrailingBit(var_1.x))), reverseBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(i32(-2147483648) | ~dot(global3.b, global3.b));
    global3 = Struct_1(global1[1u] | !(26064i > u_input.a), -global3.b, global3.c, ~(firstLeadingBit(70487u) + 4294967295u) != 4294967295u);
    let var_1 = Struct_1(all(select(vec3<bool>(!global1[0u], any(vec2<bool>(global1[4294967295u], global1[50432u])), global1[~4294967295u]), select(vec3<bool>(global3.a, global1[137u], true), vec3<bool>(global3.a, false, false), any(vec4<bool>(global1[70792u], false, true, true))), global3.c.x > -(-582f))), countOneBits(vec3<i32>(-(i32(-2147483648)), ~(-24674i), -1i) % select(-vec3<i32>(-57110i, 0i, 0i), -global3.b, vec3<bool>(false, global3.a, false))), global3.c, global3.a);
    global0 = array<vec4<f32>, 20>();
    let var_2 = vec3<u32>(4294967295u, ~1u, 4294967295u);
    let var_3 = false;
    let var_4 = vec3<f32>(var_1.c.x, -(-min(global3.c.x, 558f)), var_1.c.x) * vec3<f32>(func_1(~(vec3<i32>(u_input.a, global3.b.x, 1000i) & var_1.b), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_3, true))), var_1.c.x, -845f - -(-1994f));
    global0 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = func_4(func_2(), vec4<f32>(-(-(-var_4.x)), global3.c.x, -var_4.x * -select(global3.c.x, global3.c.x, false), max(-261f, global3.c.x)), var_3, func_2());
}

