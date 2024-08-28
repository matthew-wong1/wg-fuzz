struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, 736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-638f)) + global0.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, 2202f, 1184f) + vec3<f32>(-1000f, global0.x, -1491f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, -588f, global0.x)), u_input.d <= u_input.d))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, 876f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(select(185f, global0.x, true)), _wgslsmith_f_op_f32(249f - _wgslsmith_f_op_f32(1247f + 744f)))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(-24225i, u_input.d), -9361i, countOneBits(_wgslsmith_mod_i32(-35433i, 2147483647i))), select((vec3<i32>(u_input.d, -2147483647i, u_input.d) << (u_input.c.yzz % vec3<u32>(32u))) << ((u_input.a & u_input.a) % vec3<u32>(32u)), ~vec3<i32>(34657i, -2147483647i, 0i) << (~u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(1469f, -752f)) <= _wgslsmith_f_op_f32(floor(-859f)))), Struct_1(!vec3<bool>(true, all(vec3<bool>(true, false, true)), true), ~_wgslsmith_clamp_u32(1u >> (u_input.a.x % 32u), 0u, ~33796u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-210f, 114f, -1568f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 606f, var_0.x, 852f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, -1294f, -850f) - vec4<f32>(var_0.x, 928f, -394f, 1508f)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), true), vec4<bool>(true, true, select(false, true, true), true), all(vec3<bool>(true, true, true))), arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(593f)))), global0.x), 39222i, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), ~_wgslsmith_sub_u32(countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.c.x, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -829f), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1100f - global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 428f))), !vec4<bool>(select(false, true, true), true, true, true), arg_0.a & u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, var_0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), 1494f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_1.b.c.x, -598f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -1000f, _wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(-1f)))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b << (vec3<u32>(arg_0.a, 16626u, 53975u) % vec3<u32>(32u)), ~u_input.c.zww), 1u), u_input.b.yx);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = vec3<bool>(any(select(select(vec2<bool>(arg_3.b, true), arg_3.a.a.xx, select(vec2<bool>(arg_3.a.a.x, true), vec2<bool>(arg_3.b, arg_3.a.d.x), false)), arg_3.a.d.yz, vec2<bool>(arg_3.b & false, true))), true, select(all(vec4<bool>(false, false, arg_3.b, true)), arg_3.b, true));
    var var_1 = 75602u;
    let var_2 = arg_3.a.d;
    var_0 = vec3<bool>(var_2.x, var_0.x, !any(var_2));
    let var_3 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.d, firstTrailingBit(abs(u_input.d))), ~vec2<i32>(u_input.d, u_input.d & u_input.d)), -vec2<i32>(firstTrailingBit(2147483647i), max(u_input.d, u_input.d)) & -abs(vec2<i32>(u_input.d, u_input.d)));
    return u_input.a.zy;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yy)) + global0.yz), func_3(arg_3), ~arg_3.a >> (reverseBits(countOneBits(2880u << (arg_3.a % 32u))) % 32u), Struct_3(Struct_1(vec3<bool>(all(vec2<bool>(true, false)), true, true), 0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -265f, global0.x, global0.x) - vec4<f32>(arg_0, -605f, 249f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, global0.x, 644f, -505f))), vec4<bool>(arg_0 != arg_0, 2147483647i < u_input.d, true, all(vec4<bool>(false, false, false, false))), arg_2.a.x), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = select(select(vec3<bool>(~1i <= u_input.d, true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), global0.x >= _wgslsmith_f_op_f32(arg_0 - global0.x)), !vec3<bool>(all(vec2<bool>(false, false)) == false, false, true), true);
    var var_2 = Struct_5(arg_2.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.x, arg_0) * vec3<f32>(-294f, 275f, 819f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1609f, arg_0, arg_0), vec3<f32>(global0.x, arg_0, 415f))), vec3<bool>(false, var_1.x, false))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(992f, 534f, arg_0)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_0, 1562f), vec3<f32>(arg_0, -515f, arg_0))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x), arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 592f, -255f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -943f, arg_0) - vec3<f32>(arg_0, -674f, global0.x)), !vec3<bool>(true, var_1.x, true)))), vec3<bool>(all(vec3<bool>(true, true, true)), var_1.x, !(!var_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(sign(404f)), any(vec2<bool>(all(!vec3<bool>(false, false, var_1.x)), var_1.x))));
    return ~_wgslsmith_add_vec2_u32(arg_2.a, select(vec2<u32>(arg_3.a, var_0.x) & ~vec2<u32>(1349u, 57488u), reverseBits(arg_1.xy), true));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec2_i32(~vec2<i32>(4425i, u_input.d), -vec2<i32>(-7926i, u_input.d))), u_input.d) | abs(vec2<i32>(2147483647i, abs(-23410i)));
    let var_1 = 1u;
    let var_2 = _wgslsmith_add_vec2_u32(max(firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.a.x, 0u))), ~(~u_input.b.xy)), vec2<u32>(~4294967295u, var_1)) << (select(u_input.a.yz, ~_wgslsmith_mod_vec2_u32(abs(u_input.b.xz), func_2(global0.x, vec4<u32>(45856u, 0u, u_input.c.x, 4294967295u), Struct_4(u_input.b.xz), Struct_5(u_input.a.x))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(800f, global0.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - global0.x)))))));
    var_3 = global0.x;
    return Struct_4(~u_input.b.zz);
}

fn func_5(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = vec3<bool>(true, true, true);
    return vec4<f32>(_wgslsmith_f_op_f32(global0.x - -467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, false))) - global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - 175f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-558f)), _wgslsmith_f_op_f32(f32(-1f) * -795f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -519f, 746f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1285f, 854f)))));
    var var_1 = Struct_3(Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), min(var_0.x, ~var_0.x) << (select(~var_0.x, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(12688u, 0u, 3079u)), true) % 32u), _wgslsmith_f_op_vec4_f32(func_5(func_1())), !vec4<bool>(global0.x >= 1813f, true, true, all(vec3<bool>(false, true, false))), 8271u), !((false | (global0.x == -851f)) && false), _wgslsmith_f_op_f32(exp2(global0.x)));
    let var_2 = var_1.a.d.yxw;
    var var_3 = var_2.x | any(vec2<bool>(var_1.a.d.x, ~1u == var_0.x));
    var var_4 = Struct_3(var_1.a, (true & (_wgslsmith_f_op_f32(ceil(-1183f)) != _wgslsmith_f_op_f32(-var_1.c))) | false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 229f)))));
    var var_5 = Struct_1(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -445f) == _wgslsmith_div_f32(-1000f, global0.x), !(!var_1.b), true), 2729u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.c.x, var_1.c, -1070f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.a.c.x * 1000f), -356f)))), !var_4.a.d, var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_5.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -164f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)), var_4.a.c.x), var_1.a.c));
}

