struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
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

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec2<f32>(1468f, -332f), true, vec4<i32>(-1i, -21722i, -68700i, -27054i), false), Struct_1(vec2<f32>(-586f, 2035f), false, vec4<i32>(-11178i, 35654i, -24253i, 53366i), true), 845f), Struct_2(Struct_1(vec2<f32>(924f, 1249f), false, vec4<i32>(-29065i, i32(-2147483648), i32(-2147483648), -36549i), false), Struct_1(vec2<f32>(1113f, 1450f), true, vec4<i32>(-58398i, 11121i, 2147483647i, -35598i), true), -795f), Struct_2(Struct_1(vec2<f32>(917f, 331f), true, vec4<i32>(3255i, i32(-2147483648), 1i, 14539i), false), Struct_1(vec2<f32>(233f, 1001f), true, vec4<i32>(1i, -1i, 0i, 1i), true), 1000f), Struct_2(Struct_1(vec2<f32>(1000f, -509f), true, vec4<i32>(2147483647i, -4758i, 49877i, -162i), false), Struct_1(vec2<f32>(647f, 415f), true, vec4<i32>(1i, 0i, 2147483647i, -27596i), true), -1343f), Struct_2(Struct_1(vec2<f32>(-320f, -670f), true, vec4<i32>(-13496i, 6452i, 2147483647i, i32(-2147483648)), false), Struct_1(vec2<f32>(764f, 155f), true, vec4<i32>(1i, 2147483647i, 0i, 8166i), true), -488f), Struct_2(Struct_1(vec2<f32>(455f, 454f), false, vec4<i32>(-47966i, -1i, -1i, -1i), false), Struct_1(vec2<f32>(1530f, -192f), false, vec4<i32>(2147483647i, i32(-2147483648), 13490i, -17384i), false), -173f), Struct_2(Struct_1(vec2<f32>(-1592f, 1609f), true, vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648)), false), Struct_1(vec2<f32>(449f, 1260f), false, vec4<i32>(i32(-2147483648), -9180i, 2147483647i, 0i), false), 518f), Struct_2(Struct_1(vec2<f32>(-792f, -1191f), false, vec4<i32>(0i, 2147483647i, 2147483647i, 8061i), true), Struct_1(vec2<f32>(301f, 226f), true, vec4<i32>(-1i, 8272i, -22767i, 39203i), false), -600f), Struct_2(Struct_1(vec2<f32>(-601f, 1080f), false, vec4<i32>(0i, -23111i, i32(-2147483648), 2147483647i), false), Struct_1(vec2<f32>(289f, -131f), false, vec4<i32>(2147483647i, -19011i, 52343i, 17462i), true), 1165f), Struct_2(Struct_1(vec2<f32>(419f, -447f), true, vec4<i32>(i32(-2147483648), 35965i, 2147483647i, 1i), true), Struct_1(vec2<f32>(941f, 1959f), true, vec4<i32>(1i, -60856i, 2147483647i, 1i), false), 1791f), Struct_2(Struct_1(vec2<f32>(1345f, -376f), true, vec4<i32>(2147483647i, -1i, -1i, 0i), false), Struct_1(vec2<f32>(939f, 974f), true, vec4<i32>(15015i, 43399i, 0i, -35723i), true), 203f), Struct_2(Struct_1(vec2<f32>(-461f, -793f), false, vec4<i32>(17117i, -26415i, 1i, i32(-2147483648)), false), Struct_1(vec2<f32>(287f, -2909f), true, vec4<i32>(0i, -43484i, 44143i, -60907i), true), 909f), Struct_2(Struct_1(vec2<f32>(-927f, -872f), true, vec4<i32>(-1i, i32(-2147483648), 4136i, 6023i), false), Struct_1(vec2<f32>(-1399f, -276f), false, vec4<i32>(2147483647i, -27412i, -14906i, 1i), false), -493f));

var<private> global1: f32 = 834f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = u_input.c;
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_2 = true;
    let var_3 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(19181u, ~56093u, 31515u, 55753u ^ u_input.a.x)) & select(firstLeadingBit(u_input.a) << ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), (u_input.a ^ vec4<u32>(u_input.a.x, 57490u, 0u, 0u)) ^ (vec4<u32>(u_input.a.x, 4294967295u, 0u, 4294967295u) & u_input.a), !select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(false, var_2, var_2, var_2), var_2)), vec4<u32>(0u | u_input.a.x, ~u_input.a.x, ~_wgslsmith_div_u32(0u, 41679u), ~_wgslsmith_add_u32(u_input.a.x, 5795u)) ^ reverseBits(~vec4<u32>(0u, 122174u, 61428u, 1u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.a.x, 14181u), u_input.a) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x | firstTrailingBit(-11463i));
}

