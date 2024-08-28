struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = vec2<i32>(firstLeadingBit(0i) ^ arg_1.b.x, _wgslsmith_add_i32(arg_3, _wgslsmith_clamp_i32(abs(i32(-1i) * -15702i), arg_1.b.x, arg_1.b.x)));
    var var_1 = arg_2;
    var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(28738u, 4294967295u, 13880u), u_input.a.x) <= ~878u, var_1.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -120f), -2268f)), arg_0);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = ~(vec4<i32>(1i >> (1u % 32u), -2147483647i, ~(-46173i), reverseBits(-arg_0)) >> ((vec4<u32>(arg_2 << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(31965u, 1u), vec2<u32>(37721u, 17919u)), ~arg_2, arg_2 << (0u % 32u)) | vec4<u32>(abs(45514u), ~arg_2, 82293u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.a))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(reverseBits(u_input.c.x), arg_1.b.b.x) ^ 41343i, arg_0);
    var_1 = u_input.c.x;
    global0 = ~1i;
    let var_2 = u_input.a.x;
    return arg_3.c;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = ~u_input.b.xz;
    let var_1 = Struct_2(-2147483647i >= u_input.d, arg_2, u_input.d >= 0i);
    let var_2 = Struct_1(false, vec2<i32>(1i, -47206i) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(47618u, var_0.x), min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.b.x, var_0.x))), firstTrailingBit(vec2<u32>(var_0.x, 29001u)), vec2<u32>(4294967295u, _wgslsmith_mult_u32(80940u, var_0.x))) % vec2<u32>(32u)));
    global0 = max(-abs(-var_2.b.x), var_1.b.b.x);
    var_0 = u_input.a.xx;
    return !select(select(!select(vec3<bool>(var_2.a, var_1.a, var_1.b.a), vec3<bool>(true, false, true), false), select(vec3<bool>(var_2.a, true, var_1.c), select(vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(var_1.c, false, var_2.a), var_2.a), vec3<bool>(arg_2.a, var_1.c, var_2.a)), vec3<bool>(var_2.a, var_2.a || true, !var_2.a)), !vec3<bool>(true, var_1.b.a, u_input.d <= -1i), vec3<bool>(var_1.a, all(select(vec2<bool>(true, var_2.a), vec2<bool>(var_1.a, true), true)), func_3(u_input.c.x, var_1, var_0.x, var_1) && !arg_2.a));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1538f, 2570f) - _wgslsmith_f_op_f32(func_2(arg_0, Struct_1(arg_1, vec2<i32>(arg_2, arg_2)), Struct_1(arg_1, ~u_input.c.yy), ~_wgslsmith_add_i32(0i, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(169f, -2163f) * vec2<f32>(arg_0, -1115f)))), vec2<f32>(arg_0, arg_0)))), Struct_1(func_3(max(reverseBits(arg_3), 22246i & u_input.d), Struct_2(!arg_1, Struct_1(false, vec2<i32>(-21767i, arg_2)), true), u_input.b.x, Struct_2(all(vec3<bool>(true, arg_1, true)), Struct_1(arg_1, vec2<i32>(arg_2, 1i)), any(vec3<bool>(false, arg_1, arg_1)))), vec2<i32>(-arg_2, _wgslsmith_clamp_i32(arg_3, arg_3 ^ 0i, select(arg_2, arg_3, arg_1)))));
    global0 = abs(-42509i);
    let var_1 = min(u_input.c.wy, vec2<i32>(-7468i, arg_2));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(-1253f, -1243f)), _wgslsmith_f_op_f32(floor(arg_0))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-221f, 1000f), vec2<f32>(743f, -991f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1218f, -1446f) + vec2<f32>(arg_0, -1342f)), vec2<bool>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(128f, 1120f)))))));
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(99937u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.a.x, u_input.b.x) << (u_input.b % vec3<u32>(32u))), ~u_input.b.x, 4294967295u));
    return Struct_2(arg_1, Struct_1(var_0.x, var_1), !(var_0.x & true));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(arg_1.x, -2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 58062u)), 15953u) % 32u));
    var var_1 = func_1(1000f, true, -(arg_1.x | ~(-1i)), u_input.c.x).b;
    var var_2 = !select(func_4(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), func_1(-819f, true, var_1.b.x | -14944i, arg_2.b.b.x).b), !vec3<bool>(all(vec2<bool>(true, false)), u_input.c.x > arg_2.b.b.x, var_1.a), vec3<bool>(arg_2.b.a | false, true, select(arg_2.b.a, var_1.a, false) | func_3(arg_1.x, arg_2, 39576u, arg_2)));
    var var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(f32(-1f) * -356f))), !(!arg_2.b.a), ~(-43390i), -1i).b;
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, min(-1i, var_0)), -(vec2<i32>(7665i, arg_1.x & var_3.b.x) >> (((u_input.a.xz & vec2<u32>(u_input.b.x, 1u)) << (~vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_2(var_2.x, Struct_1(true, _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.c.zy, arg_1), abs(var_1.b & vec2<i32>(0i, 0i)))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(2147483647i, 1i);
    global0 = _wgslsmith_mult_i32(u_input.d, -10115i);
    let var_0 = func_5(-1458f, vec2<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.d, -12872i), i32(-1i) * -1i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f - 170f)), true, -_wgslsmith_mod_i32(~(-56265i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, 1605i), u_input.c.wxy)), ~2147483647i));
    let var_1 = 21665u;
    let var_2 = Struct_2(true, var_0.b, var_0.b.a);
    global0 = _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(var_0.b.b, ~(-vec2<i32>(var_0.b.b.x, 1i))));
    var var_3 = ~select(countOneBits(countOneBits(vec4<u32>(var_1, var_1, 1u, 4294967295u))), vec4<u32>(u_input.b.x, 71848u, 0u, u_input.a.x), select(select(vec4<bool>(var_0.b.a, true, true, false), !vec4<bool>(false, var_0.b.a, false, var_2.c), !var_0.a), select(select(vec4<bool>(var_0.a, var_0.c, var_2.c, var_2.b.a), vec4<bool>(var_0.a, true, true, true), var_0.a), vec4<bool>(var_0.c, var_2.b.a, var_0.c, var_2.c), all(vec2<bool>(var_0.c, var_0.b.a))), true));
    global0 = countOneBits(var_2.b.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1, 82891u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2183f - -1226f) * _wgslsmith_f_op_f32(1418f - -182f)), -1427f)))));
}

