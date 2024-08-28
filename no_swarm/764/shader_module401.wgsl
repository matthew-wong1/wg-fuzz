// {"0:0":[10,66,133,104]}
// Seed: 18070279447230624352

struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true), true, Struct_1(32640u, 0i, true, vec3<bool>(false, false, false)));

fn func_3(arg_0: Struct_3) -> i32 {
    global2 = Struct_2(vec3<bool>(global2.c.c, !(1809f != (-1555f + 400f)), !true), all(!select(!vec4<bool>(global2.a.x, global1.x, global1.x, global2.c.c), !vec4<bool>(false, false, global1.x, global2.a.x), any(vec3<bool>(global1.x, true, global2.b)))), Struct_1(dot(vec2<u32>(26906u, global2.c.a), min(vec2<u32>(global2.c.a, 21618u), vec2<u32>(global2.c.a, arg_0.a.x))), 47482i, any(global2.c.d.zx), global2.a));
    global1 = global2.c.d;
    let var_0 = arg_0;
    var var_1 = -vec2<i32>(select(27446i, max(-(-49090i), 2147483647i), select(any(vec3<bool>(true, global2.b, global1.x)), true, any(vec4<bool>(true, false, true, true)))), ~global2.c.b);
    let var_2 = -(-vec3<f32>(-730f, select(round(-410f), -1644f, all(global2.c.d)), -(-2138f - 910f)));
    return dot(~(-vec3<i32>(-18489i, 38631i, -9392i)) ^ vec3<i32>(firstTrailingBit(24348i), -var_1.x, clamp(50510i, var_1.x, var_1.x)), vec3<i32>(i32(-2147483648) + (0i % global2.c.b), global2.c.b, 19514i)) * ~0i;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    global1 = vec3<bool>(true, select(!(!true), global2.c.a <= 0u, !any(vec4<bool>(global1.x, false, arg_1.x, global1.x))) & any(!select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, true), vec4<bool>(global2.a.x, true, global1.x, global2.b))), true);
    let var_0 = global2.c;
    var var_1 = (firstLeadingBit(var_0.a ^ reverseBits(arg_0.a.x)) & 59478u) | 0u;
    let var_2 = arg_0;
    let var_3 = -(-263f);
    return reverseBits(~select((1u * global2.c.a) % ~var_2.a.x, var_0.a, all(vec3<bool>(arg_1.x, var_0.c, arg_1.x))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = !(!(!arg_0.c.d));
    let var_0 = global2.b;
    var var_1 = Struct_4(func_4(Struct_3(vec4<u32>(arg_0.c.a, global2.c.a, arg_0.c.a, arg_0.c.a)), vec2<bool>(any(vec3<bool>(arg_0.b, false, arg_1)), arg_0.a.x), -func_3(Struct_3(vec4<u32>(global2.c.a, global2.c.a, arg_0.c.a, 74338u)))) << ~7637u, global2.c.a & (53435u >> abs(global2.c.a % global2.c.a)), false);
    let var_2 = !vec4<bool>(select(!(105f > 241f), !arg_0.b & (global2.c.c == true), false), false, false, any(global1.yy));
    var var_3 = var_2.www;
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = true;
    let var_1 = max(vec3<i32>(arg_2, arg_3.c.b, u_input.a), select(-vec3<i32>(1147i, -1i, 0i), countOneBits(~vec3<i32>(-1i, 0i, -11511i)), vec3<bool>(select(arg_3.a.x, global1.x, arg_3.b), true, false)) + -vec3<i32>(58594i << 31466u, -arg_2, ~0i));
    var var_2 = ceil(round(-round(-865f)));
    global2 = func_2(arg_3, false);
    var var_3 = Struct_4(~arg_1, 27037u, !all(select(arg_3.c.d.xy, vec2<bool>(global2.c.c, global2.a.x), vec2<bool>(global2.c.d.x, true))) & global1.x);
    return round(-(-1222f));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = vec4<i32>(u_input.a + ((global2.c.b % -23915i) - ((0i & global2.c.b) << 0u)), -(i32(-2147483648)), global2.c.b ^ reverseBits(~(~(-27296i))), 0i);
    var var_1 = all(select(select(vec4<bool>(global2.b, global2.a.x, global2.c.d.x, func_2(Struct_2(global2.a, global2.c.c, global2.c), global2.a.x).a.x), !vec4<bool>(false, true, global1.x, true), select(vec4<bool>(global1.x, false, true, true), select(vec4<bool>(true, false, false, global1.x), vec4<bool>(true, true, global1.x, global2.b), false), false)), vec4<bool>(any(vec4<bool>(false, global2.a.x, false, global2.a.x)), -1529f <= -1029f, -arg_0 >= func_5(-1i, 26205u, u_input.a, Struct_2(vec3<bool>(false, false, global2.b), global2.c.c, Struct_1(4294967295u, u_input.a, true, global2.c.d))), any(global1.zx)), !(max(1000f, 1000f) != sign(-1057f))));
    var_1 = !any(!(!(!vec2<bool>(false, true))));
    let var_2 = ~(~arg_2 + reverseBits(vec2<u32>(arg_2.x, global2.c.a))) >> select(~(~vec2<u32>(0u, 33887u)) + ~arg_2, vec2<u32>(global2.c.a, ~arg_2.x | 1u), global1.yx);
    var var_3 = Struct_3(vec4<u32>(arg_2.x, 0u, min(arg_2.x, ~(~arg_2.x)), firstTrailingBit(~min(1u, 4294967295u))));
    return Struct_4(~(~reverseBits(1u)), firstTrailingBit(~arg_2.x % firstTrailingBit(15839u % var_2.x)), i32(-2147483648) == -975i);
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    global0 = false;
    global1 = global2.a;
    global1 = !vec3<bool>(global2.b, true, false);
    var var_0 = vec4<bool>(global1.x, select(global2.c.c, global2.c.d.x, !false), any(select(select(select(global2.a, vec3<bool>(global1.x, global2.a.x, false), global2.a), select(vec3<bool>(global1.x, false, true), global2.a, true), any(vec4<bool>(global1.x, true, global2.c.c, global2.b))), !global2.c.d, vec3<bool>(0i >= i32(-2147483648), false, select(global2.b, global1.x, global1.x)))), any(!vec3<bool>(false, !false, all(vec2<bool>(false, false)))));
    let var_1 = func_6(-(-func_5(select(-13571i, 1i, global2.a.x), 0u, u_input.a / u_input.a, func_2(Struct_2(global2.a, true, global2.c), false))), 946f * 1789f, vec2<u32>(global2.c.a, global2.c.a));
    return Struct_2(!global2.a, global1.x || true, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = true;
    var_0 = true;
    var var_1 = ~reverseBits(0u) - dot(~vec3<u32>(global2.c.a, 1u, global2.c.a) - abs(~vec3<u32>(global2.c.a, global2.c.a, 65883u)), ~vec3<u32>(global2.c.a, 1u, ~global2.c.a));
    var var_2 = global1.x;
    var_1 = global2.c.a;
    global2 = func_1(-vec4<f32>(-min(325f, -824f), 1000f, -1040f + 437f, -1953f));
    var var_3 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec2<u32>(34485u, 27287u))) + (vec2<u32>(var_3.a, global2.c.a) - ~(vec2<u32>(var_3.a, global2.c.a) + vec2<u32>(var_3.a, 0u))), 4294967295u, ceil(-(-(-926f / 1694f))), -select(vec3<f32>(308f, 907f, -1221f) + abs(vec3<f32>(-176f, 1328f, 279f)), trunc(vec3<f32>(-499f, 504f, 414f) + vec3<f32>(1000f, 2004f, 411f)), select(!global2.c.d, !var_3.d, !global1.x)), vec4<f32>(-(-966f * exp2(-775f)), -(-161f) + -2863f, select(-(-(-647f)), -max(235f, 382f), var_3.d.x), 391f));
}

