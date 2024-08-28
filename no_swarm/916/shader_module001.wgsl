struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)))))));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.d.x, 23226i, -1i, -2147483647i ^ _wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), _wgslsmith_sub_vec4_i32(max(~vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -15597i, -79739i, u_input.d.x) ^ u_input.d), select(u_input.d ^ vec4<i32>(88487i, u_input.d.x, u_input.d.x, -19462i), _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(2147483647i, u_input.d.x, 17215i, u_input.d.x)), false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 41332i << (u_input.a % 32u), _wgslsmith_div_i32(1i, -2147483647i), -2147483647i), vec4<i32>(u_input.d.x, firstTrailingBit(-53788i), -18273i, u_input.d.x), u_input.d)));
    return 1032f;
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, arg_1.b, _wgslsmith_f_op_f32(-288f * 741f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -1878f, arg_0) - vec3<f32>(arg_1.b, -1214f, 121f)) - vec3<f32>(-734f, arg_0, 466f))))));
    let var_1 = true;
    let var_2 = Struct_4(min(40545u, 17455u));
    var var_3 = vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-404f + -2001f), 1184f)))), 894f, _wgslsmith_f_op_f32(f32(-1f) * -929f));
    let var_4 = !(!vec2<bool>(!select(false, var_1, false), any(!vec4<bool>(var_1, true, var_1, true))));
    return abs(~1u);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.b.x, min(arg_3.d.a, 6848u)), arg_3.d.a), ~(~(~arg_3.e.b)) & 0u);
    var var_1 = ~countOneBits(~arg_2.x);
    var_0 = abs(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, ~1u)), _wgslsmith_clamp_vec2_u32(u_input.b.xy, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3.b.b), vec2<u32>(arg_3.e.a, arg_3.a.b)), u_input.b.zx)));
    var var_2 = select(select(vec4<bool>(!any(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, false, true, false)), !any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)) || true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(false, true)), false, false), all(vec3<bool>(true, true, true))), true), select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), 197f < arg_3.c)), !vec4<bool>(any(vec4<bool>(false, false, false, true)), true, arg_0.x > arg_3.c, true), !all(vec2<bool>(true, true))), vec4<bool>(false, select(true, false, arg_1.x == _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-4051i, arg_2.x, 2147483647i, 11903i))), true & !(arg_3.c <= arg_0.x), arg_3.c != arg_0.x));
    var var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1313f + arg_3.c));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * -637f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f - arg_0)))), arg_0), vec4<i32>(_wgslsmith_sub_i32(-firstTrailingBit(-1i), ~_wgslsmith_sub_i32(45786i, u_input.d.x)), -5141i << (_wgslsmith_sub_u32(~22698u, _wgslsmith_mult_u32(u_input.c, u_input.b.x)) % 32u), -38611i, 49553i), -vec3<i32>(u_input.d.x, u_input.d.x >> (countOneBits(u_input.a) % 32u), -3580i), Struct_2(arg_1, Struct_1(~arg_1.a, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 1f), arg_1, Struct_1(func_3(arg_0, Struct_5(Struct_2(arg_1, arg_1, -1431f, Struct_1(u_input.a, 8464u), arg_1), -1283f)), u_input.b.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(abs(arg_0)))));
    var var_2 = arg_1.a;
    var var_3 = Struct_4(2748u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), -574f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(290f, -387f), -132f, true))))));
    return Struct_1(3126u, firstTrailingBit(1u));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a >> (13847u % 32u), Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f * -1047f)), Struct_1(u_input.c >> (u_input.c % 32u), ~50589u)), func_1(1197f, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1111f), Struct_1(76112u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(605f, _wgslsmith_f_op_f32(max(489f, 1787f)))), Struct_1(u_input.a, ~countOneBits(u_input.c)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f - 873f)), func_1(680f, Struct_1(u_input.c, 49485u)))), vec2<u32>(~abs(u_input.a), ~4359u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.c, 171f, false)), _wgslsmith_f_op_f32(-646f - 762f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1171f))))), _wgslsmith_f_op_f32(-var_0.c), 1f);
    var var_2 = vec3<bool>(reverseBits((var_0.b.b | u_input.b.x) ^ abs(19600u)) != func_3(_wgslsmith_f_op_f32(func_2(any(vec2<bool>(true, true)))), Struct_5(var_0, -315f)), true || any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), !(!any(vec3<bool>(true, true, false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(149f, var_1.x, var_0.c), vec3<f32>(var_1.x, var_1.x, -1563f), false)), u_input.d, vec3<i32>(-2013i, u_input.d.x, u_input.d.x) >> (u_input.b % vec3<u32>(32u)), func_5(67144u, var_0, u_input.b.yx))))) * var_1);
    var_2 = vec3<bool>(var_1.x < var_0.c, all(!var_2.yy), all(select(select(vec4<bool>(var_2.x, true, true, var_2.x), !vec4<bool>(true, false, var_2.x, var_2.x), select(vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, false, var_2.x), true)), select(!vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x || false), u_input.d.x <= 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.ywx);
}

