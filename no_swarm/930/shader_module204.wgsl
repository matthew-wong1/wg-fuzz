struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-628f, vec2<f32>(-544f, 682f)));

var<private> global2: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(72335u, 4294967295u), vec2<u32>(37348u, 1736u), vec2<u32>(1u, 14853u), vec2<u32>(103266u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(23174u, 62661u), vec2<u32>(56117u, 50432u), vec2<u32>(80095u, 0u));

var<private> global3: array<vec2<bool>, 14>;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1782f, vec2<f32>(290f, 277f)), Struct_1(1000f, vec2<f32>(974f, -190f)), Struct_1(253f, vec2<f32>(-698f, -597f)), Struct_1(1918f, vec2<f32>(-2029f, 1293f)), Struct_1(-822f, vec2<f32>(-1031f, -2422f)), Struct_1(-664f, vec2<f32>(-1404f, -1000f)), Struct_1(1046f, vec2<f32>(711f, -2461f)), Struct_1(755f, vec2<f32>(494f, -219f)), Struct_1(161f, vec2<f32>(-1395f, -705f)), Struct_1(1000f, vec2<f32>(408f, -1071f)), Struct_1(-431f, vec2<f32>(1533f, 490f)), Struct_1(-408f, vec2<f32>(1189f, 1000f)), Struct_1(823f, vec2<f32>(1024f, -1245f)), Struct_1(2026f, vec2<f32>(808f, 967f)), Struct_1(470f, vec2<f32>(1000f, 944f)), Struct_1(1270f, vec2<f32>(348f, 1941f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.a;
    global4 = array<Struct_1, 16>();
    var var_1 = global1.a;
    global0 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-978f + 1000f))));
}

