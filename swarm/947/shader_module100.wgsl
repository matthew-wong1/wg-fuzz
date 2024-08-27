struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(87315u, 4294967295u), -1072f), Struct_1(vec2<u32>(4294967295u, 13065u), -1000f), Struct_1(vec2<u32>(31285u, 1u), -792f), Struct_1(vec2<u32>(48432u, 98051u), 534f), Struct_1(vec2<u32>(52602u, 1u), -1697f), Struct_1(vec2<u32>(72237u, 52198u), -788f), Struct_1(vec2<u32>(36569u, 0u), 118f), Struct_1(vec2<u32>(17471u, 12568u), -1034f), Struct_1(vec2<u32>(4294967295u, 147299u), -232f), Struct_1(vec2<u32>(1u, 77181u), -565f), Struct_1(vec2<u32>(35072u, 4294967295u), -156f), Struct_1(vec2<u32>(1u, 6826u), 1651f), Struct_1(vec2<u32>(78302u, 59704u), 1603f), Struct_1(vec2<u32>(57593u, 4294967295u), -988f), Struct_1(vec2<u32>(32973u, 5699u), 1268f), Struct_1(vec2<u32>(23109u, 49228u), 431f), Struct_1(vec2<u32>(1u, 25114u), -188f), Struct_1(vec2<u32>(4294967295u, 4772u), 682f), Struct_1(vec2<u32>(26727u, 2726u), 518f), Struct_1(vec2<u32>(52126u, 32813u), -1219f), Struct_1(vec2<u32>(33415u, 0u), 278f), Struct_1(vec2<u32>(54918u, 97126u), 1971f), Struct_1(vec2<u32>(0u, 0u), 457f), Struct_1(vec2<u32>(0u, 4294967295u), -1233f));

var<private> global1: i32 = -19713i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(true, true));
    global0 = array<Struct_1, 24>();
    let var_1 = vec3<f32>(1468f, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1917f, 1335f), _wgslsmith_f_op_f32(f32(-1f) * -1098f))))))));
    global1 = u_input.a;
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(1101f, ~20449u);
}

