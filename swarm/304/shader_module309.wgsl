struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<u32, 26> = array<u32, 26>(18081u, 4294967295u, 85666u, 1u, 4294967295u, 18357u, 19171u, 12252u, 1u, 4294967295u, 4294967295u, 15971u, 49902u, 46849u, 0u, 4294967295u, 4294967295u, 54313u, 4294967295u, 49745u, 61221u, 4294967295u, 0u, 82119u, 22773u, 62770u);

var<private> global2: array<vec3<i32>, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> f32 {
    global2 = array<vec3<i32>, 7>();
    var var_0 = 42284u;
    global1 = array<u32, 26>();
    var var_1 = true;
    var_0 = ~78079u ^ _wgslsmith_dot_vec3_u32(u_input.b, countOneBits(vec3<u32>(arg_0.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global1[_wgslsmith_index_u32(70191u, 26u)])) >> (vec3<u32>(arg_0.a.x, ~arg_1, select(4294967295u, arg_1, false)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -308f);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_4(u_input.b, -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1024f, arg_0.a.b, arg_0.b)))))))));
    var var_2 = Struct_3(97946u);
    global2 = array<vec3<i32>, 7>();
    global1 = array<u32, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1223f + -1229f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * arg_0.b))))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = !select(false, false, true);
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1272f)), -440f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(1650f, arg_1.x), _wgslsmith_f_op_f32(min(-292f, 715f)), Struct_1(arg_1.x, -576f), Struct_1(-2894f, arg_1.x), select(u_input.a.yz, u_input.a.zx, vec2<bool>(true, false)))))), arg_1.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1204f, 132f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1392f, -131f)))), _wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(499f + arg_1.x), -1356f, all(vec4<bool>(false, false, false, true))))), u_input.a.wz);
    global0 = array<Struct_2, 9>();
    var var_3 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -490f));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(var_2.a.b + _wgslsmith_f_op_f32(arg_1.x * -2278f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700f + 370f) - var_2.a.b)))), var_2.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f * 892f)) - -722f), _wgslsmith_f_op_f32(max(557f, -199f))), Struct_1(-889f, -114f), reverseBits(vec2<i32>(5325i ^ var_1, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    global0 = array<Struct_2, 9>();
    let var_0 = func_2(~u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-292f, 743f) * _wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(u_input.b.x, u_input.b.x, 35213u), u_input.a.x), 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) - _wgslsmith_f_op_f32(f32(-1f) * -143f)))));
    let var_1 = ~u_input.b.x << (select(4294967295u, 4294967295u, true) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~max(var_0.e, u_input.a.zx)), u_input.b.zx);
}

