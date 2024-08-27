struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(0u, 24994u), false, -30211i, Struct_2(-35121i, vec2<bool>(false, false), -619f, vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 39428i), 62209u), true);

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = select(global0.d.d.wzx, ~abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) | u_input.a.xxx, any(global0.d.b)) & _wgslsmith_mult_vec3_i32(max(vec3<i32>(max(u_input.a.x, -2147483647i), countOneBits(global0.d.a), -2147483647i), global0.d.d.yzw | u_input.a.xyx), global0.d.d.xyz ^ u_input.a.xzy);
    global0 = Struct_3(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~abs(vec2<u32>(31602u, global0.a.x)), global0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(global0.a.x), global0.a.x), vec2<u32>(4294967295u, global0.a.x))), !all(vec4<bool>(!global0.d.b.x, true, global0.d.b.x, global0.d.b.x)), ~min(-global0.c, firstLeadingBit(2147483647i) >> ((52357u | global0.a.x) % 32u)), Struct_2(-1i, !(!vec2<bool>(false, global0.b)), global0.d.c, vec4<i32>(-586i, 16508i & u_input.a.x, global1.x, 26585i) >> (vec4<u32>(~global0.d.e, global0.d.e >> (global0.d.e % 32u), _wgslsmith_mult_u32(global0.d.e, global0.d.e), 0u) % vec4<u32>(32u)), global0.d.e), !global0.b & global0.b);
    global0 = Struct_3(vec2<u32>(_wgslsmith_mod_u32(global0.a.x >> (47923u % 32u), global0.a.x), global0.d.e), all(global0.d.b), 86073i, Struct_2(-12184i, vec2<bool>(true, true), _wgslsmith_div_f32(-867f, global0.d.c), vec4<i32>(select(-47612i, i32(-1i) * -1i, true), 6634i, u_input.b, u_input.a.x), max(min(28501u ^ global0.a.x, ~global0.d.e), 1u)), !global0.d.b.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.c)))));
    var var_2 = 0u;
    return _wgslsmith_f_op_f32(-global0.d.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = abs(14828i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))));
    let var_2 = _wgslsmith_f_op_f32(-1691f * -885f);
    let var_3 = arg_1;
    let var_4 = select(-u_input.a.zx, _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(0i), -5356i), _wgslsmith_sub_vec2_i32(~vec2<i32>(-2002i, 0i), global1.yx)), select(arg_1.a, !(!var_3.a), vec2<bool>(true, global0.b))) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(max(arg_0.zz, vec2<u32>(0u, arg_0.x)), vec2<u32>(1u, arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, arg_0.x), 1u)) % vec2<u32>(32u));
    return arg_1;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(577f * _wgslsmith_f_op_f32(abs(global0.d.c)))));
    let var_1 = func_2(vec3<u32>(global0.d.e, select(4294967295u, ~_wgslsmith_add_u32(77572u, global0.d.e), global0.e), global0.a.x), Struct_1(global0.d.b, global0.d.c, firstTrailingBit(_wgslsmith_div_i32(abs(27145i), ~(-8503i))), false, 67891i));
    var var_2 = u_input.a;
    global1 = vec3<i32>(-_wgslsmith_add_i32(-1i, -22327i), var_1.e, -(~1i));
    var var_3 = _wgslsmith_f_op_f32(ceil(371f));
    return Struct_2(~(-_wgslsmith_add_i32(var_2.x, -24649i ^ global0.c)), vec2<bool>(select(true, all(select(vec4<bool>(global0.e, true, false, true), vec4<bool>(false, global0.e, true, global0.d.b.x), global0.b)), global0.b), true), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) + _wgslsmith_f_op_f32(-1000f * 1010f))), vec4<i32>(global1.x, abs(0i), _wgslsmith_dot_vec4_i32(select(global0.d.d, global0.d.d, select(var_1.d, false, true)), ~global0.d.d), 0i), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = global0.d.d.wxx;
    global0 = Struct_3(~_wgslsmith_div_vec2_u32(vec2<u32>(~var_0.e, _wgslsmith_clamp_u32(var_0.e, var_0.e, var_0.e)), global0.a), true, global0.c, global0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.d.c)))) < _wgslsmith_f_op_f32(f32(-1f) * -274f));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-countOneBits(global0.d.d), countOneBits(func_1().d)), !select(global0.d.b, func_2(vec3<u32>(global0.a.x, global0.d.e, global0.d.e), Struct_1(global0.d.b, -1829f, -15057i, var_0.b.x, 0i)).a, var_0.b), _wgslsmith_f_op_f32(-func_2(vec3<u32>(reverseBits(43893u), var_0.e, 1u), func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.e, 0u, global0.a.x), vec3<u32>(46042u, global0.d.e, var_0.e), vec3<u32>(1u, 1377u, global0.a.x)), Struct_1(global0.d.b, 2476f, 15023i, var_0.b.x, u_input.a.x))).b), ~global0.d.d, firstTrailingBit(_wgslsmith_clamp_u32(max(global0.a.x, var_0.e), var_0.e, _wgslsmith_mult_u32(var_0.e, var_0.e)) ^ global0.a.x));
    var var_2 = -var_1.d.xww;
    var_0 = var_1;
    var var_3 = global0.a;
    var var_4 = all(select(vec3<bool>(var_0.b.x || (global1.x > 57348i), true, global0.d.b.x), vec3<bool>(var_1.b.x, true, select(!global0.b, -2147483647i < u_input.a.x, 0u <= var_0.e)), select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.x < 2147483647i, all(vec3<bool>(true, var_0.b.x, false))), global0.e)));
    let var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, global0.a.x);
}

