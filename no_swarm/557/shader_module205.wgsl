struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = false;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1773f, 792f)), _wgslsmith_f_op_f32(-778f * _wgslsmith_f_op_f32(-1734f - 1183f)), _wgslsmith_f_op_f32(438f * 410f))), vec3<f32>(-1771f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(614f, -375f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1063f, _wgslsmith_f_op_f32(992f + 1014f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -2815f, 633f, var_2.x) * vec4<f32>(var_2.x, -1723f, var_2.x, var_2.x)))))), var_2.x);
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1278f, var_3.a.x, -778f, 584f)))), _wgslsmith_f_op_f32(sign(-242f)));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), 302f)), 393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(select(685f, -847f, var_0))) + var_2.x) + _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 1141f))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_mod_u32(~89189u, ~_wgslsmith_div_u32(select(67333u << (u_input.b % 32u), 55337u, u_input.b > 49575u), _wgslsmith_mult_u32(u_input.d, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, -1000f, -303f, 175f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(734f, 885f, 397f, 112f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-746f, 167f) * 1924f));
    let var_2 = any(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), false), true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(f32(-1f) * -957f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1195f, _wgslsmith_f_op_f32(f32(-1f) * -1471f), var_2 && var_2))) - -749f), var_1, _wgslsmith_clamp_u32(~u_input.b, _wgslsmith_mod_u32(1u, u_input.d), countOneBits(~100625u)), Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x * var_1.b)))), _wgslsmith_f_op_f32(-var_1.b)));
    var_3 = Struct_2(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(func_3()).x, var_3.e, var_0, Struct_1(vec4<f32>(1072f, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_3.e.a.x)), _wgslsmith_f_op_f32(-595f - _wgslsmith_div_f32(304f, var_1.b))), _wgslsmith_f_op_f32(1110f + var_1.b)));
    return !select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(select(!vec2<bool>(var_2, true), vec2<bool>(false, true), all(vec2<bool>(true, var_2))), select(vec2<bool>(true, true), vec2<bool>(var_2, false), !vec2<bool>(false, var_2)), vec2<bool>(var_2 && false, false | var_2)), var_2);
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = ~u_input.a.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, min(26197i, u_input.a.x)), u_input.a.x, 0i, u_input.a.x), vec4<i32>(abs(u_input.a.x), u_input.a.x, select(10204i | u_input.c.x, ~1i, false | var_0.x), u_input.c.x >> (max(u_input.b, 48919u) % 32u)));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(656f * -317f), -1507f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(873f, 1775f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1444f - 1148f))) - -357f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -244f))), _wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)))));
    var var_3 = -6333i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 2078f, -587f, -296f))))), _wgslsmith_f_op_f32(sign(var_2.x)));
    return ~vec2<u32>(~_wgslsmith_mod_u32(countOneBits(4294967295u), ~21607u), ~select(2942u, 1u << (u_input.d % 32u), var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f * arg_0.a.x)))) - _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(253f + arg_0.a.x))) + 173f));
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1230f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1533f, var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(floor(var_0)))), 1000f), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(694f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)))), -490f, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-906f, -1172f, 671f, 1841f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2856f, -307f, -716f, 555f))), -538f), abs(u_input.b >> (113154u % 32u)) ^ u_input.b, func_1()), u_input.b, func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -587f, 1085f, 171f)), -641f), firstLeadingBit(~u_input.b), _wgslsmith_mod_vec2_u32(~vec2<u32>(638u, u_input.b), abs(vec2<u32>(u_input.d, 5491u)))), max(~min(u_input.d, u_input.b), ~1u), ~vec2<u32>(u_input.b ^ 0u, _wgslsmith_clamp_u32(4294967295u, u_input.b, 4481u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-968f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.e.b))), -2147483647i >= u_input.c.x))));
    let var_3 = any(!vec2<bool>(true, true && select(true, true, false)));
    var_0 = 1u;
    let var_4 = vec3<u32>(~(~u_input.d), ~_wgslsmith_sub_u32(~(u_input.d << (1u % 32u)), _wgslsmith_sub_u32(u_input.d, var_1.d)), ~4294967295u);
    var_0 = _wgslsmith_dot_vec2_u32(min(var_4.yy, select(vec2<u32>(0u, 48278u), var_4.yz, true)), abs(reverseBits(var_4.xy)) >> (vec2<u32>(u_input.d, reverseBits(12476u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

