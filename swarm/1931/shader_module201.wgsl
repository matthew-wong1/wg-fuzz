struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1280f)) * _wgslsmith_f_op_f32(f32(-1f) * -1734f)))), select(vec3<bool>(_wgslsmith_clamp_i32(arg_0.x, -3072i, arg_0.x) >= _wgslsmith_div_i32(33705i, -42538i), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), ~u_input.a < abs(u_input.a)), !vec3<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-781f, -1436f), vec2<f32>(164f, 322f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1059f, 711f) * vec2<f32>(382f, 1210f)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), ~(_wgslsmith_mod_u32(arg_1, 58141u) | 10474u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(f32(-1f) * -657f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-417f)))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(651f * -577f)))), (_wgslsmith_mult_u32(u_input.a, arg_1 ^ u_input.a) ^ ~(~arg_1)) >> (46823u % 32u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-667f, _wgslsmith_div_f32(var_0.c.a.x, -1838f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.a)) + _wgslsmith_f_op_vec2_f32(-var_0.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 808f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.a)))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(0i, 1i, -49168i, 754i), max(0u, u_input.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(154f, 807f) + vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1588f, -676f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1391f, 955f))))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(any(vec4<bool>(false, false, true, true)), true, true)), vec2<bool>(true, !all(vec2<bool>(true, true))), false), 46769u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), 1868f));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-388f, -370f) - vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), !select(!vec3<bool>(var_0.b.x, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_0.b.x), var_0.b.x), !select(vec3<bool>(false, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -726f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, var_0.a.x)))), var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(59763u, 4201u), abs(vec2<u32>(var_0.c, 59738u))), select(vec2<u32>(1u, u_input.a), abs(vec2<u32>(3246u, u_input.a)), true))), var_0.a.x, (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.c, var_0.c, 0u), vec4<u32>(u_input.a, 75217u, var_0.c, 1u)) & (_wgslsmith_clamp_u32(68211u, 0u, u_input.a) ^ ~u_input.a)) | 38721u);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-690f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), 1080f, _wgslsmith_f_op_f32(-1f));
    var var_4 = (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-10388i, -42406i, 45628i, 2147483647i), vec4<i32>(-1i, -1107i, 1i, -27328i)), ~1i, ~(-4302i)), 1i) ^ 1i) << (4373u % 32u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.zx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yy * var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zy))), select(var_0.b, var_2.b.yz, var_2.b.yz))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1954f, var_3.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3.x) + vec2<f32>(963f, -1042f)))))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, -1560f, var_0.x, 107f)), vec4<f32>(var_0.x, -908f, -464f, 424f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-412f, 672f, var_0.x, 692f), vec4<f32>(568f, 1133f, 595f, 171f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(600f, 1314f, var_0.x, -149f) - vec4<f32>(367f, var_0.x, 1089f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(var_0.x, -274f), _wgslsmith_f_op_f32(max(-2144f, 503f)))) - vec4<f32>(-1195f, var_0.x, _wgslsmith_f_op_f32(select(-433f, _wgslsmith_f_op_f32(var_0.x - var_0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) + -629f))));
    let var_2 = arg_0 && (u_input.a > u_input.a);
    var var_3 = ~_wgslsmith_dot_vec4_i32(~abs(-vec4<i32>(-69501i, 44953i, -15460i, -30785i)), -(~vec4<i32>(-40322i, 8681i, -1i, -2147483647i)));
    let var_4 = ~(~min(~1u, ~4294967295u ^ u_input.a));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))), vec3<bool>(true || any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), func_1(true), true), vec3<bool>(true, true, true));
    let var_1 = select(_wgslsmith_add_i32(-12398i, 1i), -26494i >> (u_input.a % 32u), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1223f, 1000f), vec2<f32>(1051f, -552f))) - vec2<f32>(-283f, 1215f)) * vec2<f32>(502f, _wgslsmith_f_op_f32(-327f - -334f))))));
    var_0 = vec3<bool>(all(vec4<bool>(_wgslsmith_f_op_f32(floor(103f)) < var_2.x, var_0.x, (4294967295u <= u_input.a) && var_0.x, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), true)))), !(!any(vec3<bool>(var_0.x, true, true))), var_0.x);
    var_2 = vec2<f32>(917f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    var var_3 = _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a, u_input.a)), select(~32181u, 0u, true), u_input.a) & u_input.a);
    var var_4 = !vec3<bool>(all(vec2<bool>(true, any(vec2<bool>(false, false)))), var_0.x, true);
    var_4 = select(vec3<bool>(var_4.x, true, false), vec3<bool>(!(!(var_4.x && false)), true, true), select(!vec3<bool>(all(vec4<bool>(var_0.x, false, var_4.x, var_0.x)), all(vec3<bool>(false, true, var_4.x)), var_4.x), vec3<bool>(var_1 <= var_1, !select(var_0.x, true, var_4.x), var_4.x), !var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~0u, u_input.a) >> (~(vec2<u32>(u_input.a, 876u) >> (vec2<u32>(27983u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))), ~(-26239i) | -(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -8743i, var_1, -93811i), vec4<i32>(var_1, var_1, var_1, 0i))), 1u, -40713i & var_1, firstTrailingBit(~1i << (u_input.a % 32u)));
}

