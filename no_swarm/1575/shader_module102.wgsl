struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<bool, 12>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, Struct_1(vec4<f32>(-776f, -275f, 1000f, -3017f), 967f, 2147483647i, vec4<i32>(2147483647i, 1i, 13975i, -30588i)), 1u), Struct_2(true, Struct_1(vec4<f32>(-323f, 2043f, -849f, -449f), 216f, -1i, vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648))), 7529u), Struct_2(true, Struct_1(vec4<f32>(1000f, 325f, 1552f, 345f), 1021f, -6684i, vec4<i32>(-4848i, 26526i, 1i, 1i)), 0u), Struct_2(false, Struct_1(vec4<f32>(932f, 334f, -775f, 1000f), 1824f, 29967i, vec4<i32>(i32(-2147483648), 65223i, 1i, 849i)), 4294967295u), Struct_2(true, Struct_1(vec4<f32>(-1292f, -908f, -467f, -123f), 505f, -37508i, vec4<i32>(2147483647i, -1i, -25100i, 1i)), 1u), Struct_2(false, Struct_1(vec4<f32>(-272f, -1002f, 223f, -415f), 322f, -35220i, vec4<i32>(i32(-2147483648), 4778i, 50150i, 50530i)), 23329u), Struct_2(true, Struct_1(vec4<f32>(-788f, 157f, -2807f, 885f), -171f, -1i, vec4<i32>(i32(-2147483648), 1i, -29376i, 1i)), 88022u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    let var_0 = 55584u;
    global0 = array<bool, 12>();
    var var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -693f, 660f, 203f))))) - vec4<f32>(-1057f, 667f, 516f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(trunc(454f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-598f - _wgslsmith_f_op_f32(floor(-1841f))))), u_input.c.x, vec4<i32>(1i, ~(-1i), firstTrailingBit(u_input.c.x), firstLeadingBit(_wgslsmith_mod_i32(u_input.a & 1i, -u_input.a))));
    var var_3 = !vec4<bool>(_wgslsmith_div_i32(var_2.d.x, -41395i) >= ~(i32(-1i) * -32175i), any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], true, global0[_wgslsmith_index_u32(46879u, 12u)])), false, false);
    let var_4 = firstTrailingBit(_wgslsmith_div_i32(u_input.c.x << (~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_0, u_input.d, 35430u)) % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-30012i, u_input.c.x & -2147483647i), u_input.a)));
    global1 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.d.x));
}

