struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = !vec4<bool>(true, !arg_1.a.c, false, false);
    var var_1 = _wgslsmith_mult_i32(~arg_1.c, abs(_wgslsmith_mod_i32(-9281i, _wgslsmith_add_i32(arg_1.a.a, 0i)))) == _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_sub_i32(-31699i, -2147483647i), u_input.a.x, u_input.a.x, -20972i)), vec4<i32>(1i, 34364i, u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xy << (u_input.c % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, arg_1.c))));
    var_1 = true;
    let var_2 = var_0.x;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.b)), -405f)));
    return var_0.xzw;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.b * arg_3.b))) * arg_3.b)));
    var var_0 = Struct_2(arg_3, false, firstLeadingBit(-_wgslsmith_div_i32(-48047i, firstLeadingBit(18992i))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_mod_i32(arg_3.a, -1i) << (_wgslsmith_sub_u32(u_input.c.x >> (u_input.b % 32u), u_input.c.x) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.b))), var_0.a.c), _wgslsmith_f_op_f32(round(var_0.a.b)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_3.b)), var_0.a.b)) * -602f), -_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(1i, arg_3.a)));
    let var_2 = Struct_2(Struct_1(i32(-1i) * -4195i, 241f, false), !var_1.a.c | true, u_input.a.x);
    var var_3 = (-15953i & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1453i), (u_input.a.wy ^ u_input.a.xy) ^ u_input.a.xz)) > -7278i;
    return _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-221f - arg_3.b));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(i32(-1i) * -8143i, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1071f, -1000f, -236f) + vec3<f32>(153f, 159f, -387f))), Struct_2(Struct_1(2147483647i, 1142f, true), true, -13108i)), false, Struct_1(-1i, _wgslsmith_div_f32(1125f, _wgslsmith_f_op_f32(step(-1441f, -383f))), u_input.c.x == u_input.b)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))))), -1000f);
    global0 = -1000f;
    var var_1 = vec3<bool>(any(!vec2<bool>(true, all(vec3<bool>(false, false, false)))), all(func_3(vec3<f32>(1251f, 679f, var_0), Struct_2(Struct_1(47148i, -984f, false), true, 0i))) & (true && func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1509f, -282f, var_0)), Struct_2(Struct_1(-2147483647i, 778f, true), true, u_input.a.x)).x), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    return Struct_2(Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1439f - -184f)), var_1.x), true, -u_input.a.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = countOneBits(arg_0.a);
    let var_1 = vec2<bool>(true, select(arg_0.c, true, arg_0.c));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -531f);
    var var_0 = Struct_1(firstLeadingBit(1i), func_1(arg_0).a.b, false);
    let var_1 = func_2().a;
    var var_2 = u_input.b;
    var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a.x, vec3<bool>(false, true, arg_0.c), false, arg_0))), arg_1.a.c)) + func_2().a.b), false);
    return func_1(Struct_1(-10691i, var_0.b, !all(select(vec2<bool>(var_0.c, false), vec2<bool>(false, arg_0.c), false)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(18661i, -588f, true), func_1(Struct_1(select(u_input.a.x | u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 64812i), false), -633f, false)), u_input.a.x);
    let var_1 = func_2();
    var var_2 = var_0.a;
    var_2 = _wgslsmith_div_i32(func_2().c, ~max(func_1(var_0).c, -(var_0.a << (u_input.b % 32u))));
    let var_3 = vec3<i32>(min(max(var_0.a, _wgslsmith_mult_i32(~15453i, _wgslsmith_dot_vec2_i32(vec2<i32>(8215i, var_1.c), vec2<i32>(1i, u_input.a.x)))), _wgslsmith_clamp_i32(-var_1.a.a, _wgslsmith_div_i32(u_input.a.x | -16806i, _wgslsmith_dot_vec3_i32(u_input.a.zyw, vec3<i32>(1i, -36964i, u_input.a.x))), max(-var_1.c, ~var_1.c))), ~var_1.c, firstLeadingBit(0i) >> (~_wgslsmith_clamp_u32(~40767u, abs(u_input.c.x), ~u_input.c.x) % 32u));
    global0 = var_1.a.b;
    let var_4 = var_1;
    let var_5 = ~select(vec3<i32>(-(~(-2147483647i)), ~u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -36923i, -2147483647i, var_1.a.a), vec4<i32>(1i, var_3.x, -2147483647i, -2147483647i)), ~u_input.a)), u_input.a.wwy, true || func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b, -561f, var_0.b) + vec3<f32>(-362f, -1000f, -877f)), Struct_2(var_1.a, var_1.a.c, 17171i)).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.a, var_5.x, ~var_0.a), firstLeadingBit(~var_5)) ^ (7195i | var_0.a), vec4<f32>(var_0.b, -127f, func_2().a.b, 766f), vec4<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(1u, u_input.b) | u_input.c) << ((u_input.c | u_input.c) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.c.x, 1u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 8002u), vec2<u32>(1u, 4294967295u))), ~(~u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, 1u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(24192u, 21021u, 1u)), ~vec3<u32>(22594u, 0u, u_input.b))), u_input.c.x), _wgslsmith_f_op_f32(select(-168f, -1091f, true)));
}

