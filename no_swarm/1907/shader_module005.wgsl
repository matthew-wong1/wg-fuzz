struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(countOneBits(~15678u), u_input.a.x)), Struct_1(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 46475u, arg_1.a, arg_1.a), vec4<u32>(arg_1.a, 0u, u_input.a.x, u_input.a.x)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -1155f)))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-354f, -1357f) + vec2<f32>(1081f, 2065f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, 1364f) + vec2<f32>(-370f, 703f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-403f, -298f))))))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_1(~u_input.a.x);
    var var_1 = arg_0 | (arg_0 != arg_0);
    let var_2 = u_input.a.x;
    let var_3 = Struct_4(!all(vec4<bool>(any(vec2<bool>(true, arg_0)), true, !arg_0, any(vec2<bool>(true, true)))), arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, -2143f, true)), true, Struct_3(var_0, var_0));
    var_1 = _wgslsmith_f_op_f32(min(arg_1.x, 525f)) < var_3.b;
    return var_3.e;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    return func_3(!(!(arg_1 > _wgslsmith_f_op_f32(min(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(453f + arg_1), arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -569f) - vec2<f32>(587f, arg_1)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-191f, -340f)))))))).a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(func_4(func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(false, Struct_1(25455u))))), _wgslsmith_f_op_f32(round(839f))), func_3(any(vec3<bool>(true, u_input.a.x <= u_input.a.x, any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(865f, -704f), vec2<f32>(-125f, 1412f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1236f, -668f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1694f, -2298f) * vec2<f32>(490f, 132f))))).b);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(9509u, ~firstLeadingBit(21862u), min(4294967295u, 44104u) >> (~u_input.a.x % 32u), 0u) | vec4<u32>(~u_input.a.x, func_4(Struct_3(Struct_1(4294967295u), var_0.a), -1667f).a & _wgslsmith_clamp_u32(var_0.b.a, 4294967295u, 1u), 1u, 0u), vec4<u32>(arg_0.x, _wgslsmith_add_u32(arg_0.x >> (arg_0.x % 32u), ~4294967295u), ~(~0u), ~34396u) << (~(~(~vec4<u32>(48458u, 1u, 1u, arg_0.x))) % vec4<u32>(32u)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f * -1667f) + _wgslsmith_f_op_f32(select(-464f, -894f, true))), -759f)));
    var var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return Struct_2(Struct_1(~1u << (~abs(arg_0.x) % 32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1291f, -170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1190f, -775f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(309f)), 711f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1000f, -958f, true)))) - 845f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2348f, 504f, 360f, 1062f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -636f), 1375f, _wgslsmith_f_op_f32(max(1948f, 1232f)), _wgslsmith_f_op_f32(689f * 1536f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 358f, -2011f, 355f) + vec4<f32>(-448f, 1067f, -1974f, -727f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2801f, -1641f, 1324f, 553f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -242f) + vec4<f32>(var_1.x, var_1.x, -725f, 1814f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(258f, var_1.x, 131f, 1226f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-909f, 1531f, -991f, 1058f), vec4<f32>(-778f, -648f, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-145f * var_1.x), var_1.x, -1712f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(163f, var_1.x, -2057f, var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, var_1.x, var_1.x, -1037f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1137f, 200f, var_1.x, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-195f, var_1.x)))), 777f, _wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(true, func_4(Struct_3(arg_1.a, Struct_1(arg_2.a)), 242f))).x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1337f, 1430f, 576f, -2262f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, -208f, -1535f, var_1.x) + vec4<f32>(-1001f, 298f, 378f, -992f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1861f, var_1.x, var_1.x, var_1.x)))))))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(562f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) - -330f))), true, true, any(vec3<bool>(true, true, true)));
    var var_1 = Struct_4(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(645f)))))), _wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1535f, 424f)) * -288f))), true, Struct_3(Struct_1(countOneBits(u_input.a.x)), func_5(firstLeadingBit(30835u), func_1(~u_input.a), func_1(u_input.a).a)));
    let var_2 = !(!vec3<bool>(!(959f >= var_1.b), !(!var_1.a), select(var_1.a || true, true, select(true, false, true))));
    var_0 = vec4<bool>(var_1.d, abs(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) != ~countOneBits(u_input.a.x << (u_input.a.x % 32u)), -20516i <= _wgslsmith_clamp_i32(47445i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 65715i)), ~vec2<i32>(0i, 2147483647i)), max(-63975i, -28400i)), true);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(~0i, -1i), _wgslsmith_add_i32(~55130i, 1i) << ((_wgslsmith_mod_u32(13703u, u_input.a.x) ^ 4294967295u) % 32u)), 1693f, abs(_wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(2147483647i, -1i, -1i, -1i)), vec4<i32>(-2147483647i, 18194i, 0i, -24945i) << (vec4<u32>(36793u, u_input.a.x, var_1.e.b.a, u_input.a.x) % vec4<u32>(32u)))));
}

