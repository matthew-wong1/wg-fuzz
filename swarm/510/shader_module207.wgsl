struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    global0 = !any(vec2<bool>(!(!arg_0.c.x), true));
    var var_0 = select(arg_0.c, vec2<bool>(all(select(select(vec4<bool>(false, arg_0.c.x, arg_0.c.x, true), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(true, false, arg_0.c.x, arg_0.c.x)), select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x)), !vec4<bool>(arg_0.c.x, false, arg_0.c.x, true))), !all(select(vec3<bool>(false, arg_0.c.x, false), vec3<bool>(true, arg_0.c.x, false), arg_0.c.x))), all(!(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))) || select(arg_0.c.x, true, !(!arg_0.c.x)));
    var_0 = arg_0.c;
    global0 = all(!select(select(select(arg_0.c, arg_0.c, arg_0.c), !arg_0.c, !arg_0.c.x), arg_0.c, arg_0.c));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -(~vec4<i32>(55931i >> (u_input.e.x % 32u), arg_0.a.x, firstLeadingBit(24640i), _wgslsmith_div_i32(48014i, arg_1.x))), !(!arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(208f, 1852f) * _wgslsmith_f_op_f32(min(1785f, 1000f))), _wgslsmith_f_op_f32(round(-482f)))));
    return max(arg_0.b, global1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<bool> {
    global0 = !(arg_1.a.c.x | !arg_1.b.c.x);
    global1 = _wgslsmith_clamp_vec3_u32(max(u_input.a, countOneBits(vec3<u32>(min(global1.x, u_input.e.x), func_3(arg_1.a, vec2<i32>(u_input.c, -1i), arg_1.c.a), u_input.e.x))), vec3<u32>(~9779u, ~arg_1.c.b, ~14967u), u_input.a);
    let var_0 = Struct_1(_wgslsmith_div_f32(arg_1.b.a, 1f), abs(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(arg_1.a.a.x), _wgslsmith_mod_i32(-2147483647i, u_input.c), arg_1.a.a.x, arg_1.b.b.x | 6824i), arg_1.b.b)), !select(!arg_1.c.c, vec2<bool>(true, true), select(arg_1.c.c, select(vec2<bool>(arg_1.b.c.x, true), arg_1.b.c, arg_1.b.c), true || arg_1.c.c.x)), _wgslsmith_f_op_f32(-arg_1.b.d));
    global1 = countOneBits(vec3<u32>(_wgslsmith_add_u32(0u, 1u), 1211u, func_3(arg_1.a, min(arg_1.a.a, -var_0.b.yw), arg_1.b.b.yz)));
    let var_1 = arg_1.b.c.x;
    return !(!vec2<bool>(all(vec4<bool>(var_1, var_1, false, arg_1.c.c.x)), true));
}

fn func_1() -> vec3<f32> {
    let var_0 = select(!select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, 217f, -2422f)), Struct_3(Struct_2(vec2<i32>(2147483647i, 34663i), 10299u, vec2<bool>(false, false)), Struct_1(-602f, vec4<i32>(u_input.c, -15905i, -2147483647i, u_input.d), vec2<bool>(true, false), 324f), Struct_2(vec2<i32>(2147483647i, u_input.d), global1.x, vec2<bool>(true, false)), vec4<i32>(u_input.d, u_input.c, 25526i, u_input.c))), vec2<bool>(any(vec4<bool>(true, true, true, true)), select(false, true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, 878f, 1015f)))), Struct_3(Struct_2(vec2<i32>(30207i, u_input.d), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(4294967295u, 59277u)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(trunc(-1552f)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.d, -45935i), vec4<i32>(u_input.d, -2147483647i, u_input.d, 13687i)), func_2(vec3<f32>(267f, 564f, -131f), Struct_3(Struct_2(vec2<i32>(u_input.d, -2147483647i), global1.x, vec2<bool>(true, true)), Struct_1(-2235f, vec4<i32>(u_input.d, -1i, 1i, -11110i), vec2<bool>(true, false), 527f), Struct_2(vec2<i32>(u_input.d, -13765i), global1.x, vec2<bool>(false, true)), vec4<i32>(0i, u_input.c, -2147483647i, 0i))), _wgslsmith_f_op_f32(max(-475f, 446f))), Struct_2(vec2<i32>(u_input.d, 5148i), u_input.b, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec4<i32>(~(-6480i), ~u_input.d, u_input.d, 74i))), u_input.d != u_input.d);
    let var_1 = 1u;
    let var_2 = Struct_3(Struct_2(vec2<i32>(u_input.d, u_input.d), var_1, select(!select(var_0, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true)), select(!var_0, select(vec2<bool>(false, var_0.x), var_0, vec2<bool>(var_0.x, false)), select(var_0, vec2<bool>(true, var_0.x), var_0.x)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, 599f, 1212f)), Struct_3(Struct_2(vec2<i32>(u_input.c, 0i), 76273u, var_0), Struct_1(239f, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec2<bool>(false, var_0.x), 1006f), Struct_2(vec2<i32>(-51364i, 2147483647i), var_1, vec2<bool>(true, false)), vec4<i32>(u_input.d, -10846i, u_input.c, 2147483647i))).x)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1061f, _wgslsmith_f_op_f32(f32(-1f) * -747f)), -1944f)), select(~vec4<i32>(u_input.c, 1i, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, 33277i, u_input.d) << (vec4<u32>(19644u, 15768u, global1.x, global1.x) % vec4<u32>(32u)), vec4<bool>(var_0.x, false, false, var_0.x)) << (vec4<u32>(func_3(Struct_2(vec2<i32>(u_input.d, -1i), var_1, var_0), vec2<i32>(u_input.d, u_input.c), vec2<i32>(u_input.c, u_input.d)), global1.x, var_1, u_input.a.x) % vec4<u32>(32u)), vec2<bool>(true, true), 1991f), Struct_2(vec2<i32>(0i, u_input.d), var_1, !vec2<bool>(!var_0.x, true)), firstTrailingBit(vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -2147483647i, 11045i), vec4<i32>(-1i, 1i, 0i, u_input.c)), firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.d), vec3<i32>(u_input.d, -43159i, 5956i))) >> (abs(vec4<u32>(global1.x, 13186u, 0u, 4272u)) % vec4<u32>(32u))));
    let var_3 = Struct_3(Struct_2(-var_2.a.a ^ (var_2.c.a & abs(vec2<i32>(var_2.a.a.x, var_2.a.a.x))), 0u, !var_0), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.b.d, 1647f)), _wgslsmith_f_op_f32(floor(-126f)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(var_2.d.x), var_2.c.a.x, ~(-18711i), u_input.d), select(var_2.b.b, var_2.b.b, !vec4<bool>(var_2.b.c.x, var_0.x, var_2.a.c.x, true)), var_2.d), select(var_2.a.c, select(var_0, select(var_0, vec2<bool>(false, var_0.x), vec2<bool>(true, var_2.c.c.x)), select(var_0.x, false, var_2.b.c.x)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(356f - _wgslsmith_f_op_f32(step(-686f, _wgslsmith_f_op_f32(var_2.b.a - var_2.b.d))))), Struct_2(~_wgslsmith_div_vec2_i32(var_2.d.wz ^ vec2<i32>(1i, 11485i), vec2<i32>(u_input.c, var_2.d.x) << (u_input.e % vec2<u32>(32u))), global1.x & u_input.a.x, !var_2.a.c), min(~abs(firstTrailingBit(var_2.d)), select(firstTrailingBit(vec4<i32>(var_2.c.a.x, 0i, 0i, var_2.d.x)), ~var_2.d, any(select(vec3<bool>(false, var_2.c.c.x, var_2.a.c.x), vec3<bool>(false, var_2.b.c.x, var_0.x), var_0.x)))));
    var var_4 = vec2<bool>(false, var_3.c.c.x);
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(617f, var_3.b.a, -1456f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.a, var_2.b.d, var_3.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-543f, var_3.b.a, var_3.b.d))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.b.d, 795f, var_4.x)), -1754f), -991f, -744f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a << (_wgslsmith_mult_vec3_u32(~u_input.a, vec3<u32>(u_input.e.x, ~global1.x << (_wgslsmith_mult_u32(global1.x, u_input.b) % 32u), 24512u)) % vec3<u32>(32u));
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1918f, -865f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(497f, 1000f, 1751f)))));
    global1 = u_input.a;
    global0 = !any(vec4<bool>(select(true, all(vec2<bool>(true, false)), true), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), false, true));
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec4<i32>(i32(-1i) * -1i, u_input.d, u_input.d, 0i | u_input.d), vec4<i32>(firstLeadingBit(u_input.d | u_input.d), _wgslsmith_clamp_i32(u_input.c, 0i, 0i), -38080i, 1i), var_1), _wgslsmith_f_op_f32(var_0.x + 1179f));
}

