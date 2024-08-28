struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<f32>(1029f, -311f, -934f), vec2<bool>(false, true)), Struct_3(vec3<f32>(116f, -1088f, 2074f), vec2<bool>(false, false)), Struct_3(vec3<f32>(-700f, -160f, 1462f), vec2<bool>(true, true)), Struct_3(vec3<f32>(-103f, -813f, 396f), vec2<bool>(false, true)), Struct_3(vec3<f32>(-883f, 567f, 1930f), vec2<bool>(true, false)), Struct_3(vec3<f32>(1029f, -169f, -216f), vec2<bool>(true, false)), Struct_3(vec3<f32>(324f, -1000f, -291f), vec2<bool>(true, false)), Struct_3(vec3<f32>(1122f, -879f, -168f), vec2<bool>(true, false)), Struct_3(vec3<f32>(1381f, 699f, -1037f), vec2<bool>(true, false)), Struct_3(vec3<f32>(1000f, 944f, 1019f), vec2<bool>(false, false)), Struct_3(vec3<f32>(806f, -191f, -437f), vec2<bool>(true, false)), Struct_3(vec3<f32>(483f, 523f, -1122f), vec2<bool>(true, true)), Struct_3(vec3<f32>(-554f, -420f, 1098f), vec2<bool>(false, false)), Struct_3(vec3<f32>(1218f, 1127f, 271f), vec2<bool>(false, false)), Struct_3(vec3<f32>(-316f, -1266f, 1597f), vec2<bool>(true, false)), Struct_3(vec3<f32>(-1831f, -1336f, 455f), vec2<bool>(false, true)), Struct_3(vec3<f32>(1181f, 2177f, 795f), vec2<bool>(true, false)), Struct_3(vec3<f32>(173f, 539f, -476f), vec2<bool>(false, true)), Struct_3(vec3<f32>(1000f, 107f, -957f), vec2<bool>(true, false)), Struct_3(vec3<f32>(-621f, 1961f, -386f), vec2<bool>(false, false)), Struct_3(vec3<f32>(409f, 578f, 164f), vec2<bool>(true, true)), Struct_3(vec3<f32>(517f, 692f, -620f), vec2<bool>(true, false)), Struct_3(vec3<f32>(1559f, -766f, -1427f), vec2<bool>(false, false)), Struct_3(vec3<f32>(-2437f, 754f, 941f), vec2<bool>(false, false)), Struct_3(vec3<f32>(-779f, 1348f, -1031f), vec2<bool>(true, false)));

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = select(vec4<i32>(abs(abs(min(u_input.b.x, u_input.b.x))), -(-u_input.b.x & u_input.b.x), u_input.b.x, abs(11136i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b.x, -2147483647i, abs(-5070i), 1i), ~vec4<i32>(u_input.b.x, 23402i, u_input.b.x, u_input.b.x), -abs(vec4<i32>(-49689i, -23667i, 44051i, u_input.b.x))), true);
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    var_0 = vec2<bool>(select(true, !(!select(var_0.x, false, var_0.x)), all(!(!vec2<bool>(var_0.x, true)))), var_0.x);
    return -223f;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = reverseBits(~1u);
    var var_1 = Struct_1(true);
    var_0 = _wgslsmith_sub_u32(~u_input.a >> (u_input.a % 32u), 1u);
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-344f, _wgslsmith_f_op_f32(func_3()), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1374f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044f * _wgslsmith_f_op_f32(-1f)) * 636f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_i32(-47006i, u_input.b.x))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(select(u_input.b.x, u_input.b.x & 58412i, false))).x), -1000f, -1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(193f))), _wgslsmith_f_op_f32(round(-701f))))));
    global0 = array<vec4<bool>, 29>();
    let var_1 = select(!vec2<bool>(true, firstLeadingBit(u_input.c.x) > u_input.c.x), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(select(false, all(vec2<bool>(true, true)), var_0.x > 193f), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(79572i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(918f, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1338f, -672f, var_0.x) * vec4<f32>(-254f, var_0.x, var_0.x, var_0.x)) + vec4<f32>(var_0.x, -674f, -286f, var_0.x)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-969f, var_0.x, 946f, var_0.x) * vec4<f32>(1000f, var_0.x, 1000f, var_0.x)), vec4<f32>(430f, -1528f, 829f, var_0.x))))));
    return Struct_1(select(false, select(any(vec3<bool>(false, var_1.x, var_1.x)) || true, all(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), var_1.x)), var_1.x), any(global0[_wgslsmith_index_u32(1u, 29u)]) && true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(abs(u_input.a) | u_input.c.x);
    var var_1 = func_1();
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(35661u, u_input.a), ~1u);
    let var_3 = Struct_4(u_input.a >> (1u % 32u), Struct_2(_wgslsmith_mod_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.b.x, -1i))), firstLeadingBit(-vec2<i32>(u_input.b.x, u_input.b.x))), Struct_1(true), 0u, func_1()), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(644f, -599f, -877f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-718f, -1157f, -161f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-794f, 300f, 1257f)))), select(vec2<bool>(any(vec3<bool>(var_1.a, true, var_1.a)), false), vec2<bool>(true, true), !(!var_1.a))), Struct_1(var_1.a), global1[_wgslsmith_index_u32(606u, 25u)]);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1905f, var_3.e.a.x)));
    let var_5 = var_3.d.a;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.c.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2014f))))) * var_4), ~(~u_input.a), _wgslsmith_f_op_f32(var_3.e.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

