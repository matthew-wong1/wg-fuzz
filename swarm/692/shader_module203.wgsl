struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51816u;

var<private> global1: array<vec2<i32>, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<u32> {
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, u_input.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, u_input.d))), max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 16010u), vec2<u32>(17637u, 55552u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 6461u), vec2<u32>(u_input.d, u_input.d)))), 0u, firstLeadingBit(~19416u), (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 4294967295u, 11168u), vec4<u32>(1u, 0u, 4294967295u, u_input.d)), ~4294967295u) >> (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), 1352u) % 32u)) << (u_input.d % 32u));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec2<i32>, 7>();
    let var_0 = max(~(min(0u, ~547u) >> (abs(firstLeadingBit(u_input.d)) % 32u)), max(u_input.d, 4294967295u));
    var var_1 = Struct_3(func_2().xx, u_input.d);
    let var_2 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2280f, -488f) - vec2<f32>(748f, 535f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(669f, 348f))), _wgslsmith_div_vec2_f32(vec2<f32>(-795f, 1812f), vec2<f32>(-2230f, 1239f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(-705f)), 1286f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f - -531f)), true));
    var var_3 = Struct_3(~(~(~var_1.a << (~vec2<u32>(u_input.d, var_1.b) % vec2<u32>(32u)))), var_0);
    return !(!vec2<bool>(abs(var_0) >= reverseBits(var_3.a.x), var_2.b.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = arg_1;
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.a.x) * _wgslsmith_f_op_f32(abs(-1762f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, 304f), vec2<f32>(533f, arg_0.b))))))), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -699f))), 1075f, 4294967295u <= arg_1.a.x));
    var var_2 = false;
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(u_input.c, firstTrailingBit(u_input.a.x | ~u_input.e)), 0i, u_input.b, -u_input.c);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -2126f, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(-arg_0.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b.a * _wgslsmith_f_op_vec3_f32(sign(arg_0.a))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(299f, _wgslsmith_f_op_f32(var_1.b.b - -1463f), var_1.b.c)) + _wgslsmith_f_op_f32(floor(-861f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))), !arg_2.x);
    return vec2<f32>(_wgslsmith_f_op_f32(783f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, -364f, all(arg_2.yxx))))), -1000f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    let var_0 = func_2();
    var var_1 = ~1u <= (countOneBits(u_input.d) ^ arg_3.a.x);
    let var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~(-u_input.c), _wgslsmith_mod_i32(~2147483647i, ~u_input.b), ~firstLeadingBit(u_input.e), u_input.c & -u_input.e), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(-65133i, -50412i, -60771i, u_input.a.x), vec4<i32>(u_input.b, 2147483647i, u_input.e, 16883i)), vec4<i32>(u_input.c, 25816i, u_input.c, u_input.b)), ~vec4<i32>(22655i, -37370i, u_input.b, 2147483647i)));
    return _wgslsmith_f_op_vec2_f32(func_4(Struct_1(arg_0.b.a, 1714f, true), Struct_3(var_0.xw, ~65551u), !vec4<bool>(any(func_3()), arg_0.b.c, (1u & var_0.x) > arg_3.a.x, !(arg_0.b.c | arg_1.b.c)), true));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    let var_0 = Struct_3(vec2<u32>(0u, _wgslsmith_sub_u32(~u_input.d, ~9410u)), firstLeadingBit(1u));
    var var_1 = !vec2<bool>(true, func_3().x);
    global0 = u_input.d >> (9425u % 32u);
    return any(!(!vec2<bool>(func_3().x, any(vec2<bool>(false, arg_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -637f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-266f, 764f)))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(813f, -589f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f * 416f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(622f)), _wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(floor(var_1)))), func_5(_wgslsmith_div_f32(1659f, 246f), Struct_1(vec3<f32>(1609f, var_1, -261f), -519f, false), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<f32>(var_1, var_1, 1357f, 1926f), Struct_1(vec3<f32>(2010f, -504f, var_1), -181f, true)), Struct_2(vec4<f32>(740f, var_1, var_1, var_1), Struct_1(vec3<f32>(var_1, var_1, var_1), -975f, false)), var_1, Struct_3(vec2<u32>(1u, 4294967295u), u_input.d))))))));
    global0 = _wgslsmith_add_u32(u_input.d, abs(~((u_input.d >> (75026u % 32u)) ^ 73658u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(3006f, 1551f, 1000f) - vec3<f32>(var_1, var_1, var_1))))))), _wgslsmith_f_op_f32(round(-990f)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(-782f + var_1), -1385f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) + _wgslsmith_f_op_f32(f32(-1f) * -646f)), true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, 914f), vec2<f32>(var_1, 867f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(var_3.a)), u_input.c, min(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.d), min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, 5529u))), ~0u) ^ _wgslsmith_sub_u32(u_input.d, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(2175u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)))), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1024f + -1629f) - _wgslsmith_f_op_f32(-var_3.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -103f))));
}

