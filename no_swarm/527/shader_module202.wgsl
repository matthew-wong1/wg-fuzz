struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: bool,
    e: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> i32 {
    global0 = array<Struct_5, 18>();
    let var_0 = true;
    global0 = array<Struct_5, 18>();
    var var_1 = Struct_2(arg_1.a, arg_1.b);
    let var_2 = min(vec2<u32>(~arg_1.a.b | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 39039u), vec3<u32>(var_1.a.b, 4294967295u, 11276u)), arg_3), arg_1.a.d.xz);
    return u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-350f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f))));
    var_0 = -1767f;
    var_0 = 550f;
    let var_1 = ~select(~(~(~vec3<u32>(u_input.d, u_input.d, u_input.d))), ~select(vec3<u32>(1u, 1u, 118023u), vec3<u32>(u_input.d, 1u, 17626u), !vec3<bool>(arg_0, arg_0, false)), select(vec3<bool>(true, true, all(vec2<bool>(arg_0, arg_0))), !select(vec3<bool>(true, false, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(false, arg_0, arg_0)));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-664f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -438f)))), Struct_2(Struct_1(arg_0, firstTrailingBit(var_1.x), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0))), min(~var_1, vec3<u32>(4294967295u, 4294967295u, var_1.x) ^ vec3<u32>(4294967295u, var_1.x, 0u))), u_input.a.x), (max(vec4<u32>(u_input.d, u_input.d, 10874u, u_input.d) >> (vec4<u32>(u_input.d, u_input.d, 0u, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(10265u, 4294967295u, var_1.x, u_input.d)) ^ select(countOneBits(vec4<u32>(0u, var_1.x, 926u, 4294967295u)), ~vec4<u32>(var_1.x, 18895u, u_input.d, 4294967295u), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, false)))) & reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 56677u, u_input.d, var_1.x), ~vec4<u32>(4468u, 39119u, 69047u, 1u))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2172f * 1473f), -428f)), _wgslsmith_f_op_f32(round(-2130f)), Struct_1(all(vec4<bool>(arg_0, false, true, arg_0)), var_1.x, all(vec4<bool>(true, false, true, true)), max(min(var_1, vec3<u32>(1u, 4294967295u, 23739u)), abs(vec3<u32>(var_1.x, var_1.x, u_input.d)))), -1268i, select(select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(false, true, false)), vec3<bool>(!arg_0, true, arg_0), select(vec3<bool>(true, arg_0, true), !vec3<bool>(true, false, arg_0), !arg_0))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.b, var_2.d.b, _wgslsmith_f_op_f32(min(1794f, -1945f)), -737f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1159f, 428f, var_2.d.b, -336f))))) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), 1169f, 1329f, _wgslsmith_f_op_f32(-var_2.d.b)));
}

fn func_2() -> vec4<bool> {
    var var_0 = u_input.d != u_input.d;
    var_0 = all(vec2<bool>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(12519u, 4294967295u), vec2<u32>(43001u, u_input.d))) <= 4294967295u, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(-func_3(~vec3<i32>(-1i, u_input.b.x, 0i), Struct_2(Struct_1(false, 4294967295u, false, vec3<u32>(u_input.d, 1u, 4294967295u)), 40298i), ~u_input.d, _wgslsmith_div_u32(u_input.d, 0u)) > firstLeadingBit(-2147483647i), -u_input.a));
    let var_2 = Struct_2(Struct_1(false, ~firstLeadingBit(_wgslsmith_add_u32(1u, u_input.d)), !(any(vec3<bool>(true, true, true)) || true), firstLeadingBit(~(~vec3<u32>(0u, u_input.d, 21972u)))), 10244i);
    var_0 = _wgslsmith_sub_u32(abs(select(var_2.a.d.x, var_2.a.d.x ^ u_input.d, any(vec3<bool>(var_2.a.a, var_2.a.a, var_2.a.a)))), ~(~var_2.a.b) | 4294967295u) == ~abs(var_2.a.d.x);
    return !(!select(!vec4<bool>(true, var_2.a.c, true, false), vec4<bool>(true, any(vec4<bool>(var_2.a.c, false, var_2.a.a, false)), any(vec2<bool>(var_2.a.a, var_2.a.a)), true), all(vec3<bool>(true, var_2.a.a, var_2.a.c))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    let var_0 = arg_2;
    let var_1 = Struct_3(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + 1354f))))), Struct_1(all(func_2().yww), firstTrailingBit(4844u), all(select(func_2(), vec4<bool>(arg_2, arg_2, true, arg_1.x), !vec4<bool>(true, arg_2, var_0, false))), abs(vec3<u32>(_wgslsmith_mult_u32(arg_3, 1352u), 4294967295u, _wgslsmith_mod_u32(u_input.d, arg_3)))), -1i, !select(vec3<bool>(!arg_2, arg_2, true), arg_1.wyz, false));
    var var_2 = vec2<i32>(-29799i, -4982i);
    return var_1.c;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)))), -279f, func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, 197f)))), !func_2(), false, u_input.d), select(_wgslsmith_div_i32(u_input.a.x, arg_1.x), u_input.a.x, arg_0) >> (u_input.d % 32u), !vec3<bool>(true, arg_0, true)), _wgslsmith_div_f32(563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(418f, 1304f)) * 1f)), Struct_2(Struct_1(all(vec4<bool>(arg_0, true, arg_0, false)), arg_2, false, ~(~vec3<u32>(0u, u_input.d, arg_2))), _wgslsmith_add_i32(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -47658i, arg_1.x), arg_1.wyz))), !(!(arg_0 && arg_0)), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(47776u, 1u), vec2<u32>(4294967295u, u_input.d))) ^ _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, arg_2)), vec2<u32>(45312u, u_input.d)), ~(~vec2<u32>(arg_2, arg_2)) ^ ~(~vec2<u32>(arg_2, 4294967295u)), ~min(vec2<u32>(u_input.d, 0u), vec2<u32>(arg_2, arg_2)) | (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, arg_2), vec2<u32>(arg_2, 32480u)) & (vec2<u32>(29161u, 0u) >> (vec2<u32>(u_input.d, arg_2) % vec2<u32>(32u))))));
    global0 = array<Struct_5, 18>();
    let var_1 = (i32(-1i) * -36792i) | -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 2147483647i, 5438i), arg_1.xwy), arg_1.yzz);
    var var_2 = 2147483647i;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 18>();
    let var_0 = func_1(false, select(-vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -2147483647i, u_input.c), reverseBits(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.c, 21182i)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i))), true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(58458u, u_input.d, u_input.d, 23239u), vec4<u32>(64798u, u_input.d, u_input.d, u_input.d)), ~vec4<u32>(2476u, 11993u, u_input.d, u_input.d)) & vec4<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, 14343u), 61247u, u_input.d), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(27117u, 4294967295u, u_input.d, 56786u) & vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(27787u, u_input.d, 8152u, u_input.d)))));
    global0 = array<Struct_5, 18>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(-540f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f - _wgslsmith_f_op_f32(1036f * _wgslsmith_f_op_f32(-616f + -2978f))) + _wgslsmith_f_op_f32(f32(-1f) * -298f)), func_1(all(vec2<bool>(true, var_0.a.a)), _wgslsmith_add_vec4_i32(countOneBits(select(vec4<i32>(2147483647i, -10496i, u_input.a.x, var_0.b), vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x), vec4<bool>(var_0.a.c, var_0.a.c, true, var_0.a.a))), vec4<i32>(var_0.b, var_0.b, -1i, var_0.b) >> ((vec4<u32>(u_input.d, u_input.d, var_0.a.b, 8907u) >> (vec4<u32>(42787u, 1u, 11810u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~u_input.d).a, 1i, !vec3<bool>((var_0.a.c || true) & true, min(var_0.a.b, var_0.a.d.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(22644u, u_input.d), var_0.a.d.zy), false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(ceil(var_1.a))))));
    let var_3 = ~(~(~var_1.c.d));
    var var_4 = Struct_2(Struct_1(!(!(!var_0.a.a)), firstLeadingBit(~(4294967295u << (0u % 32u))), var_1.c.a, var_3), 38354i);
    global0 = array<Struct_5, 18>();
    var var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2) * vec2<f32>(-158f, 1112f))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(518f, var_2)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, -2729f), vec2<f32>(var_2, 1197f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1163f)))) + _wgslsmith_f_op_vec4_f32(func_4(var_1.e.x, vec2<i32>(var_4.b, var_1.d))).xz), var_4.a.c)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -490f))))), -516f, var_1.b), 0u, 480f);
}

