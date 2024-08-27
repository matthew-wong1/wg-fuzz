struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(-330f, _wgslsmith_f_op_f32(1041f - _wgslsmith_f_op_f32(f32(-1f) * -677f)))), !global0.x);
    var var_1 = all(global0.wwz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, 1071f)));
    var_0 = Struct_3(1460f, true);
    var_2 = var_0.a;
    return -1i;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)));
    global0 = vec4<bool>(u_input.b.x >= ((firstLeadingBit(u_input.c.x) >> (_wgslsmith_mult_u32(u_input.c.x, 10996u) % 32u)) << (17163u % 32u)), !any(vec4<bool>(any(vec3<bool>(global0.x, global0.x, false)), !global0.x, !global0.x, any(vec4<bool>(false, global0.x, global0.x, true)))), true, true);
    global0 = select(!select(vec4<bool>(true, !global0.x, true && global0.x, !global0.x), select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, false), false), !vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), true)), vec4<bool>(global0.x, any(global0.wx), all(vec4<bool>(false, global0.x, global0.x, global0.x)), global0.x)), !(!select(!vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, true))), global0.x);
    global0 = vec4<bool>(var_0 < 2049f, ~_wgslsmith_div_u32(abs(u_input.c.x), ~u_input.b.x) >= abs(reverseBits(min(1u, 4294967295u))), true, false);
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = -1i << (max(4294967295u, u_input.c.x | u_input.b.x) % 32u);
    global0 = !(!select(vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !global0.x, var_0 > -39029i, true), vec4<bool>(global0.x, global0.x, true || global0.x, false), select(vec4<bool>(global0.x, global0.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(global0.x, global0.x, false, global0.x))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -arg_0.x, -_wgslsmith_clamp_i32(arg_0.x, reverseBits(u_input.a.x), u_input.a.x), ~_wgslsmith_add_i32(21112i, func_2(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.c.x), false, Struct_1(true, u_input.a)))), -(~(-(~vec4<i32>(u_input.a.x, 0i, u_input.d, u_input.a.x)))));
    var var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1549f, 219f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-430f - _wgslsmith_div_f32(-1000f, 449f)))));
    let var_3 = Struct_2(~vec4<i32>(_wgslsmith_clamp_i32(~(-27829i), -29942i, firstLeadingBit(u_input.d)), _wgslsmith_mod_i32(var_0 | -52574i, var_0), func_2(countOneBits(vec4<u32>(0u, 24658u, 1u, 33610u)), true, Struct_1(var_2.x, vec3<i32>(0i, arg_0.x, 1i))), func_2(~vec4<u32>(11297u, u_input.c.x, u_input.b.x, 0u), false, Struct_1(false, vec3<i32>(1i, arg_0.x, var_0)))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(973f)), _wgslsmith_f_op_f32(750f - 149f))))), any(vec2<bool>(!var_2.x, var_2.x)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    let var_0 = Struct_1(true, -_wgslsmith_mult_vec3_i32((vec3<i32>(u_input.d, 1i, 2147483647i) >> (u_input.c % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 33930i)), vec3<i32>(-1i) * -vec3<i32>(20115i, 20861i, -11565i)));
    let var_1 = any(vec2<bool>(1i != countOneBits(select(var_0.b.x, -1i, var_0.a)), !(!(!var_0.a))));
    global0 = vec4<bool>(~_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(u_input.b.x, u_input.c.x)) > 7457u, false, select(u_input.c.x == u_input.b.x, true, !var_1), true);
    global0 = vec4<bool>(any(select(!global0.wz, !(!vec2<bool>(arg_1, true)), !select(vec2<bool>(arg_1, global0.x), vec2<bool>(global0.x, arg_1), global0.wx))), !(!var_1), !var_1, !arg_1);
    var var_2 = 0u;
    return global0.wyz;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~arg_2.zx, vec2<u32>(_wgslsmith_mod_u32(arg_2.x, 1u), u_input.c.x));
    var var_1 = arg_1.wz;
    var var_2 = vec2<u32>(u_input.c.x, u_input.b.x);
    global0 = vec4<bool>(true, !any(func_4(Struct_3(-578f, false), true).xz), var_1.x, (arg_2.x | ~(~var_2.x)) == (var_2.x ^ ~u_input.c.x));
    var var_3 = -_wgslsmith_dot_vec2_i32(vec2<i32>(abs(abs(u_input.d)), firstLeadingBit(-2147483647i)), vec2<i32>(firstTrailingBit(u_input.d), u_input.a.x));
    return ~(17516u << (_wgslsmith_dot_vec4_u32(~firstTrailingBit(arg_2), arg_2) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(trunc(484f))) - -288f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f - -1307f)), 987f))) + 1f);
    global0 = vec4<bool>(u_input.a.x < ~countOneBits(u_input.a.x), (1332i ^ u_input.a.x) >= (u_input.d & -u_input.a.x), global0.x, func_5(func_4(func_1(vec2<i32>(u_input.d, 0i)), true), select(!vec4<bool>(false, false, true, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, true, false)), ~countOneBits(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 64924u))) <= u_input.b.x);
    var var_1 = false;
    var_1 = false;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -400f), global0.x);
    var_2 = func_1(-(firstLeadingBit(vec2<i32>(-11603i, u_input.d)) | (u_input.a.yx >> (u_input.c.xz % vec2<u32>(32u)))) ^ u_input.a.yy);
    global0 = !vec4<bool>(var_2.b, !((var_2.b & false) & true), !any(!vec4<bool>(global0.x, var_2.b, true, var_2.b)), func_1(vec2<i32>(u_input.a.x >> (u_input.c.x % 32u), ~2147483647i)).b);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(floor(1600f)), any(select(!vec2<bool>(true, global0.x), select(func_4(Struct_3(-912f, false), global0.x).xz, vec2<bool>(global0.x, true), any(vec4<bool>(true, var_2.b, global0.x, false))), func_4(func_1(u_input.a.yy), true).zx)));
    let var_4 = firstLeadingBit(0i);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u | select(u_input.c.x, 1u, any(!global0.zxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a))))), -46413i, vec2<f32>(var_3.a, var_2.a));
}

