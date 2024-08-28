// {"0:0":[73,143,248,80,122,127,104,157,141,113,86,162,82,237,221,32,30,132,52,170,150,82,231,38,1,49,122,96,213,122,65,2,99,5,18,218,6,122,200,37,65,130,163,67,83,122,98,99,59,246,148,144,65,143,70,197,133,43,203,16,122,224,17,238]}
// Seed: 13316851533863129821

struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: vec4<f32> = vec4<f32>(446f, 1524f, -403f, -824f);

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.c.x, countOneBits(~(~(4294967295u - u_input.a.x))), ~(vec3<u32>(~u_input.c.x, u_input.c.x, u_input.c.x) - abs(~vec3<u32>(1u, 4294967295u, 80806u))), abs(-478f) / (abs(trunc(291f)) + -867f));
    var var_1 = sign(var_0.d) - global1.x;
    var_0 = Struct_1(~u_input.c.x, var_0.b | ~u_input.a.x, u_input.c, 143f);
    var var_2 = Struct_1(0u, u_input.c.x, u_input.a.xwz, var_0.d);
    var var_3 = -(vec4<f32>(-1415f, global1.x, -floor(var_0.d), -1000f + var_2.d) + min((vec4<f32>(737f, 513f, 1918f, var_0.d) + vec4<f32>(-2015f, var_0.d, -1000f, 1096f)) + round(vec4<f32>(1830f, 1298f, global1.x, -2260f)), vec4<f32>(-454f, -627f, var_0.d, -var_0.d)));
    return global1.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !select(!(!(!vec4<bool>(false, false, true, false))), vec4<bool>(!true, !(u_input.d > -34079i), true, ~4294967295u != ~103770u), any(!(!vec3<bool>(false, false, false))));
    global1 = vec4<f32>(-(-global1.x), floor(-(sign(1789f) * arg_1)), sign(arg_0.x) / 1000f, 282f / 1000f);
    global0 = array<vec2<bool>, 3>();
    global1 = vec4<f32>(-arg_2.d, func_2(), ceil(-global1.x), exp2(ceil(abs(arg_0.x - global1.x))));
    let var_1 = vec2<bool>(var_0.x, select(var_0.x, false, (dot(vec2<i32>(569i, -1i), vec2<i32>(u_input.d, 27156i)) * (i32(-2147483648) ^ u_input.e.x)) == 27140i));
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = ceil((global1.wz * -(global1.zx + global1.zz)) / vec2<f32>(-select(841f, 289f, false), min(1000f, global1.x)));
    var var_1 = !(!global0[u_input.a.x]);
    var var_2 = func_3(abs(vec2<f32>(func_2(), max(1324f, var_0.x) + (-613f - -932f))), -global1.x, Struct_1(u_input.b, ~u_input.b, ~(~select(vec3<u32>(4294967295u, u_input.c.x, 42879u), u_input.a.yyy, var_1.x)), global1.x * -sign(-909f)));
    var var_3 = -141f;
    var var_4 = 1496f;
    return func_3(-vec2<f32>(-global1.x + min(-670f, 105f), trunc(var_2.d - -2698f)), -(-2274f), func_3(vec2<f32>((global1.x - -225f) + -(-1000f), var_2.d), -(ceil(var_0.x) + func_3(vec2<f32>(global1.x, var_2.d), 3065f, Struct_1(4066u, 43668u, vec3<u32>(var_2.c.x, var_2.c.x, 30138u), var_0.x)).d), func_3(global1.wx, var_0.x, Struct_1(0u & var_2.c.x, var_2.b * var_2.a, u_input.c, -(-394f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(global1.x, -(1225f * -659f), -742f, -global1.x);
    var var_0 = -(u_input.e.wy - ((~vec2<i32>(i32(-2147483648), 2147483647i) + (u_input.e.ww ^ vec2<i32>(2147483647i, -1i))) | (~u_input.e.zy ^ (u_input.e.yy ^ vec2<i32>(-33948i, 1i)))));
    let var_1 = func_1();
    global0 = array<vec2<bool>, 3>();
    var var_2 = func_1();
    var var_3 = Struct_1(dot(vec2<u32>(var_2.b, min(select(u_input.c.x, var_1.b, true), var_1.b)), vec2<u32>(~(~1u), u_input.a.x)), var_1.b, ~(~(~(var_2.c & vec3<u32>(u_input.a.x, 845u, 12630u)))), -527f);
    let var_4 = ~vec4<i32>(firstTrailingBit(~(-var_0.x)), -16525i, 0i, var_0.x);
    var var_5 = u_input.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(countOneBits(var_0.x), -u_input.e.x, var_0.x), (min(var_4.xyx, vec3<i32>(var_0.x, u_input.d, u_input.d)) << var_3.c) % (select(var_4.wwx, vec3<i32>(-5324i, var_4.x, 1i), true) + vec3<i32>(-28026i, -39558i, i32(-2147483648))), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), global0[23394u]), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), global0[var_1.c.x]))), select(var_4.yx, countOneBits(vec2<i32>(-2674i % var_4.x, abs(2147483647i))), !true), u_input.a.x / firstTrailingBit(4294967295u), ~(-(vec2<i32>(var_0.x, var_4.x) / vec2<i32>(u_input.e.x, var_0.x))));
}

