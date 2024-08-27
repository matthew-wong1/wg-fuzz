struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec4<f32>(-894f, 198f, -968f, 1922f)), Struct_3(vec4<f32>(1720f, -1315f, 1043f, -714f)), Struct_3(vec4<f32>(1000f, -351f, 404f, -995f)), Struct_3(vec4<f32>(-359f, -571f, 1540f, -402f)), Struct_3(vec4<f32>(1000f, -1376f, -765f, -239f)), Struct_3(vec4<f32>(1343f, -1197f, 1260f, -632f)), Struct_3(vec4<f32>(-977f, -179f, -391f, 872f)), Struct_3(vec4<f32>(-618f, -1636f, -591f, -660f)));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec4<f32>(-515f, -760f, 1129f, -2070f)), Struct_3(vec4<f32>(-156f, 151f, 687f, -964f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec3<u32>(4294967295u, arg_2.b, 1u) & vec3<u32>(~u_input.a.x, arg_2.a, 87255u);
    let var_1 = 1385f;
    var var_2 = ~vec2<u32>(8690u, _wgslsmith_div_u32(max(4294967295u, 69351u), 38891u));
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    return vec4<u32>(var_2.x, 4294967295u ^ var_0.x, var_2.x, var_2.x);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = vec4<u32>(~abs(u_input.a.x), u_input.a.x, 7015u, firstTrailingBit(_wgslsmith_div_u32(1u, 1u)));
    return 45198u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(30089u, 1u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))), ~countOneBits(select(vec3<u32>(u_input.a.x, u_input.a.x, 35016u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false))), 0u, ~(~select(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 4294967295u, true)));
    var var_1 = Struct_2(!(!vec3<bool>(true, u_input.a.x > var_0.x, any(vec2<bool>(true, true)))), _wgslsmith_dot_vec4_u32(~(~func_1(vec3<f32>(-928f, 1697f, -366f), global0[_wgslsmith_index_u32(16340u, 8u)], Struct_1(14245u, 12629u))), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), 18237u, 0u) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 90015u, u_input.a.x, var_0.x), vec4<u32>(54789u, 15625u, 4294967295u, u_input.a.x))), Struct_1(411u, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 18933u, var_0.x, 1330u)), select(vec4<u32>(102834u, u_input.a.x, 85368u, u_input.a.x), vec4<u32>(1u, var_0.x, 1u, u_input.a.x), true))), ~reverseBits(u_input.a.x), Struct_1(~_wgslsmith_mult_u32(_wgslsmith_div_u32(25812u, var_0.x), min(0u, u_input.a.x)), var_0.x));
    global0 = array<Struct_3, 8>();
    let var_2 = ~var_0.yy >> (countOneBits(~var_0.xy) % vec2<u32>(32u));
    var var_3 = global1[_wgslsmith_index_u32(~(~max(1u, func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-255f, 578f, -1211f)))))), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec3<u32>(u_input.a.x, var_2.x, 89279u) << (var_0 % vec3<u32>(32u))), ~(var_0 & var_0), var_1.a) & max(abs(vec3<u32>(1u, var_0.x, var_2.x) << (vec3<u32>(var_2.x, 11156u, 31287u) % vec3<u32>(32u))), var_0));
}

