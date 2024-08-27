struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<f32>(-216f, 1157f, 635f), true, -670f, Struct_2(Struct_1(vec2<f32>(1307f, 1811f)), Struct_1(vec2<f32>(680f, -648f)), Struct_1(vec2<f32>(-1622f, 1890f)))), Struct_3(vec3<f32>(1205f, 475f, -407f), true, 773f, Struct_2(Struct_1(vec2<f32>(1590f, 529f)), Struct_1(vec2<f32>(-520f, -1760f)), Struct_1(vec2<f32>(681f, 808f)))), Struct_3(vec3<f32>(-243f, 429f, -165f), true, 1745f, Struct_2(Struct_1(vec2<f32>(1017f, 1085f)), Struct_1(vec2<f32>(-1000f, 1356f)), Struct_1(vec2<f32>(446f, -521f)))), Struct_3(vec3<f32>(-120f, 378f, 837f), false, 212f, Struct_2(Struct_1(vec2<f32>(2185f, 497f)), Struct_1(vec2<f32>(515f, 541f)), Struct_1(vec2<f32>(1440f, -524f)))), Struct_3(vec3<f32>(-2095f, -1256f, 181f), false, 134f, Struct_2(Struct_1(vec2<f32>(-459f, -1540f)), Struct_1(vec2<f32>(-1760f, -825f)), Struct_1(vec2<f32>(564f, 655f)))), Struct_3(vec3<f32>(461f, -1057f, -943f), true, -767f, Struct_2(Struct_1(vec2<f32>(-246f, 1000f)), Struct_1(vec2<f32>(682f, 109f)), Struct_1(vec2<f32>(-410f, -855f)))));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> bool {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    var var_0 = -547f;
    let var_1 = !(!select(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(false, true)), vec2<bool>(true, any(vec2<bool>(arg_2, true))), vec2<bool>(arg_0 <= arg_0, arg_2)));
    global0 = array<Struct_3, 6>();
    return var_1.x;
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_3, 6>();
    return global0[_wgslsmith_index_u32(((arg_1 | ~4294967295u) << (arg_1 % 32u)) >> (1u % 32u), 6u)];
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = arg_1.x || !all(select(vec4<bool>(arg_0.b, arg_2.b, arg_2.b, arg_1.x), select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(arg_2.b, false, arg_1.x, true), false), select(vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(false, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_2.b))));
    let var_1 = firstTrailingBit(~(~0u)) > (~28366u << (~(_wgslsmith_mult_u32(37756u, 1u) | firstTrailingBit(32055u)) % 32u));
    return ~max(~vec2<u32>(0u, 0u), firstTrailingBit(min(~vec2<u32>(1u, 1u), vec2<u32>(24257u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    var var_0 = global0[_wgslsmith_index_u32(33497u, 6u)];
    var var_1 = !all(select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false), false), vec2<bool>(var_0.b, var_0.b), select(false, var_0.b, true)), select(!vec2<bool>(var_0.b, false), !vec2<bool>(var_0.b, true), vec2<bool>(true, true)), !func_1(62601u, Struct_4(2147483647i), var_0.b)));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 1u)), func_3(Struct_3(var_0.a, var_0.b, -630f, Struct_2(Struct_1(vec2<f32>(-572f, 274f)), var_0.d.c, var_0.d.b)), vec3<bool>(true, false, var_0.b), func_2(Struct_4(u_input.b), 0u, vec4<u32>(21293u, 19490u, 0u, 1u))))), vec2<u32>(4294967295u, max(1u, abs(91255u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<i32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_vec2_i32(~select(vec2<i32>(0i, u_input.a.x), min(u_input.a, u_input.a), all(vec3<bool>(var_0.b, true, var_0.b))), max(abs(u_input.a), vec2<i32>(8476i, u_input.b))));
}

