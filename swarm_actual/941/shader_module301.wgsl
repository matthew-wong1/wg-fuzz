// {"0:0":[105,56,172,95,236,200,221,111,57,110,184,45,100,200,207,113,136,135,17,153,9,76,153,73,128,205,57,16,47,47,218,56,213,219,158,253,25,227,12,194,102,167,175,105,35,115,217,181]}
// Seed: 10745361933409465702

struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(2147483647i, 11583i, -1i), vec3<i32>(34837i, 4585i, 24953i), vec3<i32>(-55191i, i32(-2147483648), -6794i), vec3<i32>(4619i, 0i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(-6632i, 2302i, 0i), vec3<i32>(i32(-2147483648), -8000i, -28811i), vec3<i32>(-6852i, -1i, -16930i), vec3<i32>(-2903i, 2147483647i, 15286i), vec3<i32>(0i, 2147483647i, -57093i), vec3<i32>(28513i, i32(-2147483648), 0i), vec3<i32>(1i, i32(-2147483648), 0i));

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-41656i, 2169i, i32(-2147483648)), vec3<i32>(-7544i, 27859i, -44538i), vec3<i32>(-1i, 1i, -61650i), vec3<i32>(-23515i, -4319i, i32(-2147483648)), vec3<i32>(30244i, -54428i, 27546i), vec3<i32>(14281i, i32(-2147483648), 2147483647i), vec3<i32>(22066i, 12952i, -2353i), vec3<i32>(-20608i, 0i, i32(-2147483648)), vec3<i32>(0i, 4014i, 2147483647i));

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<f32>(1000f, -2919f), vec2<i32>(2147483647i, 51265i), vec3<i32>(0i, 10728i, 0i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1845f, 543f), vec2<i32>(13967i, 2147483647i), vec3<i32>(i32(-2147483648), 28759i, -14542i))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<f32>(413f, -580f), vec2<i32>(-6909i, -1i), vec3<i32>(27377i, 40160i, -1i)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-878f, -320f), vec2<i32>(41597i, 32554i), vec3<i32>(1i, 49455i, 32509i))), 6689u, Struct_1(vec3<bool>(true, true, true), vec2<f32>(-234f, 818f), vec2<i32>(2147483647i, -1i), vec3<i32>(1i, 1i, 0i))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1098f, 329f), vec2<i32>(-1i, 8439i), vec3<i32>(-18405i, 3644i, -9669i)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(770f, -1426f), vec2<i32>(2147483647i, 50665i), vec3<i32>(2147483647i, i32(-2147483648), -1i))), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(-201f, -889f), vec2<i32>(1i, 2147483647i), vec3<i32>(2147483647i, -47698i, 5687i)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1000f, -149f), vec2<i32>(31687i, 1i), vec3<i32>(22330i, 1i, 1i))), 1u, Struct_1(vec3<bool>(true, false, true), vec2<f32>(-619f, 1400f), vec2<i32>(-69727i, -1i), vec3<i32>(-33459i, -5392i, 0i))), 343f, -1i);

var<private> global3: array<vec4<u32>, 17>;

var<private> global4: array<f32, 22>;

fn func_3(arg_0: u32) -> i32 {
    global4 = array<f32, 22>();
    global4 = array<f32, 22>();
    global3 = array<vec4<u32>, 17>();
    var var_0 = trunc(global2.b.d.b);
    global4 = array<f32, 22>();
    return -dot(abs(~(global1[100916u] * global0[4294967295u])), vec3<i32>(-1i, clamp(16847i, u_input.c, -u_input.a), u_input.d * -global2.a.d.d.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_4 {
    global3 = array<vec4<u32>, 17>();
    var var_0 = Struct_4(Struct_3(Struct_2(global2.a.b.b, global2.b.a.b), Struct_2(Struct_1(global2.a.a.b.a, global2.a.b.a.b + vec2<f32>(global4[u_input.b.x], global4[u_input.b.x]), global2.b.a.b.d.xx, global2.b.a.b.d), global2.b.b.a), abs(~global2.a.c) | ~arg_1, Struct_1(global2.a.a.a.a, -vec2<f32>(global2.c, global4[u_input.b.x]), vec2<i32>(u_input.d, u_input.c & global2.b.a.a.c.x), vec3<i32>(69168i, global2.b.d.d.x - 1i, arg_2 << u_input.b.x))), Struct_3(global2.b.b, global2.a.a, ~8795u, Struct_1(global2.b.d.a, -(vec2<f32>(-117f, global4[arg_1]) / global2.b.d.b), ~vec2<i32>(arg_0.x, global2.b.d.c.x), vec3<i32>(arg_2, firstTrailingBit(global2.b.a.a.c.x), 0i))), -482f, arg_2 >> ~34091u);
    var var_1 = !(!select(~0u >= (arg_1 << 69684u), global2.a.b.a.a.x, all(select(vec4<bool>(true, global2.a.b.a.a.x, global2.b.a.a.a.x, true), vec4<bool>(false, false, var_0.b.d.a.x, false), false))));
    var var_2 = min(-(var_0.b.d.b.x + floor(global2.c)), -(-486f) - -global4[abs(4294967295u)]);
    global3 = array<vec4<u32>, 17>();
    return Struct_4(global2.a, Struct_3(Struct_2(global2.b.d, Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.d.a.x, true), true), global2.b.d.b, vec2<i32>(global2.a.d.d.x, 22030i) >> u_input.b.yy, global2.b.a.b.d)), var_0.a.a, ~(81068u % ~u_input.b.x), Struct_1(var_0.a.b.b.a, ceil(-var_0.a.d.b), vec2<i32>(func_3(arg_1), dot(vec4<i32>(var_0.d, -24035i, 1i, -25850i), vec4<i32>(-2032i, arg_0.x, arg_0.x, var_0.a.a.b.c.x))), (global0[24098u] % vec3<i32>(u_input.c, arg_0.x, 1250i)) + abs(var_0.a.a.a.d))), global2.c, 1i);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = -(-(vec3<f32>(-1497f, -1000f, global4[74203u]) + -vec3<f32>(-1789f, -1742f, 940f))) / -vec3<f32>(global2.b.a.b.b.x, -320f, -197f);
    global3 = array<vec4<u32>, 17>();
    global2 = func_2(countOneBits(abs(-(-global2.b.d.c))), clamp(u_input.b.x, global2.a.c >> (u_input.b.x << global2.a.c), 35104u), ~((-(-11744i) << ~0u) / 1i), 529f);
    var var_1 = 257f;
    let var_2 = vec2<u32>(global2.b.c, dot(global3[firstLeadingBit(func_2(vec2<i32>(u_input.a, -29307i), 0u, global2.b.a.b.c.x, global4[1u]).a.c)], ~vec4<u32>(u_input.b.x, 76466u, 1u, global2.a.c) ^ vec4<u32>(u_input.b.x, 74130u, u_input.b.x, u_input.b.x))) * max(vec2<u32>(1u, ~global2.a.c) << ((u_input.b.yy | vec2<u32>(39070u, 4294967295u)) * (vec2<u32>(global2.b.c, 4294967295u) << vec2<u32>(19115u, u_input.b.x))), vec2<u32>(global2.b.c * 0u, ~68226u) + firstTrailingBit(vec2<u32>(1u, 3690u) << vec2<u32>(global2.b.c, global2.b.c)));
    return ~0i;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    global4 = array<f32, 22>();
    var var_0 = -floor(ceil(global4[~0u]));
    let var_1 = Struct_1(vec3<bool>(any(!(!vec4<bool>(false, global2.a.d.a.x, false, global2.b.b.a.a.x))), !all(global2.b.d.a.zz), false == (countOneBits(u_input.b.x) < global2.a.c)), abs(vec2<f32>(ceil(global4[u_input.b.x] / arg_1.a.b.x), -min(arg_1.b.b.x, global2.b.b.b.b.x))), min(global2.a.d.d.yz, vec2<i32>(reverseBits(u_input.d) + abs(global2.a.b.b.c.x), ~abs(-1i))), global1[62697u] | (firstTrailingBit(~global2.b.d.d) << ~(~u_input.b)));
    var var_2 = any(vec3<bool>(arg_1.b.a.x, true, !true));
    let var_3 = exp2(func_2(-max(vec2<i32>(-30422i, 2147483647i), vec2<i32>(arg_1.b.d.x, var_1.d.x)), 0u, ~dot(vec4<i32>(5961i, 8308i, arg_1.b.c.x, 1i), vec4<i32>(global2.a.b.b.d.x, 58461i, 23262i, arg_1.a.c.x)), -1798f).b.b.b.b.x + 2808f);
    return StorageBuffer(func_2(global2.b.b.a.d.xz, func_2(-(~vec2<i32>(arg_0, 2147483647i)), ~global2.a.c, ~u_input.d, global4[min(u_input.b.x, 13785u)]).a.c, arg_0, -2005f).b.c, select(vec4<f32>(1470f, var_3 - arg_1.b.b.x, var_1.b.x, -232f) + ceil(-vec4<f32>(global4[1828u], var_1.b.x, 446f, global4[0u])), select(ceil(vec4<f32>(270f, var_1.b.x, 218f, 1000f)), -vec4<f32>(-1000f, 1936f, -1324f, arg_1.b.b.x), select(vec4<bool>(false, false, true, true), vec4<bool>(global2.b.d.a.x, true, arg_1.a.a.x, false), var_1.a.x)) - (max(vec4<f32>(461f, var_1.b.x, 1643f, 1540f), vec4<f32>(-1000f, 1000f, var_3, -431f)) / ceil(vec4<f32>(-884f, 1048f, global2.a.d.b.x, -799f))), !true), select(arg_1.a.d.xx, arg_1.b.c, global2.b.b.b.a.yy), func_2(reverseBits(vec2<i32>(-31433i, global2.d)), dot(u_input.b, vec3<u32>(global2.a.c, min(0u, global2.a.c), 4294967295u)), -8048i, 1094f).b.a.a.d.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(-(~(func_1(global4[global2.b.c]) % (global2.d + u_input.d))), global2.a.b);
}

