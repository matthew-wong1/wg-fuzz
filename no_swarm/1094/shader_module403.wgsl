struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(countOneBits(_wgslsmith_sub_i32(-2147483647i, ~var_0.a)), select(!arg_0.b, vec3<bool>(true, var_0.b.x, !global0.x), select(vec3<bool>(false, true, var_0.a != arg_0.a), vec3<bool>(global0.x, arg_0.b.x, true), global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, arg_0.c.x, var_0.c.x, arg_1.x))))) * arg_0.c), u_input.c);
    global0 = vec2<bool>(var_0.a == _wgslsmith_add_i32(~(-3163i), var_0.a), var_1.b.x);
    let var_2 = Struct_1(2147483647i, select(var_1.b, vec3<bool>(1i != var_1.a, true, all(arg_0.b)), all(vec4<bool>(true, any(vec4<bool>(false, false, arg_0.b.x, false)), true, any(vec4<bool>(false, var_0.b.x, var_0.b.x, true))))), _wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(min(var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * var_0.c) - _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c))))), ~0u);
    var_1 = var_2;
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<u32>(abs(u_input.c), select(u_input.c, ~_wgslsmith_mult_u32(u_input.c, ~u_input.c), !(_wgslsmith_mod_i32(u_input.b.x, -2147483647i) >= 1i)));
    global0 = arg_2.wz;
    var var_1 = Struct_1(~_wgslsmith_clamp_i32(0i, max(~0i, -1i), abs(2147483647i)), arg_2.wzw, vec4<f32>(1349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(abs(1u)), u_input.c, 4294967295u, _wgslsmith_mod_u32(1u, 1954u)), ~(~max(vec4<u32>(54825u, u_input.c, u_input.c, 4294967295u), vec4<u32>(1u, u_input.c, 16328u, var_0.x)))));
    return Struct_1(-func_3(Struct_1(abs(-2147483647i), select(vec3<bool>(global0.x, true, false), vec3<bool>(false, true, true), vec3<bool>(var_1.b.x, false, true)), _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c), 4096u & var_1.d), _wgslsmith_f_op_vec3_f32(var_1.c.zzw + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, arg_0, 1018f) * var_1.c.zyz))), var_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, var_1.c.x, var_1.c.x)))))), _wgslsmith_sub_u32(34935u, 0u & firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4937u, 26849u), vec2<u32>(0u, 4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(558f + 128f);
    var var_1 = vec4<bool>(false, any(!select(select(vec4<bool>(arg_0.b.x, true, arg_1.b.x, arg_0.b.x), vec4<bool>(false, false, true, arg_1.b.x), global0.x), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(arg_3.b.x, true, arg_2.b.x, arg_1.b.x), vec4<bool>(true, arg_0.b.x, global0.x, true)), false && arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), -930f))) < _wgslsmith_f_op_f32(round(312f)), all(vec4<bool>(all(arg_2.b), arg_3.b.x, global0.x, all(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(true, false, true, global0.x), arg_3.b.x)))));
    let var_2 = u_input.d;
    var_1 = !vec4<bool>(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -748f), !arg_2.b.x)), true, !select(vec4<bool>(arg_3.b.x, false, true, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), false)).b.x, global0.x, true, true & global0.x);
    var var_3 = ~arg_0.d;
    return vec4<bool>(true, select(true | any(!vec4<bool>(arg_2.b.x, var_1.x, false, true)), !func_2(func_2(arg_1.c.x, false, vec4<bool>(true, true, arg_3.b.x, arg_2.b.x)).c.x, arg_1.b.x, vec4<bool>(false, arg_3.b.x, var_1.x, arg_0.b.x)).b.x, false), !all(vec4<bool>(arg_1.b.x, -778f > arg_2.c.x, global0.x, !arg_0.b.x)), any(!(!vec2<bool>(global0.x, false))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.d), ~vec4<u32>(_wgslsmith_div_u32(~arg_0.d, ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, u_input.c, arg_0.d, u_input.c), vec4<u32>(61238u, 1u, 0u, arg_0.d)), max(~arg_0.d, abs(u_input.c)), abs(u_input.c)), func_4(func_2(arg_0.c.x, false, vec4<bool>(true, !arg_0.b.x, any(vec4<bool>(false, global0.x, global0.x, arg_0.b.x)), any(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)))), arg_0, Struct_1(_wgslsmith_sub_i32(-27246i, -u_input.b.x), !select(arg_0.b, vec3<bool>(global0.x, arg_0.b.x, false), true), vec4<f32>(_wgslsmith_f_op_f32(min(1870f, -495f)), _wgslsmith_f_op_f32(-arg_0.c.x), func_2(-231f, global0.x, vec4<bool>(true, arg_0.b.x, true, global0.x)).c.x, _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(0u, arg_0.d, 4294967295u)), 24178u)), Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -1947i, 46901i, arg_0.a) ^ u_input.b), vec3<bool>(!arg_0.b.x, func_2(arg_0.c.x, global0.x, vec4<bool>(true, arg_0.b.x, true, true)).b.x, !global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 743f, arg_0.c.x, arg_0.c.x))), ~abs(u_input.c))));
    let var_1 = arg_0.b.xx;
    return vec4<bool>(!select(arg_0.b.x, arg_0.b.x, true), global0.x, !global0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -705f;
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.c, u_input.c, 12584u, 1u), firstLeadingBit(~vec4<u32>(0u, 1u, u_input.c, u_input.c)), any(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, false, false, false), vec4<bool>(false, true, global0.x, global0.x)))), vec4<u32>(1u, _wgslsmith_mod_u32(9610u | u_input.c, ~32691u), 4294967295u, u_input.c)));
    let var_2 = 2147483647i;
    global0 = !(!(!vec2<bool>(global0.x, true)));
    let var_3 = !select(vec4<bool>(true, any(!vec4<bool>(global0.x, true, false, false)), true, global0.x), select(vec4<bool>(global0.x, any(vec3<bool>(false, false, global0.x)), false, true), func_1(Struct_1(var_2, vec3<bool>(false, global0.x, false), vec4<f32>(-1138f, -1490f, -1000f, 721f), 0u)), !global0.x), !(!(!global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1842f * -911f), 465f)))), 292f, _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zx, u_input.a, vec2<i32>(var_2, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_2, 10256i), u_input.b.zy)) >> (~var_1.x % 32u)));
}

