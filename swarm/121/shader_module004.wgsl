struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1292f, -1039f) - vec2<f32>(1000f, -295f)), vec2<f32>(610f, -437f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1626f, 222f), vec2<f32>(1113f, -1083f), true))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a))) - var_0.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a, vec2<f32>(var_0.a.x, -311f)))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -768f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1145f)))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(911f, 1000f, true))))));
    let var_1 = abs(71496i);
    let var_2 = u_input.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1008f), 835f)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * -394f))), _wgslsmith_f_op_f32(floor(2235f))))));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-u_input.c.zy)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-553f, var_0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -603f))))));
    var var_1 = Struct_1(u_input.c ^ select(u_input.c, max(vec4<i32>(2147483647i, 0i, u_input.d, 4082i), -u_input.c), _wgslsmith_f_op_f32(-307f + var_0.a.x) <= _wgslsmith_f_op_f32(step(206f, var_0.a.x))), vec3<bool>(true, true, true), !vec3<bool>(true, ~2236u < _wgslsmith_add_u32(u_input.a.x, 68595u), all(vec2<bool>(false, true))), firstTrailingBit(countOneBits(~(~vec3<u32>(0u, 1u, 115085u)))), !select(vec2<bool>(false, false), vec2<bool>(all(vec3<bool>(false, true, true)), false), true));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), vec2<f32>(-1058f, 1067f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, var_0.a.x))), var_0.a)))));
    let var_2 = var_1.d.x < 4294967295u;
    return Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(698f, -135f) * -1527f)))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = abs(max(-18765i, (_wgslsmith_mod_i32(u_input.c.x, -2147483647i) & ~(-28203i)) << (~_wgslsmith_mult_u32(u_input.a.x, 37266u) % 32u)));
    var var_1 = ~u_input.a;
    var var_2 = func_2();
    var_1 = ~vec2<u32>(select(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 682u)) << (0u % 32u), min(var_1.x & var_1.x, min(var_1.x, var_1.x)), true), var_1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + arg_0)))), -1848f, arg_0)));
    return select((_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 53361u, 4294967295u), vec4<u32>(var_1.x, u_input.a.x, 55440u, 0u), vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x)), vec4<u32>(var_1.x, u_input.a.x, u_input.a.x, 1u)) >> (vec4<u32>(~u_input.a.x, 14238u, 0u, u_input.a.x) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(~var_1.x, ~1u, u_input.a.x, u_input.a.x), ~(vec4<u32>(u_input.a.x, var_1.x, 0u, var_1.x) >> (vec4<u32>(var_1.x, 55941u, 0u, u_input.a.x) % vec4<u32>(32u)))), abs(~abs(vec4<u32>(74040u, 1u, 25859u, 1u))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = min(_wgslsmith_mult_u32(u_input.a.x, arg_1.x | 0u), 1u);
    let var_1 = arg_2.b.x;
    let var_2 = arg_2.a.zyw;
    let var_3 = vec3<bool>(var_1 && true, arg_2.b.x, true);
    let var_4 = ~(-(~var_2 >> ((arg_2.d >> (vec3<u32>(85639u, arg_2.d.x, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)))) & _wgslsmith_sub_vec3_i32(select(vec3<i32>(1915i | u_input.b.x, ~arg_2.a.x, arg_2.a.x), var_2, !(u_input.c.x >= u_input.b.x)), vec3<i32>(u_input.b.x, _wgslsmith_add_i32(20054i, u_input.b.x >> (arg_1.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.a.x), _wgslsmith_clamp_vec2_i32(var_2.xy, vec2<i32>(var_2.x, 2147483647i), vec2<i32>(u_input.d, arg_2.a.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec2<f32>(1f, 1f)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-487f)))), Struct_1(u_input.c, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, false))), true), ~(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 1u)) << (abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), u_input.b.x < 9479i), vec2<bool>(true, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~max(_wgslsmith_mod_i32(-1i, var_0.a.x) & 2147483647i, ~min(-1i, var_0.a.x)));
}

