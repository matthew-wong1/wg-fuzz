struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 2>();
    let var_0 = 0i;
    var var_1 = vec3<bool>(!any(select(select(arg_0.a, arg_0.a, vec2<bool>(true, arg_0.a.x)), vec2<bool>(false, arg_0.a.x), false)), any(!(!select(vec2<bool>(true, arg_0.a.x), vec2<bool>(arg_0.a.x, true), arg_0.a.x))), (!(!arg_0.a.x) | arg_0.a.x) | (_wgslsmith_add_u32(u_input.a, 4294967295u) > u_input.a));
    global0 = array<Struct_1, 2>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 2u)];
    return ~vec3<u32>(1u, 1u, abs(~_wgslsmith_mult_u32(115626u, 18310u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = ~(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 0i, -27582i), min(vec4<i32>(-2147483647i, -34008i, -1i, -27284i), vec4<i32>(-1i, -1i, -33145i, 8559i))), 0i) << (4294967295u % 32u));
    var var_1 = select(func_3(Struct_1(!select(arg_1.ww, vec2<bool>(arg_2.a.x, arg_2.a.x), vec2<bool>(true, arg_2.a.x)))), _wgslsmith_div_vec3_u32(~abs(reverseBits(vec3<u32>(u_input.a, 0u, 1u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, u_input.a, 4770u), ~(vec3<u32>(arg_3, 1u, arg_3) ^ vec3<u32>(4294967295u, 0u, 4294967295u)))), arg_1.wxw);
    let var_2 = arg_1.wz;
    var var_3 = Struct_1(!(!select(arg_0.a, !var_2, true)));
    return global0[_wgslsmith_index_u32(~arg_3, 2u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(func_2(func_2(Struct_1(select(vec2<bool>(arg_0.a.x, true), arg_1.a, vec2<bool>(arg_0.a.x, false))), select(vec4<bool>(arg_0.a.x, false, true, arg_1.a.x), !vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), arg_1.a.x), Struct_1(select(vec2<bool>(false, true), arg_1.a, true)), ~arg_2.x), !select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), !vec4<bool>(false, arg_1.a.x, false, false), true), func_2(Struct_1(vec2<bool>(true, arg_1.a.x)), vec4<bool>(true, arg_0.a.x, any(vec3<bool>(false, false, false)), true), global0[_wgslsmith_index_u32(arg_2.x, 2u)], 0u), 87963u).a);
    var var_1 = u_input.a;
    var_1 = ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, u_input.a), vec3<u32>(1u, 28251u, 4294967295u)) & _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(52192u, 45410u, 1u, 1u)), vec4<u32>(arg_2.x, 84385u, 11402u, 0u))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1735f, 419f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -627f), -177f))))), !arg_1.a.x));
    let var_3 = func_2(Struct_1(!func_2(Struct_1(vec2<bool>(arg_1.a.x, var_0.a.x)), vec4<bool>(true, false, false, arg_0.a.x), global0[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 2u)], 4294967295u).a), vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(35064i, -45648i, 0i, -2147483647i), vec4<i32>(1i, -1i, -2147483647i, -21430i)) << (0u % 32u)) == 38731i, all(!vec4<bool>(arg_1.a.x, false, var_0.a.x, arg_1.a.x)), !all(vec4<bool>(var_0.a.x, true, var_0.a.x, true)), false), arg_0, u_input.a);
    return Struct_1(!(!select(func_2(Struct_1(arg_0.a), vec4<bool>(false, arg_0.a.x, var_0.a.x, var_0.a.x), Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x)), 4294967295u).a, vec2<bool>(true, true), select(vec2<bool>(arg_1.a.x, var_0.a.x), vec2<bool>(arg_0.a.x, arg_1.a.x), var_3.a))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = 4294967295u;
    return _wgslsmith_div_f32(-1000f, arg_1.x);
}

fn func_1() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_5(func_4(Struct_1(vec2<bool>(true, true)), func_2(Struct_1(vec2<bool>(false, true)), vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(100185u, 2u)], u_input.a), max(vec2<u32>(744u, 1u), vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(582f, -1111f, 982f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1376f, 847f, 1000f), vec3<f32>(296f, 1140f, 244f), vec3<bool>(false, false, false))), vec3<bool>(true, true, true)))))), 426f);
    let var_1 = 1i;
    let var_2 = Struct_1(vec2<bool>(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), !func_4(global0[_wgslsmith_index_u32(~1u, 2u)], Struct_1(vec2<bool>(true, false)), select(vec2<u32>(21182u, 1u), vec2<u32>(0u, 0u), vec2<bool>(false, true))).a.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1137f) + vec3<f32>(var_0.x, 1000f, var_0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, -749f, var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-584f, var_0.x, 321f))))), vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2.a.x)), 498f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1329f), 875f))))));
    let var_3 = func_4(func_4(Struct_1(vec2<bool>(var_0.x < 119f, true & var_2.a.x)), Struct_1(vec2<bool>(any(vec2<bool>(false, false)), -364f <= var_0.x)), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(42870u, 1u)), u_input.a)), func_2(func_4(Struct_1(!var_2.a), func_2(func_4(global0[_wgslsmith_index_u32(0u, 2u)], Struct_1(vec2<bool>(false, var_2.a.x)), vec2<u32>(0u, u_input.a)), vec4<bool>(true, var_2.a.x, true, true), Struct_1(vec2<bool>(false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 22198u))), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_sub_u32(u_input.a, u_input.a))), vec4<bool>(true, firstLeadingBit(u_input.a) != _wgslsmith_div_u32(u_input.a, 47690u), true, false), func_2(Struct_1(select(vec2<bool>(true, var_2.a.x), var_2.a, var_2.a)), vec4<bool>(true, false, var_2.a.x, all(var_2.a)), Struct_1(!var_2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) >> (vec3<u32>(0u, u_input.a, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 1u))), _wgslsmith_div_u32(0u, u_input.a)), firstLeadingBit(~abs(vec2<u32>(u_input.a, 62788u) | vec2<u32>(4294967295u, u_input.a))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1115f, -224f, true)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-283f * -2048f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(155f, -1030f)) + _wgslsmith_f_op_f32(795f - -1446f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(-1262f, 1000f)))), _wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(abs(u_input.a), 2u)], vec3<f32>(_wgslsmith_f_op_f32(select(-488f, -179f, true)), 126f, -975f)))));
    var_0 = vec3<f32>(var_0.x, var_0.x, 1f);
    let var_1 = var_0.xy;
    var var_2 = -max(vec4<i32>(43101i, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 14005i), 31891i), -2147483647i, ~abs(23608i)), vec4<i32>(i32(-1i) * -60117i, 1i, 35241i, -6668i) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(0u, 32393u, u_input.a, 0u)) % vec4<u32>(32u)));
    var var_3 = -409f;
    global0 = array<Struct_1, 2>();
    let var_4 = reverseBits(vec4<i32>(~abs(0i), -11472i, var_2.x, _wgslsmith_add_i32(var_2.x, max(var_2.x, -2147483647i)) >> (select(~u_input.a, countOneBits(4294967295u), true) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(460f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)), _wgslsmith_f_op_f32(339f - -776f)))), firstTrailingBit(~var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -1275f)) - -763f) * _wgslsmith_f_op_f32(sign(-329f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, var_0.x, var_0.x, 155f) + vec4<f32>(var_1.x, 1518f, var_0.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, -321f, var_0.x, var_1.x)))))), u_input.a);
}

