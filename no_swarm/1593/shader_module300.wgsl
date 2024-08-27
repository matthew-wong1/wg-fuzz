struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(20541u, 1u), vec2<u32>(26735u, 1u), vec2<u32>(5076u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 23234u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(35437u, 98681u), vec2<u32>(1458u, 575u), vec2<u32>(4294967295u, 21164u), vec2<u32>(103324u, 94934u), vec2<u32>(28996u, 4294967295u), vec2<u32>(75208u, 0u), vec2<u32>(0u, 28146u), vec2<u32>(14413u, 9738u), vec2<u32>(0u, 50523u), vec2<u32>(4294967295u, 1u), vec2<u32>(1426u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(59117u, 1u), vec2<u32>(18653u, 1u), vec2<u32>(11327u, 14839u), vec2<u32>(1u, 4294967295u), vec2<u32>(60494u, 40954u));

var<private> global1: bool = false;

var<private> global2: vec2<i32>;

var<private> global3: Struct_3 = Struct_3(false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b ^ ~71491u, u_input.b, 56598u), ~(~max(vec3<u32>(u_input.b, 28209u, 0u), vec3<u32>(u_input.b, 59689u, u_input.b))), select(~vec3<u32>(64432u, 11985u, 1u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(17181u, 72765u, u_input.b)) % vec3<u32>(32u)), vec3<u32>(~1u, 11970u, _wgslsmith_sub_u32(u_input.b, 0u)), !(!vec3<bool>(false, global3.a, arg_0))));
    global1 = !(global3.a || true);
    global1 = false;
    var var_1 = false & (true || all(vec4<bool>(select(false, global3.a, global3.a), false, false, any(vec3<bool>(arg_0, arg_0, arg_0)))));
    global0 = array<vec2<u32>, 25>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, -1000f, 1143f, 610f) * vec4<f32>(-542f, 799f, -194f, -201f)))), vec4<f32>(1f, -1552f, _wgslsmith_f_op_f32(-2951f * 1002f), 184f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(192f - -544f), _wgslsmith_f_op_f32(498f * 105f), _wgslsmith_f_op_f32(floor(-1828f)), _wgslsmith_f_op_f32(-1122f * -388f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(452f * -996f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-926f * _wgslsmith_f_op_f32(1656f + 459f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1294f - 160f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_f_op_f32(f32(-1f) * -346f), true))));
}

fn func_2() -> f32 {
    global3 = Struct_3(true);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(-207f, -2066f)), _wgslsmith_f_op_f32(max(-1645f, 184f)), -1127f, _wgslsmith_f_op_f32(min(-1094f, 438f)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global3.a)), vec4<f32>(-751f, 1f, -1449f, _wgslsmith_f_op_f32(select(2191f, 1458f, true)))))));
    global0 = array<vec2<u32>, 25>();
    return var_0.x;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(122f, 514f, false)), 598f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1166f, 1063f) + 113f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1221f, -419f)), 795f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, 999f, 127f, 721f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1227f, -920f, -1413f, -1011f) + vec4<f32>(325f, 2404f, -175f, -873f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1071f, 763f, -927f, 235f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(1060f)), -1807f, _wgslsmith_f_op_f32(223f - 160f)))), select(vec4<bool>(!arg_0, true, true, global3.a), !(!vec4<bool>(true, false, arg_0, true)), !select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, true, true, false), global3.a)))));
    var var_1 = global3.a;
    let var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(firstLeadingBit(select(vec4<u32>(u_input.b, 7944u, u_input.b, u_input.b), vec4<u32>(114656u, 52731u, 38225u, u_input.b), vec4<bool>(true, global3.a, false, arg_0))), min(vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u), vec4<u32>(u_input.b, 57084u, u_input.b, u_input.b)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))), countOneBits(min(min(~vec4<u32>(56967u, 46236u, u_input.b, u_input.b), vec4<u32>(4294967295u, 24592u, 0u, 1u)), min(vec4<u32>(u_input.b, 45935u, 0u, u_input.b), vec4<u32>(1u, u_input.b, 0u, 24175u) << (vec4<u32>(u_input.b, 56772u, u_input.b, u_input.b) % vec4<u32>(32u))))));
    global0 = array<vec2<u32>, 25>();
    global0 = array<vec2<u32>, 25>();
    return reverseBits(10791u);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = 0u;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-880f, 1772f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f - 388f) * -550f)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = Struct_5(Struct_3(true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2363f, -1580f, -1403f) * vec3<f32>(-415f, -842f, -551f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1196f, -758f, -1893f))))))));
    global0 = array<vec2<u32>, 25>();
    let var_3 = arg_0;
    return Struct_3(any(vec4<bool>(true & var_1.a, true, arg_0.a < u_input.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(1u, u_input.b);
    var var_1 = true;
    let var_2 = -593f;
    let var_3 = func_4(Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, var_0, var_0)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.b, u_input.b), vec3<u32>(1u, 0u, 92520u)), func_1(true), u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, 744f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, 563f))))))));
}

