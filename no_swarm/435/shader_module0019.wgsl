// {"0:0":[188,161,130,218]}
// Seed: 1176756820968843795

struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-1386f, 161f, 315f));

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: vec4<i32>;

var<private> global4: array<f32, 30> = array<f32, 30>(1768f, 601f, 709f, -1610f, 1744f, 2455f, 768f, -976f, 347f, 647f, 1541f, -776f, -456f, -583f, 567f, -360f, 1071f, 627f, 1177f, -586f, 531f, -716f, 1918f, 924f, -188f, 1717f, 614f, 795f, 2016f, 302f);

fn func_3() -> vec4<u32> {
    let var_0 = Struct_4(global2.a);
    global2 = var_0;
    let var_1 = global2.a;
    global3 = firstTrailingBit(select(global2.a.a, firstLeadingBit(vec4<i32>(global3.x, global2.a.a.x, 18556i, global2.a.a.x) * global2.a.a), !(false | false))) & vec4<i32>(max(clamp(var_0.a.a.x, -583i, u_input.a), -u_input.a) & 2147483647i, -62958i, 60877i, min(global3.x, var_0.a.a.x));
    let var_2 = select(-firstTrailingBit(-global2.a.a.xy), var_0.a.a.zw, vec2<bool>(min(firstTrailingBit(global2.a.a.x), global2.a.a.x) < abs(select(global2.a.a.x, -15435i, true)), all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)))));
    return ~vec4<u32>(~(40916u + (global1.x - global1.x)), ~(~(global1.x >> global1.x)), global1.x, ~countOneBits(min(global1.x, 1u)));
}

fn func_2() -> Struct_5 {
    global4 = array<f32, 30>();
    global1 = ~max(max(vec4<u32>(104674u, global1.x, global1.x, 42940u), vec4<u32>(0u, global1.x, 1u, 34985u)) * abs(vec4<u32>(global1.x, global1.x, 54705u, global1.x)), countOneBits(~vec4<u32>(global1.x, global1.x, 1u, global1.x))) % ~abs(func_3());
    let var_0 = vec2<u32>(firstTrailingBit(7487u | ~4294967295u), max(~firstTrailingBit(0u), firstLeadingBit(global1.x) * (1u & global1.x)));
    var var_1 = Struct_3(-vec3<f32>(-1000f, -(global0.a.x * global4[global1.x]), step(-global4[global1.x], global0.a.x)));
    let var_2 = 5667i;
    return Struct_5(u_input.a, Struct_4(Struct_2(vec4<i32>(i32(-2147483648) + -35683i, clamp(global3.x, 0i, global2.a.a.x), dot(vec3<i32>(-1i, 2147483647i, u_input.a), global2.a.a.zzx), global3.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = func_2();
    let var_1 = ~func_3().zzx;
    let var_2 = !false;
    var var_3 = false;
    var var_4 = max(~(min(50896i, global2.a.a.x / 11911i) + 0i), 16928i);
    return ~dot(vec2<i32>(min(-15928i, min(global2.a.a.x, i32(-2147483648))), ~(~(-21506i))), arg_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a + (((reverseBits(-5806i) << (global1.x * global1.x)) << (global1.x | ~global1.x)) % ~(~dot(vec4<i32>(32324i, -33828i, 21850i, 1i), vec4<i32>(7026i, global3.x, 2147483647i, 1i))));
    let var_1 = Struct_4(Struct_2(-(-vec4<i32>(0i, -1i, global2.a.a.x, 0i)) % vec4<i32>(32380i << global1.x, select(global2.a.a.x, global3.x, true), func_1(true, vec4<f32>(global0.a.x, global4[4294967295u], global0.a.x, -1021f), vec3<i32>(1i, global2.a.a.x, u_input.a)), u_input.a)));
    let var_2 = var_1;
    global2 = func_2().b;
    global4 = array<f32, 30>();
    let var_3 = global0.a.x;
    var var_4 = global3.yyz;
    var var_5 = Struct_5(dot(global3.zwy, abs(-vec3<i32>(u_input.a, 25906i, -1i) + vec3<i32>(-1i, -31266i, 2147483647i))), Struct_4(func_2().b.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(-3311i));
}

