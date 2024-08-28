// {"0:0":[248,49,253,218]}
// Seed: 2526395701040096993

struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-561f, -55782i, vec3<u32>(0u, 74800u, 45514u), false), Struct_1(-514f, 0i, vec3<u32>(23365u, 1u, 0u), false), 8394i, Struct_1(760f, 1i, vec3<u32>(0u, 9733u, 84453u), true), 2147483647i);

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 2>;

var<private> global3: array<bool, 17>;

var<private> global4: bool;

fn func_1(arg_0: Struct_3, arg_1: f32) -> f32 {
    return select(arg_1, global0.d.a - -530f, select(global0.a.d, global0.a.d, true));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = reverseBits(vec4<i32>(global0.c, arg_0.b, -16428i, -19051i * -1i)) & vec4<i32>(i32(-2147483648), -1i, -12051i - -global1.x, dot(~(vec4<i32>(0i, -14716i, arg_0.b, 21773i) ^ vec4<i32>(global0.e, arg_0.b, 2147483647i, arg_0.b)), clamp(vec4<i32>(-7377i, 16575i, global1.x, 7555i) + vec4<i32>(arg_0.b, 2147483647i, -1i, global0.d.b), vec4<i32>(5935i, global1.x, 2147483647i, global1.x) - vec4<i32>(arg_0.b, 0i, 2147483647i, 12043i), vec4<i32>(-1i, arg_0.b, -14392i, global1.x) - vec4<i32>(global0.a.b, global0.d.b, -7135i, -21150i))));
    global4 = !global3[arg_0.c.x];
    let var_1 = global0.d.c.x;
    global3 = array<bool, 17>();
    var var_2 = Struct_2(global0.a, global0.d, global1.x, arg_0, -66754i);
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> bool {
    var var_0 = select(select(select(vec4<bool>(global3[arg_0.x], !global3[arg_0.x], true || false, false | true), !select(vec4<bool>(global3[24521u], false, global3[19651u], true), vec4<bool>(global0.b.d, true, global0.a.d, true), true), select(vec4<bool>(global0.a.d, true, false, global3[global0.d.c.x]), vec4<bool>(false, false, global3[10908u], global0.d.d), vec4<bool>(global0.d.d, global0.d.d, false, true))), !vec4<bool>(u_input.a < arg_0.x, false, global3[~u_input.a], !true), select(global3[reverseBits(~u_input.a)], !global0.a.d, global0.a.d)), select(select(select(!vec4<bool>(true, global0.a.d, global0.a.d, true), select(vec4<bool>(global3[21885u], global3[global0.b.c.x], global0.a.d, global3[1u]), vec4<bool>(global3[0u], false, global3[u_input.a], global0.d.d), vec4<bool>(true, false, global3[11944u], global3[global0.d.c.x])), select(vec4<bool>(false, true, global3[1u], global3[1u]), vec4<bool>(false, global3[global0.d.c.x], global3[arg_0.x], false), vec4<bool>(global0.a.d, global3[arg_0.x], true, false))), select(vec4<bool>(false, false, global0.d.d, global3[59474u]), select(vec4<bool>(true, true, true, global3[u_input.a]), vec4<bool>(global3[u_input.a], true, false, global3[arg_0.x]), vec4<bool>(false, global3[1u], true, true)), select(vec4<bool>(global0.a.d, true, global0.d.d, global3[u_input.a]), vec4<bool>(false, false, global0.d.d, false), vec4<bool>(true, true, global3[21346u], global0.d.d))), vec4<bool>(global3[global0.b.c.x], any(vec4<bool>(global0.d.d, true, global3[arg_0.x], false)), true, 10030u <= arg_0.x)), vec4<bool>(global0.b.a > (156f * arg_1), all(select(vec2<bool>(global0.b.d, true), vec2<bool>(global3[u_input.a], false), false)), global3[reverseBits(90551u) | global0.a.c.x], all(select(vec2<bool>(false, global3[u_input.a]), vec2<bool>(global3[0u], global0.b.d), vec2<bool>(false, global3[arg_0.x])))), !(!(!vec4<bool>(global3[27097u], false, false, false)))), true);
    var var_1 = sign(-vec4<f32>(global0.b.a, -(global0.a.a + 1391f), -1114f, arg_1));
    let var_2 = var_1.wz;
    let var_3 = Struct_2(global0.a, global0.b, reverseBits(-abs(dot(global1.xy, global1.zz))), Struct_1(max(arg_1 * -var_2.x, 1010f), ~global0.b.b, min(~vec3<u32>(4294967295u, global0.d.c.x, 4294967295u), ~min(global0.d.c, arg_0.xyw)), all(!vec2<bool>(global3[51624u], global0.d.d))), clamp((-global1.x + global0.a.b) << u_input.a, global1.x, -31430i));
    let var_4 = Struct_3(vec4<bool>(var_0.x && all(select(vec2<bool>(var_0.x, var_3.b.d), vec2<bool>(var_0.x, true), global0.a.d)), global0.d.d, all(!select(vec4<bool>(var_3.a.d, var_3.d.d, true, true), vec4<bool>(global3[var_3.b.c.x], true, true, global0.a.d), vec4<bool>(true, true, false, global0.a.d))), global0.b.d), abs(1i), !(-var_1.x > 979f), ~firstTrailingBit(2147483647i) & (-(global1.x + 2147483647i) >> var_3.a.c.x), var_3);
    return any(var_4.a);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<u32> {
    global1 = -vec3<i32>(abs(firstTrailingBit(-20993i) / (global0.b.b & 66667i)), min(global0.a.b, global0.c), -arg_1.d);
    global1 = ~(-abs(clamp(vec3<i32>(arg_1.b, global1.x, i32(-2147483648)), vec3<i32>(arg_1.e.e, 14316i, 62307i), vec3<i32>(-1i, 0i, arg_1.d)) & vec3<i32>(global0.e, global0.b.b, arg_1.d)));
    global2 = array<f32, 2>();
    global0 = arg_1.e;
    var var_0 = arg_1;
    return countOneBits(~arg_1.e.b.c.zz);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = func_5(~57536u, Struct_3(vec4<bool>(func_4(vec4<u32>(54207u, global0.b.c.x, u_input.a, 4294967295u) - vec4<u32>(58569u, 4294967295u, 7943u, 4294967295u), func_3(Struct_1(arg_2.a, -21560i, vec3<u32>(32564u, arg_2.c.x, global0.a.c.x), true), -751f)), false, arg_2.c.x >= u_input.a, !select(arg_2.d, global3[u_input.a], true)), arg_1.x % (countOneBits(2147483647i) % reverseBits(i32(-2147483648))), arg_2.d & (false | all(vec2<bool>(true, false))), global1.x & 7179i, Struct_2(arg_2, Struct_1(-844f * global0.b.a, reverseBits(-1i), global0.d.c, -727f != global2[15516u]), arg_2.b / arg_2.b, Struct_1(global0.b.a - -764f, min(global0.c, 0i), global0.b.c, !global0.a.d), ~22608i ^ (-1i >> arg_2.c.x))), (trunc(-vec3<f32>(-1000f, -1365f, arg_2.a)) - ((vec3<f32>(-1346f, arg_2.a, global0.b.a) * vec3<f32>(global2[35386u], 108f, -165f)) - round(vec3<f32>(-1866f, -1673f, arg_0)))) * -vec3<f32>(-918f + global0.a.a, 571f, global2[global0.d.c.x] + 1803f));
    global0 = Struct_2(Struct_1(-floor(719f) + -(-597f / arg_0), -(~2147483647i), min(arg_2.c, ~(~vec3<u32>(arg_2.c.x, u_input.a, 51807u))), false), arg_2, arg_1.x, arg_2, ~(~1i));
    global2 = array<f32, 2>();
    global4 = arg_2.d;
    global4 = false;
    return Struct_2(Struct_1(global2[~(1u + arg_2.c.x) ^ 4294967295u], arg_3, arg_2.c, (-(-747f) == (global2[var_0.x] * global0.b.a)) | !global3[u_input.a]), arg_2, abs(~reverseBits(clamp(-1i, arg_1.x, 1i))), arg_2, global0.e & ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global0.d.a / global2[(global0.d.c.x * dot(global0.d.c, vec3<u32>(global0.d.c.x, 1u, 4294967295u))) ^ ~4294967295u], func_1(Struct_3(!vec4<bool>(global0.d.d, global0.a.d, false, true), ~(i32(-2147483648)), true, global1.x, Struct_2(global0.b, Struct_1(global2[global0.d.c.x], global1.x, vec3<u32>(u_input.a, 1u, u_input.a), true), global1.x, global0.d, global1.x)), -461f) / min(global2[reverseBits(~44130u)], -(-global0.d.a)));
    let var_1 = func_2(global0.b.a, -vec2<i32>(-(~(-29772i)), ~(-global0.b.b)), Struct_1(ceil(global2[select(~global0.d.c.x, ~u_input.a, !global0.a.d)]), -34371i, global0.a.c * ~vec3<u32>(0u, global0.b.c.x, 4294967295u), global3[~global0.a.c.x]), 23486i);
    var var_2 = Struct_3(select(vec4<bool>(global0.b.d, false, global3[countOneBits(var_1.d.c.x)], !true), vec4<bool>(var_1.b.d, var_1.d.c.x > global0.b.c.x, global0.a.d, all(vec4<bool>(var_1.d.d, global0.b.d, global0.a.d, true))), select(vec4<bool>(!false, -1i >= global0.c, global0.a.c.x >= global0.d.c.x, -792f <= -1419f), vec4<bool>(!false, -1072f < 501f, false & true, !true), select(!vec4<bool>(false, false, true, var_1.d.d), !vec4<bool>(var_1.b.d, true, false, true), !vec4<bool>(global3[u_input.a], var_1.b.d, global0.a.d, global3[var_1.b.c.x])))), reverseBits(global0.a.b), var_1.b.d | !true, ~(((0i << var_1.d.c.x) % i32(-2147483648)) / ((global0.d.b & -12586i) ^ ~var_1.c)), var_1);
    global4 = true;
    let var_3 = func_2(global2[var_2.e.b.c.x], vec2<i32>(~(-var_1.d.b | firstTrailingBit(1i)), -(-(-53130i)) % reverseBits(~var_1.c)), var_1.a, abs(abs(global0.e)));
    var var_4 = dot(~clamp(vec4<i32>(-25181i, global0.b.b, var_1.e, global1.x), vec4<i32>(var_3.d.b, 2607i, i32(-2147483648), 16707i), vec4<i32>(global1.x, 27730i, global0.b.b, 0i)) - ((vec4<i32>(var_2.e.b.b, global1.x, 102478i, global0.b.b) - vec4<i32>(-706i, global0.e, -16827i, var_2.b)) + (vec4<i32>(0i, global0.a.b, global0.c, global1.x) - vec4<i32>(0i, global0.d.b, var_2.d, var_3.b.b))), ~(vec4<i32>(var_2.e.a.b, -36240i, var_1.a.b, var_2.e.b.b) ^ vec4<i32>(-1229i, -5913i, var_2.e.a.b, i32(-2147483648))) * vec4<i32>(~var_1.d.b, var_2.e.a.b, global0.c, var_3.c)) & (-global0.a.b >> 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.e, countOneBits(var_1.c + global0.d.b), abs(dot(global1.xy, select(global1.xx, global1.yy, false)))), (vec3<f32>(-242f - 685f, -var_3.a.a, -112f) / abs(-vec3<f32>(global2[4294967295u], 1271f, 115f))) - (ceil(vec3<f32>(global0.a.a, -1494f, -858f) + vec3<f32>(global0.b.a, 1000f, 1000f)) + (max(vec3<f32>(-349f, -1743f, -117f), vec3<f32>(global0.d.a, global0.a.a, var_3.b.a)) - trunc(vec3<f32>(-496f, -107f, var_1.b.a)))), vec3<u32>(min(~34337u, select(global0.b.c.x, u_input.a, true)) % ~64947u, 4294967295u - global0.b.c.x, 78945u), dot(vec3<i32>(1i, global0.d.b, global0.a.b) % (min(vec3<i32>(global1.x, -16723i, global1.x), vec3<i32>(30337i, i32(-2147483648), i32(-2147483648))) - vec3<i32>(-1497i, 42804i, 2147483647i)), vec3<i32>(max(dot(vec4<i32>(var_1.a.b, -40562i, -1i, global0.d.b), vec4<i32>(var_2.e.e, var_2.d, 8603i, -41926i)), global0.b.b), (-39343i >> var_1.b.c.x) >> firstLeadingBit(31299u), select(firstTrailingBit(global1.x), dot(vec4<i32>(var_3.c, 23281i, -35668i, var_3.e), vec4<i32>(0i, var_2.d, 39955i, var_3.e)), false))));
}

