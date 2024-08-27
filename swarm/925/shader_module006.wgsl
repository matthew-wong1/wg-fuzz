struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 13u)];
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.a, u_input.a) ^ arg_1.a.c.d.x, _wgslsmith_add_u32(1u, arg_0.b.d.x))), arg_0.b.d.x);
    return arg_1.a;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<u32> {
    global0 = array<vec4<bool>, 13>();
    var var_0 = !select(select(select(vec3<bool>(arg_1.a.c.a, arg_1.a.d, true), select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.a.a.x, arg_1.a.a.x), vec3<bool>(false, false, false)), all(vec4<bool>(false, false, arg_0.a.c.a, false))), vec3<bool>(false, false, !arg_0.a.c.a), !select(vec3<bool>(true, arg_1.a.c.c, false), vec3<bool>(false, true, arg_0.a.c.a), vec3<bool>(false, arg_1.a.d, true))), vec3<bool>(!all(vec4<bool>(arg_1.a.a.x, arg_1.a.d, arg_0.a.d, false)), true, select(any(global0[_wgslsmith_index_u32(arg_0.a.c.d.x, 13u)]), arg_1.a.a.x, arg_1.a.d | false)), select(!vec3<bool>(arg_1.a.d, arg_1.a.a.x, arg_0.a.d), select(select(vec3<bool>(arg_0.a.a.x, false, true), vec3<bool>(false, true, true), true), !vec3<bool>(arg_0.a.d, false, true), select(vec3<bool>(arg_1.a.d, arg_0.a.c.a, true), vec3<bool>(arg_0.a.c.c, true, false), true)), func_1(Struct_4(0u, arg_0.a.c), Struct_3(Struct_2(arg_1.a.a, arg_1.a.b, arg_0.a.c, arg_0.a.c.c)), min(-9982i, u_input.b.x), arg_0.a.c.b.xyz).d));
    var var_1 = arg_0;
    var var_2 = 57038u;
    var var_3 = Struct_4(select(_wgslsmith_add_u32(~_wgslsmith_add_u32(0u, u_input.a), var_1.a.b.x), 51414u, arg_0.a.c.c), Struct_1(false, arg_0.a.c.b, arg_1.a.d, arg_0.a.b.zxx));
    return var_1.a.b;
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 13>();
    global0 = array<vec4<bool>, 13>();
    var var_0 = firstLeadingBit(~_wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_2.b.x, 3787u, arg_0.a, 11302u) ^ arg_2.b), arg_2.b));
    var_0 = ~max(max(abs(arg_2.b), arg_2.b), firstTrailingBit(func_3(Struct_3(Struct_2(vec2<bool>(arg_1, arg_0.b.c), arg_2.b, arg_0.b, arg_1)), Struct_3(arg_2)))) & arg_2.b;
    global0 = array<vec4<bool>, 13>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(countOneBits(~reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    let var_1 = !(!vec3<bool>(true, true, var_0.x >= abs(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.b.x), vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1398u, u_input.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(2128u, 4294967295u), countOneBits(vec2<u32>(88955u, 60590u)))), ~firstLeadingBit(u_input.a), _wgslsmith_add_u32(1u, func_2(Struct_4(53799u, Struct_1(false, vec4<f32>(1682f, 1073f, -340f, 909f), var_1.x, vec3<u32>(u_input.a, u_input.a, u_input.a))), !var_1.x, func_1(Struct_4(56105u, Struct_1(false, vec4<f32>(1467f, -158f, -1361f, 1188f), var_1.x, vec3<u32>(u_input.a, 26913u, 4294967295u))), Struct_3(Struct_2(var_1.zy, vec4<u32>(u_input.a, 0u, 1u, 0u), Struct_1(true, vec4<f32>(995f, 283f, -1304f, -1051f), true, vec3<u32>(u_input.a, 1u, u_input.a)), var_1.x)), u_input.b.x, vec3<f32>(-983f, -242f, -898f)))), ~(u_input.a << (4294967295u % 32u))));
}

