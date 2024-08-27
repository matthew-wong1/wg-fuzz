struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(13418i, -552f), Struct_1(8455i, 371f), Struct_1(11333i, 214f), Struct_1(i32(-2147483648), -287f), Struct_1(2147483647i, 817f), Struct_1(-1i, -401f), Struct_1(982i, 1547f), Struct_1(9426i, 1256f), Struct_1(20930i, -1276f), Struct_1(2147483647i, -328f), Struct_1(-9705i, -619f), Struct_1(0i, -508f), Struct_1(-1426i, 1411f), Struct_1(-33269i, -114f), Struct_1(-1i, -1000f), Struct_1(2147483647i, 596f), Struct_1(2147483647i, 636f), Struct_1(5154i, 1098f), Struct_1(1i, 1732f), Struct_1(25499i, -1000f), Struct_1(i32(-2147483648), -213f));

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(0u, 40258u, 1u, 0u), vec4<u32>(0u, 20193u, 4000u, 8714u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(2122u, 4294967295u, 1u, 23996u), vec4<u32>(1u, 1u, 42557u, 22165u), vec4<u32>(1u, 1u, 27846u, 1u), vec4<u32>(0u, 27314u, 52888u, 10226u));

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1158f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(555f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-355f, 1000f))), true)));
}

