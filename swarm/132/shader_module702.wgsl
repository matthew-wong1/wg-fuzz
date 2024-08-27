struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(5852i, 59905i), vec2<i32>(0i, 23746i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, -49351i), vec2<i32>(46286i, -1i), vec2<i32>(14501i, 2593i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(11348i, i32(-2147483648)), vec2<i32>(5395i, 2147483647i), vec2<i32>(-29410i, 16845i), vec2<i32>(13077i, 20084i), vec2<i32>(66199i, i32(-2147483648)), vec2<i32>(34549i, -26948i), vec2<i32>(-1i, 61958i), vec2<i32>(1i, 1i), vec2<i32>(1i, -34555i), vec2<i32>(29153i, -1i), vec2<i32>(-1i, 1i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = u_input.d.x >> (4294967295u % 32u);
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 56163u, u_input.d.x, var_0)), abs(vec4<u32>(0u, u_input.d.x, var_0, u_input.d.x)) | (vec4<u32>(var_0, var_0, 4294967295u, 60637u) << (vec4<u32>(var_0, var_0, u_input.d.x, u_input.d.x) % vec4<u32>(32u)))), Struct_1(-1i, 1000f, 34927i, true, vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -201f))), Struct_1(u_input.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(491f)))), 1i, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-834f, 361f), vec2<f32>(-300f, 188f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, -2014f)))), Struct_1(i32(-1i) * -u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), -u_input.c, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), vec2<f32>(_wgslsmith_f_op_f32(abs(-714f)), -627f))));
    return -(_wgslsmith_dot_vec4_i32(abs(u_input.e) << (var_1.a.a % vec4<u32>(32u)), max(u_input.e, vec4<i32>(-1i, 2147483647i, var_1.a.c.a, u_input.a) & vec4<i32>(var_1.a.d.c, var_1.a.b.c, var_1.a.d.c, -3376i))) >> (40765u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -238f);
    let var_1 = !vec3<bool>(!arg_1.d, arg_1.d, false);
    return arg_1.a & _wgslsmith_sub_i32(-u_input.b, func_3());
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2452f * _wgslsmith_f_op_f32(f32(-1f) * -1288f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(227f)))))), -606f, _wgslsmith_f_op_f32(abs(arg_1.c.e.x)), _wgslsmith_f_op_f32(arg_1.c.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.e.x)))));
    global0 = array<vec2<i32>, 18>();
    var var_2 = Struct_2(vec4<u32>(~(~u_input.d.x), 15480u, select(~(~arg_1.a.x), min(4294967295u, u_input.d.x), true), ~arg_1.a.x), Struct_1(-2147483647i, _wgslsmith_f_op_f32(sign(-395f)), select(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.c, arg_2, arg_2, 12595i), u_input.e), firstLeadingBit(14868i), func_2(vec3<f32>(265f, 594f, var_1.x), arg_1.b)), all(select(vec3<bool>(arg_1.c.d, false, true), vec3<bool>(arg_0.x, var_0, false), false))), false, _wgslsmith_f_op_vec2_f32(arg_1.b.e - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_1.x), arg_1.c.e)))), arg_1.b, Struct_1(arg_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f + _wgslsmith_div_f32(var_1.x, 325f))), arg_1.b.a, true, arg_1.c.e));
    let var_3 = -1i;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-334f, -431f) * -915f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), Struct_2(vec4<u32>(u_input.d.x, 26769u, 12544u, u_input.d.x), Struct_1(-1i, 816f, u_input.a, false, vec2<f32>(1474f, -630f)), Struct_1(-9304i, 2960f, u_input.c, false, vec2<f32>(1341f, -1816f)), Struct_1(42557i, -1439f, -1i, false, vec2<f32>(-1491f, -1050f))), u_input.e.x)), 1104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), Struct_2(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 18200u), Struct_1(u_input.a, 135f, 2147483647i, true, vec2<f32>(284f, 469f)), Struct_1(u_input.b, -1019f, u_input.c, false, vec2<f32>(-175f, 309f)), Struct_1(u_input.a, -1452f, u_input.a, true, vec2<f32>(-579f, -915f))), i32(-1i) * -26556i)))), 419f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(301f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(547f + 249f))))));
    let var_1 = true;
    var var_2 = Struct_2(~select(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 10728u, 4294967295u, u_input.d.x), vec4<u32>(26313u, u_input.d.x, u_input.d.x, 1135u))), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 26853u), var_0.x >= var_0.x), Struct_1(-_wgslsmith_add_i32(countOneBits(u_input.b), u_input.b | 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -134f)), abs(1i), var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - var_0.zx)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, u_input.c), abs(u_input.e.x)), i32(-1i) * -2147483647i), -152f, reverseBits(1i), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-225f)), 295f))), Struct_1(2147483647i, _wgslsmith_f_op_f32(floor(-587f)), u_input.a, var_1, var_0.yz));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1050f - 600f), 1f))), 1359f), var_0.x, _wgslsmith_f_op_f32(-1943f + -380f), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1564f - _wgslsmith_f_op_f32(f32(-1f) * -1330f))))));
    let var_3 = 0i;
    var var_4 = 1i;
    var_2 = Struct_2(~var_2.a | var_2.a, var_2.d, Struct_1(53815i, _wgslsmith_f_op_f32(abs(var_0.x)), ~(-_wgslsmith_mult_i32(0i, var_2.d.a)), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(772f, -383f)), _wgslsmith_f_op_f32(f32(-1f) * -213f)), var_0.x)), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, min(max(abs(u_input.d), firstTrailingBit(u_input.d)), abs(firstLeadingBit(u_input.d >> (vec2<u32>(var_2.a.x, 27292u) % vec2<u32>(32u))))));
}

