struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - -963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1930f), 1127f)))));
    global0 = select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), select(!(!(!vec4<bool>(false, false, true, global0.x))), select(select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, global0.x, false, true)), vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(global0.x, global0.x, global0.x, false)), vec4<bool>(!global0.x, false, u_input.b.x < -9851i, global0.x), any(select(global0.wxx, vec3<bool>(false, global0.x, true), global0.x))), true), false);
    var var_1 = Struct_1(1i, countOneBits(u_input.a.x), u_input.a ^ firstLeadingBit(vec2<u32>(u_input.a.x, 48993u)), _wgslsmith_f_op_f32(337f * _wgslsmith_f_op_f32(step(var_0, var_0))));
    global0 = select(!vec4<bool>(!any(vec2<bool>(global0.x, global0.x)), ~var_1.b == (u_input.a.x >> (47395u % 32u)), false, all(vec3<bool>(global0.x, global0.x, global0.x))), !select(vec4<bool>(select(global0.x, false, false), false, any(global0.xx), global0.x), !vec4<bool>(true, false, false, global0.x), global0.x), (var_1.b != _wgslsmith_div_u32(~u_input.a.x, ~4294967295u)) & true);
    global0 = vec4<bool>(all(!(!global0.ww)), !(all(!vec3<bool>(false, global0.x, true)) & global0.x), any(!select(global0.xyx, vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, false)))), global0.x);
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = arg_0;
    var_0 = any(arg_1);
    let var_2 = vec2<u32>(1u, 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-490f, 334f))), arg_0.d) - _wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d)))) <= arg_0.d;
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, arg_0.c.x, 41954u, var_1.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, 14612u, 24641u), vec4<u32>(78393u, arg_0.b, 4294967295u, 31613u))), 58749u) << (0u % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_mod_i32(1i, reverseBits(53832i)), func_3(), u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(575f))))), select(vec4<bool>(true, !arg_2.x, any(vec3<bool>(arg_2.x, false, true)), false), select(!vec4<bool>(arg_2.x, global0.x, global0.x, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, global0.x, global0.x), global0.x), global0.x), arg_2.x && all(vec4<bool>(true, true, true, false)))) << (u_input.a.x % 32u);
    let var_1 = vec2<i32>(~_wgslsmith_div_i32(i32(-1i) * -1i, min(arg_0.x, -21743i)), _wgslsmith_sub_i32(i32(-1i) * -arg_0.x, countOneBits(-13237i)));
    var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    return Struct_1(firstLeadingBit(31859i), 32231u | ~countOneBits(firstLeadingBit(u_input.a.x)), vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 47459u, 22493u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1.x, 15846u), vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(54389u, arg_1.x, 4294967295u, 4294967295u), vec4<u32>(1u, 87430u, 4294967295u, arg_1.x)) % vec4<u32>(32u)))), -1570f);
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = reverseBits(~countOneBits(vec3<i32>(2147483647i, -2147483647i | u_input.c, -57627i)));
    var var_1 = func_2(vec3<i32>(var_0.x, max(-2147483647i << (u_input.a.x % 32u), u_input.b.x), arg_0.a) >> (select(vec3<u32>(_wgslsmith_mult_u32(arg_0.c.x, u_input.a.x), ~arg_0.b, arg_0.b), vec3<u32>(0u, 27107u, 70355u), vec3<bool>(true, !global0.x, global0.x)) % vec3<u32>(32u)), vec2<u32>(abs(u_input.a.x), u_input.a.x), global0.xxx);
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(-u_input.b), -u_input.b), u_input.b), _wgslsmith_sub_u32(~(~u_input.a.x), ~(~18154u)) << (~27694u % 32u), vec2<u32>(~13145u >> (abs(var_1.b | arg_0.b) % 32u), 4294967295u), _wgslsmith_div_f32(arg_0.d, arg_0.d));
    var var_2 = 12346i;
    var var_3 = Struct_1(-515i, ~arg_0.c.x, ~select(vec2<u32>(37422u, var_1.b), ~func_2(var_0, vec2<u32>(u_input.a.x, u_input.a.x), vec3<bool>(false, global0.x, true)).c, global0.x), _wgslsmith_f_op_f32(-arg_0.d));
    return 4758i;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = true;
    var var_1 = select(u_input.b, -(~_wgslsmith_mult_vec4_i32(~vec4<i32>(27655i, u_input.b.x, u_input.b.x, -38733i), vec4<i32>(21900i, 18477i, 0i, u_input.b.x))), true);
    var var_2 = vec4<bool>(any(select(global0.xx, !select(global0.yy, global0.xw, vec2<bool>(false, true)), select(!vec2<bool>(true, global0.x), select(global0.zx, vec2<bool>(true, false), vec2<bool>(false, global0.x)), any(vec3<bool>(global0.x, global0.x, true))))), !(!(true != all(vec4<bool>(global0.x, true, true, global0.x)))), true, true);
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, reverseBits(u_input.c), u_input.c, func_5(func_2(vec3<i32>(22508i, var_1.x, 23730i), vec2<u32>(18230u, 4294967295u), var_2.xyy)) >> ((u_input.a.x ^ func_4(Struct_1(arg_0, u_input.a.x, u_input.a, 620f), vec4<bool>(false, var_2.x, global0.x, var_2.x))) % 32u)), max(countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(arg_0, var_1.x, 20810i, arg_0)))), u_input.b), vec4<i32>(_wgslsmith_div_i32(~0i, -26639i), arg_0, 1i, _wgslsmith_mod_i32(-2147483647i, u_input.c ^ var_1.x) ^ _wgslsmith_div_i32(-1i, 2147483647i)));
    var_2 = !select(vec4<bool>(true, select(!var_2.x, true, true), !global0.x, !global0.x), select(!select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(true, global0.x, true, false), false), select(!vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), !vec4<bool>(global0.x, false, true, var_2.x)), vec4<bool>(global0.x & var_2.x, var_2.x, all(var_2.zx), any(vec3<bool>(true, global0.x, global0.x)))), true);
    return -1i;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: i32) -> StorageBuffer {
    var var_0 = vec3<bool>(global0.x, !select(true, true, true), any(vec2<bool>(false, arg_2.x || false)) == (global0.x | !global0.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_2(vec3<i32>(-1i) * -u_input.b.yxw, ~_wgslsmith_div_vec2_u32(arg_0.c, arg_0.c), !select(arg_2, vec3<bool>(true, true, true), vec3<bool>(var_0.x, global0.x, true))).d, -1008f, 116f, -954f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.wy), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, arg_1.x))), var_0.x))));
    var_2 = arg_1.zy;
    var_0 = vec3<bool>(false, false, true);
    return StorageBuffer(min(_wgslsmith_sub_vec2_i32(~(-u_input.b.yw), _wgslsmith_sub_vec2_i32(u_input.b.yw, vec2<i32>(-42334i, 1i)) >> (u_input.a % vec2<u32>(32u))), -(u_input.b.xw & vec2<i32>(arg_3, -2147483647i)) >> (vec2<u32>(func_3(), u_input.a.x) % vec2<u32>(32u))), ~(~_wgslsmith_mod_u32(~6192u, 48058u)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2147483647i, ~u_input.a.x, abs(vec2<u32>((39782u >> (u_input.a.x % 32u)) | ~4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) * _wgslsmith_f_op_f32(f32(-1f) * -1474f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(293f)) * _wgslsmith_div_f32(-1278f, -1093f)))));
    let x = u_input.a;
    s_output = func_6(Struct_1(func_1(-5228i), 62208u, abs(~(u_input.a | var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, var_0.d) + _wgslsmith_f_op_f32(floor(var_0.d))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1331f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(min(757f, 603f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d, -1995f), _wgslsmith_f_op_f32(-var_0.d)), var_0.d, -980f)), !global0.xyw, min(0i, ~_wgslsmith_add_i32(var_0.a, 31992i)) | (i32(-1i) * -76141i));
}

