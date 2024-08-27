struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, -15491i), 0u, vec2<u32>(26550u, 40794u));

var<private> global1: vec3<u32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = Struct_3(Struct_1(global0.a, 59221u, countOneBits(global1.yy)), _wgslsmith_f_op_vec3_f32(arg_1.b * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global2.x, global2.x))), vec3<f32>(499f, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(arg_0.b.x * arg_1.b.x))))));
    var var_1 = Struct_1(-_wgslsmith_sub_vec2_i32(~arg_1.a.a, ~global0.a), ~_wgslsmith_mult_u32(114584u, 12385u), _wgslsmith_clamp_vec2_u32(vec2<u32>(select(27217u, ~var_0.a.b, all(vec3<bool>(false, true, true))), 83981u), ~_wgslsmith_mult_vec2_u32(global0.c ^ arg_0.a.c, ~var_0.a.c), _wgslsmith_mult_vec2_u32(~abs(global1.yy), ~(~var_0.a.c))));
    global0 = arg_0.a;
    var_0 = Struct_3(arg_0.a, arg_1.b);
    var_1 = Struct_1(arg_0.a.a, reverseBits(max(_wgslsmith_clamp_u32(4294967295u << (0u % 32u), 4294967295u, ~global0.b), _wgslsmith_mult_u32(~var_1.b, ~0u))), vec2<u32>(firstTrailingBit(min(reverseBits(1u), 32087u)), var_0.a.b << (~(34998u ^ global0.c.x) % 32u)));
    return _wgslsmith_dot_vec3_i32(select(-(~vec3<i32>(arg_2, -41078i, 0i)) >> (~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(global1.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), -vec3<i32>(-1i, 2147483647i, _wgslsmith_add_i32(var_1.a.x, 8945i)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), vec3<i32>(2147483647i, ~(arg_1.a.a.x << (1u % 32u)), global0.a.x));
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yz)), _wgslsmith_div_i32(i32(-1i) * -29510i, func_3(Struct_3(Struct_1(global0.a, 4294967295u, vec2<u32>(u_input.a.x, 29318u)), vec3<f32>(global2.x, global2.x, 437f)), Struct_3(Struct_1(global0.a, 4294967295u, global1.xx), vec3<f32>(325f, global2.x, global2.x)), global0.a.x)) & -1i, Struct_1(global0.a, ~1u, _wgslsmith_mod_vec2_u32(global0.c ^ vec2<u32>(u_input.a.x, global1.x), vec2<u32>(0u, 1u))), vec3<bool>(_wgslsmith_f_op_f32(-global2.x) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(914f, -801f))), _wgslsmith_f_op_f32(-global2.x) > global2.x, true));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(step(-565f, 746f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1879f, -103f, 990f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-105f, var_0.a.x, -1160f)))))));
    let var_1 = _wgslsmith_f_op_f32(min(-1121f, 343f));
    var var_2 = var_0;
    let var_3 = true;
    return any(select(select(vec4<bool>(true, var_2.d.x, true, !var_2.d.x), !select(vec4<bool>(var_2.d.x, true, false, false), vec4<bool>(var_3, var_2.d.x, var_3, var_3), true), 1i >= (1i << (global1.x % 32u))), select(!(!vec4<bool>(true, true, true, var_2.d.x)), !vec4<bool>(true, false, var_2.d.x, false), true), false));
}

fn func_4(arg_0: vec4<bool>) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2879f)))), _wgslsmith_f_op_f32(f32(-1f) * -311f), -1264f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -898f, 595f)) - vec3<f32>(-1457f, 947f, var_0.x)))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    global2 = _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(!(global0.b <= 4294967295u), any(vec4<bool>(true, true, true, true)), true, func_2())));
    let var_0 = true && (-458f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1182f, _wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = vec4<u32>(global0.b, _wgslsmith_sub_u32(global0.c.x ^ _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, arg_0.x, 1u, 0u)), vec4<u32>(0u, arg_0.x, arg_0.x, global0.b) >> (vec4<u32>(0u, u_input.a.x, 34364u, global0.b) % vec4<u32>(32u))), global0.b), 4294967295u, 98370u);
    global2 = vec3<f32>(global2.x, _wgslsmith_div_f32(-448f, _wgslsmith_f_op_f32(global2.x + 216f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(1000f + 270f)) + 112f))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, -1i), -global0.a.x), vec2<i32>(_wgslsmith_add_i32(global0.a.x, 13762i), global0.a.x)), global0.a), firstLeadingBit(global0.a));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    var var_0 = vec4<bool>(all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), true))), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), true, true);
    let var_1 = Struct_3(Struct_1(vec2<i32>(arg_3, _wgslsmith_sub_i32(arg_2.a.a.x, 1i) ^ arg_2.a.a.x), global1.x, reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(arg_2.a.b, 22918u), global1.zz), u_input.a.yz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(true, false, var_0.x, false))).x * _wgslsmith_f_op_f32(-828f - 246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1491f, arg_1, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - arg_1)))));
    var_0 = select(vec4<bool>(true, any(vec2<bool>(true, true)), false, false), !vec4<bool>((var_1.a.a.x & arg_2.a.a.x) >= _wgslsmith_dot_vec2_i32(arg_2.a.a, vec2<i32>(global0.a.x, 0i)), false, all(var_0.yxz), true), true);
    let var_2 = vec3<bool>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_3, -1i), vec3<i32>(global0.a.x, 1i, 23619i)) & (arg_3 << (global0.c.x % 32u))) != (select(_wgslsmith_add_i32(global0.a.x, var_1.a.a.x), func_1(u_input.a).x, var_0.x) >> (~_wgslsmith_mult_u32(arg_2.a.b, 9174u) % 32u)), var_0.x, var_0.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(!var_0.x, false, true, select(true, !var_0.x, true)))).yx, ~reverseBits(0i), Struct_1(-vec2<i32>(30379i, ~arg_2.a.a.x), abs(select(37347u | global1.x, 8079u, arg_2.b.x > -807f)), u_input.a.xy), select(vec3<bool>(false, false, all(!vec4<bool>(var_2.x, false, var_0.x, false))), select(select(!var_0.zxz, var_0.xzz, select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(false, false, -2325f >= global2.x), true), !(any(vec2<bool>(false, true)) != var_2.x)));
    return arg_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a ^ (func_5(_wgslsmith_dot_vec2_i32(func_1(u_input.a), vec2<i32>(1i, global0.a.x) << (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(global2.x, global2.x)), Struct_3(Struct_1(vec2<i32>(global0.a.x, global0.a.x), 0u, vec2<u32>(global0.b, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-829f, -644f, 907f), vec3<f32>(global2.x, -413f, 586f))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, -1i, -1i), vec3<i32>(-2147483647i, global0.a.x, 1i)) | global0.a.x) << (~u_input.a.zx % vec2<u32>(32u)));
    var var_1 = func_1(~(vec3<u32>(65881u, abs(global1.x), min(8694u, 4294967295u)) ^ vec3<u32>(53457u, min(global0.c.x, global1.x), 1u))).x;
    var var_2 = global2.x;
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a.x & 2147483647i, -6740i), var_0.x), max(~(-var_0.x), -(~var_0.x))), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_sub_vec3_u32(u_input.a, u_input.a & vec3<u32>(global1.x, 43020u, u_input.a.x)) << (firstLeadingBit(u_input.a) % vec3<u32>(32u))) & u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-global2.x))));
}

