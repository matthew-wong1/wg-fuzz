struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(-316f), vec3<u32>(1u, 0u, 14320u)), Struct_2(Struct_1(1983f), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(Struct_1(693f), vec3<u32>(1u, 107918u, 24362u)), Struct_2(Struct_1(386f), vec3<u32>(4294967295u, 12789u, 10775u)), Struct_2(Struct_1(-2695f), vec3<u32>(4294967295u, 7271u, 4294967295u)), Struct_2(Struct_1(239f), vec3<u32>(66984u, 2504u, 1u)), Struct_2(Struct_1(-813f), vec3<u32>(48058u, 4294967295u, 33012u)), Struct_2(Struct_1(102f), vec3<u32>(15736u, 51015u, 17527u)), Struct_2(Struct_1(-1000f), vec3<u32>(20250u, 0u, 0u)), Struct_2(Struct_1(-328f), vec3<u32>(4294967295u, 56740u, 12950u)), Struct_2(Struct_1(410f), vec3<u32>(1u, 62695u, 23768u)), Struct_2(Struct_1(604f), vec3<u32>(1u, 0u, 0u)), Struct_2(Struct_1(-587f), vec3<u32>(4294967295u, 0u, 104264u)), Struct_2(Struct_1(-251f), vec3<u32>(29616u, 61308u, 12508u)), Struct_2(Struct_1(-979f), vec3<u32>(30063u, 0u, 87555u)), Struct_2(Struct_1(-1000f), vec3<u32>(1u, 19200u, 59174u)), Struct_2(Struct_1(770f), vec3<u32>(1u, 5453u, 4294967295u)), Struct_2(Struct_1(-1291f), vec3<u32>(0u, 0u, 4294967295u)));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_3 = Struct_3(false, Struct_1(868f), vec2<u32>(84645u, 26209u), Struct_1(2024f), vec3<bool>(true, true, false));

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, true, false, false, true, false, false, true, true, true, true, true, true, false, true, true, true, true, false, false, true, true, false);

var<private> global4: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(37215i, 43951i, 0i), vec3<i32>(6058i, 20653i, -24535i), vec3<i32>(-1i, -56740i, i32(-2147483648)), vec3<i32>(43152i, -4407i, 0i), vec3<i32>(-9746i, -2414i, i32(-2147483648)), vec3<i32>(-3985i, 57230i, 1i), vec3<i32>(2147483647i, 1i, 9823i), vec3<i32>(-647i, 56683i, 2147483647i), vec3<i32>(0i, 16798i, 221i), vec3<i32>(0i, 81907i, 1i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> StorageBuffer {
    global1 = select(global2.e, !vec3<bool>(true, any(!global1.yz), arg_0), !(!select(false, global1.x, true)));
    return StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1413f * 889f))) * global2.b.a), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32((vec4<i32>(u_input.d, u_input.d, -28572i, u_input.d) & vec4<i32>(-1i, u_input.e, u_input.e, -1i)) >> ((u_input.b << (vec4<u32>(0u, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-29279i, u_input.e, -11608i, -6992i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.e))), ~(-vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d))), -1881f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = vec3<bool>(global2.d.a != _wgslsmith_f_op_f32(ceil(-388f)), false, true);
    global4 = array<vec3<i32>, 10>();
    let var_2 = abs(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~u_input.b.wxw));
    var var_3 = _wgslsmith_f_op_f32(round(181f)) > _wgslsmith_f_op_f32(ceil(global2.d.a));
    var_3 = false;
    let var_4 = ~var_2;
    let x = u_input.a;
    s_output = func_1(!(!all(vec3<bool>(global3[_wgslsmith_index_u32(23824u, 28u)], false, true))), select(global1.yz, global2.e.zz, true));
}

