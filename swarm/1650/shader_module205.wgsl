struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(min(830f, -1443f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-645f, -658f)))))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1488f, var_0.a, true))))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(abs(var_0.a)));
    var var_1 = _wgslsmith_dot_vec3_u32(min(firstTrailingBit(~(~vec3<u32>(0u, 36066u, 17352u))), firstTrailingBit(~vec3<u32>(1u, 1u, 1u))), _wgslsmith_add_vec3_u32(select(~vec3<u32>(0u, 1u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(101425u, 4294967295u, 64543u), vec3<u32>(98121u, 1u, 44308u)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))) | select(vec3<u32>(1u, 1u, 1u), vec3<u32>(44670u, 33736u, 27751u), true), ~abs(abs(vec3<u32>(63426u, 78431u, 4294967295u)))));
    let var_2 = vec4<i32>(-23350i, min(~(-2147483647i), _wgslsmith_clamp_i32(u_input.a << (firstLeadingBit(4294967295u) % 32u), 20649i, u_input.a)), u_input.a, u_input.a);
    return 1022f;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, -1000f, arg_1.a)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, 1000f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-243f, 1000f, arg_0.a), vec3<f32>(113f, arg_1.a, -250f), false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -405f), arg_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_0.a), vec3<f32>(arg_0.a, -251f, arg_0.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 1484f, arg_1.a) - vec3<f32>(arg_0.a, arg_1.a, -1886f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(732f, -659f, arg_1.a))) - vec3<f32>(-793f, arg_1.a, arg_1.a)))));
    var var_1 = u_input.a;
    var var_2 = abs(vec2<i32>(u_input.a, select(select(27063i, u_input.a, false) << ((arg_2 >> (47478u % 32u)) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(54431i, -11384i)), u_input.a | u_input.a), all(!vec4<bool>(false, false, arg_1.b.a.a.x, true)))));
    let var_3 = Struct_1(arg_1.b.b.a);
    var_2 = vec2<i32>(1i, -9777i);
    return true;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_3(all(arg_0.yz) & !(!any(vec4<bool>(false, arg_0.x, arg_0.x, false))), _wgslsmith_sub_i32(u_input.a, u_input.a), Struct_1(vec4<bool>(true, arg_0.x, true, arg_0.x)), -728f);
    var_0 = arg_0.x != func_4(Struct_5(-1059f), Struct_4(_wgslsmith_f_op_f32(func_3()), Struct_2(var_1.c, Struct_1(vec4<bool>(true, true, arg_0.x, false)))), 0u);
    var var_2 = Struct_3(var_1.a, reverseBits(u_input.a) >> (_wgslsmith_mod_u32(1u >> (1u % 32u), firstLeadingBit(max(44017u, 13779u))) % 32u), Struct_1(vec4<bool>(any(vec4<bool>(true, var_1.c.a.x, var_1.a, false)) | true, arg_0.x, true, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-812f, _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(var_1.d + -307f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(858f))))));
    var_2 = Struct_3(((_wgslsmith_f_op_f32(var_2.d * -1712f) != _wgslsmith_f_op_f32(-var_2.d)) | false) && true, var_2.b, Struct_1(vec4<bool>(all(!vec3<bool>(false, false, var_2.c.a.x)), var_2.a, select(true, var_2.c.a.x | true, !var_1.c.a.x), arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(471f, var_1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(select(var_2.d, var_1.d, false))))), 164f)));
    return 631f;
}

fn func_1() -> bool {
    return !(any(vec2<bool>(true, true)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, false)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -229f), -1672f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(4294967295u) <= (~(~_wgslsmith_clamp_u32(1u, 1u, 0u)) << (reverseBits(~(~9210u)) % 32u));
    var_0 = all(vec4<bool>(true, true, true, true));
    let var_1 = countOneBits(~1u);
    var_0 = false;
    var_0 = true;
    let var_2 = firstTrailingBit(0u);
    var_0 = true;
    var_0 = func_1();
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1179f, -220f))) - -1412f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-643f)))))), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(select(var_3.a, _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(-var_3.a)), false || all(var_3.b.a.a))), ~vec2<u32>(var_1, var_1), _wgslsmith_dot_vec2_i32(vec2<i32>(-1852i, -1i), vec2<i32>(~(u_input.a & u_input.a), u_input.a)));
}

