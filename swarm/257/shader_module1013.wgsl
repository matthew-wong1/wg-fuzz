struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> bool {
    global0 = Struct_2(global0.e, global0.b, arg_2.a, arg_2.a, global0.a);
    global0 = Struct_2(Struct_1(~(~global0.e.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(920f))), max(_wgslsmith_clamp_vec3_i32(-global0.a.c, global0.b.zxz & vec3<i32>(11628i, 1i, -5480i), vec3<i32>(9332i, arg_2.a, -2147483647i)), global0.e.c), -938f, select(_wgslsmith_clamp_vec2_u32(max(global0.e.e, u_input.b.xx), vec2<u32>(6852u, 8435u), u_input.a), vec2<u32>(abs(global0.e.e.x), 4294967295u), arg_0.xy)), -vec4<i32>(0i, 34985i, 1i, _wgslsmith_div_i32(-14658i, global0.d)), _wgslsmith_clamp_i32(arg_2.a, global0.c, 2147483647i), min(-_wgslsmith_mod_i32(min(arg_2.a, 1i), ~14513i), global0.e.c.x), global0.a);
    global0 = Struct_2(global0.a, vec4<i32>(-1i) * -global0.b, _wgslsmith_mult_i32(~(-2147483647i), reverseBits(arg_2.a)) & 36547i, ~_wgslsmith_add_i32(-19870i, firstLeadingBit(global0.d ^ 5964i)), global0.e);
    var var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(global0.e.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.d, 471f) * _wgslsmith_f_op_f32(1360f - 1277f))), select(~global0.b.wxy, -vec3<i32>(global0.c, 0i, -4645i), vec3<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !arg_0.x)), arg_1, vec2<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.b.x, global0.e.e.x, 1u)), u_input.b.x)), vec4<i32>(~30188i, countOneBits(1i), abs(1i), ~select(-2147483647i, -17705i, arg_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, ~(~global0.c), -global0.c), ~(-vec3<i32>(arg_2.a, arg_2.a, arg_2.a))), global0.a.c.x, global0.a);
    return arg_0.x;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = (all(vec3<bool>(true, true, false)) & any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true))) == all(vec3<bool>(select(arg_0.a <= global0.d, arg_0.b.x > arg_0.b.x, true), true, countOneBits(1i) <= max(arg_0.a, arg_0.a)));
    var var_1 = vec3<u32>(~global0.a.a, ~u_input.b.x, u_input.a.x ^ ~(~46838u));
    var_0 = func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, _wgslsmith_mod_i32(arg_0.a, 2147483647i) < -13636i, true), 1122f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1730f + arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(step(global0.a.b, 417f))))), arg_0);
    let var_2 = Struct_5(Struct_4(_wgslsmith_clamp_vec3_i32(global0.a.c, global0.b.yyz, ~_wgslsmith_mod_vec3_i32(global0.a.c, vec3<i32>(arg_0.a, arg_0.a, global0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b.x, 1503f, -510f, 1502f))) * vec4<f32>(-550f, 704f, -143f, 476f))), Struct_3(arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(arg_0.b))), u_input.b.wzx), global0.a, vec3<i32>(-(arg_0.a & -global0.b.x), ~min(countOneBits(global0.a.c.x), _wgslsmith_mod_i32(global0.b.x, 0i)), arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, abs(1u), var_1.x, 4294967295u), select(u_input.b, vec4<u32>(4294967295u, ~7152u, _wgslsmith_mult_u32(0u, u_input.a.x), 38865u), select(arg_0.a >= global0.b.x, true, global0.a.d != arg_0.b.x))));
    var_0 = true;
    return Struct_2(var_2.b, vec4<i32>(global0.e.c.x, firstTrailingBit(_wgslsmith_mult_i32(-25743i, i32(-1i) * -28847i)), arg_0.a, _wgslsmith_mult_i32(var_2.b.c.x, (arg_0.a | arg_0.a) >> (~var_2.b.e.x % 32u))), countOneBits(-30226i), -(~(i32(-1i) * -2147483647i) ^ var_2.b.c.x), Struct_1(global0.e.e.x, 1f, _wgslsmith_mod_vec3_i32(max(global0.a.c, abs(vec3<i32>(global0.b.x, -2147483647i, 0i))), -global0.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, -397f) * _wgslsmith_f_op_f32(-1122f - var_2.a.b.x))), var_1.yz));
}

fn func_1() -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(global0.b, firstLeadingBit(vec4<i32>(-646i, global0.d, global0.c, global0.b.x))) & _wgslsmith_mod_i32(67821i, _wgslsmith_mult_i32(global0.d, i32(-1i) * -2303i)), global0.c);
    var var_1 = 42246i ^ abs(min(~3226i, var_0.x) ^ reverseBits(_wgslsmith_div_i32(-2147483647i, -1i)));
    global0 = func_2(Struct_3(~50864i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(658f, 1624f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.b, global0.e.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.b, global0.e.b) * vec2<f32>(global0.a.d, global0.a.d)), true)))));
    var_0 = global0.b.xz;
    var var_2 = _wgslsmith_add_vec4_u32(max(vec4<u32>(~u_input.a.x, ~(38354u >> (u_input.a.x % 32u)), min(u_input.a.x, 1u), _wgslsmith_add_u32(1365u, _wgslsmith_mult_u32(46357u, u_input.a.x))), vec4<u32>(1u, reverseBits(~global0.e.e.x), 4294967295u ^ (global0.e.a ^ global0.a.a), global0.e.e.x ^ u_input.b.x)), reverseBits(~u_input.b));
    return _wgslsmith_div_u32(0u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.e, vec4<i32>(select(1i, ~max(global0.d, global0.a.c.x), true), _wgslsmith_div_i32(global0.c, 9807i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global0.b, global0.b), vec4<i32>(-2147483647i, global0.d, global0.a.c.x, 0i)) ^ -2147483647i, -2292i), -2147483647i, 0i, Struct_1(_wgslsmith_div_u32(func_1(), ~min(global0.e.a, 29286u)), _wgslsmith_f_op_f32(-global0.e.b), global0.a.c, func_2(Struct_3(1i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.e.b, 1286f))))).a.b, global0.a.e | vec2<u32>(u_input.a.x, global0.e.a)));
    let var_0 = _wgslsmith_f_op_f32(global0.e.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.b * global0.e.d) * global0.a.d), 1767f))));
    var var_1 = global0.e;
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    var_1 = global0.e;
    var var_3 = func_2(Struct_3(_wgslsmith_div_i32(_wgslsmith_add_i32(-global0.e.c.x, _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(-68379i, var_1.c.x, -5937i))), _wgslsmith_dot_vec2_i32(vec2<i32>(46276i, global0.e.c.x), func_2(Struct_3(global0.e.c.x, vec2<f32>(var_0, var_1.d))).b.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 424f) * vec2<f32>(var_2, var_1.d))))))).e;
    let var_4 = Struct_5(Struct_4(~_wgslsmith_mult_vec3_i32(-vec3<i32>(-23468i, 33363i, -22366i), ~vec3<i32>(var_3.c.x, 0i, 2380i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-877f, -645f, 1000f, var_1.d))), Struct_3(-(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 350f)) * vec2<f32>(-1497f, -137f))), ~_wgslsmith_div_vec3_u32(vec3<u32>(30573u, var_1.a, 0u), vec3<u32>(36521u, 25489u, 66859u))), Struct_1(func_1(), _wgslsmith_f_op_f32(-var_1.d), global0.e.c, _wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_div_vec2_u32(~var_1.e, var_3.e)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(func_2(Struct_3(var_1.c.x, vec2<f32>(176f, -1639f))).b.wxx, abs(var_3.c)), -vec3<i32>(-1i, -var_3.c.x, -global0.a.c.x)), func_2(Struct_3(0i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, -592f), vec2<f32>(global0.a.b, -562f)))))).a.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b.xzw, _wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(f32(-1f) * -996f)));
}

