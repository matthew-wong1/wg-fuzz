// {"0:0":[201,150,65,63,153,37,50,127,22,70,0,1,69,33,45,23,176,148,69,214,218,247,136,97,244,128,51,24,128,22,40,62,60,110,31,129,8,193,187,104,15,211,17,151,94,168,178,116]}
// Seed: 13364631981006136431

struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: vec3<u32> = vec3<u32>(48862u, 0u, 0u);

var<private> global2: array<u32, 15>;

var<private> global3: Struct_2 = Struct_2(-834f, Struct_1(27637u, 740f, 1i, vec3<i32>(1i, 1i, -1i), 45341u), vec2<bool>(false, true), vec4<i32>(30794i, 0i, 21585i, 41184i));

var<private> global4: vec2<f32>;

fn func_3() -> i32 {
    global4 = ceil(vec2<f32>(global4.x, global3.b.b));
    let var_0 = global3.b;
    global0 = array<u32, 8>();
    var var_1 = global3.c;
    let var_2 = global3.b.e;
    return global3.d.x;
}

fn func_2() -> Struct_2 {
    let var_0 = func_3() & (~global3.d.x & dot(~reverseBits(global3.d), firstLeadingBit(~global3.d)));
    let var_1 = abs(-1419f);
    let var_2 = vec4<i32>(~(-1i) * 1i, global3.d.x, ~(~var_0) & ~global3.d.x, 1i);
    var var_3 = global3.c.x;
    var var_4 = 36537u;
    return Struct_2(-global3.a, global3.b, select(select(!vec2<bool>(true, false), vec2<bool>(698f > 1097f, global3.c.x), !(global3.c.x & global3.c.x)), vec2<bool>(!(-569f > -325f), global3.c.x), select(global3.c, global3.c, any(global3.c))), select(-global3.d, ~(~(vec4<i32>(var_2.x, 2147483647i, u_input.a, 1i) >> vec4<u32>(23799u, u_input.e.x, 0u, 45015u))), false));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = vec4<i32>(-20579i, 10952i, 21582i, ~(~u_input.b)) - vec4<i32>(countOneBits(u_input.a), ~countOneBits(arg_2.b.d.x), -43105i, arg_1.b.c);
    global0 = array<u32, 8>();
    global1 = ~arg_0.xyw - (arg_0.zww + firstLeadingBit(arg_0.wzz));
    let var_1 = vec3<bool>(!false, false, true);
    var var_2 = !arg_2.c.x;
    return clamp(~arg_0.wxz, vec3<u32>(dot(vec4<u32>(11101u, ~1u, ~global2[u_input.d.x], 1u), arg_0), 23601u, ~1u), clamp(u_input.d, vec3<u32>(0u, reverseBits(4294967295u & 104020u), ~global1.x), clamp(vec3<u32>(global3.b.a, ~4294967295u, arg_0.x), ~firstTrailingBit(vec3<u32>(0u, 6713u, 29066u)), reverseBits(arg_0.zxz))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    global0 = array<u32, 8>();
    global1 = func_4(vec4<u32>(4294967295u, global1.x, firstTrailingBit(63908u), ~79316u) * firstTrailingBit(~vec4<u32>(28457u, 1970u, 1u, 4294967295u) * ~vec4<u32>(69349u, u_input.d.x, 1825u, 0u)), func_2(), Struct_2(689f, Struct_1(65424u, (665f * 342f) - (-1501f + global3.b.b), u_input.b, global3.d.xyx / vec3<i32>(arg_0.x, -31310i, 1i), 4294967295u), vec2<bool>(global3.c.x, func_2().c.x), clamp(max(global3.d, vec4<i32>(arg_0.x, global3.b.d.x, -1413i, arg_0.x)), firstTrailingBit(vec4<i32>(u_input.b, arg_0.x, global3.d.x, u_input.b) ^ global3.d), vec4<i32>(-7352i, global3.d.x, 9437i, 16456i) & vec4<i32>(-1i, -43986i, arg_0.x, arg_0.x))));
    let var_0 = Struct_2(-892f, global3.b, global3.c, ~(-vec4<i32>(1i, -1i, dot(global3.d, vec4<i32>(33558i, u_input.b, u_input.b, u_input.a)), ~1i)));
    let var_1 = vec2<f32>(-500f, -(-var_0.b.b));
    var var_2 = min(vec4<i32>(abs(29616i), 25602i, var_0.d.x, arg_0.x), ~global3.d);
    return Struct_3(trunc(round(-vec4<f32>(1015f, var_1.x, -157f, -979f))) / -abs(-vec4<f32>(-1000f, 887f, 331f, -698f)), all(select(!(!vec3<bool>(var_0.c.x, false, true)), !vec3<bool>(var_0.c.x, true, false), select(!vec3<bool>(false, var_0.c.x, true), select(vec3<bool>(true, var_0.c.x, global3.c.x), vec3<bool>(false, var_0.c.x, true), var_0.c.x), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    let var_0 = vec4<bool>(!false, false, !(!(!false)), global3.c.x);
    var var_1 = false;
    global4 = vec2<f32>((global4.x * 1006f) - max(global4.x, (-1265f / -835f) * -(-545f)), -(-(-(-global3.a))));
    var var_2 = func_1(global3.b.d);
    var var_3 = global3.b;
    var var_4 = vec2<bool>(false, -30180i >= (-(~u_input.a) * (-(-1i) * (-1i % -1i))));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(var_5.ywz, vec3<f32>(-var_3.b, var_3.b - var_2.a.x, 745f - -1000f), false) - min(-(vec3<f32>(-179f, global3.a, var_3.b) / var_5.wzx), -var_5.ywy), -(((vec2<i32>(18452i, global3.d.x) & vec2<i32>(u_input.b, 2147483647i)) | vec2<i32>(u_input.a, global3.d.x)) >> ~max(u_input.d.yy, vec2<u32>(global0[global2[global3.b.e]], 0u))), var_3.b + 822f);
}

