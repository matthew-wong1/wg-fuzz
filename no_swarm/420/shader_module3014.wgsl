// {"0:0":[207,188,88,73,162,127,216,86,179,230,166,171,3,33,116,228,186,187,191,176,186,132,132,71,69,102,59,184,38,59,24,167,250,143,169,145,117,44,36,118,59,160,35,47,172,89,163,242]}
// Seed: 12402594192421762328

struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 1u, 25423u);

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = -147f;
    global0 = Struct_2(Struct_1(vec2<u32>(0u, global1.x) % ~global1.zx, -var_0, vec3<i32>(~(-2147483647i), i32(-2147483648), u_input.b.x << (global0.a.a.x - 23973u)), ~(global0.a.a.x ^ 0u) - ~(0u / global1.x), reverseBits(vec2<u32>(global0.a.e.x, 1u)) & (vec2<u32>(arg_0.x, 4294967295u) & (arg_0.xy << global0.a.a))), clamp(firstTrailingBit(-u_input.b), u_input.c, ~firstTrailingBit(vec4<i32>(u_input.a, u_input.c.x, 9589i, global0.a.c.x))) % select(vec4<i32>(18713i, ~(-13466i), -47229i, 68356i % u_input.a), vec4<i32>(16786i, global0.b.x, ~(-19024i), max(0i, 2147483647i)), !vec4<bool>(false, global0.c.x, true, false)), vec3<bool>(any(!(!vec4<bool>(true, true, global0.c.x, false))), !any(global0.c.yx), global0.a.b <= round(var_0 - 159f)), 791f);
    let var_1 = Struct_1(vec2<u32>(global1.x, global1.x) % select(abs(vec2<u32>(35571u, 54366u) | global1.yw), arg_0.xz, !any(vec3<bool>(true, global0.c.x, true))), -1503f / ((var_0 / -(-617f)) - max(-global0.d, select(var_0, global0.a.b, false))), global0.b.zyz, global0.a.a.x, vec2<u32>(20356u, 4294967295u) ^ ~(~(~vec2<u32>(global0.a.d, 39169u))));
    let var_2 = abs(vec2<i32>(dot(reverseBits(-global0.a.c), var_1.c), global0.b.x << max(~var_1.a.x, 0u * 5970u)));
    let var_3 = ~(~1u);
    return global0.a.c.zz;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global0.a.e;
    var_0 = arg_1.a;
    let var_1 = Struct_2(arg_1, ~(~global0.b), global0.c, global0.d);
    var var_2 = vec2<i32>(~(~(i32(-2147483648) ^ 2147483647i)) * global0.b.x, global0.a.c.x);
    var_2 = func_3(countOneBits(~(global1.yzy % vec3<u32>(global0.a.a.x, 47420u, 4294967295u)) - global1.xww));
    return var_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    let var_0 = firstLeadingBit(clamp(vec3<i32>(global0.a.c.x % -(-13579i), 0i, global0.a.c.x), vec3<i32>((u_input.b.x - u_input.c.x) / ~13190i, ~(0i + global0.b.x), -(u_input.a ^ u_input.c.x)), vec3<i32>(global0.b.x, -(-29114i) / 1i, 1i / firstTrailingBit(i32(-2147483648)))));
    let var_1 = ~global1.x;
    var var_2 = func_2(i32(-2147483648) & 2147483647i, global0.a);
    let var_3 = global1.x;
    var var_4 = func_2(~(-68473i), Struct_1(vec2<u32>(min(var_1, global1.x), 72478u) / vec2<u32>(19555u, 1u), min((508f + var_2.a.b) - abs(1000f), var_2.d), -global0.a.c + vec3<i32>(-(-1i), -var_0.x, 2147483647i & u_input.c.x), ~(~(4294967295u * var_1)), ~vec2<u32>(abs(var_2.a.d), 0u))).a;
    return ~clamp(~(arg_1 - countOneBits(var_4.e.x)), var_1, 1u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = ~countOneBits(~(~vec4<u32>(1u, 0u, arg_0.d, 94332u) ^ vec4<u32>(global1.x, global1.x, 0u, arg_0.e.x)));
    global1 = select(vec4<u32>((arg_0.a.x | 4294967295u) << 60934u, min(4294967295u, 104982u), global0.a.e.x, 26623u * ~abs(global1.x)), vec4<u32>(~global1.x, ~(~11622u) / ~2843u, global1.x, global1.x), !select(vec4<bool>(!global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(false, func_2(arg_0.c.x, global0.a).c.x, !global0.c.x, true), !vec4<bool>(global0.c.x, true, false, false)));
    return func_2(~dot(u_input.b.xwz, global0.a.c), global0.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.c.x;
    global0 = Struct_2(func_4(Struct_1(~global0.a.e | ~vec2<u32>(0u, global0.a.d), select(-global0.a.b, global0.a.b / -232f, !global0.c.x), -(~global0.a.c), firstLeadingBit(func_1(vec3<f32>(global0.a.b, -451f, -2131f), global1.x)), select(~global0.a.e, global1.wy, !global0.c.x))), u_input.b, func_2(-1885i, Struct_1(vec2<u32>(~1u, ~global1.x), -global0.d, vec3<i32>(~global0.a.c.x, ~(-1i), u_input.c.x + -45244i), global0.a.a.x, ~(~global1.zx))).c, -1775f);
    let var_1 = func_2(-37167i, Struct_1(vec2<u32>(global0.a.e.x, global0.a.a.x), floor(global0.a.b + trunc(-1048f)), u_input.c.yyw, func_1(-(-vec3<f32>(-495f, -592f, global0.d)), global0.a.e.x), ~(global1.xx ^ global1.xw))).a;
    let var_2 = global0.c.x;
    let var_3 = 289f;
    var var_4 = max(clamp(-(-vec4<i32>(0i, u_input.b.x, 0i, global0.b.x)), firstLeadingBit(func_2(19846i, var_1).b * u_input.c), ~(~global0.b)), vec4<i32>(global0.a.c.x, u_input.c.x, -global0.a.c.x, var_1.c.x & -14345i) + reverseBits(vec4<i32>(-40153i, firstTrailingBit(var_1.c.x), -var_1.c.x, u_input.a)));
    var var_5 = vec4<u32>(countOneBits(func_4(func_2(-14886i, func_4(var_1)).a).d), ~reverseBits(global1.x), (func_4(global0.a).e.x + dot(vec4<u32>(0u, 4294967295u, global1.x, 1u) - vec4<u32>(global1.x, 1u, 9814u, 1u), vec4<u32>(2260u, global1.x, 1u, 4294967295u))) + var_1.a.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.zyz, abs((-vec4<f32>(-593f, var_3, var_1.b, var_1.b) + vec4<f32>(-263f, var_1.b, -251f, 752f)) / (vec4<f32>(global0.d, -240f, -892f, -1475f) / (vec4<f32>(var_3, -690f, var_3, var_1.b) * vec4<f32>(-698f, 920f, var_3, var_3)))), select(abs((vec2<f32>(467f, -1000f) - vec2<f32>(-282f, var_1.b)) - (vec2<f32>(var_1.b, -1000f) - vec2<f32>(var_3, 2394f))), round(vec2<f32>(-236f, -var_1.b)), select(global0.c.zx, func_2(max(1i, -1i), var_1).c.yx, vec2<bool>(global0.c.x, global0.c.x))), func_2(1i, func_4(global0.a)).a.b, ~(vec2<i32>(1i, global0.b.x) >> (var_5.wx * global1.yy)) >> firstLeadingBit(~max(vec2<u32>(global0.a.a.x, global0.a.a.x), vec2<u32>(0u, var_5.x))));
}

