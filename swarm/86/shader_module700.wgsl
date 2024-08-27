struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(116f, 1583f, -394f, 305f);

var<private> global1: bool;

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = vec3<bool>(!any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), false, true);
    var var_1 = Struct_1(global0.x, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_0.x, arg_0.x, global2.x), vec4<i32>(arg_0.x, global2.x, arg_0.x, global2.x)), global2.x, i32(-1i) * -4421i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, global2.x, -2147483647i), arg_0) & _wgslsmith_add_vec4_i32(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-724f, global0.x)));
    let var_2 = Struct_2(-311f, _wgslsmith_f_op_f32(-1189f + 1000f));
    global1 = min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.a, ~0u), reverseBits(~vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.a))), u_input.c) <= 16178u;
    var var_3 = Struct_1(global0.x, arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-153f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -1429f), _wgslsmith_f_op_f32(trunc(global0.x))), 2328f)));
    return firstLeadingBit(var_3.b);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-global2.x, 5625i), arg_2.b.yy, -113f < global0.x), vec2<i32>((53108i >> (~arg_3.x % 32u)) | max(_wgslsmith_mod_i32(arg_2.b.x, arg_2.b.x), 5488i), _wgslsmith_dot_vec4_i32(max(~arg_2.b, func_3(arg_2.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.b.x, 0i, -6005i), _wgslsmith_mod_vec4_i32(arg_2.b, arg_2.b), vec4<i32>(15157i, arg_2.b.x, 8857i, 2147483647i)))));
    let var_1 = _wgslsmith_div_i32(44329i, arg_2.b.x | abs(global2.x)) & -4955i;
    global1 = select(any(vec3<bool>(arg_0, arg_0 | arg_0, true)) & true, true, true);
    var var_2 = ~0u;
    var var_3 = select(arg_1, ~_wgslsmith_clamp_vec4_u32(~abs(u_input.d), vec4<u32>(arg_3.x, u_input.b, arg_1.x, arg_3.x) & select(u_input.d, vec4<u32>(arg_3.x, arg_1.x, arg_1.x, 4294967295u), arg_0), vec4<u32>(~arg_1.x, u_input.c, 11307u, arg_1.x)), false);
    return _wgslsmith_f_op_f32(sign(arg_2.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = global2.x >> (~4294967295u % 32u);
    global2 = -(~arg_3.b.yxy) >> (~min(u_input.d.xzz, arg_0) % vec3<u32>(32u));
    var var_2 = _wgslsmith_sub_vec4_i32(-arg_2.b, _wgslsmith_sub_vec4_i32(arg_2.b, min(vec4<i32>(-1i) * -vec4<i32>(46686i, arg_3.b.x, 7306i, global2.x), arg_3.b)));
    var_2 = vec4<i32>(_wgslsmith_mult_i32((_wgslsmith_add_i32(-2147483647i, global2.x) | (1i << (arg_0.x % 32u))) << (_wgslsmith_dot_vec2_u32(~u_input.d.xw, max(u_input.d.zx, vec2<u32>(41037u, 103176u))) % 32u), func_3(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.x, 2982i, -2147483647i, global2.x), vec4<i32>(arg_2.b.x, var_2.x, 0i, -23155i)))).x), -13808i, _wgslsmith_sub_i32(3356i, ~_wgslsmith_mod_i32(27526i, 2147483647i)) << (1u % 32u), 1i);
    return false;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = true;
    let var_1 = abs(_wgslsmith_dot_vec2_i32(~(~global2.xz), vec2<i32>(global2.x, -_wgslsmith_div_i32(2147483647i, arg_0))));
    var var_2 = !select(vec4<bool>(var_0, var_0, !(!var_0), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(85597u, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, u_input.a, u_input.d.x)), _wgslsmith_f_op_f32(func_2(var_0, u_input.d, Struct_1(arg_1.b, vec4<i32>(0i, arg_0, arg_0, 3665i), global0.yw), vec2<u32>(1u, 1u))), Struct_1(-2118f, vec4<i32>(-25309i, 2147483647i, 43977i, 0i), vec2<f32>(1401f, 1090f)), Struct_1(global0.x, vec4<i32>(-30879i, arg_0, global2.x, global2.x), vec2<f32>(arg_1.b, arg_1.a)))), vec4<bool>(~(-1i) <= global2.x, !(var_0 || true), all(select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), vec2<bool>(false, false))), all(!vec4<bool>(var_0, false, false, var_0))), select(!vec4<bool>(var_0, false, false, var_0), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), false), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false), true)), !(!vec4<bool>(var_0, var_0, false, var_0))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(func_2(all(select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(true, var_0, var_2.x, var_2.x), var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.b) & u_input.d, vec4<u32>(u_input.a, 85472u, u_input.a, u_input.c)), Struct_1(arg_1.a, vec4<i32>(-2147483647i, arg_0, var_1, var_1) & vec4<i32>(-1i, global2.x, global2.x, -2147483647i), _wgslsmith_f_op_vec2_f32(global0.yy * global0.yz)), u_input.d.xx))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a, 848f)), -1579f))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(-811f)), func_3(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, arg_0, -32257i, -45362i), vec4<i32>(arg_0, arg_0, global2.x, -19745i)), select(vec4<i32>(24900i, arg_0, global2.x, -19566i), vec4<i32>(arg_0, -1i, 36047i, 41627i), true)), ~vec4<i32>(var_1, -2147483647i, arg_0, 12047i))), vec2<f32>(-383f, var_3.a));
    return !(!(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4.c.x, global0.x), -981f)) > global0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    global1 = arg_1.x;
    let var_0 = Struct_2(global0.x, global0.x);
    var var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, var_0.b, _wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1809f, -350f, -1488f, 1447f) - vec4<f32>(arg_0.c.x, 1720f, arg_0.c.x, var_0.a)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, -242f, -1000f, 1607f), vec4<f32>(arg_0.c.x, -1000f, -1160f, 1283f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 650f, arg_0.a, -1807f) + vec4<f32>(var_0.a, global0.x, 457f, var_0.a)))));
    global2 = ~func_3(-(arg_0.b | _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 1i, arg_0.b.x, 23817i), arg_0.b))).zzx;
    return _wgslsmith_add_u32(u_input.d.x, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(global2.zx, global2.zy), 30369i, ~vec4<u32>(13185u & (22593u | u_input.a), func_5(Struct_1(332f, vec4<i32>(global2.x, 47808i, global2.x, global2.x), global0.wx), vec4<bool>(false, false, false, true), func_1(global2.x, Struct_2(536f, global0.x))), ~(67158u >> (u_input.a % 32u)), 0u), select(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, global2.x, global2.x) & vec3<i32>(-24018i, global2.x, -21935i), -vec3<i32>(global2.x, global2.x, -12257i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, global2.x >> (14856u % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(-1i, global2.x, -21315i)) >> (abs(u_input.d.zxx) % vec3<u32>(32u)), countOneBits(-vec3<i32>(-16890i, -23290i, global2.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

