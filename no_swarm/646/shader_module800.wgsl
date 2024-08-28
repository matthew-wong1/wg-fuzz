// {"0:0":[51,142,122,184,240,160,181,22,210,172,98,155,243,98,229,152,22,109,195,78,119,215,73,6,108,174,129,43,71,202,88,65,116,16,33,70,220,188,109,231,143,83,64,54,50,134,93,109]}
// Seed: 11651596463974064454

struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, true, false, false, false);

var<private> global1: array<Struct_2, 13>;

var<private> global2: u32 = 60917u;

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(4294967295u, -1309f, vec2<f32>(-490f, -238f), -151f, Struct_1(-65234i, -187f, -1862f, vec4<bool>(true, false, false, false))), Struct_3(69820u, 1041f, vec2<f32>(-501f, 1503f), -306f, Struct_1(1i, 402f, -1539f, vec4<bool>(false, false, false, true))), Struct_3(1u, 436f, vec2<f32>(-1126f, -443f), 1043f, Struct_1(-1i, 114f, -578f, vec4<bool>(true, false, true, false))), Struct_3(6992u, -1173f, vec2<f32>(1190f, -2063f), 375f, Struct_1(-16978i, 682f, 1698f, vec4<bool>(true, true, false, false))), Struct_3(8973u, 231f, vec2<f32>(1895f, -414f), 790f, Struct_1(-1i, -392f, -1000f, vec4<bool>(false, true, false, false))), Struct_3(1u, 2587f, vec2<f32>(-114f, -1000f), 1481f, Struct_1(2147483647i, -247f, 539f, vec4<bool>(true, false, true, false))), Struct_3(391u, 1617f, vec2<f32>(-841f, -1002f), -1000f, Struct_1(1i, 891f, 1000f, vec4<bool>(true, false, true, true))), Struct_3(18069u, -233f, vec2<f32>(842f, -434f), -533f, Struct_1(0i, 293f, 1328f, vec4<bool>(false, false, false, false))), Struct_3(4294967295u, 1000f, vec2<f32>(-1000f, -131f), -212f, Struct_1(0i, 812f, -775f, vec4<bool>(false, true, false, false))), Struct_3(25115u, -275f, vec2<f32>(1868f, -853f), 679f, Struct_1(-21100i, -385f, 424f, vec4<bool>(true, true, true, true))), Struct_3(25008u, 1956f, vec2<f32>(-659f, -164f), -391f, Struct_1(42639i, -1012f, -891f, vec4<bool>(false, true, false, false))));

var<private> global4: vec3<bool>;

fn func_3() -> f32 {
    global2 = abs(~1u);
    var var_0 = global3[u_input.d % dot(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(~(~u_input.b.x), u_input.a.x))];
    global4 = !(!var_0.e.d.wzx);
    var var_1 = min((var_0.e.a >> ~u_input.d) | var_0.e.a, var_0.e.a);
    var var_2 = Struct_2(-(-2257f), abs((var_0.b + -1453f) / (979f + 968f)) + -((1984f - var_0.d) / -var_0.d), Struct_1(reverseBits(~(-var_0.e.a)), var_0.c.x, var_0.b, !var_0.e.d), u_input.c.x);
    return -(-sign(var_0.b) * -(-601f + abs(var_2.c.b)));
}

fn func_2() -> bool {
    let var_0 = Struct_5(Struct_1(countOneBits(~(2147483647i & 1i)), -1000f / 1561f, -(543f - (216f - 255f)), select(!vec4<bool>(false, false, global4.x, false), !vec4<bool>(false, true, false, true), -1i == abs(2147483647i))), abs(-vec2<i32>(-20674i, 1i)) % select(-vec2<i32>(-72992i, -17624i) & vec2<i32>(0i, -1766i), vec2<i32>(0i + -33113i, abs(1i)), !global4.xz), dot((vec4<i32>(2147483647i, 27716i, -8872i, i32(-2147483648)) + vec4<i32>(-46894i, 0i, 1i, -16553i)) | vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 5105i), ~vec4<i32>(-1i, 2147483647i, 1i, 44357i)) - ~(~(-(-1i))));
    var var_1 = var_0.a.b;
    var var_2 = vec2<f32>(min(func_3(), var_0.a.b), 1466f * (var_0.a.b / (var_0.a.c + floor(-655f))));
    var var_3 = Struct_5(Struct_1(2147483647i >> abs(countOneBits(9179u)), -select(1000f, 246f, global0[18579u]) * -244f, 607f, vec4<bool>(any(select(var_0.a.d.wxy, vec3<bool>(false, var_0.a.d.x, global0[u_input.b.x]), var_0.a.d.wyw)), global4.x, any(vec2<bool>(global4.x, false)), true)), vec2<i32>(var_0.b.x, -(~var_0.b.x) >> (countOneBits(u_input.c.x) >> max(u_input.c.x, 62462u))), var_0.a.a);
    global3 = array<Struct_3, 11>();
    return false;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = dot(-(vec2<i32>(-31582i, 1i & -1i) << ~(vec2<u32>(u_input.a.x, u_input.b.x) & u_input.b.yw)), countOneBits(vec2<i32>((-6410i | 1i) % ~1i, (1i * i32(-2147483648)) * 26181i)));
    global2 = 0u ^ ~1u;
    let var_1 = Struct_1(~21522i, min(-(-247f), -exp2(arg_0.x)), -387f, vec4<bool>(!(-1368i >= (-36312i >> u_input.d)), all(vec3<bool>(global0[reverseBits(1u)], func_2(), !global0[u_input.b.x])), !((-33657i >> u_input.a.x) != 51i), global4.x || !any(vec3<bool>(true, global0[u_input.b.x], true))));
    let var_2 = abs(dot(~vec4<i32>(var_1.a, 13246i, var_1.a, var_1.a), ~min(max(vec4<i32>(var_1.a, var_1.a, var_1.a, 0i), vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)), min(vec4<i32>(-39101i, var_1.a, 43534i, i32(-2147483648)), vec4<i32>(var_1.a, -47297i, var_1.a, var_1.a)))));
    var var_3 = select(select(!var_1.d.wyz, !select(vec3<bool>(global4.x, true, var_1.d.x), select(var_1.d.xwz, var_1.d.wyy, false), !vec3<bool>(var_1.d.x, true, global0[12709u])), !all(select(vec2<bool>(false, false), var_1.d.zw, global4.yz))), vec3<bool>(!false, !all(var_1.d), !(!select(true, false, global4.x))), !vec3<bool>(true, !any(vec2<bool>(true, global0[u_input.b.x])), (-2552i < var_1.a) || global0[u_input.a.x << u_input.b.x]));
    return Struct_1(-41955i % -firstTrailingBit(var_2), var_1.b, 1676f, select(select(vec4<bool>(!global0[u_input.b.x], var_3.x, !false, 4294967295u >= 0u), vec4<bool>(global4.x, global0[33613u], !global4.x, all(var_1.d)), true), vec4<bool>(global4.x, any(!vec3<bool>(global4.x, false, false)), clamp(16106u, 809u, 0u) >= ~u_input.c.x, ~(i32(-2147483648)) < dot(vec4<i32>(var_1.a, var_2, var_2, 1i), vec4<i32>(0i, var_2, var_1.a, 44960i))), var_1.d));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.d;
    var var_1 = vec4<u32>(35276u, u_input.b.x, ~dot(max(u_input.b, firstTrailingBit(vec4<u32>(68385u, u_input.d, 4294967295u, u_input.b.x))), abs(~vec4<u32>(u_input.d, u_input.b.x, u_input.c.x, u_input.b.x))), 11312u);
    global0 = array<bool, 8>();
    let var_2 = Struct_2(arg_0.b, -(floor(1195f - 431f) / arg_0.c), func_1(-(-vec4<f32>(-1028f, 716f, arg_0.c, arg_0.b)) + (abs(vec4<f32>(-1027f, 280f, -1000f, 1150f)) * (vec4<f32>(-547f, arg_0.c, arg_0.b, 206f) + vec4<f32>(arg_0.c, arg_0.b, arg_0.b, -1047f)))), ~u_input.b.x);
    var var_3 = Struct_4(Struct_3(0u, func_1(min(vec4<f32>(arg_0.b, var_2.c.b, var_2.a, arg_0.c), vec4<f32>(-668f, arg_0.c, arg_0.b, arg_0.c))).b + -arg_0.c, min(vec2<f32>(1000f, arg_0.b), -vec2<f32>(arg_0.b, -977f)) + -(-vec2<f32>(arg_0.c, var_2.b)), -(-205f), Struct_1(reverseBits(arg_0.a), min(-var_2.a, arg_0.c), -960f / arg_0.c, !(!var_0))), vec4<f32>(arg_0.c * (179f / select(arg_0.c, var_2.c.b, arg_0.d.x)), arg_0.b, func_1(vec4<f32>(select(arg_0.c, -1337f, true), max(var_2.a, var_2.a), 260f, -323f)).c, arg_0.c), ~((max(vec4<i32>(1i, -1i, var_2.c.a, -24102i), vec4<i32>(arg_0.a, 2147483647i, 18449i, arg_0.a)) & ~vec4<i32>(1i, var_2.c.a, var_2.c.a, 68579i)) % select(vec4<i32>(arg_0.a, 33831i, 1i, arg_0.a), vec4<i32>(2147483647i, var_2.c.a, 13078i, var_2.c.a) + vec4<i32>(arg_0.a, var_2.c.a, 1i, 16734i), !var_2.c.d.x)), select(-abs(vec4<f32>(arg_0.c, -960f, arg_0.c, 971f)), vec4<f32>(-576f + -276f, -681f, -881f, var_2.a), global0[~select(u_input.b.x, firstLeadingBit(31312u), true)]), arg_0);
    return arg_0.d.x && !(true & !all(vec2<bool>(true, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(~1u);
    let var_0 = vec3<bool>(func_4(func_1((vec4<f32>(416f, 848f, -1239f, -700f) - vec4<f32>(980f, 210f, -1313f, -1000f)) - vec4<f32>(-432f, 979f, 1000f, 1000f))), any(func_1(max(vec4<f32>(-597f, -1209f, 289f, 1005f), vec4<f32>(-190f, -484f, 660f, 243f))).d) && false, all(select(vec3<bool>(!false, all(vec4<bool>(global4.x, false, true, global0[1u])), false), vec3<bool>(!true, false, global0[u_input.a.x]), all(select(global4.yz, vec2<bool>(false, global0[4294967295u]), global4.x)))));
    var var_1 = -exp2(1000f - 1000f);
    var var_2 = abs(abs(reverseBits(vec2<i32>(-12722i, -17465i)) ^ ~(-vec2<i32>(i32(-2147483648), i32(-2147483648)))));
    let var_3 = vec4<f32>(-(-ceil(step(247f, 2485f))), -580f, step(step(-635f + 262f, -1031f), -513f * max(456f, 1295f)) - 363f, max(abs(-(168f * 1000f)), ceil(sign(667f))));
    var var_4 = select(func_1(round(vec4<f32>(1746f, -717f, exp2(var_3.x), -498f))).d, !vec4<bool>(!(!global4.x), false, func_4(Struct_1(var_2.x, 190f, var_3.x, vec4<bool>(var_0.x, true, false, false))), global0[u_input.a.x << (1u >> u_input.d)]), !vec4<bool>(all(func_1(var_3).d.xz), any(global4.yy), !all(vec2<bool>(false, true)), var_0.x));
    global3 = array<Struct_3, 11>();
    let var_5 = firstTrailingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec3<i32>(78575i, 0i, var_2.x)) - vec3<i32>(~var_2.x, 0i, -16573i)), 2575u, vec2<f32>(-floor(148f + var_3.x), select(var_3.x, var_3.x, var_0.x) * ((-145f / var_3.x) - -var_3.x)), -firstTrailingBit(reverseBits(-vec3<i32>(var_2.x, 0i, var_2.x))));
}

