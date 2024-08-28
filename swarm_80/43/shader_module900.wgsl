struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 29>;

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    global1 = array<vec3<bool>, 29>();
    global3 = arg_0;
    global1 = array<vec3<bool>, 29>();
    let var_1 = arg_0;
    return !select(vec2<bool>(true, var_1.d.x), select(arg_0.d.ww, !select(global3.d.zx, vec2<bool>(true, var_0.d.x), arg_0.d.x), global3.d.zw), arg_0.d.ww);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3;
    var var_1 = var_0;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_2)), arg_3.a.x, _wgslsmith_f_op_f32(-403f - 351f))));
    var var_4 = firstLeadingBit(var_1.c.x);
    return func_3(arg_3);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x + global3.a.x), global3.a.x), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global3.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, global3.a.x) + global3.a)))), vec2<i32>(abs(global3.b.x ^ max(arg_0.x, -34743i)), arg_0.x), global0.yz ^ vec2<u32>(global0.x, 4294967295u), global3.d);
    var var_1 = true;
    var var_2 = var_0.d.x;
    var var_3 = arg_1.x;
    global2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(4294967295u, u_input.b.x, 0u, 0u)), select(u_input.b >> (vec4<u32>(global0.x, 4294967295u, 1u, 25617u) % vec4<u32>(32u)), ~u_input.b, func_3(Struct_1(var_0.a, vec2<i32>(2147483647i, 0i), global0.zx, vec4<bool>(global3.d.x, false, false, global3.d.x))).x)), 1u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(global3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a * global3.a) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a.x, var_0.a.x), var_0.a, global3.d.x))))))), -abs(var_0.b), ~vec2<u32>(~(1u | var_0.c.x), countOneBits(0u)), !select(global3.d, global3.d, !(!vec4<bool>(false, var_0.d.x, true, false))));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global3 = func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(8869i, 1i, 26518i, arg_0.b.x)), ~(~vec4<i32>(5310i, arg_0.b.x, 4316i, 1i))), !func_4(abs(vec4<i32>(global3.b.x, u_input.a.x, -2147483647i, u_input.a.x)), select(arg_0.d.wz, !vec2<bool>(arg_0.d.x, true), false)).d.zy);
    var var_0 = Struct_1(global3.a, ~select(vec2<i32>(-1i) * -global3.b, (vec2<i32>(41538i, 7398i) | arg_0.b) & -arg_0.b, any(select(arg_0.d.yzz, arg_0.d.wzw, arg_0.d.zzy))), global3.c >> (func_4(_wgslsmith_add_vec4_i32(vec4<i32>(global3.b.x, 26234i, 1i, global3.b.x), abs(vec4<i32>(global3.b.x, -1i, global3.b.x, u_input.a.x))), !vec2<bool>(arg_0.d.x, global3.d.x)).c % vec2<u32>(32u)), vec4<bool>(true, func_4(-vec4<i32>(15750i, global3.b.x, u_input.a.x, 2147483647i), !global3.d.zw).d.x, any(!(!vec3<bool>(true, global3.d.x, arg_0.d.x))), min(global3.c.x, 15577u) >= _wgslsmith_sub_u32(global0.x, ~global0.x)));
    var var_1 = vec4<i32>(2147483647i, arg_0.b.x, ~var_0.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global3.c.x, 4294967295u, global3.c.x), _wgslsmith_add_u32(global3.c.x, 101430u), ~global0.x), u_input.b.zyy) % 32u), global3.b.x);
    var var_2 = true;
    global0 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, abs(81389u), u_input.d)), u_input.b.xxz) & u_input.b.xxw;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a), _wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1024f)) + var_0.a.x), _wgslsmith_f_op_f32(1341f * _wgslsmith_f_op_f32(abs(1000f))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1381f - arg_1.a.x), global3.a.x, _wgslsmith_f_op_f32(-global3.a.x)), vec3<f32>(853f, 112f, global3.a.x))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(ceil(-1020f))), -678f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, 1403f, arg_0.a.x))) * vec3<f32>(var_1, 539f, _wgslsmith_f_op_f32(max(2080f, 263f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-1415f * var_1)) * arg_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(300f + var_0.x), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -574f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + 733f))));
    global0 = min(u_input.b.yyz, ~(~vec3<u32>(1u, _wgslsmith_add_u32(1204u, global3.c.x), min(4294967295u, 4294967295u))));
    var var_2 = global3.c.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1085f)), -2008f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(global3.a * vec2<f32>(arg_1.a.x, -358f))))), _wgslsmith_mult_vec2_i32(func_4(-(~vec4<i32>(arg_0.b.x, global3.b.x, arg_1.b.x, global3.b.x)), arg_0.d.zz).b, -abs(global3.b)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.c.x, arg_1.c.x), _wgslsmith_mult_vec2_u32(arg_1.c, global3.c) | u_input.b.yz), arg_1.d);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = global3.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-872f, _wgslsmith_f_op_f32(abs(-355f)))))), -u_input.c, global3.c, global3.d);
    global1 = array<vec3<bool>, 29>();
    let var_2 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(arg_1, func_2(u_input.b.wy, -1145f, global3.a.x, Struct_1(var_1.a, global3.b, var_1.c, global3.d))))), reverseBits(-(arg_2.zz | vec2<i32>(-1i, -56299i))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(31566u, var_1.c.x, 46854u, global0.x), u_input.b), u_input.b), ~8706u), func_4(vec4<i32>(global3.b.x, -1i, 47599i, 81926i) ^ arg_1, !global3.d.zy).d), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.a, var_1.a, vec2<bool>(true, false)))), arg_1.zy, var_1.c, select(vec4<bool>(true, false && var_1.d.x, any(var_1.d), any(global3.d)), vec4<bool>(true, var_1.d.x, global3.a.x != -1321f, true), select(vec4<bool>(false, var_1.d.x, arg_0, var_1.d.x), !var_1.d, var_1.d))));
    global0 = vec3<u32>(1u, ~abs(~1u), abs(0u));
    return var_2;
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<bool>(66717u > arg_3.c.x, true, true);
    global0 = min(vec3<u32>(~(u_input.b.x ^ arg_1.c.x) ^ ~global0.x, func_1(func_2(vec2<u32>(0u, u_input.b.x), global3.a.x, global3.a.x, Struct_1(vec2<f32>(arg_3.a.x, -779f), arg_3.b, global0.yy, arg_1.d)).x, vec4<i32>(u_input.c.x, global3.b.x, u_input.c.x, -1i), ~vec3<i32>(arg_1.b.x, -1i, arg_1.b.x)).c.x >> (u_input.d % 32u), arg_0), vec3<u32>(~(func_6(Struct_1(arg_1.a, global3.b, global3.c, vec4<bool>(global3.d.x, true, arg_1.d.x, global3.d.x)), arg_1).c.x ^ global0.x), ~(~(~arg_3.c.x)), arg_1.c.x));
    global2 = ~u_input.d;
    global3 = arg_3;
    let var_1 = abs(_wgslsmith_add_u32(abs(u_input.b.x ^ func_1(arg_3.d.x, vec4<i32>(-2147483647i, 0i, global3.b.x, -20575i), vec3<i32>(u_input.a.x, -26846i, 1i)).c.x), abs(1u) << (arg_1.c.x % 32u)));
    return 846f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 29>();
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(max(global3.a.x, global3.a.x)))), vec2<i32>(~(-17442i), global3.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(global0.xx), vec2<u32>(u_input.d, 37664u)) >> (~(~vec2<u32>(u_input.d, 41955u)) % vec2<u32>(32u)), global3.c), vec4<bool>(!(!global3.d.x == global3.d.x), !any(global3.d), global3.d.x, (i32(-1i) * -2147483647i) > firstLeadingBit(abs(global3.b.x))));
    var var_0 = u_input.b.xyw;
    var var_1 = vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(global3.a.x - 213f), -862f);
    let var_2 = 7282i;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(~0u, func_1(global3.d.x, vec4<i32>(var_2, -1i, 30990i, 2147483647i), vec3<i32>(0i, u_input.a.x, var_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, -1000f, 736f)), Struct_1(global3.a, u_input.c, u_input.b.zz, global3.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(global3.a.x))) - var_1.x)), _wgslsmith_mult_vec2_i32(~min(global3.b, vec2<i32>(var_2, 39787i)), _wgslsmith_clamp_vec2_i32(global3.b, vec2<i32>(1i, global3.b.x ^ global3.b.x), _wgslsmith_clamp_vec2_i32(global3.b, vec2<i32>(var_2, u_input.a.x), -vec2<i32>(global3.b.x, var_2)))), min(func_6(func_4(_wgslsmith_add_vec4_i32(vec4<i32>(41661i, 0i, u_input.a.x, global3.b.x), vec4<i32>(1i, var_2, 5089i, u_input.a.x)), vec2<bool>(true, false)), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.b.x, -13278i, -18619i, -26289i), vec4<i32>(u_input.c.x, var_2, 1i, -4122i)), select(vec2<bool>(global3.d.x, true), vec2<bool>(global3.d.x, global3.d.x), global3.d.x))).c, vec2<u32>(abs(abs(1u)), u_input.d)), !select(func_6(Struct_1(global3.a, vec2<i32>(-1i, u_input.c.x), var_0.yx, global3.d), func_1(global3.d.x, vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.a.x), vec3<i32>(-1i, var_2, u_input.a.x))).d, vec4<bool>(global3.d.x & false, !global3.d.x, global3.d.x && global3.d.x, false), vec4<bool>(global3.d.x | true, u_input.a.x == u_input.a.x, true, global3.d.x == global3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(~var_2), var_2, u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.b.x, global3.b.x), abs(-1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-856f, _wgslsmith_f_op_f32(global3.a.x + var_1.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1429f, -1518f, var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-448f - -346f), var_3.a.x, func_3(Struct_1(vec2<f32>(321f, var_3.a.x), vec2<i32>(var_3.b.x, 62553i), vec2<u32>(var_0.x, var_3.c.x), vec4<bool>(var_3.d.x, false, false, true))).x)), var_3.a.x, 675f))), 56951u);
}

