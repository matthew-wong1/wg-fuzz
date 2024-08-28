struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    let var_0 = arg_1.b;
    var var_1 = Struct_2(arg_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(ceil(-222f)), _wgslsmith_f_op_f32(f32(-1f) * -2051f), _wgslsmith_f_op_f32(115f - 183f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 533f, 694f, 186f) * vec4<f32>(-239f, 1371f, -771f, 435f)) - vec4<f32>(-536f, 688f, 251f, -840f))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(369f, 944f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2002f), -1666f, !arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -899f)), true)));
    var var_2 = vec2<bool>(select(true, !select(false, false, true), false) && (!all(vec4<bool>(false, arg_1.a.x, false, true)) | any(!vec3<bool>(true, arg_1.a.x, arg_1.a.x))), false);
    var_1 = Struct_2(countOneBits(~var_0), vec4<f32>(_wgslsmith_f_op_f32(floor(263f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(max(-1760f, -435f))));
    var_1 = Struct_2(arg_2, var_1.b);
    return _wgslsmith_div_u32(abs(~4294967295u), ~(~1u >> (~_wgslsmith_div_u32(arg_2.x, var_1.a.x) % 32u)));
}

fn func_2() -> bool {
    var var_0 = 4294967295u | (_wgslsmith_clamp_u32(~abs(1u), ~_wgslsmith_add_u32(1u, 14536u), 15208u) ^ 1u);
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u >> (0u % 32u)) ^ vec3<u32>(24444u, func_3(countOneBits(69371u), Struct_1(vec3<bool>(true, false, false), vec3<u32>(66618u, 33520u, 4294967295u), 4294967295u, 1u), select(vec3<u32>(65968u, 21095u, 4294967295u), vec3<u32>(1u, 17533u, 0u), vec3<bool>(false, true, true)), 46584i), 1u), vec3<u32>(1u, 1u, 1u));
    let var_1 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), false), vec3<bool>(!all(vec4<bool>(true, true, true, false)), !select(true, true, false), (u_input.a >= -9382i) || all(vec3<bool>(true, true, false))), true), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(~1u), 1u, ~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, ~16299u), vec3<u32>(_wgslsmith_mod_u32(0u, 35345u), 32264u, 0u)), _wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_clamp_u32(~36731u, ~(~20314u), 8301u) << (1u % 32u), _wgslsmith_dot_vec3_u32(select(~reverseBits(vec3<u32>(0u, 8882u, 0u)), vec3<u32>(0u, ~4294967295u, ~0u), vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(22475u, 22466u, 41658u), select(vec3<u32>(10737u, 142441u, 12224u), vec3<u32>(78162u, 4294967295u, 16820u), false)))));
    var_0 = var_1.b.x;
    var_0 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(var_1.b.xy, select(var_1.b.xx, var_1.b.xy, var_1.a.zz) & var_1.b.zy), ~var_1.b.xz, !(!all(vec2<bool>(false, var_1.a.x)))), ~(~(~var_1.b.xz)));
    return all(!vec3<bool>(!(!var_1.a.x), var_1.a.x, any(!vec3<bool>(false, var_1.a.x, false))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(select(vec3<bool>(true, !any(vec4<bool>(true, arg_1, false, arg_1)), arg_1), vec3<bool>(func_2(), true, true), false), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 9u, arg_2.a.x) & vec3<u32>(0u, arg_2.a.x, 1u)), vec3<u32>(12883u, max(~0u, max(56771u, arg_2.a.x)), 4294967295u)), arg_2.a.x, arg_2.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-908f, _wgslsmith_f_op_f32(round(-1515f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1408f * _wgslsmith_f_op_f32(711f - arg_2.b.x))))));
    let var_2 = Struct_3(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.b.x))))))), abs(vec4<u32>(firstLeadingBit(abs(0u)), ~countOneBits(arg_2.a.x), arg_2.a.x, func_3(_wgslsmith_sub_u32(arg_2.a.x, 1u), Struct_1(var_0.a, arg_2.a, var_0.d, arg_2.a.x), firstTrailingBit(vec3<u32>(0u, 46193u, 1u)), _wgslsmith_div_i32(u_input.b, -30882i)))));
    var var_3 = Struct_2(abs(vec3<u32>(arg_2.a.x, var_2.a.a.x, 0u)), arg_2.b);
    let var_4 = 4294967295u;
    return all(!select(!(!vec4<bool>(true, true, arg_1, var_0.a.x)), select(!vec4<bool>(var_0.a.x, false, true, arg_1), select(vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(false, arg_1, var_0.a.x, false), vec4<bool>(false, var_0.a.x, false, false)), true), select(select(vec4<bool>(true, false, arg_1, false), vec4<bool>(true, false, arg_1, var_0.a.x), true), vec4<bool>(true, arg_1, false, false), var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~4294967295u, max(1u, 1u), ~firstLeadingBit(countOneBits(4294967295u)));
    let var_1 = vec4<bool>(true | func_1(_wgslsmith_mult_i32(0i, u_input.a), true, Struct_2(~var_0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-429f, 1000f, -1203f, -1309f))))), true, select(!all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true))), true);
    var var_2 = 0u;
    var var_3 = var_0;
    let var_4 = var_1.x;
    var var_5 = 0i > min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 23870i), vec2<i32>(u_input.b, -2147483647i))), ~(~(-1i))), u_input.a);
    var_5 = func_2();
    let var_6 = Struct_2(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-290f, 290f, 242f, 770f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1375f, -1944f, 389f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-897f, -252f, false)), -1474f, 1118f, -301f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(852f, -1347f, 732f, 2315f) - vec4<f32>(506f, -209f, -1398f, 414f)))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(45795u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b.x, 1391f, var_6.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(404f, 350f, true))))), var_6.b.wy, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 0u, 0u, var_3.x) & vec4<u32>(4652u, var_3.x, 8321u, 1u), vec4<u32>(var_3.x, 26445u, 39181u, 4294967295u)), ~vec4<u32>(56403u, 1u, var_0.x, var_6.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_div_u32(1u, var_6.a.x), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, 1u, 83056u)), ~1u), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_6.a.x, 55922u), vec4<u32>(var_0.x, 4294967295u, 1u, 17380u))))));
}

