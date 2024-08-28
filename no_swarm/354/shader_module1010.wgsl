// {"0:0":[216,120,216,234,141,150,68,82,113,65,122,199,211,95,54,106,202,33,49,29,207,110,174,33,77,194,185,1,244,240,7,188,11,241,21,17,130,251,248,32,2,223,59,146,14,151,133,73]}
// Seed: 11890239427679695700

struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-9883i, 12504i, i32(-2147483648), 5378i, -11800i, 19294i, 17852i, -26476i, 0i, -1i, 72079i, 19150i, 0i, -5962i, -30701i, -1i, -20569i);

var<private> global1: array<i32, 21>;

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = vec4<f32>(-exp2(297f / sign(-453f)), -552f, -206f, -(-(-334f * -584f)));
    let var_1 = Struct_1(arg_0.x, vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | (i32(-2147483648) == dot(u_input.a.wzx, vec3<i32>(u_input.a.x, -16858i, -46941i))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), firstTrailingBit(countOneBits(68875u)) <= ((31876u * 0u) % ~arg_0.x), false), -(~(-firstTrailingBit(u_input.a.xw))), -u_input.a.zzz);
    let var_2 = var_0.x;
    global0 = array<i32, 17>();
    let var_3 = var_1;
    return !var_3.b.x & (true && all(select(var_1.b, var_1.b, var_1.b)));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<i32, 17>();
    let var_0 = u_input.c.x;
    global0 = array<i32, 17>();
    let var_1 = Struct_1(~(clamp(u_input.c.x, u_input.c.x % 0u, ~u_input.c.x) + reverseBits(16547u ^ var_0)), !vec4<bool>(all(vec2<bool>(true, true)), !(!false), false & !true, func_3(vec2<u32>(4294967295u, u_input.c.x))), countOneBits(select(vec2<i32>(~(-4294i), global1[u_input.c.x] % 1i), vec2<i32>(global0[13079u] / global1[4294967295u], global0[49665u & 10480u]), !any(vec4<bool>(false, true, false, true)))), vec3<i32>(abs(-u_input.a.x * u_input.a.x), dot(u_input.a, min(vec4<i32>(u_input.a.x, global1[51795u], i32(-2147483648), global0[1u]), abs(u_input.b))), u_input.b.x));
    global0 = array<i32, 17>();
    return var_1.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = exp2(vec3<f32>(1157f, -(-2288f - select(1521f, -202f, arg_1)), -(floor(-673f) * (1269f / -1415f))));
    var_0 = ((step(-vec3<f32>(var_0.x, -1345f, var_0.x), step(vec3<f32>(493f, 277f, var_0.x), vec3<f32>(1262f, var_0.x, var_0.x))) / ceil(vec3<f32>(var_0.x, -1000f, 1000f) - vec3<f32>(-821f, var_0.x, 620f))) - (-exp2(vec3<f32>(var_0.x, 196f, var_0.x)) + (-vec3<f32>(-1173f, 295f, var_0.x) - min(vec3<f32>(221f, var_0.x, 858f), vec3<f32>(var_0.x, var_0.x, 451f))))) * (vec3<f32>(var_0.x * -var_0.x, ceil(round(421f)), -(var_0.x + 175f)) / abs(vec3<f32>(var_0.x, var_0.x, var_0.x) / vec3<f32>(2435f, 480f, var_0.x)));
    var_0 = ceil(max(vec3<f32>(227f + -var_0.x, var_0.x, var_0.x), step(vec3<f32>(-1367f, -1666f, 2106f) + (vec3<f32>(-2651f, -241f, -1666f) * vec3<f32>(var_0.x, -995f, -1326f)), -vec3<f32>(var_0.x, 2215f, var_0.x))));
    let var_1 = arg_0;
    global1 = array<i32, 21>();
    return Struct_1(abs(1u) >> ~28749u, arg_0.b, -u_input.a.yw, firstTrailingBit(firstTrailingBit(var_1.d | arg_0.d)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_1(u_input.c.x, vec4<bool>(!(9318i == global0[19713u]), !(true || false), all(!vec3<bool>(false, true, false)), !(!true)), vec2<i32>(func_2(-848f), firstTrailingBit(-(-1i))), u_input.a.zyw), !(745f >= ((-490f - -601f) + -478f)));
    let var_1 = func_4(Struct_1(32667u, var_0.b, ~(vec2<i32>(var_0.c.x, var_0.d.x) | u_input.a.zw) << ~(~u_input.c), vec3<i32>(i32(-2147483648), var_0.c.x, ~(i32(-2147483648)))), var_0.b.x);
    let var_2 = func_4(Struct_1(max(~var_1.a, ~87763u) / select(1u << var_0.a, var_0.a, any(vec2<bool>(true, var_1.b.x))), !vec4<bool>(var_0.b.x, !false, !var_0.b.x, any(var_1.b.zw)), -select(~var_0.c, reverseBits(vec2<i32>(-53146i, -12941i)), 0u > u_input.c.x), u_input.b.zxw), ~(-7805i) <= firstLeadingBit(var_1.c.x & -1i));
    global0 = array<i32, 17>();
    var_0 = func_4(var_1, !all(!(!var_2.b)));
    return Struct_1(1u, select(var_1.b, var_2.b, !var_1.b), u_input.a.yx, var_1.d);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    global1 = array<i32, 21>();
    global0 = array<i32, 17>();
    var var_0 = 140f / 1000f;
    var_0 = floor(289f);
    let var_1 = vec4<u32>(clamp(~dot(vec3<u32>(arg_1.a, 31213u, 37599u), vec3<u32>(arg_1.a, u_input.c.x, 1u)), 41320u, 0u), ~(u_input.c.x | 4294967295u) & ~arg_1.a, ~arg_1.a, ~dot(~vec3<u32>(16515u, 1u, 14136u), ~vec3<u32>(1u, arg_1.a, arg_1.a))) >> vec4<u32>(func_4(arg_1, !true).a / 110004u, arg_1.a, u_input.c.x, 10296u);
    return ((-861f * arg_0) + 1899f) / -(-743f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstLeadingBit(u_input.b.x));
    global1 = array<i32, 21>();
    global0 = array<i32, 17>();
    let var_1 = -vec4<f32>((-1343f / 855f) + ((575f / 838f) + 293f), -func_5(-1534f, func_1()), 1635f, min(-(-298f), -625f));
    let var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), 1i, -1i, vec3<u32>(var_2 << ~var_2, firstLeadingBit(~76109u) / (dot(vec4<u32>(var_2, 27509u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 0u, var_2, u_input.c.x)) * dot(vec4<u32>(0u, u_input.c.x, var_2, var_2), vec4<u32>(var_2, 0u, 8876u, 0u))), 23160u % clamp(72238u | var_2, u_input.c.x, ~u_input.c.x)));
}

