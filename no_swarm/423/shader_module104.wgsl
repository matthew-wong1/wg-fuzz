struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = select(!vec2<bool>((arg_0.c.a.x > u_input.b.x) & (false & arg_2.b.a), true), vec2<bool>(all(select(vec3<bool>(false, true, arg_0.b.a), !vec3<bool>(arg_2.b.a, arg_2.b.a, arg_0.b.a), !vec3<bool>(false, false, arg_0.b.a))), all(vec3<bool>(true, true, false))), false && (1012f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * arg_1.b), _wgslsmith_f_op_f32(ceil(arg_0.c.b)))));
    let var_1 = Struct_2(vec3<i32>(abs(firstLeadingBit(min(-57415i, arg_1.a.x))), -1i, u_input.b.x), arg_2.c.b, -_wgslsmith_sub_i32(arg_2.a << (4294967295u % 32u), _wgslsmith_mult_i32(-16073i, arg_0.a)));
    var_0 = !(!select(vec2<bool>(arg_2.b.a, arg_0.b.a), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_2.b.a, true), vec2<bool>(arg_2.b.a, false), vec2<bool>(arg_0.b.a, false))), vec2<bool>(var_0.x, !var_0.x)));
    var_0 = vec2<bool>(!any(select(select(vec2<bool>(arg_2.b.a, true), vec2<bool>(false, true), arg_2.b.a), !vec2<bool>(arg_2.b.a, var_0.x), false)), !(!arg_2.b.a));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(26623i), ~arg_2.c.a.x, _wgslsmith_mod_i32(arg_2.c.c, -1i), firstTrailingBit(-26847i)), firstTrailingBit(abs(vec4<i32>(arg_1.a.x, arg_0.a, var_1.a.x, -2147483647i)))), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(abs(2078i), _wgslsmith_add_i32(var_1.a.x, 2147483647i), var_1.a.x), 21322i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b, -1000f));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(_wgslsmith_sub_i32(select(_wgslsmith_mult_i32(-34890i, u_input.b.x), -_wgslsmith_mult_i32(u_input.b.x, -78849i), true), -14666i), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1133f, 1000f)), _wgslsmith_f_op_f32(trunc(1216f))))), Struct_2(abs(select(u_input.b, firstTrailingBit(u_input.b), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(884f * -279f)))), max(-abs(-2147483647i), -2147483647i)));
    var var_1 = var_0.b;
    var var_2 = ~var_0.a;
    var_1 = Struct_1(all(vec2<bool>(var_1.a, !all(vec2<bool>(var_1.a, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(var_0.a, var_0.b, var_0.c), var_0.c, Struct_3(0i, var_0.b, Struct_2(vec3<i32>(-2147483647i, 37162i, u_input.b.x), var_1.b.x, u_input.b.x))))), select(!(!vec2<bool>(true, var_0.b.a)), vec2<bool>(true, true), true))));
    return _wgslsmith_mult_i32(-(-1i >> (_wgslsmith_dot_vec4_u32(u_input.d, reverseBits(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.a))) % 32u)), _wgslsmith_div_i32(u_input.b.x, var_0.a) | _wgslsmith_div_i32(1i, var_0.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(872f - 1047f), _wgslsmith_div_f32(-1136f, -490f), _wgslsmith_f_op_f32(f32(-1f) * -1073f), -426f) * vec4<f32>(_wgslsmith_f_op_f32(-759f + -1887f), _wgslsmith_f_op_f32(min(528f, -1130f)), 555f, _wgslsmith_f_op_f32(min(-1110f, -1305f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, -728f, _wgslsmith_f_op_f32(-1766f * 607f), _wgslsmith_div_f32(376f, 779f)))));
    var var_1 = var_0.x;
    let var_2 = ~_wgslsmith_mod_i32(arg_1, 27830i);
    let var_3 = 4294967295u;
    let var_4 = Struct_1(34385u < var_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.yx))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1480f, _wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -1838f)))), _wgslsmith_f_op_vec2_f32(floor(var_0.wx)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    return Struct_1(any(vec2<bool>(arg_1 >= -105f, true)), _wgslsmith_f_op_vec2_f32(func_4(!vec2<bool>(arg_0 && true, false), func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d;
    var var_1 = 2147483647i;
    var_1 = u_input.b.x;
    let var_2 = func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, 719f)))))), min(~1i, ~_wgslsmith_mod_i32(-1i, u_input.b.x)) >> (1u % 32u));
    var_0 = vec4<u32>(~14784u, u_input.c, ~var_0.x, max(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(45110u, 18000u, u_input.d.x), var_0.xyx), u_input.d.yxx, u_input.d.yzy), firstTrailingBit(vec3<u32>(var_0.x, 0u, 4294967295u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(13758u, 0u, u_input.c), vec3<u32>(u_input.d.x, 0u, 27688u), vec3<u32>(4294967295u, u_input.a, u_input.d.x))), firstLeadingBit(u_input.c)));
    var_0 = vec4<u32>(var_0.x, var_0.x, _wgslsmith_sub_u32(~((var_0.x >> (69073u % 32u)) >> (var_0.x % 32u)), ~u_input.a), u_input.c);
    var var_3 = ~_wgslsmith_clamp_vec2_i32(u_input.b.zy, abs(~u_input.b.zx), -abs(_wgslsmith_add_vec2_i32(u_input.b.xx, u_input.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~var_0.x, ~(u_input.c | 4294967295u), _wgslsmith_sub_u32(~18803u, 39660u)), vec2<i32>(-1i) * -firstTrailingBit(u_input.b.yx), reverseBits(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), u_input.d.zyx), vec3<u32>(var_0.x, ~u_input.d.x, u_input.a << (22812u % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1101f), var_3.x);
}

