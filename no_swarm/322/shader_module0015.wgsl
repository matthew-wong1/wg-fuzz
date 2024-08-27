struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: bool = true;

var<private> global2: i32;

var<private> global3: u32 = 0u;

var<private> global4: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = true;
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(455f, -505f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -113f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1574f)) * _wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(min(-514f, _wgslsmith_f_op_f32(ceil(-183f))))), -44865i > (-6389i | abs(u_input.a.x)));
    let var_1 = vec4<f32>(var_0.a.x, var_0.a.x, var_0.b.x, var_0.a.x);
    global4 = select(22623u, 33997u, any(!vec4<bool>(false, false, false, all(vec3<bool>(true, var_0.c, false)))));
    let var_2 = var_0.c;
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    var var_0 = arg_0.c;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(sign(arg_0.b)), arg_0.c);
    global4 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(32469u, ~(~u_input.b), countOneBits(u_input.b) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 90861u, 17422u))), 57711u) | firstLeadingBit(4294967295u << (u_input.b % 32u));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 40294u, u_input.b), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(25049u, 12216u, 0u), vec3<u32>(u_input.b, 11578u, u_input.b))), _wgslsmith_sub_vec3_u32(~vec3<u32>(114249u, 18004u, 4294967295u), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))), select(vec3<u32>(u_input.b, reverseBits(u_input.b), _wgslsmith_div_u32(0u, u_input.b)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(63466u, 0u, 17712u), vec3<u32>(u_input.b, u_input.b, u_input.b)), var_1.c)), (!arg_0.c != !(!arg_1)) || !(!any(vec3<bool>(var_1.c, arg_0.c, arg_1))), select(vec3<bool>(false, any(!vec4<bool>(arg_0.c, var_1.c, var_1.c, var_1.c)), arg_1), select(!(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), !vec3<bool>(true, var_1.c, true), _wgslsmith_f_op_f32(f32(-1f) * -796f) > var_1.a.x), 4294967295u != ~(u_input.b ^ 29736u)));
    return vec4<bool>(!all(!var_2.c.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f + _wgslsmith_div_f32(arg_0.b.x, -251f))) >= 1103f, true, false);
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<u32>(~(firstTrailingBit(27990u) & 1u) | 1u, u_input.b << ((u_input.b | ~u_input.b) % 32u), ~_wgslsmith_add_u32(~(~u_input.b), 4294967295u));
    let var_1 = all(!(!vec2<bool>(all(vec4<bool>(true, false, false, false)), true)));
    let var_2 = var_1;
    global0 = array<Struct_1, 25>();
    let var_3 = ~(-47970i);
    return select(vec4<bool>(false, true | select(any(vec3<bool>(false, false, var_1)), true, var_1), !any(!vec4<bool>(var_2, false, true, var_1)), all(vec4<bool>(var_2, var_1 || var_1, true, var_2))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, 165f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, -1384f, -1000f)), var_2), func_3()), select(!(!vec4<bool>(true, var_1, var_1, var_1)), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1015f) - vec2<f32>(1395f, 995f)), vec3<f32>(1f, 1f, 1f), any(vec3<bool>(true, false, true))), var_1), true));
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = func_2();
    global0 = array<Struct_1, 25>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 25u)];
    let var_2 = Struct_1(~vec3<u32>(min(var_1.a.x, 16756u) ^ 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.a.x, 0u), vec3<u32>(0u, 1u, u_input.b) ^ var_1.a), ~abs(0u)), false, vec3<bool>(-(~arg_0.x) > -58236i, (reverseBits(4294967295u) << ((var_1.a.x | 47001u) % 32u)) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, var_1.a.x), vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, var_1.a.x)), !var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-344f + 483f), -332f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(262f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(729f, _wgslsmith_f_op_f32(f32(-1f) * -1010f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(265f, -373f)))), 589f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-795f, 1042f), _wgslsmith_f_op_f32(min(1413f, 921f))))))) + vec4<f32>(-416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(floor(1032f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1707f, -446f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1105f)) + _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-3104f, -173f) - -2264f))));
    return func_4(Struct_2(_wgslsmith_f_op_vec2_f32(max(var_3.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_3.zw, var_3.yy, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(415f, 1173f)), true)))), var_3.wzy, any(vec2<bool>(all(vec4<bool>(false, false, true, false)), -355f == var_3.x))), func_2().x).zww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~vec3<u32>(~u_input.b, 0u, 25858u)), true, select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), false), select(select(func_1(u_input.a.zxw), func_2().xyx, true), func_4(Struct_2(vec2<f32>(-1000f, -1411f), vec3<f32>(-303f, -958f, -127f), false), true).zxy, !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))));
    global4 = var_0.a.x >> (reverseBits(u_input.b) % 32u);
    global3 = 5845u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-875f, -629f, 1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-548f, 990f, -615f) + vec3<f32>(222f, -392f, -1435f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1102f, -646f, -1173f), vec3<f32>(-1000f, -1381f, -112f)), vec3<bool>(false, true, true))), all(!vec2<bool>(false, var_0.b)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2138f)) * _wgslsmith_f_op_f32(1000f * 1430f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f - 2051f)), _wgslsmith_f_op_f32(f32(-1f) * -2058f))), true);
    let var_2 = vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(floor(var_1.a.x))), 1940f, _wgslsmith_f_op_f32(-220f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1620f - -665f), 1f)));
    global4 = min(1u, countOneBits(countOneBits(_wgslsmith_mult_u32(var_0.a.x, abs(77523u)))));
    var var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.zy), vec4<f32>(_wgslsmith_f_op_f32(728f * _wgslsmith_f_op_f32(var_1.a.x + var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a.x, 1611f)), 1280f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(432f)), _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1646f * _wgslsmith_f_op_f32(-248f + -1482f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.b.x, -1373f)), _wgslsmith_f_op_f32(abs(1078f)), var_1.c))))));
}

