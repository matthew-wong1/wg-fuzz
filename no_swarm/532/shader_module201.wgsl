// {"0:0":[90,111,43,241,94,158,200,247,203,149,213,144,119,96,185,27,245,9,11,106,72,49,184,26,177,228,247,100,166,220,94,113,0,103,157,114,190,174,131,91,151,165,89,63,91,221,125,225,149,114,132,154,54,212,104,54,179,186,168,244,49,148,178,123]}
// Seed: 16642368869172879648

struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-2134f, -716f, -472f), vec3<f32>(-1111f, 1423f, 180f), vec3<f32>(2989f, -1383f, -1431f));

var<private> global1: Struct_2;

var<private> global2: f32 = -158f;

var<private> global3: array<u32, 23>;

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> vec4<f32> {
    global3 = array<u32, 23>();
    global1 = Struct_2(1853f, ((global1.a * step(-503f, -1343f)) + 126f) / global1.b, arg_0);
    var var_0 = abs(abs(reverseBits(min(vec4<i32>(u_input.a.x, arg_1.a, arg_2, u_input.c), vec4<i32>(u_input.a.x, u_input.c, arg_1.a, i32(-2147483648))) / -vec4<i32>(-37511i, arg_1.a, u_input.a.x, 0i))));
    global1 = Struct_2(step(-695f, global1.b), min(global1.b - -arg_0.a, abs(global1.b - global1.c.a)) / 528f, Struct_1(arg_0.a, select(arg_0.b, select(select(vec4<bool>(false, global1.c.b.x, arg_0.b.x, global1.c.b.x), vec4<bool>(global1.c.b.x, true, arg_0.b.x, global1.c.b.x), false), !global1.c.b, true), false)));
    var var_1 = false;
    return select(vec4<f32>(-(-global1.a) * min(arg_0.a / -738f, select(global1.b, arg_0.a, true)), 685f, 2079f, -2315f), -(-(-(vec4<f32>(arg_0.a, 1019f, arg_0.a, arg_0.a) - vec4<f32>(628f, arg_0.a, -1725f, -736f)))), select(!select(!vec4<bool>(global1.c.b.x, true, false, true), vec4<bool>(true, true, arg_0.b.x, true), !arg_0.b.x), arg_0.b, select(vec4<bool>(arg_0.b.x, true & false, !true, false | arg_0.b.x), vec4<bool>(false, -1000f <= 1000f, global1.c.b.x, global1.c.b.x), select(select(vec4<bool>(arg_0.b.x, global1.c.b.x, global1.c.b.x, false), arg_0.b, global1.c.b), vec4<bool>(arg_0.b.x, false, arg_0.b.x, global1.c.b.x), vec4<bool>(false, global1.c.b.x, arg_0.b.x, arg_0.b.x)))));
}

fn func_2() -> vec3<bool> {
    global0 = array<vec3<f32>, 3>();
    var var_0 = -(select(vec4<i32>(max(u_input.c, 38441i), u_input.c << 1u, u_input.c, u_input.c), countOneBits(~vec4<i32>(19345i, -2626i, u_input.c, 2147483647i)), global1.c.b) & reverseBits(abs(reverseBits(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c)))));
    let var_1 = Struct_3(global3[global3[~0u]] >= 30440u);
    let var_2 = var_1;
    var var_3 = sign(round(-func_3(global1.c, Struct_4(-66909i), u_input.c & var_0.x)));
    return !select(!vec3<bool>(false, all(global1.c.b), var_1.a), !global1.c.b.yww, !true);
}

fn func_1() -> vec2<u32> {
    var var_0 = global1.c;
    let var_1 = Struct_4(max(i32(-2147483648), u_input.c));
    var var_2 = select(global1.c.b.wwz, !select(vec3<bool>(var_0.b.x, global3[u_input.e] >= 36686u, !false), !(!var_0.b.zwy), !global1.c.b.x), func_2());
    global1 = Struct_2(-1087f, exp2(min(min(-1256f, global1.a) - -1507f, var_0.a)), global1.c);
    var var_3 = 193082u;
    return ~(~vec2<u32>(~(~0u), 1u));
}

fn func_4(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = Struct_4(countOneBits(~(u_input.a.x | countOneBits(1i))));
    return StorageBuffer(global1.c.a, -(vec4<f32>(-997f * -1239f, -global1.c.a, -532f, -387f) - -(vec4<f32>(1826f, 598f, global1.b, global1.b) * vec4<f32>(global1.c.a, 531f, global1.a, global1.a))), -67598i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global0 = array<vec3<f32>, 3>();
    let var_1 = u_input.a.yy;
    let x = u_input.a;
    s_output = func_4(firstTrailingBit((~vec2<u32>(4294967295u, global3[u_input.b]) & func_1()) - var_0.ww));
}

