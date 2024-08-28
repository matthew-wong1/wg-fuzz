// {"0:0":[141,188,106,81,192,136,65,59,15,81,241,181,239,170,138,15,148,115,154,105,79,173,246,175,99,60,242,52,191,77,177,142,199,236,171,63,104,77,105,55,161,102,185,35,25,184,21,114,9,98,246,115,42,198,147,5,1,205,52,94,141,191,58,161]}
// Seed: 10093721573499772786

struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, 2147483647i, true, vec3<bool>(false, true, false)), Struct_1(1u, -45697i, true, vec3<bool>(false, true, false)), Struct_1(4294967295u, -46253i, false, vec3<bool>(false, false, false)), Struct_1(32809u, i32(-2147483648), true, vec3<bool>(false, false, true)), Struct_1(98190u, 0i, false, vec3<bool>(true, false, true)));

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = true;
    global0 = u_input.a + u_input.a;
    let var_1 = Struct_1(16466u, ~0i % global0.x, all(vec3<bool>(arg_0.x, any(!arg_0), any(!arg_0))), vec3<bool>(((-1570f * -250f) > -810f) != !false, all(select(arg_0, !vec2<bool>(arg_0.x, true), !vec2<bool>(true, true))), !true));
    global0 = min(-u_input.a, ~u_input.a);
    var var_2 = global2[u_input.e.x];
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = -(-(-vec4<f32>(1406f + -644f, -(-1000f), floor(-477f), -(-527f))));
    global0 = (u_input.a * u_input.a) / ((~(u_input.a % vec2<i32>(u_input.d, 51851i)) | u_input.a) | -func_3(select(arg_0.d.xx, arg_0.d.zz, arg_1.x)));
    let var_1 = ceil(-max(-var_0, floor(trunc(vec4<f32>(var_0.x, -662f, var_0.x, 1792f)))));
    var var_2 = 55546i;
    global1 = true;
    return Struct_1(~(arg_0.a << arg_0.a), u_input.d, all(arg_1.yz), arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec4<bool> {
    var var_0 = func_2(Struct_1(~(~4294967295u | arg_0.a), arg_2 * ~arg_0.b, true, vec3<bool>(any(!vec4<bool>(true, false, false, true)), -566f >= floor(-271f), !(u_input.b.x == 22608u))), select(arg_0.d, !arg_1.d, vec3<bool>(!(!false), !true | arg_1.d.x, !false)), false, ~(~(~(~vec4<i32>(2147483647i, arg_0.b, u_input.a.x, u_input.c)))));
    let var_1 = Struct_1(~(~(~var_0.a ^ 4294967295u)), func_2(arg_1, var_0.d, true, vec4<i32>(arg_2 * 2147483647i, -arg_0.b, -27490i, arg_2)).b >> ~select(dot(vec2<u32>(arg_1.a, arg_0.a), u_input.e.ww), ~arg_0.a, all(vec2<bool>(false, false))), !(!(arg_0.d.x | arg_1.c)), vec3<bool>(select(!all(vec3<bool>(true, arg_1.d.x, true)), false, all(vec4<bool>(arg_1.c, var_0.d.x, arg_1.c, arg_1.d.x))), arg_1.c, true));
    let var_2 = abs((firstLeadingBit(103477u + 9067u) * min(0u, 57380u)) + ~u_input.e.x);
    global0 = abs(-vec2<i32>(~(-1i) - 37222i, var_1.b));
    var var_3 = false & false;
    return select(select(!vec4<bool>(true, func_2(arg_1, vec3<bool>(var_0.c, arg_0.c, true), arg_0.c, vec4<i32>(1i, var_0.b, var_0.b, u_input.a.x)).d.x, !var_0.c, !var_0.c), select(vec4<bool>(arg_0.c, !var_0.d.x, arg_0.d.x && true, arg_0.c), vec4<bool>(!var_0.c, -938f >= 954f, var_0.c || false, false), arg_1.c), vec4<bool>(!(!true), arg_0.c, arg_1.c, var_1.c)), select(vec4<bool>(var_1.d.x, !(arg_0.c | true), step(-1232f, -1118f) != (-626f - -1855f), !(!var_0.d.x)), vec4<bool>(arg_0.c, !(var_2 < var_2), !(-1383f >= -320f), (u_input.e.x <= 9057u) & any(vec2<bool>(arg_0.c, var_0.c))), vec4<bool>(all(vec3<bool>(arg_1.c, false, true)), !false, true, any(var_1.d))), select(vec4<bool>(all(var_1.d.xy) || var_0.c, true, true, all(select(vec4<bool>(true, arg_0.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(false, true, false, arg_1.c), vec4<bool>(true, false, arg_1.c, arg_1.d.x)))), vec4<bool>(!(arg_0.b < var_1.b), !true, all(!vec4<bool>(true, arg_0.d.x, false, var_0.d.x)), !false), vec4<bool>(arg_0.c, func_2(arg_1, !vec3<bool>(true, true, var_0.d.x), !true, vec4<i32>(arg_1.b, -1i, -1i, arg_3)).d.x, any(select(vec4<bool>(arg_0.d.x, var_0.c, arg_1.c, true), vec4<bool>(arg_1.d.x, arg_0.c, var_1.d.x, true), vec4<bool>(false, var_0.c, false, true))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!true, all(!select(!vec4<bool>(true, false, false, true), func_1(Struct_1(u_input.b.x, u_input.a.x, false, vec3<bool>(false, true, true)), Struct_1(u_input.b.x, u_input.a.x, false, vec3<bool>(false, true, false)), u_input.c, -24455i), !true)), all(!func_2(global2[u_input.b.x], vec3<bool>(false, false, true), false, vec4<i32>(u_input.c, u_input.d, u_input.d, -62712i)).d.xz) != all(select(vec2<bool>(false, true), vec2<bool>(true, false), !vec2<bool>(true, false))));
    var var_1 = !func_1(func_2(global2[u_input.e.x], !vec3<bool>(var_0.x, false, true), all(func_1(global2[u_input.b.x], Struct_1(u_input.b.x, 13447i, true, vec3<bool>(var_0.x, var_0.x, var_0.x)), -8167i, global0.x)), vec4<i32>(u_input.a.x << u_input.b.x, dot(u_input.a, u_input.a), global0.x | u_input.d, u_input.c | -33175i)), global2[~((u_input.b.x - 2277u) ^ ~u_input.b.x)], global0.x, global0.x);
    var var_2 = clamp(~(~vec2<u32>(u_input.b.x - u_input.b.x, select(4294967295u, u_input.e.x, var_0.x))), countOneBits(vec2<u32>(u_input.e.x, ~63215u)), ~vec2<u32>(1u >> 70583u, ~42989u) >> (u_input.b.zx - vec2<u32>(4294967295u / u_input.b.x, u_input.b.x)));
    var var_3 = func_1(func_2(Struct_1(~(39305u % 7135u), -45418i, true, vec3<bool>(!var_0.x, select(var_1.x, var_1.x, var_0.x), true)), !vec3<bool>(!var_1.x, var_0.x, !true), !var_0.x, ~((vec4<i32>(2147483647i, global0.x, u_input.c, global0.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.x)) ^ max(vec4<i32>(-58075i, i32(-2147483648), 22071i, -65436i), vec4<i32>(global0.x, -1i, u_input.d, 66851i)))), func_2(func_2(global2[dot(vec2<u32>(u_input.b.x, u_input.b.x) + u_input.e.yz, vec2<u32>(var_2.x, u_input.e.x) << u_input.b.yy)], !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, false)), false, clamp(countOneBits(vec4<i32>(0i, 7985i, global0.x, 9033i)), abs(vec4<i32>(u_input.a.x, global0.x, global0.x, 16475i)), vec4<i32>(-1724i, i32(-2147483648), u_input.d, u_input.a.x) >> vec4<u32>(u_input.b.x, u_input.e.x, var_2.x, u_input.b.x))), vec3<bool>(true, !all(vec4<bool>(true, false, false, true)), !var_1.x), !all(var_0.yy), vec4<i32>(0i, global0.x + 36199i, -1i, u_input.a.x * global0.x) - -vec4<i32>(global0.x, global0.x, 0i, 2147483647i)), -firstTrailingBit(countOneBits(-1i * 3128i)), firstTrailingBit((-u_input.c / global0.x) ^ dot(select(vec3<i32>(-1i, 10032i, 0i), vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x), var_1.x), ~vec3<i32>(global0.x, global0.x, 23713i)))).x;
    global0 = ~u_input.a;
    global1 = var_1.x;
    var_3 = false;
    let var_4 = trunc(-abs(-floor(-711f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec3<i32>(u_input.d & 21199i, 1i, -(i32(-2147483648))), countOneBits(max(vec3<i32>(-1i, 36945i, -4340i), vec3<i32>(i32(-2147483648), global0.x, global0.x))), !true)), -(~max(u_input.d, ~global0.x)));
}

