// {"0:0":[153,13,96,247,150,40,1,115,254,241,37,51,140,178,160,248,59,73,179,32,60,29,194,221,177,121,204,69,5,164,214,23,210,114,138,192,173,222,149,193,129,152,147,232,214,1,134,0,129,200,111,185,72,249,161,159,118,78,12,212,51,196,234,116]}
// Seed: 11626588964503832241

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

fn func_1() -> vec4<u32> {
    return u_input.a << ~vec4<u32>(24229u >> u_input.e, ~(u_input.e % 4294967295u), ~51003u, 4018u);
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_1(arg_0.x, vec3<u32>(46992u + ~0u, 4294967295u, u_input.a.x), -(-trunc(vec3<f32>(-120f, -295f, 841f))) - round((vec3<f32>(-1283f, -1063f, -777f) - vec3<f32>(-822f, 599f, -132f)) - vec3<f32>(1486f, -406f, 283f)), arg_0, u_input.a.x <= u_input.a.x);
    global0 = array<Struct_4, 26>();
    var var_1 = vec3<f32>(round(abs((var_0.c.x - var_0.c.x) - 964f)), ceil(-var_0.c.x - var_0.c.x), -var_0.c.x);
    global0 = array<Struct_4, 26>();
    let var_2 = u_input.c.yx;
    return clamp(u_input.b, u_input.b % -clamp(vec4<i32>(-9230i, u_input.d, var_2.x, -1i) >> vec4<u32>(47833u, 1u, u_input.a.x, 4294967295u), vec4<i32>(0i, -1i, var_2.x, u_input.c.x), vec4<i32>(2147483647i, 1i, 1i, -27746i)), (-u_input.c << (~u_input.a % vec4<u32>(1u, var_0.b.x, 4294967295u, 4294967295u))) / -(select(vec4<i32>(u_input.d, -1i, var_2.x, 2147483647i), u_input.b, vec4<bool>(arg_0.x, arg_0.x, var_0.a, false)) & vec4<i32>(2413i, 2147483647i, var_2.x, u_input.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> vec2<u32> {
    let var_0 = arg_3.b.zzx;
    global0 = array<Struct_4, 26>();
    let var_1 = arg_3.a.x;
    let var_2 = vec2<f32>(-2639f * arg_2, sign(-arg_3.c.x) / arg_2) * ceil(-arg_3.c.zx);
    let var_3 = ((firstLeadingBit(~4294967295u) ^ countOneBits(13470u)) * 68824u) / firstLeadingBit(u_input.e / u_input.a.x);
    return vec2<u32>(firstTrailingBit(~1u), u_input.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    var var_0 = Struct_1(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true | false)), vec3<u32>(arg_1, ~(1u & 16111u), 4294967295u) << ~(select(u_input.a.yww, u_input.a.wxx, vec3<bool>(true, true, true)) + u_input.a.zww), (-(-vec3<f32>(568f, arg_0.x, -621f)) * trunc(-vec3<f32>(-952f, -199f, 2079f))) + vec3<f32>(arg_0.x, -sign(833f), arg_0.x / (-1798f * arg_0.x)), select(select(vec4<bool>(!true, false, !false, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, false, true), false), !(!vec4<bool>(true, true, false, true))), vec4<bool>(true, !false, !(!true), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), !((28196u >> u_input.a.x) <= u_input.a.x)), any(vec2<bool>(any(vec4<bool>(false, true, false, true)), ~0u == (0u >> 38680u))));
    let var_1 = func_4(~(~vec4<i32>(u_input.c.x, 0i, u_input.d, u_input.b.x)) % func_3(vec4<bool>(var_0.e, false, false, var_0.a)), 273f, var_0.c.x, Struct_5(abs(vec2<i32>(u_input.b.x, -27557i)) / vec2<i32>(u_input.c.x, 2147483647i), !vec4<bool>(false, true, var_0.a, false), vec4<f32>(arg_0.x, -arg_0.x, var_0.c.x / var_0.c.x, -580f), global0[arg_1], true)) ^ ~(min(abs(var_0.b.yy), vec2<u32>(13306u, 0u)) % func_1().yz);
    var var_2 = Struct_3(vec3<f32>(532f, -(-var_0.c.x), -(-1486f)) / vec3<f32>(sign(585f), abs(-(-170f)), exp2(var_0.c.x) + 321f), var_0.e, 4294967295u, any(var_0.d.xx));
    return select(var_0.e, !(62730u <= 0u), (ceil(min(arg_0.x, 1805f)) != sign(-903f / var_2.a.x)) & true);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = min(func_1().zz, countOneBits(arg_1.b.b.zx));
    var var_1 = vec3<bool>(max(max(-20784i, u_input.d - 4758i), ~dot(u_input.c, vec4<i32>(0i, u_input.c.x, u_input.d, 0i))) <= u_input.b.x, arg_1.b.a, !(!(!false | arg_1.b.e)));
    var var_2 = Struct_5(countOneBits(countOneBits(-(vec2<i32>(2147483647i, u_input.c.x) - vec2<i32>(u_input.b.x, -68844i)))), !arg_1.b.d, -(vec4<f32>(trunc(arg_0), 1000f, arg_0 / arg_0, max(420f, arg_1.b.c.x)) + -ceil(vec4<f32>(arg_1.b.c.x, arg_0, arg_1.b.c.x, -987f))), global0[var_0.x], true);
    var_2 = Struct_5(vec2<i32>(abs(u_input.c.x), reverseBits(i32(-2147483648))), arg_1.b.d, (min(vec4<f32>(arg_1.b.c.x, var_2.d.a, 439f, 832f), vec4<f32>(610f, -1132f, -242f, var_2.d.a) / var_2.c) - var_2.c) / (vec4<f32>(-(-404f), 537f / -708f, arg_1.b.c.x, arg_0 / 1398f) * -vec4<f32>(arg_0, arg_1.b.c.x, arg_1.b.c.x, -1899f)), var_2.d, true);
    global0 = array<Struct_4, 26>();
    return 1072f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    global0 = array<Struct_4, 26>();
    var var_0 = func_1();
    let var_1 = ~(u_input.a.zyy * ~u_input.a.yxz);
    var var_2 = u_input.b.wxy;
    var var_3 = Struct_4(select(func_5(-(-520f), Struct_2(func_2(vec2<f32>(251f, -621f), 0u), Struct_1(true, vec3<u32>(26134u, 23115u, 29790u), vec3<f32>(-456f, 655f, 2116f), vec4<bool>(true, true, false, true), false))), 415f - (-(-2800f) * round(-898f)), all(vec2<bool>(-691f == -1398f, false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(floor(round(vec2<f32>(var_3.a, 1189f)) / (vec2<f32>(865f, var_3.a) * vec2<f32>(1076f, var_3.a))), vec2<f32>(-(-var_3.a), var_3.a)), select(max(abs(vec3<i32>(u_input.c.x, u_input.d, u_input.c.x) & u_input.c.yxx), u_input.b.yww - (u_input.c.xzy & u_input.c.ywy)), ~((u_input.c.yyx - vec3<i32>(var_2.x, u_input.d, -57816i)) >> vec3<u32>(1u, 1u, 59489u)), !(!(!true))), u_input.c);
}

