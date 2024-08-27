struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(5004i, 1146f, 1324f, -1996f), Struct_1(45765i, -774f, -131f, 438f), Struct_1(-8293i, 667f, 136f, 504f), Struct_1(0i, 1676f, -2790f, -483f), Struct_1(0i, -1296f, 2025f, 2024f), Struct_1(-23510i, 1113f, -335f, 189f), Struct_1(37572i, -1209f, -694f, -246f), Struct_1(61079i, 958f, 1291f, -1015f), Struct_1(-6971i, 2708f, -345f, 988f), Struct_1(2147483647i, -2262f, 229f, 2639f), Struct_1(1i, -525f, 1063f, -1326f), Struct_1(-87130i, 723f, 761f, -437f), Struct_1(20261i, 1000f, 1459f, -2102f), Struct_1(i32(-2147483648), 862f, 735f, 1000f), Struct_1(15695i, 1760f, -1045f, 1000f), Struct_1(7734i, -491f, -398f, 1065f), Struct_1(-57007i, -2114f, -593f, -543f), Struct_1(-22436i, 965f, -1000f, -887f), Struct_1(0i, 1266f, 925f, -1073f), Struct_1(2147483647i, 1864f, 1000f, -1945f), Struct_1(i32(-2147483648), -728f, -257f, 1421f));

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(0i, 577f, 791f, 106f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(656f, 669f))))), 901f, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))) && ((~u_input.b.x == ~16724u) & true)));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f))))));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 21u)];
    return -232f;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = u_input.e.wxx;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(343f, -518f)), -617f, _wgslsmith_f_op_f32(f32(-1f) * -672f), 1f);
    global1 = array<Struct_2, 1>();
    let var_2 = vec2<bool>(false, true);
    var var_3 = 1u;
    return 1i;
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 21>();
    return -416f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f - 311f) - 824f) + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1745f - -951f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_f32(-240f, 988f)), _wgslsmith_f_op_f32(round(333f)));
    var var_1 = vec3<u32>(u_input.d | 1u, 38775u ^ ~u_input.d, u_input.b.x);
    var_1 = u_input.b.xwy;
    global0 = array<Struct_1, 21>();
    global1 = array<Struct_2, 1>();
    var_1 = reverseBits(firstLeadingBit(~u_input.b.wwx));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(603f, 644f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yz);
}

