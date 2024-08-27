struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.c.a.wyz));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1700f, arg_0.a.c.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-777f, arg_0.a.d.x))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_0.a.c.a.x)))) - arg_0.a.d.xx) + vec2<f32>(arg_0.a.d.x, -1000f));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 39350u, u_input.d), arg_0, Struct_1(vec4<f32>(-360f, 1000f, 827f, 356f), 75901u), vec3<f32>(-335f, 429f, -525f))), 0u)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(416f - 331f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(767f, -798f), vec2<f32>(-1722f, -1218f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(516f, -159f) * vec2<f32>(1614f, -357f))))))));
    let var_1 = Struct_2(~vec4<u32>(u_input.d, reverseBits(u_input.d), ~firstLeadingBit(arg_0.x), ~(~u_input.d)), arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(260f))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1987f), -1588f)), u_input.d), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1514f + 1124f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, 672f), var_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_2(vec4<u32>(45061u, 6547u, 40688u, 51678u), arg_0, Struct_1(vec4<f32>(784f, -1296f, var_0.x, var_0.x), u_input.d), vec3<f32>(var_0.x, var_0.x, 1136f))), arg_0.x)).x - _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = var_1.d.yz;
    var_0 = vec2<f32>(-1000f, -1000f);
    var var_2 = true;
    return ~(~(~(firstTrailingBit(1u) << (var_1.a.x % 32u))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = abs(func_2(~firstTrailingBit(vec2<u32>(21953u, u_input.d))));
    var_0 = ~u_input.d;
    var_0 = ~(~(~_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(68118u, u_input.d), vec2<u32>(u_input.d, u_input.d)), u_input.d)));
    var var_1 = Struct_2(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(23620u, u_input.d, u_input.d, u_input.d), vec4<u32>(0u, u_input.d, u_input.d, u_input.d) | vec4<u32>(65677u, 64978u, 64027u, u_input.d)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, 22002u, u_input.d) & vec4<u32>(18055u, u_input.d, 3073u, u_input.d), vec4<u32>(u_input.d, 15353u, u_input.d, u_input.d)), vec4<u32>(~u_input.d, ~u_input.d, firstLeadingBit(u_input.d), u_input.d))), ~reverseBits(vec2<u32>(4294967295u, u_input.d & u_input.d)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(353f, 841f, -1627f, -287f) * vec4<f32>(1032f, 956f, -1066f, -1193f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, -1235f, 907f, 2929f))), vec4<f32>(_wgslsmith_div_f32(-563f, 818f), 1606f, _wgslsmith_f_op_f32(-414f * -1604f), -478f))), u_input.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(113f, 844f, -913f), vec3<f32>(-336f, 135f, -1207f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, -1189f, 254f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1623f), _wgslsmith_f_op_f32(-1025f - -1344f), _wgslsmith_f_op_f32(-309f * -599f))))));
    let var_2 = Struct_2(var_1.a >> (_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(var_1.c.b, 53613u, 47573u, u_input.d)), var_1.a) % vec4<u32>(32u)), var_1.a.yz, var_1.c, vec3<f32>(var_1.c.a.x, 1244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.x))));
    return var_2;
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = max(-u_input.b.xx, vec2<i32>(i32(-1i) * -countOneBits(u_input.b.x), -39498i));
    var var_1 = arg_0.a.a.ww;
    var_1 = vec2<u32>(abs(~(~(u_input.d & 31529u))), ~(firstTrailingBit(_wgslsmith_mult_u32(19166u, var_1.x)) ^ 1u));
    var var_2 = ~(-u_input.c);
    var var_3 = Struct_2(countOneBits(~func_1(var_0).a), ~(~(min(vec2<u32>(24645u, var_1.x), vec2<u32>(var_1.x, var_1.x)) & max(arg_0.a.a.zw, vec2<u32>(43012u, 46051u)))), func_1(vec2<i32>(var_0.x, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1879i, var_2.x), vec2<i32>(1i, var_0.x))))).c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-738f, _wgslsmith_f_op_f32(min(arg_0.a.d.x, 1411f)), -738f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(620f)), _wgslsmith_f_op_f32(abs(330f)), _wgslsmith_f_op_f32(-arg_0.a.c.a.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.a.x, -260f, -1201f)), vec3<f32>(arg_0.a.d.x, arg_0.a.c.a.x, -701f))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, func_4(Struct_3(func_1(-vec2<i32>(u_input.a.x, u_input.c.x)))));
    let var_1 = abs(~(firstLeadingBit(vec4<u32>(u_input.d, 0u, u_input.d, 4294967295u) | vec4<u32>(0u, 40056u, 0u, 39077u)) >> (select(~vec4<u32>(20802u, u_input.d, u_input.d, u_input.d), ~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), true) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(max(604f, 333f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(363f, 725f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(547f)))) - 185f), vec3<u32>(~var_1.x, var_1.x >> ((89009u & reverseBits(u_input.d)) % 32u), 35754u | ~(var_1.x | 22272u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1341f * 1130f) - _wgslsmith_f_op_f32(floor(1755f))))), _wgslsmith_sub_u32(firstLeadingBit(1u), firstLeadingBit(countOneBits(u_input.d))));
}

