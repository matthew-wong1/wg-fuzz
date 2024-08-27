struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn func_3(arg_0: u32) -> u32 {
    let var_0 = select(u_input.d, -(~u_input.d), !select(!vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, false, global0.c, true))) >> (vec4<u32>(63690u, abs(1u), abs(global0.a), 0u) % vec4<u32>(32u));
    var var_1 = Struct_3(u_input.e, global0.b, any(!vec2<bool>(global0.c, true)) | false, firstLeadingBit(vec2<i32>(var_0.x, var_0.x) ^ ((u_input.d.wz ^ var_0.yw) | abs(vec2<i32>(-9406i, var_0.x)))));
    var_1 = Struct_3(var_1.a, Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, arg_0, var_1.a), vec4<u32>(4294967295u, var_1.b.a.x, 0u, global0.b.a.x)), _wgslsmith_div_u32(~arg_0, u_input.a | u_input.e), global0.a)), var_1.c & global0.c, var_1.d);
    let var_2 = var_1.b.a.xy;
    var var_3 = _wgslsmith_clamp_u32(1u, 28805u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.e), ~69231u));
    return _wgslsmith_add_u32(4294967295u, ~(~_wgslsmith_add_u32(~var_1.a, 0u & global0.a)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(global0.b.a.zz, global0.b.a.yz), Struct_1(global0.b.a), global0.c, vec2<i32>(-1i) * -(abs(vec2<i32>(global0.d.x, 4084i)) & global0.d));
    global0 = Struct_3(~arg_0, global0.b, true, vec2<i32>(_wgslsmith_add_i32(1i, global0.d.x), -26949i >> (_wgslsmith_mult_u32(0u, global0.b.a.x & global0.a) % 32u)));
    var var_0 = Struct_4(Struct_1(abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(0u, u_input.e, 4294967295u)), global0.b.a))), select(vec3<bool>(func_3(arg_0) <= arg_0, true, true), !vec3<bool>(select(global0.c, true, false), global0.c, select(global0.c, false, true)), all(!select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, false), vec2<bool>(true, true)))), true & (all(vec2<bool>(false, true)) && !select(global0.c, true, false)), abs(countOneBits(global0.b.a.xy)));
    var_0 = Struct_4(var_0.a, var_0.b, true, _wgslsmith_div_vec2_u32(var_0.a.a.zx, _wgslsmith_mult_vec2_u32(~(global0.b.a.zx << (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u))), vec2<u32>(global0.a & 48161u, arg_0))));
    var var_1 = Struct_4(var_0.a, !vec3<bool>(var_0.b.x, u_input.a >= global0.b.a.x, false), !(!(!var_0.b.x)), vec2<u32>(~(arg_0 ^ 1u), ~1666u));
    return Struct_4(Struct_1(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.e, global0.b.a.x), max(var_0.a.a, vec3<u32>(global0.b.a.x, arg_0, 24118u))))), !vec3<bool>(false, (83319u | u_input.e) != var_0.a.a.x, var_0.b.x), any(select(vec4<bool>(false, global0.c, true, any(vec4<bool>(var_1.c, true, global0.c, false))), vec4<bool>(var_1.b.x, true, u_input.d.x == global0.d.x, all(vec4<bool>(var_0.b.x, var_1.b.x, global0.c, false))), false)), abs(abs(~vec2<u32>(63043u, var_1.a.a.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(1u, abs(4294967295u), 0u) >> (u_input.a % 32u), u_input.e, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_2.a.x & 12456u), _wgslsmith_mod_u32(1u, ~global0.a)));
    let var_1 = func_2(1u);
    let var_2 = vec3<i32>(~(-29147i), -(global0.d.x ^ _wgslsmith_mult_i32(2147483647i | global0.d.x, 1i)), global0.d.x << (1u % 32u));
    var_0 = ~global0.b.a.x;
    var var_3 = -1568f;
    return vec3<bool>(true, arg_3.x, arg_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(u_input.b.x, -global0.d.x);
    global0 = Struct_3(1u, func_2(arg_1 ^ 4294967295u).a, !any(func_1(vec4<bool>(global0.c, false, false, arg_0.b.x), global0.c, arg_0.a, arg_0.b).xz) | true, global0.d);
    global0 = Struct_3(_wgslsmith_clamp_u32(arg_1, _wgslsmith_dot_vec3_u32(~arg_0.a.a, vec3<u32>(0u, 83311u, u_input.e)) | ~_wgslsmith_div_u32(u_input.e, 18014u), u_input.e), arg_0.a, func_1(vec4<bool>(global0.c, true, !global0.c, true), true, arg_0.a, vec3<bool>(true, true, true)).x && any(!arg_0.b.xz), vec2<i32>(82566i, u_input.d.x));
    let var_1 = reverseBits(arg_1) & func_3(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, global0.b.a.x), arg_0.a.a.zy), arg_1 ^ ~arg_1));
    let var_2 = Struct_1(arg_0.a.a);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(Struct_1(global0.b.a), select(select(func_1(vec4<bool>(global0.c, true, global0.c, true), true, global0.b, vec3<bool>(global0.c, global0.c, global0.c)), select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(false, false, global0.c), global0.c), any(vec3<bool>(true, false, global0.c))), func_2(1u).b, func_1(vec4<bool>(global0.c, true, global0.c, global0.c), true, Struct_1(global0.b.a), func_1(vec4<bool>(global0.c, false, false, true), true, Struct_1(global0.b.a), vec3<bool>(global0.c, global0.c, true)))), _wgslsmith_div_u32(u_input.e & u_input.e, _wgslsmith_sub_u32(global0.a, global0.b.a.x)) == firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 78955u), vec3<u32>(0u, u_input.e, 6216u))), global0.b.a.yy), abs(97113u));
    var var_1 = global0.b;
    var_0 = Struct_1(~(~(~vec3<u32>(32267u, u_input.e, 0u))));
    var var_2 = -_wgslsmith_mod_vec2_i32(global0.d, -_wgslsmith_mod_vec2_i32(vec2<i32>(30981i, -31915i), u_input.d.xx) ^ (-u_input.d.zw >> (vec2<u32>(var_1.a.x, global0.a) % vec2<u32>(32u))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236f - _wgslsmith_f_op_f32(abs(-763f))))), -339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f + 203f)) * _wgslsmith_f_op_f32(f32(-1f) * -313f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-200f)) + -1203f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1053f, 490f))));
    let var_4 = var_3.yxy;
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_3.x * 1497f), _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f * 1432f)))), 819f);
    global0 = Struct_3(~var_0.a.x, func_4(func_2(19196u), func_2(0u).a.a.x), select(any(func_1(!vec4<bool>(global0.c, false, false, false), true, Struct_1(vec3<u32>(global0.b.a.x, 4294967295u, u_input.a)), func_2(var_1.a.x).b)), false, var_4.x > var_3.x), ~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, global0.d.x)), countOneBits(vec2<i32>(-80673i, u_input.d.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(6851i, var_2.x), select(global0.d, vec2<i32>(11761i, -41671i), vec2<bool>(global0.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, -725f, -255f, var_4.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-563f, -136f, -419f, var_4.x))))), vec4<f32>(var_4.x, 1298f, var_3.x, _wgslsmith_f_op_f32(abs(293f))), select(global0.c, firstLeadingBit(global0.d.x) != (var_2.x ^ u_input.b.x), select(all(vec4<bool>(global0.c, false, true, false)), func_1(vec4<bool>(global0.c, true, global0.c, false), global0.c, global0.b, vec3<bool>(false, true, false)).x, true)))), var_0.a.zy);
}

