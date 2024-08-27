struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, vec3<i32>(49145i, 47236i, -102270i), -278f), Struct_1(false, vec3<i32>(5544i, 36975i, -1i), -536f), Struct_1(true, vec3<i32>(-5023i, -1936i, -66614i), 109f), Struct_1(true, vec3<i32>(0i, -1i, 0i), 622f), Struct_1(false, vec3<i32>(-13886i, 4445i, 2147483647i), 501f), Struct_1(false, vec3<i32>(-48441i, 1i, 0i), -832f), Struct_1(true, vec3<i32>(0i, 1i, 0i), -1376f), Struct_1(true, vec3<i32>(-13446i, 0i, -43198i), 1055f), Struct_1(true, vec3<i32>(24453i, 9595i, 3278i), -910f), Struct_1(true, vec3<i32>(1i, 1i, -1i), -690f), Struct_1(false, vec3<i32>(1i, 57747i, 1i), -1617f), Struct_1(false, vec3<i32>(-1i, i32(-2147483648), -1i), 1000f), Struct_1(false, vec3<i32>(-35143i, 16584i, 16498i), 1001f), Struct_1(true, vec3<i32>(-27804i, 6608i, i32(-2147483648)), 1128f));

var<private> global1: array<vec2<i32>, 16>;

var<private> global2: array<vec3<u32>, 10>;

var<private> global3: vec2<i32> = vec2<i32>(-1i, -22477i);

var<private> global4: f32 = 774f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(max(9877u, ~u_input.a.x), 16u)], 1228f, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1295f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1318f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - -124f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f + -1000f) - -1356f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1500f * -924f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(171f, 444f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-881f, -375f)) * _wgslsmith_f_op_f32(max(2959f, 1087f)))))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1793f))))));
}

