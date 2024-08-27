struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = 738f;
    var var_1 = u_input.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1169f) * -296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + 1128f) * -2053f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1341f))))))), _wgslsmith_f_op_f32(-206f + _wgslsmith_f_op_f32(-825f * 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f - -562f) * 279f))), 1000f);
    global0 = array<Struct_2, 30>();
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-800f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), -1050f, _wgslsmith_f_op_f32(abs(var_2.x)));
    return 1000f == var_2.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = func_3() || !(!func_3());
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_1 = Struct_2(-2077f, u_input.c, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1887f, arg_1, 300f) * vec3<f32>(arg_1, 1551f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1826f) + vec3<f32>(-297f, 1185f, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1))), -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, u_input.b), max(u_input.b, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, -2164f, arg_1, arg_1) - vec4<f32>(arg_1, 425f, 524f, -1244f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, 1201f), vec3<f32>(-425f, arg_1, -196f), var_0 || false))), _wgslsmith_mult_i32(-6812i, _wgslsmith_add_i32(u_input.b, ~u_input.b))));
    var var_2 = all(vec4<bool>(any(vec3<bool>(var_0 && var_0, var_0, true)), !(~var_1.c.b >= firstLeadingBit(6976i)), var_0, any(select(select(vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, false)), !vec3<bool>(var_0, true, var_0), var_0))));
    return _wgslsmith_mod_u32(arg_0.x, min(var_1.b.x, ~11831u));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(~(select(abs(vec4<u32>(u_input.c.x, 61768u, u_input.a, 46754u)), ~vec4<u32>(u_input.a, 32458u, 4294967295u, u_input.a), true) >> ((~vec4<u32>(4294967295u, 21941u, u_input.c.x, u_input.a) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(59637u, 24294u, u_input.a, u_input.c.x), vec4<u32>(0u, u_input.a, 1u, u_input.c.x), vec4<u32>(0u, 0u, 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-745f)) - -407f));
    global0 = array<Struct_2, 30>();
    let var_1 = -2147483647i;
    let var_2 = !any(select(vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), vec2<bool>(all(vec3<bool>(false, true, false)), true), true));
    let var_3 = vec2<bool>(var_2, false);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(288f, 1826f, -622f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-134f, 1439f, 2853f), vec3<f32>(673f, 834f, 592f), vec3<bool>(true, true, var_3.x)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, 291f, -311f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, 818f, 149f) - vec3<f32>(1292f, 1167f, -2063f)) * vec3<f32>(1379f, 1000f, 188f)), var_3.x))), 1955i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -742f)))), u_input.c, func_1(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(355f, 1161f, -146f, 1606f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, 413f, 942f, 884f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1389f, _wgslsmith_f_op_f32(f32(-1f) * -759f), -1115f, _wgslsmith_f_op_f32(sign(-1572f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 851f, -888f, -1000f), vec4<f32>(804f, -1480f, -1000f, 215f))))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), u_input.b));
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_1 = _wgslsmith_dot_vec3_u32(countOneBits(~abs(vec3<u32>(u_input.c.x, u_input.c.x, 1u))) ^ ~select(~vec3<u32>(4294967295u, 1u, var_0.b.x), ~vec3<u32>(var_0.b.x, 1u, 72454u), u_input.b <= 1i), firstLeadingBit(~(firstTrailingBit(vec3<u32>(27017u, 4294967295u, 22082u)) << (reverseBits(vec3<u32>(0u, var_0.b.x, var_0.b.x)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-51093i, 824f, reverseBits(0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + var_0.a) - _wgslsmith_f_op_f32(-var_0.c.a.x)))));
}

