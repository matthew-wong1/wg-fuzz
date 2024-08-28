struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(global0.d.x, global1.b, 91414u, global0.d.x), vec4<u32>(0u, 4042u, global1.b, global0.d.x), vec4<bool>(true, true, true, true)), vec4<u32>(global1.b, 1u, 9060u, global1.b))) ^ vec4<u32>(~global0.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 66013u, global0.d.x, global1.b), abs(vec4<u32>(global1.b, global1.b, global1.b, 18492u))) >> (_wgslsmith_sub_u32(global0.d.x, select(1u, global0.d.x, true)) % 32u), global0.d.x, ~global0.d.x);
    global0 = Struct_5(-1397f, _wgslsmith_f_op_vec4_f32(ceil(global0.b)), min(global0.c, -23290i), global0.d);
    let var_1 = true;
    var var_2 = select(vec4<bool>(var_1, true, true, !all(vec3<bool>(false, var_1, true))), !select(!select(vec4<bool>(false, var_1, false, var_1), vec4<bool>(true, false, var_1, var_1), vec4<bool>(true, var_1, true, var_1)), vec4<bool>(select(var_1, var_1, var_1), var_1 || var_1, 2147483647i >= u_input.a.x, var_1), !(global0.c <= 60338i)), vec4<bool>(!(!var_1), false && var_1, select(~var_0.x < global1.b, true, global1.a.x < _wgslsmith_f_op_f32(sign(global0.b.x))), !(!select(false, var_1, var_1))));
    let var_3 = select(select(vec4<bool>(var_1, true, var_1, var_2.x | true), !(!(!vec4<bool>(var_1, false, var_2.x, true))), select(select(select(vec4<bool>(false, var_1, var_2.x, true), vec4<bool>(var_1, true, var_2.x, var_1), var_1), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, true, true, true), vec4<bool>(false, true, false, var_1)), !vec4<bool>(var_1, var_2.x, var_1, true)), !(!vec4<bool>(true, var_1, false, true)), var_2.x)), vec4<bool>(true, 38874i == global0.c, var_2.x, var_2.x), select(!any(!vec4<bool>(var_1, false, true, false)), any(vec2<bool>(all(vec4<bool>(false, true, true, var_2.x)), all(var_2.zw))), all(!var_2.xw)));
    return _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(227f)), _wgslsmith_f_op_f32(-arg_0.x))))), 954f));
}

fn func_2(arg_0: i32) -> Struct_4 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, -151f, _wgslsmith_f_op_f32(global0.a + global1.a.x), -2509f))) + vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(global0.b + global1.a))), _wgslsmith_f_op_f32(max(1060f, _wgslsmith_f_op_f32(1000f - global1.a.x))), -713f)), ~global1.b & global1.b);
    global1 = Struct_2(global0.b, 29575u);
    global0 = Struct_5(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(sign(global0.b)), ~abs(arg_0), ~_wgslsmith_add_vec3_u32(~global0.d & global0.d, global0.d));
    let var_0 = vec3<bool>(!any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), false)), true);
    var var_1 = Struct_3(~vec4<u32>(max(0u, global0.d.x), _wgslsmith_sub_u32(global1.b, ~global0.d.x), 1u, ~global0.d.x), all(vec3<bool>(var_0.x, all(var_0.yy), var_0.x)), global1.a, Struct_1(global0.d.x, select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, -1i, -2147483647i), vec4<i32>(global0.c, 3655i, 45468i, 1194i)) & ~vec4<i32>(-31169i, 8472i, 1i, arg_0), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(global0.c, arg_0), ~arg_0, 2147483647i ^ global0.c), var_0.x)), _wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(global0.d.x), global1.b), 12528u));
    return Struct_4(45302i, vec4<u32>(4294967295u, _wgslsmith_add_u32(abs(59516u), global1.b), min(31367u >> (1u % 32u), abs(0u)), ~countOneBits(1u)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f + 1412f)), _wgslsmith_f_op_f32(select(-2512f, _wgslsmith_div_f32(global0.a, 717f), all(vec3<bool>(var_0.x, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, -1743f, var_0.x))), _wgslsmith_f_op_f32(max(202f, global1.a.x))), ~global0.d.x), var_1.d.b.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, reverseBits(~4826u), _wgslsmith_mult_u32(1556u, _wgslsmith_clamp_u32(15739u << (arg_0.b.x % 32u), _wgslsmith_div_u32(arg_0.b.x, 40283u), global0.d.x)), 1u), ~(~arg_0.b), max(arg_0.b, ~(vec4<u32>(120096u, 17386u, 4294967295u, 5183u) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 117027u, 1u, 4282u), arg_0.b))));
    global1 = arg_1;
    global1 = arg_0.c;
    var var_1 = func_2(-2147483647i).c;
    let var_2 = func_2(global0.c);
    return Struct_3(var_2.b, true, var_2.c.a, Struct_1(_wgslsmith_add_u32(1u, ~select(6610u, global0.d.x, true)), vec4<i32>(20001i, 2147483647i, -arg_0.d, firstLeadingBit(firstLeadingBit(6843i)))), 4294967295u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_div_i32(55753i, _wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(u_input.a.x, 1i))) ^ func_2(global0.c).d).c;
    global1 = var_0;
    let var_1 = arg_0.d.b.wz;
    var var_2 = all(select(!vec3<bool>(arg_1.b, all(vec3<bool>(true, arg_3.x, true)), all(vec4<bool>(true, arg_3.x, false, true))), select(!vec3<bool>(arg_3.x, arg_1.b, true), select(!vec3<bool>(false, arg_3.x, arg_1.b), vec3<bool>(arg_1.b, true, false), select(vec3<bool>(true, arg_1.b, false), vec3<bool>(false, arg_0.b, arg_3.x), vec3<bool>(arg_3.x, true, arg_0.b))), func_4(func_2(u_input.a.x), func_2(global0.c).c).b), all(!arg_3)));
    let var_3 = ~(~arg_1.a.yw);
    return Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, arg_0.c.x, var_0.a.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 498f, arg_2.x, 420f)) + global1.a))), var_3.x);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_1(~abs(~(~48599u)), min(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_3, -1i, 0i, 1i), firstTrailingBit(max(vec4<i32>(u_input.a.x, global0.c, global0.c, arg_3), vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.a.x)))), -vec4<i32>(_wgslsmith_mod_i32(global0.c, 2147483647i), ~global0.c, 2147483647i, ~arg_3)));
    var var_1 = ~_wgslsmith_mult_vec4_i32(min(var_0.b, vec4<i32>(1i ^ global0.c, arg_3 | 2147483647i, ~40508i, _wgslsmith_mod_i32(1i, arg_3))), -vec4<i32>(~1i, -1i, -1i, _wgslsmith_mod_i32(u_input.a.x, 0i)));
    let var_2 = i32(-1i) * -global0.c;
    var var_3 = select(select(vec3<bool>(false, !arg_2.x, false), select(!vec3<bool>(false, arg_1.x, arg_2.x), vec3<bool>(true, !arg_1.x, false), arg_1.x), true && any(arg_1)), !(!(!arg_1.ywx)), true);
    return func_2(_wgslsmith_add_i32(-20729i, -(~21800i)));
}

fn func_7(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = vec3<bool>(true, all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(all(vec3<bool>(false, false, false)), global1.b > 22930u), any(vec3<bool>(true, true, true)))), !(-func_4(Struct_4(0i, arg_0.b, Struct_2(global0.b, 1870u), arg_0.d), arg_0.c).d.b.x <= ~global0.c));
    let var_1 = -167f;
    var_0 = vec3<bool>(false, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x + 701f), func_4(Struct_4(0i, vec4<u32>(72396u, 47935u, 0u, global1.b), Struct_2(vec4<f32>(-1373f, 458f, arg_0.c.a.x, 1000f), arg_0.c.b), u_input.a.x), Struct_2(global1.a, arg_0.c.b)).c.x) >= -1175f), false);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, 1175f, 1000f, 747f) + vec4<f32>(global0.a, -550f, arg_1.x, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, arg_0.c.a.x, arg_0.c.a.x, var_1) * global1.a))))), countOneBits(func_6(arg_0.c, vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), true), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, global0.c, -18854i), vec4<i32>(global0.c, global0.c, global0.c, 1i))).b.x) | 4294967295u);
    var var_3 = arg_0.c;
    return func_4(func_6(arg_0.c, select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), all(var_0.xy)), all(!vec4<bool>(var_0.x, false, true, true))), !vec4<bool>(var_0.x, true, false, !var_0.x), abs(-(~arg_0.a))), func_5(func_4(Struct_4(-14534i, reverseBits(arg_0.b), arg_0.c, ~global0.c), arg_0.c), func_4(Struct_4(~global0.c, arg_0.b, Struct_2(vec4<f32>(arg_0.c.a.x, var_2.a.x, var_3.a.x, 822f), var_2.b), u_input.a.x), func_2(0i).c), _wgslsmith_f_op_vec4_f32(vec4<f32>(797f, -497f, 175f, _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1227f, 494f, 1535f, arg_0.c.a.x) * vec4<f32>(var_1, arg_0.c.a.x, arg_1.x, var_1)))), var_0.zx));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    let var_0 = func_7(func_6(func_5(func_4(func_2(global0.c), Struct_2(global0.b, global1.b)), func_4(Struct_4(global0.c, arg_0, Struct_2(global0.b, 140747u), u_input.a.x), Struct_2(global1.a, 4294967295u)), global0.b, !vec2<bool>(false, arg_2)), !(!vec4<bool>(arg_2, false, true, arg_2)), select(select(vec4<bool>(false, false, arg_2, arg_2), !vec4<bool>(arg_2, true, false, false), !vec4<bool>(arg_2, arg_2, false, arg_2)), vec4<bool>(arg_2, u_input.a.x < 41481i, any(vec4<bool>(arg_2, false, arg_2, true)), 61776i >= u_input.a.x), true), -1i), global1.a.xyy);
    var var_1 = max(~min(var_0.d.a, arg_1.d.x) << (_wgslsmith_dot_vec4_u32(abs(var_0.a << (var_0.a % vec4<u32>(32u))), ~(~arg_0)) % 32u), arg_1.d.x ^ 4294967295u);
    return arg_1;
}

fn func_8(arg_0: u32, arg_1: Struct_5, arg_2: vec3<i32>) -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.b), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(44290u, global0.d.x, global1.b) << (arg_0 % 32u), ~global0.d.x));
    let var_0 = func_2(_wgslsmith_mult_i32(u_input.a.x, abs(arg_1.c)));
    global0 = func_1(vec4<u32>(1u, 1u, func_5(Struct_3(_wgslsmith_mod_vec4_u32(var_0.b, vec4<u32>(0u, 49865u, 1329u, arg_1.d.x)), global1.b != 0u, var_0.c.a, Struct_1(arg_1.d.x, vec4<i32>(arg_2.x, arg_2.x, 2305i, arg_2.x)), ~27182u), func_4(func_6(var_0.c, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), arg_2.x), var_0.c), func_7(func_6(var_0.c, vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), u_input.a.x), _wgslsmith_div_vec3_f32(global1.a.yyy, global0.b.xwx)).c, vec2<bool>(true, any(vec3<bool>(false, false, false)))).b, ~1u), arg_1, true);
    global0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1054f, 185f, arg_1.a, global1.a.x))))))), ~2147483647i, vec3<u32>(~global1.b, func_2(-13651i).b.x, 0u));
    var var_1 = var_0.c.b & ~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(func_1(vec4<u32>(79864u, 2330u, global0.d.x, 3908u), arg_1, true).d, ~vec3<u32>(var_0.c.b, 1u, 1u)));
    return Struct_1(_wgslsmith_mult_u32(firstTrailingBit(~(~30364u)), _wgslsmith_div_u32(73445u & global1.b, ~4294967295u)), vec4<i32>(_wgslsmith_mult_i32(-27997i, arg_2.x), 522i, u_input.a.x, func_6(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(666f, var_0.c.a.x, 301f, var_0.c.a.x), vec4<f32>(arg_1.a, var_0.c.a.x, -581f, 175f)), 48689u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_1.c).d));
}

fn func_9(arg_0: Struct_1) -> Struct_1 {
    let var_0 = abs(arg_0.b);
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x))))), 430f, -1000f), 1i, func_2(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, u_input.a.x, 1i, 0i), var_0)) >> (arg_0.a % 32u)).b.xxy);
    var var_1 = false;
    var var_2 = -1i == ~_wgslsmith_mult_i32(~(-39086i) >> (_wgslsmith_sub_u32(global0.d.x, global0.d.x) % 32u), 1i);
    global1 = func_5(func_7(func_6(func_2(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)).c, vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), false), _wgslsmith_mod_i32(-20278i, ~2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 535f, global1.a.x) + vec3<f32>(1f, 462f, _wgslsmith_f_op_f32(-global0.a)))), Struct_3(func_6(func_2(1i).c, vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, true), -firstTrailingBit(-27368i)).b, false, func_2(firstTrailingBit(-2147483647i)).c.a, arg_0, 0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, global0.a, func_2(-75999i).c.a.x, global0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 150f, global1.a.x, global0.b.x))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_7(Struct_4(0i, vec4<u32>(global0.d.x, 42135u, 137775u, 4294967295u), Struct_2(vec4<f32>(191f, 912f, 671f, global1.a.x), global0.d.x), -2147483647i), global1.a.ywz).b), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(func_8(_wgslsmith_mod_u32(global1.b, _wgslsmith_mod_u32(~0u, ~24599u)), func_1(vec4<u32>(94323u, global0.d.x, global0.d.x, 4294967295u) ^ countOneBits(vec4<u32>(global0.d.x, 44292u, 37964u, global1.b)), Struct_5(global1.a.x, vec4<f32>(global1.a.x, -2608f, global0.b.x, global0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(10105i, global0.c, u_input.a.x), vec3<i32>(-14602i, 0i, u_input.a.x)), vec3<u32>(global0.d.x, 1u, global0.d.x) ^ global0.d), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false))), vec3<i32>(u_input.a.x, 31381i, ~(-18061i ^ global0.c))));
    var var_1 = ~global0.d;
    let var_2 = func_8(~(_wgslsmith_sub_u32(global1.b << (global1.b % 32u), var_1.x) >> (~(34596u ^ var_0.a) % 32u)), Struct_5(264f, vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.a.x, global0.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2523f + global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), 2147483647i, vec3<u32>(global1.b, 1u, firstTrailingBit(4294967295u)) | (global0.d >> ((vec3<u32>(4294967295u, 33650u, 0u) >> (global0.d % vec3<u32>(32u))) % vec3<u32>(32u)))), min(~func_8(175489u, func_1(vec4<u32>(0u, 10429u, global0.d.x, 4294967295u), Struct_5(690f, global0.b, u_input.a.x, vec3<u32>(4294967295u, global0.d.x, var_1.x)), false), firstLeadingBit(vec3<i32>(1i, 2147483647i, 1i))).b.wyx, abs(_wgslsmith_sub_vec3_i32(var_0.b.zyw, var_0.b.xxz)) & vec3<i32>(u_input.a.x, 1i, reverseBits(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, var_1.x, var_1.x, var_0.a), vec4<u32>(32843u, var_1.x, 1u, var_1.x))) | firstLeadingBit(reverseBits(vec4<u32>(0u, var_0.a, var_2.a, global1.b))), ~vec4<u32>(62008u ^ var_1.x, var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(20470u, 4294967295u), vec2<u32>(var_1.x, global0.d.x)), 90105u), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, true), false)), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, var_1.x, global0.d.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, 50953u, 68269u, 5716u), vec4<u32>(global1.b, 0u, var_2.a, 0u), vec4<u32>(global1.b, 0u, 45276u, 0u))), ~vec4<u32>(4294967295u, var_2.a, 4294967295u, 1u)), _wgslsmith_f_op_f32(-global1.a.x), vec2<u32>(~func_6(Struct_2(global0.b, 0u), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), _wgslsmith_mod_i32(global0.c, var_0.b.x)).c.b, ~global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-314f * -2276f))))));
}

