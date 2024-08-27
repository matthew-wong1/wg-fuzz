struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.b.x);
    var var_1 = Struct_5(arg_1.a, Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_1.b.x) - arg_1.b) - arg_1.b))), Struct_3(false, arg_1), arg_0.a.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(abs(arg_1.b))), arg_0.b)));
    var_1 = Struct_5(arg_1.a, var_1.b, var_1.c, select(true, any(vec2<bool>(any(vec4<bool>(arg_1.a.a, false, arg_2.a, true)), !arg_2.a)), !(all(vec4<bool>(arg_3.x, false, false, true)) | (arg_3.x | arg_2.a))));
    var_0 = _wgslsmith_f_op_f32(exp2(arg_1.b.x));
    return !select(select(!vec4<bool>(false, var_1.a.a, false, arg_2.a), !(!vec4<bool>(arg_2.a, true, false, arg_0.a.a)), true), !vec4<bool>(u_input.a.x <= 6430u, true, true, var_1.c.a), any(!(!vec4<bool>(true, true, arg_0.a.a, true))));
}

fn func_2() -> i32 {
    var var_0 = Struct_5(Struct_1(any(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(all(vec3<bool>(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(step(-1463f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-275f, -746f)) * -889f))), Struct_3(all(func_3(Struct_2(Struct_1(false), vec2<f32>(525f, -1254f)), Struct_2(Struct_1(false), vec2<f32>(354f, -1552f)), Struct_1(true), vec3<bool>(true, true, false))), Struct_2(Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-438f, 2194f)))))), true);
    var_0 = Struct_5(var_0.c.b.a, Struct_2(Struct_1(!all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.b.x, -1000f))))), var_0.c, true);
    var var_1 = abs(~(~(-vec4<i32>(1i, 1i, 1i, 1i))));
    var_0 = Struct_5(Struct_1(any(vec3<bool>(true, select(true, var_0.c.b.a.a, false), !var_0.c.a))), Struct_2(var_0.b.a, _wgslsmith_f_op_vec2_f32(-var_0.c.b.b)), Struct_3(!var_0.a.a, Struct_2(var_0.a, var_0.b.b)), true);
    var_1 = vec4<i32>(select(var_1.x, min(~(-var_1.x), _wgslsmith_div_i32(-15222i, i32(-1i) * -4641i)), all(!func_3(var_0.c.b, var_0.b, var_0.c.b.a, vec3<bool>(false, false, var_0.b.a.a)))), var_1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(7598i, -10081i, var_1.x, 46609i), vec4<i32>(var_1.x, -8806i, var_1.x, var_1.x)), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~(-vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), 26959i), 0i);
    return _wgslsmith_div_i32(2147483647i, 50263i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = u_input.b.x;
    let var_1 = arg_1.a.a && true;
    var var_2 = Struct_3(var_1, Struct_2(Struct_1(any(!vec3<bool>(false, arg_1.a.a, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, arg_0.b.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, arg_1.b.x)), false)))));
    let var_3 = Struct_4(_wgslsmith_mod_i32(-1i, ~2147483647i), arg_0, vec4<f32>(783f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.b.b.x, _wgslsmith_f_op_f32(-var_2.b.b.x))))), _wgslsmith_f_op_f32(-var_2.b.b.x), var_2.b.b.x), any(func_3(Struct_2(Struct_1(false), arg_0.b.b), arg_0.b, Struct_1(false), select(!vec3<bool>(false, arg_1.a.a, var_1), select(vec3<bool>(true, var_1, false), vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a), vec3<bool>(true, true, true)), vec3<bool>(arg_1.a.a, false, true))).xw), 23644u);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - _wgslsmith_f_op_f32(step(var_2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)))));
    return var_3.a;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = true;
    var var_1 = -(~func_4(Struct_3(var_0, Struct_2(Struct_1(var_0), vec2<f32>(240f, -689f))), Struct_2(Struct_1(true), vec2<f32>(-534f, 1000f)), func_2())) | _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(34220i, 92972i, -14167i, -2147483647i), ~vec4<i32>(1i, 2147483647i, -28787i, 2147483647i)), vec4<i32>(-22225i, -2147483647i, 0i, 17606i) ^ (vec4<i32>(-1381i, -15920i, 14460i, -46595i) >> (vec4<u32>(arg_0, arg_0, 10083u, 0u) % vec4<u32>(32u)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-1990i, -22557i, -6333i), vec3<i32>(27577i, -2147483647i, 0i), vec3<bool>(false, var_0, var_0)))));
    return u_input.b.x;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(arg_3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_3.c.b.b, _wgslsmith_f_op_vec2_f32(arg_3.b.b - arg_3.c.b.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_3.b.b))))));
    var var_1 = arg_2.x;
    var var_2 = u_input.a;
    let var_3 = Struct_2(Struct_1(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1200f, _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))))));
    let var_4 = vec4<f32>(-724f, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.b.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -891f)), 209f);
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(7251u, ~_wgslsmith_mod_u32(~countOneBits(4294967295u), 1u));
    let var_1 = Struct_2(func_5(abs(1u), ~func_1(0u), vec3<i32>(-36225i, i32(-1i) * -54503i, -1i), Struct_5(Struct_1(true), Struct_2(Struct_1(true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2336f, -263f) * vec2<f32>(498f, 157f))), Struct_3(true, Struct_2(Struct_1(false), vec2<f32>(258f, 593f))), true && all(vec3<bool>(true, true, false)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1272f * 759f), -1249f)), _wgslsmith_f_op_f32(f32(-1f) * -245f)), vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-424f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-914f)) - -371f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -1942f, var_1.b.x, 1342f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -837f, var_1.b.x, 117f), vec4<f32>(var_1.b.x, -763f, -1185f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1825f), vec4<f32>(-306f, var_1.b.x, var_1.b.x, var_1.b.x))))) * vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, var_1.a.a)) + _wgslsmith_f_op_f32(f32(-1f) * -1287f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-105f, -572f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1433f), -459f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.b.x, -584f), var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x * 285f), _wgslsmith_f_op_f32(round(-855f))))), vec4<bool>(firstTrailingBit(13848u) != 4294967295u, false, var_1.a.a || (any(vec2<bool>(var_1.a.a, false)) || true), !var_1.a.a)));
    let var_3 = ~var_0;
    let var_4 = var_3;
    let var_5 = any(vec3<bool>(true, false, var_1.a.a));
    var var_6 = select(all(select(vec2<bool>(!var_5, var_4 == 29251u), vec2<bool>(true, true), func_3(Struct_2(Struct_1(false), vec2<f32>(-1873f, 201f)), Struct_2(Struct_1(false), vec2<f32>(var_1.b.x, var_1.b.x)), func_5(u_input.a.x, var_3, vec3<i32>(17594i, -2147483647i, -4571i), Struct_5(Struct_1(var_1.a.a), var_1, Struct_3(var_5, var_1), var_1.a.a)), vec3<bool>(true, true, true)).wz)), var_5, true);
    let var_7 = Struct_5(func_5(u_input.a.x, countOneBits(_wgslsmith_add_u32(31924u, var_0)) ^ u_input.b.x, firstTrailingBit(-vec3<i32>(2147483647i, 8882i, 1i)), Struct_5(Struct_1(true), Struct_2(func_5(0u, 4294967295u, vec3<i32>(1i, 70679i, 1i), Struct_5(var_1.a, var_1, Struct_3(true, Struct_2(Struct_1(var_5), var_1.b)), var_5)), _wgslsmith_f_op_vec2_f32(var_2.wy * vec2<f32>(var_2.x, var_1.b.x))), Struct_3(false, var_1), var_5)), var_1, Struct_3(any(!func_3(var_1, Struct_2(Struct_1(var_5), vec2<f32>(var_2.x, 125f)), Struct_1(var_5), vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a)).yxz), var_1), !(!func_5(_wgslsmith_clamp_u32(var_3, 4294967295u, 36351u), ~var_4, vec3<i32>(1i, 1i, 1i), Struct_5(var_1.a, Struct_2(Struct_1(false), vec2<f32>(var_1.b.x, var_1.b.x)), Struct_3(true, Struct_2(var_1.a, vec2<f32>(-473f, var_2.x))), true)).a));
    let x = u_input.a;
    s_output = StorageBuffer((~abs(vec4<u32>(var_0, var_0, var_4, u_input.a.x)) >> (~select(vec4<u32>(var_0, var_4, var_0, 1373u), vec4<u32>(0u, var_3, u_input.b.x, 173u), var_5) % vec4<u32>(32u))) << (vec4<u32>(0u, 4294967295u, ~(~var_3), select(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(18142u, var_4), vec2<u32>(u_input.b.x, 16937u)), 0u >= var_0)) % vec4<u32>(32u)), 11391u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(621f, var_7.b.b.x, false)) - -1228f), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.c.b.b.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_7.b.b.x - var_7.b.b.x)))))));
}

