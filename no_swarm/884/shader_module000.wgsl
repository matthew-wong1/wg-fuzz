struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(123f, -1469f, arg_1.c.x, arg_1.c.x) - vec4<f32>(arg_1.e, 1181f, arg_1.e, 1035f)))))), vec4<bool>(any(!(!vec4<bool>(arg_1.d.x, true, true, false))), arg_0.x, true, arg_0.x)));
    let var_1 = Struct_4(firstLeadingBit((arg_1.b & ~u_input.a) << (~_wgslsmith_clamp_u32(36235u, 86877u, 15526u) % 32u)), Struct_3(arg_1), arg_1.c, all(select(vec3<bool>(true, arg_0.x, arg_1.d.x), arg_0, true)) & arg_1.d.x, ~u_input.d);
    let var_2 = 37016u;
    var var_3 = -(-select(var_1.b.a.a.wzw, vec3<i32>(u_input.b.x, var_1.b.a.a.x, var_1.b.a.a.x), arg_0) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_2, u_input.c, 1382u), ~vec3<u32>(u_input.a, 0u, 55022u)) % vec3<u32>(32u))) | var_1.b.a.a.xxw;
    var_3 = vec3<i32>(firstTrailingBit(-42153i), -17599i, i32(-1i) * -22333i);
    return var_1.b.a.b;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~(~(vec3<u32>(19032u, ~13000u, func_3(vec3<bool>(false, false, true), arg_0)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 37935u, arg_0.b), arg_2.wzx)));
    var var_1 = Struct_3(arg_0);
    var var_2 = Struct_1(max(vec4<i32>(u_input.b.x, arg_0.a.x, -56368i, _wgslsmith_add_i32(~(-42794i), _wgslsmith_dot_vec2_i32(vec2<i32>(36599i, 40901i), var_1.a.a.xz))), _wgslsmith_mult_vec4_i32(arg_0.a & arg_0.a, ~(~vec4<i32>(-10797i, -2147483647i, var_1.a.a.x, -2147483647i)))), ~func_3(select(select(vec3<bool>(arg_0.d.x, var_1.a.d.x, false), vec3<bool>(false, arg_0.d.x, var_1.a.d.x), true), !vec3<bool>(arg_0.d.x, var_1.a.d.x, false), select(vec3<bool>(var_1.a.d.x, var_1.a.d.x, false), vec3<bool>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x), vec3<bool>(arg_0.d.x, false, arg_0.d.x))), arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.c)) + arg_0.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1.a.c - _wgslsmith_f_op_vec4_f32(-var_1.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.x, arg_0.e, 641f, 1000f), var_1.a.c)))))), select(vec2<bool>(false, !any(vec4<bool>(var_1.a.d.x, arg_0.d.x, false, true))), !select(!arg_0.d, vec2<bool>(var_1.a.d.x, false), all(vec2<bool>(false, arg_0.d.x))), select(!(arg_0.d.x && var_1.a.d.x), select(true, arg_0.d.x, var_1.a.d.x) & any(arg_0.d), !all(vec4<bool>(false, false, arg_0.d.x, true)))), -116f);
    var_2 = Struct_1(arg_0.a, abs(arg_2.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1996f, 1060f, var_1.a.c.x, arg_1))), _wgslsmith_f_op_vec4_f32(-var_1.a.c)))), var_2.d, _wgslsmith_f_op_f32(floor(-255f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-828f, arg_0.c.x, arg_0.d.x)));
}

fn func_1() -> Struct_5 {
    let var_0 = -274f;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(-780f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f - -1249f) * 210f))))));
    var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - -1490f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) + _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_div_u32(85u, u_input.c) <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.d, u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(37519i, -1i, u_input.b.x, -83115i), u_input.d, vec4<f32>(-231f, var_0, var_0, var_0), vec2<bool>(true, true), 545f), _wgslsmith_f_op_f32(-var_0), ~vec4<u32>(u_input.d, u_input.a, u_input.d, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_f32(var_0 + -1000f))))) - var_0);
    var_1 = -1307f;
    return Struct_5(~(~_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a, u_input.d, u_input.d), vec3<u32>(0u, 4294967295u, 36699u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.d, 76864u), vec3<u32>(1u, 32587u, 4294967295u)))), Struct_2(select(select(-u_input.b, -vec2<i32>(u_input.b.x, u_input.b.x), true), u_input.b, _wgslsmith_div_f32(-263f, var_0) > 1000f), _wgslsmith_f_op_f32(var_0 + -656f)), true == any(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_5(vec3<u32>(~_wgslsmith_clamp_u32(40051u, _wgslsmith_clamp_u32(86166u, u_input.d, 0u), firstLeadingBit(u_input.d)), ~(~(u_input.c & u_input.c)), u_input.a), var_0.b, true);
    var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.b + var_0.b.b))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(var_0.b.b - var_0.b.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b, var_1.x, var_0.b.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -834f, var_0.b.b), vec3<f32>(657f, var_0.b.b, -1322f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, -233f, var_0.b.b) - vec3<f32>(271f, var_1.x, 338f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.b, 688f, 722f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, var_1.x, var_0.b.b))) - vec3<f32>(-315f, var_0.b.b, _wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_div_vec2_i32(-vec2<i32>(-u_input.b.x, _wgslsmith_mod_i32(-78060i, u_input.b.x)), ~(-u_input.b)), var_0.b.b);
}

