struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec3<f32> {
    global0 = Struct_2(global0.d.a, !(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(373i, arg_0, 4641i, 16437i), vec4<i32>(global0.d.b.x, -1i, 1i, arg_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.c.x, 2147483647i, global0.d.c.x), vec3<i32>(arg_0, 1i, -2147483647i)), 2147483647i) != _wgslsmith_mult_i32(-1i, ~global0.d.c.x)), Struct_1(global0.a, abs(global0.c.b), ~(-global0.c.c), 246f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(555f, arg_1.x, global0.d.a.x)))), global0.c.c, vec2<i32>(arg_0, 18575i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -998f)))));
    global1 = global0.b;
    global1 = true & any(!vec4<bool>(-1000f >= arg_1.x, true, select(global0.b, true, false), any(vec3<bool>(global0.b, global0.b, false))));
    let var_0 = 8072u;
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(global0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.c.a, _wgslsmith_f_op_vec3_f32(global0.c.a + vec3<f32>(arg_1.x, global0.c.a.x, -337f))))))), true, global0.c, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.a + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1611f, arg_1.x, arg_1.x), global0.c.a, vec3<bool>(true, global0.b, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, -470f, global0.a.x))) * global0.c.a)), global0.c.b, vec2<i32>(~(~(-1i)), 31448i), -169f));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-858f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.a - global0.a)))), global0.d.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0.xz;
    var var_1 = reverseBits(0u);
    return arg_2.a.c.x << (4294967295u % 32u);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = -2147483647i;
    var var_1 = vec3<i32>(~(-global0.d.b.x), ~(i32(-1i) * -8586i), 2147483647i);
    let var_2 = -451f;
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec4_i32(-(vec4<i32>(var_1.x, global0.d.c.x, -41926i, -2147483647i) & vec4<i32>(global0.d.c.x, var_1.x, 1i, 2147483647i)), firstTrailingBit(vec4<i32>(-1i, var_1.x, -10301i, global0.c.c.x)) >> (~vec4<u32>(23197u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1645f))), _wgslsmith_f_op_f32(exp2(global0.d.d))))), var_2, Struct_3(global0.d, global0.d, Struct_2(global0.d.a, true, global0.c, Struct_1(global0.a, var_1.yz, vec2<i32>(6394i, global0.c.b.x) >> (u_input.a.yw % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(-495f)))), select(global0.b, var_2 > -1587f, false) && false));
    var_0 = -35511i;
    return 31978i;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c.a, vec3<f32>(-1919f, _wgslsmith_f_op_f32(ceil(-1131f)), _wgslsmith_f_op_f32(-1087f + arg_1.x)))), -(~(-_wgslsmith_mod_vec2_i32(global0.d.b, vec2<i32>(11086i, global0.c.c.x)))), global0.d.b << (vec2<u32>(4294967295u, 84525u) % vec2<u32>(32u)), global0.c.d);
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_3.x, 46929u), vec2<u32>(1u, 1u), global0.b), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.x, 58026u), vec2<u32>(arg_3.x, 1u))), u_input.a.x)), ~vec3<u32>(~reverseBits(u_input.a.x), u_input.a.x, u_input.a.x));
    var var_2 = vec2<i32>(var_0.c.x, abs(firstLeadingBit(arg_2))) & reverseBits(~global0.c.c);
    let var_3 = ~(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2, global0.c.b.x, 49428i), abs(vec3<i32>(var_0.c.x, global0.d.c.x, -42682i))) & (~vec3<i32>(0i, -1i, -2147483647i) ^ (vec3<i32>(-1i, var_2.x, var_0.b.x) ^ vec3<i32>(var_0.b.x, 2147483647i, -2147483647i)))) << (vec3<u32>(~abs(4294967295u), ~reverseBits(~59249u), _wgslsmith_dot_vec3_u32(u_input.a.yxy, u_input.a.yww)) % vec3<u32>(32u));
    var var_4 = any(!vec3<bool>(!(var_3.x == -21807i), global0.b, false));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-568f, global0.d.d, -1000f))))))), ~vec2<i32>(abs(1i ^ var_3.x), global0.c.c.x), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(arg_2, var_3.x)), 1000f);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.d.d, _wgslsmith_f_op_f32(ceil(global0.a.x))));
    global1 = (min(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.wz, _wgslsmith_mult_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, u_input.a.x)))) & _wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.a.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz)), vec2<u32>(u_input.a.x, u_input.a.x))) != u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-153f, 843f, arg_1.a.d, arg_3.d) - _wgslsmith_f_op_vec4_f32(vec4<f32>(906f, 431f, 1701f, var_1) * vec4<f32>(392f, arg_3.d, 1000f, -1575f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, -889f, arg_1.b.a.x, 313f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f - arg_3.a.x)), -1279f, _wgslsmith_f_op_f32(min(var_1, 1371f)), global0.d.d)))));
    let var_3 = _wgslsmith_dot_vec3_u32(~u_input.a.wwz, min(u_input.a.xww, ~abs(_wgslsmith_add_vec3_u32(u_input.a.xzx, vec3<u32>(0u, u_input.a.x, u_input.a.x)))));
    return arg_1;
}

fn func_1() -> Struct_3 {
    var var_0 = !global0.b;
    var_0 = true;
    let var_1 = func_6(select(select(!vec3<bool>(false, false, global0.b), vec3<bool>(select(false, global0.b, global0.b), all(vec3<bool>(true, global0.b, false)), true), any(!vec4<bool>(global0.b, global0.b, global0.b, false))), select(!(!vec3<bool>(global0.b, true, global0.b)), vec3<bool>(true, true, true), true), global0.b), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.a)) - global0.d.a), ~global0.c.b, firstTrailingBit(max(vec2<i32>(global0.d.b.x, global0.d.c.x), global0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(481f, 1191f) + _wgslsmith_f_op_f32(abs(327f)))), func_5(!any(vec4<bool>(false, global0.b, global0.b, false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.a.x, global0.a.x, 648f, global0.d.d) - vec4<f32>(1992f, global0.a.x, global0.c.a.x, 887f)))), func_2(global0.b), vec3<u32>(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x)), Struct_2(global0.c.a, global0.b || any(vec3<bool>(false, global0.b, global0.b)), global0.c, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.a.x, global0.a.x, global0.c.d))), global0.c.c, _wgslsmith_div_vec2_i32(global0.d.c, vec2<i32>(global0.d.b.x, -36784i)), global0.a.x)), any(select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, global0.b, global0.b), !global0.b))), vec3<bool>(any(select(select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, false, true)), vec3<bool>(false, global0.b, true), select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, true, false), vec3<bool>(global0.b, false, global0.b)))), !(-46854i >= func_4(vec3<f32>(global0.c.a.x, global0.d.d, 974f), global0.a.x, Struct_3(global0.c, Struct_1(vec3<f32>(-137f, global0.c.a.x, -1263f), global0.c.c, global0.c.b, 696f), Struct_2(global0.a, global0.b, global0.d, Struct_1(vec3<f32>(-396f, 753f, 203f), global0.d.b, vec2<i32>(global0.d.c.x, 0i), -1711f)), true))), any(vec4<bool>(true, false, global0.b, any(vec2<bool>(global0.b, true))))), func_5(!all(vec4<bool>(global0.b, global0.b, false, true)) && any(vec2<bool>(false, global0.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-505f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -512f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, -148f) * _wgslsmith_f_op_f32(min(232f, -141f)))), i32(-1i) * -reverseBits(1i), reverseBits(firstTrailingBit(abs(vec3<u32>(1u, 61526u, 1u))))));
    let var_2 = var_1.c;
    var_0 = any(select(!(!select(vec3<bool>(true, global0.b, false), vec3<bool>(true, var_2.b, var_1.d), true)), vec3<bool>(true, true, false), all(vec4<bool>(global0.d.a.x != var_2.a.x, u_input.a.x <= u_input.a.x, var_1.c.b, var_1.c.b))));
    return func_6(select(vec3<bool>(true, var_2.b, global0.b), !select(!vec3<bool>(var_1.d, var_1.d, var_1.c.b), vec3<bool>(var_2.b, var_2.b, false), global0.b), select(vec3<bool>(all(vec4<bool>(false, var_1.d, global0.b, true)), true, true), select(select(vec3<bool>(false, var_1.d, var_1.c.b), vec3<bool>(var_2.b, false, true), vec3<bool>(true, var_2.b, false)), vec3<bool>(true, false, false), var_2.c.d >= var_2.d.d), vec3<bool>(false, var_2.b, !var_2.b))), func_6(select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.b, var_1.c.b, false), var_2.b), vec3<bool>(var_1.d && true, select(var_2.b, var_1.d, var_2.b), true), vec3<bool>(var_1.c.b, true, var_1.d)), func_6(!select(vec3<bool>(global0.b, true, true), vec3<bool>(true, var_2.b, var_1.d), false), func_6(select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(true, true, true), global0.b), func_6(vec3<bool>(true, false, var_2.b), var_1, vec3<bool>(var_2.b, false, true), Struct_1(var_1.a.a, vec2<i32>(-2147483647i, 37820i), var_2.c.b, var_1.c.c.a.x)), vec3<bool>(true, true, true), func_5(var_1.c.b, vec4<f32>(var_2.c.d, var_1.a.d, var_2.d.a.x, -1206f), global0.c.c.x, u_input.a.zzx)), select(vec3<bool>(true, global0.b, false), vec3<bool>(false, global0.b, global0.b), !vec3<bool>(var_1.d, var_1.d, global0.b)), func_5(var_1.a.a.x > -314f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1469f, var_1.a.d, global0.c.d, var_1.a.a.x))), -2147483647i, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.zzz))), !(!(!vec3<bool>(false, false, global0.b))), var_2.c), select(select(!(!vec3<bool>(false, var_1.c.b, var_1.c.b)), vec3<bool>(true, true, false), !vec3<bool>(global0.b, global0.b, true)), select(vec3<bool>(var_2.b, !var_1.c.b, !var_2.b), !(!vec3<bool>(false, var_1.d, var_2.b)), true), global0.b), Struct_1(_wgslsmith_f_op_vec3_f32(-func_6(select(vec3<bool>(var_1.c.b, global0.b, false), vec3<bool>(true, var_2.b, var_1.d), true), func_6(vec3<bool>(true, false, var_1.d), var_1, vec3<bool>(false, var_1.d, true), Struct_1(vec3<f32>(-1000f, -1000f, 414f), global0.d.c, vec2<i32>(1i, 0i), -822f)), !vec3<bool>(true, var_1.d, false), Struct_1(vec3<f32>(var_1.c.d.a.x, global0.c.a.x, var_1.a.a.x), var_1.a.b, vec2<i32>(1978i, var_2.d.b.x), -1002f)).c.d.a), firstLeadingBit(global0.d.b), ~min(global0.c.c, _wgslsmith_add_vec2_i32(var_1.a.c, var_1.c.c.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.d, 1734f)), var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(!select(vec3<bool>(any(vec2<bool>(true, global0.b)), true, any(vec4<bool>(global0.b, global0.b, global0.b, global0.b))), !vec3<bool>(true, true, global0.b), select(!vec3<bool>(true, false, global0.b), select(vec3<bool>(true, true, false), vec3<bool>(false, global0.b, true), false), global0.b || global0.b)));
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 16295u, 8029u), u_input.a))), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(abs(u_input.a.x), u_input.a.x, 36171u, 31241u ^ u_input.a.x)), vec4<u32>(~u_input.a.x, 1u, (u_input.a.x >> (u_input.a.x % 32u)) & (u_input.a.x << (4294967295u % 32u)), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))));
    var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.a.x, var_1.x), (~var_1.x >> (var_1.x % 32u)) << (u_input.a.x % 32u), 18120u, _wgslsmith_clamp_u32(5623u, abs(1u), 1u)) >> (~firstLeadingBit(~firstTrailingBit(vec4<u32>(71583u, var_1.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>((global0.c.b.x << (u_input.a.x % 32u)) >> (var_1.x % 32u), global0.d.b.x, -var_0.b.c.x), select(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.d.b.x, global0.d.b.x, global0.d.b.x), vec3<i32>(global0.c.c.x, -17598i, var_0.a.c.x))), vec3<i32>(-27401i, countOneBits(global0.d.b.x), abs(2147483647i)), _wgslsmith_add_u32(var_1.x, 4294967295u) >= firstTrailingBit(u_input.a.x))), -reverseBits(select(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(8369i, -2147483647i, var_0.c.c.c.x), vec3<bool>(true, global0.b, true))) ^ (abs(~vec3<i32>(-9781i, global0.d.c.x, 1i)) | -max(vec3<i32>(var_0.b.b.x, global0.d.b.x, global0.c.c.x), vec3<i32>(1i, global0.c.b.x, 2147483647i))));
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-655f - global0.d.a.x) - 2178f), global0.d.a.x, var_0.c.a.x), global0.b | false, func_1().a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d, -1723f, var_0.c.a.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, var_0.b.d, 679f) - var_0.c.c.a))), -abs(func_1().b.b), ~vec2<i32>(-var_2.x, _wgslsmith_div_i32(var_2.x, var_2.x)), 564f));
    let var_4 = global0.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mult_vec3_i32(reverseBits(select(vec3<i32>(-1i, var_3.d.c.x, var_3.d.b.x), vec3<i32>(-14589i, var_0.b.b.x, var_0.b.b.x), vec3<bool>(global0.b, false, var_3.b))) << (~(vec3<u32>(var_1.x, var_1.x, var_1.x) ^ var_1.xxy) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-36095i, var_4.x, var_3.d.b.x), ~vec3<i32>(global0.d.b.x, var_3.d.b.x, 1i)) << (vec3<u32>(~1u, ~u_input.a.x, var_1.x) % vec3<u32>(32u))), ~(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, 375i), vec2<i32>(-9525i, -1i))) ^ (select(vec2<i32>(1i, var_4.x), vec2<i32>(var_0.a.c.x, -33997i), vec2<bool>(var_0.d, true)) << (abs(var_1.zw) % vec2<u32>(32u)))));
}

