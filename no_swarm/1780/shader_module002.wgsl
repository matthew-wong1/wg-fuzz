struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: i32 = 1i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = !(((u_input.c.x ^ 12066u) | _wgslsmith_clamp_u32(8632u << (u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(43631u, u_input.c.x, u_input.c.x, 18792u), vec4<u32>(4753u, u_input.c.x, 39602u, 0u)), _wgslsmith_add_u32(1u, u_input.d.x))) == ~firstTrailingBit(firstTrailingBit(0u)));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(966f, -1065f)) * _wgslsmith_f_op_f32(round(105f))), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * 1234f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-881f + _wgslsmith_div_f32(626f, -531f)), -596f))));
    var var_2 = !any(vec3<bool>((u_input.a.x < -20286i) && all(vec4<bool>(true, false, false, true)), true, true));
    var_0 = true;
    return false;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-814f)));
    global0 = array<vec3<bool>, 2>();
    var var_1 = Struct_3(Struct_1(~(~vec2<u32>(u_input.d.x, 15067u)), vec4<i32>(abs(arg_0.x), 4362i, ~(-38864i) | (40164i | arg_0.x), -(~arg_0.x)), ~u_input.d.x), Struct_1(~(~u_input.d.xz), _wgslsmith_add_vec4_i32(arg_0, -arg_0), 4294967295u), vec3<bool>(func_3(), false, true), u_input.c.zz);
    return var_0;
}

fn func_1(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_2(~(-vec4<i32>(u_input.a.x, 0i, 35351i, 1i)))));
    global0 = array<vec3<bool>, 2>();
    let var_1 = Struct_2(var_0);
    global0 = array<vec3<bool>, 2>();
    var var_2 = Struct_2(arg_0.d);
    return u_input.c.zx;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    global1 = -2147483647i;
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(u_input.c.yy, arg_0.a)), u_input.c.zz), arg_0.b, ~countOneBits(arg_1) | 1u), arg_0, vec3<bool>(false, true, false), vec2<u32>(~_wgslsmith_add_u32(arg_1, 4294967295u), 44858u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(select(-49251i, arg_3.x, true), -20555i & countOneBits(u_input.b), -2147483647i, 2147483647i))), 1f);
    var var_2 = var_0.a.b.wz >> (arg_0.a % vec2<u32>(32u));
    var var_3 = Struct_5(arg_3.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1i;
    var var_0 = func_4(Struct_1(_wgslsmith_sub_vec2_u32(func_1(Struct_4(5988u, vec4<f32>(-2279f, -2332f, -1346f, -1162f), false, -616f)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.c.xx)) | (_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(26362u, u_input.c.x)) & ~u_input.c.xz), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(26757i, u_input.a.x, 0i, u_input.a.x) >> (vec4<u32>(90448u, u_input.d.x, 3868u, u_input.d.x) % vec4<u32>(32u)), select(vec4<i32>(u_input.b, -1223i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -7858i, u_input.b, 62661i), true)), ~(-vec4<i32>(2147483647i, -1i, -26095i, u_input.a.x))), _wgslsmith_div_u32(6913u, _wgslsmith_div_u32(~u_input.d.x, 0u))), _wgslsmith_sub_u32(~u_input.c.x, 3904u) & _wgslsmith_dot_vec3_u32(~(~u_input.d), vec3<u32>(u_input.c.x & u_input.c.x, 12757u, 1u)), vec2<i32>(~u_input.b, 2147483647i), u_input.a);
    global0 = array<vec3<bool>, 2>();
    let var_1 = !(!vec2<bool>(true, func_3()));
    global1 = _wgslsmith_div_i32(i32(-1i) * -select(firstLeadingBit(0i), -1i, u_input.c.x >= u_input.d.x), countOneBits(1i));
    var var_2 = select(!var_1, var_1, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(156f)) + 623f) >= -566f, true));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(339f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(848f, 832f)))), var_2.x)), -1446f);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a, vec2<f32>(237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-114f, 1472f)), -341f)))));
}

