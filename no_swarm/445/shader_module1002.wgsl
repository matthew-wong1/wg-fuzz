// {"0:0":[206,10,79,161,255,250,164,52,236,85,184,168,49,189,138,85]}
// Seed: 13494336564907055416

struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-760f, -699f, -1182f, -1000f, -1000f, -520f, 811f, 567f, 1921f, 446f, 264f, 523f, -1423f, 396f, -743f, 428f, 212f, 434f, -1641f, 452f, 1641f);

var<private> global1: vec2<i32> = vec2<i32>(0i, 5730i);

var<private> global2: bool;

var<private> global3: vec3<u32> = vec3<u32>(1u, 40045u, 1u);

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = -global1.x;
    global0 = array<f32, 21>();
    global1 = vec2<i32>(max(-abs(u_input.a.x), u_input.a.x), -(~(-abs(2147483647i))));
    let var_1 = 632f;
    let var_2 = Struct_3(max(global1.x, global1.x), min(dot(vec3<i32>(abs(2147483647i), var_0 | 31253i, global1.x), select(vec3<i32>(global1.x, u_input.a.x, var_0), u_input.a, true | true)), ~18659i), arg_0.d, !arg_0.b);
    return sign(-vec2<f32>(sign(arg_0.c * arg_0.d.b), -900f + min(-1000f, -507f)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> vec3<u32> {
    return ~(vec3<u32>(dot(vec3<u32>(45585u, global3.x, global3.x), vec3<u32>(global3.x, 0u, global3.x)), global3.x & 47558u, global3.x << 142617u) >> (countOneBits(vec3<u32>(global3.x, global3.x, global3.x)) + vec3<u32>(global3.x, global3.x, global3.x))) * vec3<u32>((1u % global3.x) / ~26541u, clamp(0u, ~(global3.x * global3.x), reverseBits(abs(8071u))), select(~45321u, dot(vec4<u32>(global3.x, 11691u, 1u, 0u), vec4<u32>(14568u, global3.x, 50338u, 0u)), ceil(global0[4294967295u]) < -global0[global3.x]));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = -(-arg_0.d.b) / -179f;
    global3 = func_4(-(-66714i), vec2<f32>(max(var_0, -395f), -333f) + (-sign(vec2<f32>(global0[arg_0.d.a], arg_1.d.b)) - func_3(arg_1)), Struct_4(!select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(false, arg_0.b.x), arg_0.a), vec2<bool>(true, arg_0.b.x), !arg_0.b), u_input.a.x ^ ~(-1i)));
    global3 = arg_1.d.c.xxy;
    var var_1 = -(-vec4<f32>(220f, func_3(arg_1).x, arg_1.c - arg_1.c, var_0));
    global1 = vec2<i32>(dot((u_input.a.zz << vec2<u32>(39216u, arg_0.d.a)) % (u_input.a.yy % u_input.a.yx), vec2<i32>(firstLeadingBit(-18802i), abs(i32(-2147483648)))) / global1.x, -1i % -4921i);
    return ~dot((~vec2<u32>(arg_1.d.a, arg_1.d.c.x) * (vec2<u32>(36262u, global3.x) % arg_0.d.c.xy)) + global3.zz, arg_1.d.c.xx);
}

fn func_1() -> Struct_4 {
    global3 = min(~(~vec3<u32>(global3.x >> global3.x, firstLeadingBit(27269u), ~global3.x)), vec3<u32>(global3.x * countOneBits(global3.x), select(19092u, 28829u + global3.x, any(vec4<bool>(false, true, false, true))), func_2(Struct_2(vec2<bool>(false, false), vec2<bool>(false, false), global0[global3.x], Struct_1(global3.x, 1000f, vec4<u32>(2694u, 0u, global3.x, global3.x))), Struct_2(vec2<bool>(false, true), vec2<bool>(true, true), 1525f, Struct_1(1u, global0[1u], vec4<u32>(148048u, 21827u, 4294967295u, 75797u))))) / firstTrailingBit(firstTrailingBit(vec3<u32>(global3.x, 63125u, global3.x)) | vec3<u32>(3444u, global3.x, global3.x)));
    let var_0 = Struct_2(vec2<bool>((global0[global3.x] <= (global0[5586u] / 571f)) == any(!vec3<bool>(false, false, true)), any(!(!vec3<bool>(false, false, false)))), select(vec2<bool>(false, -332f != (-800f - global0[global3.x])), !vec2<bool>(any(vec2<bool>(false, false)), false & true), false), -((exp2(global0[1u]) / -(-1584f)) - trunc(floor(1382f))), Struct_1(~func_4(u_input.a.x, vec2<f32>(global0[global3.x], 990f), Struct_4(vec2<bool>(true, true), 36479i)).x / 43556u, select(round(-947f), -(-476f) - global0[44660u], !true), ~(~abs(vec4<u32>(global3.x, 72019u, global3.x, 1u)))));
    var var_1 = var_0.d.c;
    var var_2 = exp2((-(var_0.c + var_0.c) * -(var_0.d.b - var_0.d.b)) + 1000f);
    global2 = var_0.b.x;
    return Struct_4(select(!var_0.a, !vec2<bool>(!true, !false), var_0.a), -7944i);
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    let var_0 = select(~vec3<u32>(global3.x, ~firstTrailingBit(11831u), global3.x - 32639u), vec3<u32>(47047u, ~((global3.x * 0u) >> (global3.x & 51279u)), ~(~746u << 60582u)), !(arg_1 || !func_1().a.x));
    global1 = u_input.a.zy;
    global2 = !any(select(vec4<bool>(true, arg_0.a.x, 1442f > -1548f, !false), select(select(vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(arg_0.a.x, false, false, false), true), vec4<bool>(true, false, false, true), 1i < 0i), !vec4<bool>(arg_1, arg_1, arg_0.a.x, false)));
    global0 = array<f32, 21>();
    let var_1 = func_1();
    return Struct_5(Struct_3(0i ^ -global1.x, firstLeadingBit(arg_0.b & (var_1.b | global1.x)), Struct_1(min(80321u + var_0.x, 0u), -global0[var_0.x], ~(~vec4<u32>(26693u, var_0.x, global3.x, global3.x))), vec2<bool>(arg_1, false)), Struct_3(-(-37085i ^ ~u_input.a.x), ~(-35765i) & dot(vec4<i32>(11979i, i32(-2147483648), -11861i, u_input.a.x) / vec4<i32>(arg_0.b, -15445i, u_input.a.x, 0i), vec4<i32>(5158i, arg_0.b, u_input.a.x, arg_0.b)), Struct_1(var_0.x, global0[select(global3.x << var_0.x, global3.x % 58567u, arg_1)], vec4<u32>(global3.x | var_0.x, var_0.x, ~global3.x, global3.x)), select(var_1.a, vec2<bool>(!arg_0.a.x, !true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), !any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))));
    var var_1 = Struct_2(!func_5(Struct_4(vec2<bool>(false, var_0.b.d.x), -2147483647i), var_0.a.d.x).a.d, vec2<bool>(var_0.b.d.x, !false), abs(1710f), var_0.b.c);
    global3 = var_0.a.c.c.zxz;
    var var_2 = 0i;
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-(func_3(Struct_2(var_0.b.d, vec2<bool>(var_0.a.d.x, var_1.a.x), 751f, Struct_1(14319u, -276f, vec4<u32>(32958u, 64121u, global3.x, var_1.d.c.x)))) - (vec2<f32>(-1212f, 403f) - vec2<f32>(var_0.b.c.b, -1000f))) * (func_3(Struct_2(var_1.a, var_0.a.d, -1000f, Struct_1(var_0.b.c.a, var_0.b.c.b, vec4<u32>(0u, 1u, var_1.d.a, var_0.a.c.c.x)))) / vec2<f32>(150f, 864f + 750f)), -621f, var_1.d.b, var_1.d.a & ((firstLeadingBit(47800u) + ~32546u) & 8646u));
}

