struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = vec3<bool>(false, all(vec4<bool>(true, any(vec3<bool>(true, arg_0.b.a, arg_0.b.a)) | true, true, (arg_0.e.x | arg_0.e.x) >= abs(1i))), !all(vec2<bool>(arg_0.b.a, true)));
    var var_1 = 1392f;
    let var_2 = arg_1;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-379f, 1103f), _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.a.x)) * _wgslsmith_f_op_f32(ceil(124f)));
    var var_3 = arg_1.x;
    return firstLeadingBit(vec4<i32>(-13075i, 13343i, countOneBits(~arg_0.e.x & reverseBits(1i)), firstTrailingBit(-14772i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1886f + _wgslsmith_f_op_f32(f32(-1f) * -631f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1708f + -108f))))), -574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f - -236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1031f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-996f, -307f))), false))));
    var var_1 = 450f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = -1000f;
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = select(vec4<bool>(true, _wgslsmith_f_op_f32(func_4(vec4<i32>(-2147483647i, 0i, arg_0.e.x, -26908i), Struct_4(4294967295u, vec4<i32>(-70792i, arg_0.e.x, 2147483647i, arg_0.e.x)))) == 1443f, any(vec2<bool>(42530i > arg_0.e.x, arg_3.x == false)), false), !(!(!(!vec4<bool>(arg_3.x, false, true, false)))), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-228f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec4<i32>(3625i, 1i, 22966i, 2147483647i), Struct_4(1u, vec4<i32>(arg_0.e.x, 24085i, arg_0.e.x, arg_0.e.x)))), _wgslsmith_f_op_f32(-arg_2.x))), arg_0.b.a)));
    var var_2 = vec4<i32>(-1i, arg_0.e.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.e, _wgslsmith_div_vec2_i32(arg_0.e, vec2<i32>(arg_0.e.x, arg_0.e.x))), arg_0.e), ~13698i);
    let var_3 = Struct_1(all(!vec4<bool>(false, all(var_0.xwx), true, arg_3.x & arg_0.b.a)));
    var_2 = (vec4<i32>(-1i) * -vec4<i32>(-76598i, -1i, _wgslsmith_add_i32(arg_0.e.x, var_2.x), _wgslsmith_mult_i32(arg_0.e.x, var_2.x))) ^ vec4<i32>(_wgslsmith_add_i32(arg_0.e.x, _wgslsmith_mult_i32(var_2.x, -2147483647i) & _wgslsmith_mult_i32(var_2.x, arg_0.e.x)), 2147483647i, 10526i, -(~_wgslsmith_dot_vec2_i32(var_2.wy, arg_0.e)));
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1159f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(855f - arg_2.x), arg_2.x)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(func_5(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1261f, -1286f) + vec2<f32>(509f, -1108f)), vec2<f32>(-1576f, -986f)), Struct_1(true), vec3<f32>(1472f, _wgslsmith_f_op_f32(trunc(-315f)), _wgslsmith_f_op_f32(-485f + -721f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(265f, -912f))), ~(~vec2<i32>(-47555i, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1005f, 894f, 170f), vec4<f32>(-1000f, 879f, 442f, -880f), vec4<bool>(false, false, false, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(400f, 1102f, -776f, 1988f) - vec4<f32>(-1655f, -1000f, 1212f, 436f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-455f + 217f))), _wgslsmith_f_op_f32(func_4(func_3(Struct_3(vec2<f32>(148f, -1505f), Struct_1(false), vec3<f32>(-393f, -470f, -219f), vec2<f32>(510f, -197f), vec2<i32>(2147483647i, -28444i)), vec3<u32>(0u, 51112u, u_input.a.x), vec3<u32>(1u, 1u, 73512u)), Struct_4(40021u, vec4<i32>(2147483647i, 0i, 2147483647i, -25821i))))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false))), true)));
    let var_1 = ~u_input.a.zzx;
    var var_2 = Struct_2(Struct_1(true), var_0);
    var var_3 = ~(~((vec4<u32>(1u, 1u, 32535u, 24614u) << (u_input.a % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)))) ^ vec4<u32>(abs(1u), ~(~u_input.a.x) ^ abs(u_input.a.x & 12250u), 27647u, 64711u);
    let var_4 = !select(!select(!vec4<bool>(true, var_0.a, false, var_2.b.a), vec4<bool>(var_2.a.a, false, false, false), true), !vec4<bool>(false, !var_0.a, true, var_0.a || false), true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_sub_u32(0u, ~4294967295u), max(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(52416i, 2147483647i, -18574i, -62150i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(-54929i, firstLeadingBit(0i), 1i, ~(-1i))), ~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = Struct_4(~((_wgslsmith_sub_u32(var_0.a, 62987u) << (_wgslsmith_mod_u32(var_0.a, 13557u) % 32u)) >> (_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x) % 32u)), var_0.b);
    var var_3 = vec2<i32>(firstTrailingBit(~abs(var_0.b.x)), var_2.b.x);
    let var_4 = abs(_wgslsmith_mult_u32(var_0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.wy), u_input.a.yz), _wgslsmith_add_u32(0u, max(var_0.a, var_0.a)), 4294967295u)));
    return !vec4<bool>(true, false, false, any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false), false);
    let var_1 = _wgslsmith_sub_i32(i32(-1i) * -71710i, -_wgslsmith_sub_i32(_wgslsmith_add_i32(-11428i, -47152i << (u_input.a.x % 32u)), ~(~2147483647i)));
    var var_2 = Struct_2(Struct_1(!any(!vec4<bool>(false, true, var_0.x, false))), Struct_1(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-1i), var_1, -var_1), ~reverseBits(vec3<i32>(var_1, var_1, var_1))) << (countOneBits(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1273f, -1244f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, -1786f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(2004f, 268f) + vec2<f32>(-2255f, 661f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, 108f) - vec2<f32>(1459f, -808f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(abs(-174f))))), -452f);
}

