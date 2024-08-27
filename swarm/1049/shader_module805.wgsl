struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(0u, Struct_1(233f, 2147483647i, 1u)), Struct_2(26306u, Struct_1(-631f, i32(-2147483648), 1u)), Struct_2(0u, Struct_1(647f, -17017i, 85378u)), Struct_2(26561u, Struct_1(-244f, 1i, 1u)), Struct_2(5785u, Struct_1(-302f, -82604i, 1u)), Struct_2(19492u, Struct_1(2120f, -2756i, 0u)), Struct_2(0u, Struct_1(413f, -1i, 27484u)), Struct_2(32478u, Struct_1(-508f, 32686i, 89583u)), Struct_2(19028u, Struct_1(267f, 2147483647i, 1750u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(0u, 5605u)) << (~(~u_input.c.zy) % vec2<u32>(32u)), ~vec2<u32>(~0u, _wgslsmith_mult_u32(60864u, 12604u))));
    let var_1 = Struct_2((_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), var_0) ^ var_0) ^ var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1147f * 1496f)))), abs(-4973i), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_0, ~1u), var_1.a);
}

