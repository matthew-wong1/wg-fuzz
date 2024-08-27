struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(419f, 1000f), vec2<f32>(546f, -874f), vec2<f32>(744f, 161f), vec2<f32>(940f, -1000f), vec2<f32>(-1000f, 1000f), vec2<f32>(309f, -2042f), vec2<f32>(743f, 846f), vec2<f32>(573f, 922f), vec2<f32>(1018f, -440f), vec2<f32>(-354f, -639f), vec2<f32>(-689f, -1000f), vec2<f32>(-1164f, 861f), vec2<f32>(-1407f, -297f));

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<bool>, 23>;

var<private> global3: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(0i, 0i), vec2<i32>(-231i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(19627i, -29114i), vec2<i32>(-26660i, -23170i), vec2<i32>(i32(-2147483648), -29349i), vec2<i32>(-12587i, -43759i), vec2<i32>(i32(-2147483648), 14448i), vec2<i32>(18117i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 12061i), vec2<i32>(1i, 0i), vec2<i32>(0i, -523i), vec2<i32>(13935i, -1i));

var<private> global4: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1000f, -207f), vec2<f32>(709f, 2166f), vec2<f32>(1000f, 1132f), vec2<f32>(1000f, -122f), vec2<f32>(715f, -1418f), vec2<f32>(-729f, 277f), vec2<f32>(1000f, 1568f), vec2<f32>(1040f, -828f), vec2<f32>(-1584f, 1324f), vec2<f32>(-1342f, 388f), vec2<f32>(-1122f, -1130f), vec2<f32>(361f, 1000f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec4<u32> {
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(countOneBits(abs(0u))), 1u, u_input.a.x, ~u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~reverseBits(0u), u_input.a.x), 4294967295u, u_input.a.x), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, ~firstTrailingBit(u_input.a.x)), 5481u, u_input.a.x & u_input.a.x, ~firstLeadingBit(abs(19563u))));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.a.x;
    global4 = array<vec2<f32>, 12>();
    var var_1 = ~_wgslsmith_sub_vec4_u32(func_2(), _wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), firstTrailingBit(vec4<u32>(111398u, u_input.a.x, u_input.a.x, 1u))), ~vec4<u32>(4294967295u, 4294967295u, 53882u, 1u) | ~vec4<u32>(u_input.a.x, var_0, 35442u, 7819u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1508f, -415f, -1350f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 1035f, 1092f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, -806f, 597f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, 920f, -1416f) + vec3<f32>(-1190f, -1073f, -2067f))))), true)));
    var var_3 = var_2;
    return StorageBuffer(u_input.a, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

