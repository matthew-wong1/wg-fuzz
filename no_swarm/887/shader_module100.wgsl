struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    var var_0 = min(~_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x) ^ 1u, u_input.a.x);
    global0 = array<vec2<i32>, 15>();
    let var_1 = u_input.c.yy;
    var_0 = firstTrailingBit(min(1u, u_input.a.x));
    let var_2 = 2147483647i;
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = array<vec2<i32>, 15>();
    global1 = 647f;
    let var_0 = min(_wgslsmith_clamp_u32(~(~u_input.a.x), _wgslsmith_mult_u32(~40681u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~max(u_input.a.x, u_input.a.x)) >> (u_input.a.x % 32u), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(func_3(vec2<i32>(u_input.b, -8034i), -1155f), ~u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x & 72094u, 23940u, func_3(u_input.c.yz, arg_1.b))));
    global1 = arg_2;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b, arg_2, -526f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1108f, -161f, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(abs(795f)), _wgslsmith_f_op_f32(select(arg_0.b, -930f, arg_1.a.x)), _wgslsmith_f_op_f32(-349f * 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, 909f, _wgslsmith_f_op_f32(step(arg_0.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, 2645f, -1105f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1554f, 1546f, arg_2))))), true)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 184f, -364f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -543f, -370f), vec3<f32>(arg_2, -1866f, -972f)), true))))));
    return (-1055f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), var_1.x)))) && arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = false;
    let var_1 = true;
    let var_2 = Struct_1(vec4<bool>(any(!(!vec2<bool>(var_1, false))), true, var_1, all(!(!vec3<bool>(var_1, true, true)))), arg_2);
    global0 = array<vec2<i32>, 15>();
    var var_3 = Struct_1(select(!(!select(var_2.a, vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a)), vec4<bool>(select(!var_1, true & var_2.a.x, true), true, true, func_2(Struct_1(var_2.a, arg_2), Struct_1(var_2.a, 271f), _wgslsmith_f_op_f32(-var_2.b))), !var_2.a), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-274f, -284f))));
    return Struct_1(vec4<bool>(true, !(!any(var_3.a.xxx)), !var_2.a.x, false), 875f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = func_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), 277f);
    let var_1 = vec4<i32>(-23888i, u_input.b, ((i32(-1i) * -u_input.b) << (u_input.a.x % 32u)) | (1i ^ -min(u_input.b, 2147483647i)), 0i & u_input.b);
    var var_2 = Struct_1(vec4<bool>(!(arg_0.a.x || var_0.a.x), arg_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b + -625f))));
    let var_3 = select(!vec4<bool>(var_2.b > _wgslsmith_f_op_f32(select(var_2.b, arg_0.b, var_2.a.x)), !arg_0.a.x || true, true, !(!var_2.a.x)), !func_1(_wgslsmith_add_u32(1u, u_input.a.x), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, arg_0.b))).a, arg_0.a);
    let var_4 = var_2.b;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(func_1(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-2530f, 554f), _wgslsmith_div_f32(-1275f, -846f)), -2104f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1519f, 984f), vec2<f32>(-1000f, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1547f, -523f))))), -641f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-938f, var_0.b)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, var_0.b))) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-431f, -2567f)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1(3716u, func_1(4294967295u, var_1.x, var_1.x).b, var_1.x).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_0.b))) + var_0.b));
    var var_2 = func_1(~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x))), -127f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-439f, _wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(325f - 978f), var_2.b))) - vec4<f32>(779f, -726f, var_2.b, -532f)));
    var_2 = var_0;
    let var_4 = func_1(559u >> (~u_input.a.x % 32u), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(814f)) - -240f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 37373u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(119075u, 71263u, 4294967295u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 32245u, 33208u, u_input.a.x)), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, ~113213u)), (~(vec4<u32>(56283u, 14063u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), reverseBits(0u), 1u, u_input.a.x)) << (abs(_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a.x, 4294967295u, 49242u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 0u)), reverseBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)))) % vec4<u32>(32u)), vec2<u32>(~13565u, 97213u), ~abs(abs(select(vec4<u32>(u_input.a.x, u_input.a.x, 11135u, 4294967295u), vec4<u32>(u_input.a.x, 1114u, 28169u, u_input.a.x), var_0.a.x))));
}

