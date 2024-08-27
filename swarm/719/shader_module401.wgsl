struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    return u_input.b.x;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(_wgslsmith_mod_vec2_i32(u_input.b.yx, u_input.b.wx)), vec2<i32>(13009i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 5216i, u_input.c.x, -13311i), u_input.b)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-24791i, u_input.b.x), vec2<i32>(u_input.b.x, 18701i), -u_input.b.yw));
    var_0 = u_input.b.wx;
    var_0 = firstLeadingBit(-vec2<i32>(0i >> (~u_input.a % 32u), 14965i));
    let var_1 = false;
    let var_2 = 1u;
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_2, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_mult_u32(var_2, 26332u), var_2, firstLeadingBit(arg_0))), u_input.a), false, ~vec4<u32>(2814u, 23809u, arg_0, var_2));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = func_2(arg_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(2031f)), _wgslsmith_f_op_f32(f32(-1f) * -1958f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-608f)))), -553f), vec4<bool>(~4294967295u == (~17035u << (u_input.a % 32u)), all(vec3<bool>(arg_0.c.x, arg_0.c.x, u_input.a <= 131240u)), true, !any(!arg_0.c.zy)), vec4<bool>(!arg_0.c.x, all(!select(arg_0.c.yz, arg_0.c.yx, true)), true, true));
    var var_1 = ~(~(~countOneBits(vec2<u32>(u_input.a, 70093u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(49128u, 6623u), arg_0.a.zz)));
    let var_2 = arg_0;
    var_1 = ~(_wgslsmith_add_vec2_u32(~(var_2.a.zy | vec2<u32>(73490u, 17108u)), vec2<u32>(_wgslsmith_add_u32(u_input.a, var_0.c.x), 3184u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(select(var_0.c.x, 23401u, var_0.b), 0u), vec2<u32>(1u, 17967u << (arg_0.a.x % 32u))));
    return select(arg_0.c, vec3<bool>(true, true, any(select(select(vec4<bool>(true, true, arg_0.c.x, arg_0.c.x), vec4<bool>(var_0.b, arg_0.c.x, var_2.c.x, var_2.c.x), vec4<bool>(false, var_0.b, false, var_2.c.x)), !vec4<bool>(true, true, var_0.b, arg_0.c.x), !arg_0.c.x))), !var_2.c.x | false);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(arg_0.c.xwy, vec3<u32>(select(~arg_0.c.x, _wgslsmith_sub_u32(u_input.a, 40301u), all(arg_3)), func_2(select(54100u, 59914u, arg_3.x), vec3<f32>(arg_1, -1018f, -102f), !vec4<bool>(arg_0.b, arg_0.b, true, false), select(vec4<bool>(true, true, arg_3.x, arg_0.b), vec4<bool>(arg_3.x, arg_0.b, arg_3.x, arg_3.x), arg_0.b)).c.x, u_input.a)), _wgslsmith_sub_vec3_i32(reverseBits(-countOneBits(vec3<i32>(-1i, u_input.b.x, arg_2.x))), abs(vec3<i32>(_wgslsmith_clamp_i32(-50261i, -9375i, -1i), ~arg_2.x, -2147483647i))), !arg_3);
    let var_1 = func_2(firstTrailingBit(arg_0.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, 966f, -585f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 822f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2132f, arg_1, arg_1)), vec3<f32>(915f, -953f, arg_1))), arg_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, arg_1, 1403f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, 1573f))))))), select(vec4<bool>(true, ~arg_2.x > 27742i, arg_3.x, arg_1 == arg_1), select(!vec4<bool>(arg_0.b, arg_3.x, false, arg_0.b), vec4<bool>(arg_3.x, !var_0.c.x, any(arg_3), arg_1 != arg_1), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(false, var_0.c.x, true, false), var_0.c.x), !vec4<bool>(arg_3.x, false, arg_0.b, true))), !(!select(vec4<bool>(arg_3.x, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(true, false, var_0.c.x, true), false))), select(select(vec4<bool>(arg_3.x, func_2(64657u, vec3<f32>(arg_1, arg_1, arg_1), vec4<bool>(arg_3.x, arg_0.b, false, arg_0.b), vec4<bool>(false, true, false, var_0.c.x)).b, !arg_0.b, any(vec4<bool>(false, arg_0.b, false, false))), select(select(vec4<bool>(var_0.c.x, false, arg_0.b, arg_0.b), vec4<bool>(false, false, true, var_0.c.x), false), vec4<bool>(true, arg_0.b, true, var_0.c.x), vec4<bool>(arg_3.x, false, var_0.c.x, arg_0.b)), true), vec4<bool>(arg_0.b, true && (var_0.c.x != var_0.c.x), false, arg_0.b), true));
    let var_2 = firstLeadingBit(-2147483647i);
    var var_3 = firstTrailingBit(~countOneBits(39303u));
    let var_4 = countOneBits(var_0.b);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_1, 620f, arg_1), vec4<f32>(arg_1, 687f, 679f, 440f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 594f, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 805f, arg_1, 2679f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, arg_1, 1337f, -427f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<u32>(~(~firstTrailingBit(4294967295u)), 19184u, 39468u), u_input.b.zzy, vec3<bool>(abs(func_1(false, vec2<f32>(2527f, 1009f))) != u_input.c.x, true, false));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1932f, _wgslsmith_f_op_f32(min(1206f, 463f)), 160f, _wgslsmith_f_op_f32(1511f + 1252f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 215f, -1155f, 1610f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1452f, -1759f, -654f, -201f))), _wgslsmith_f_op_vec4_f32(func_4(func_2(u_input.a, vec3<f32>(-1000f, -1495f, -631f), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(false, true, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(abs(1367f)), abs(vec4<i32>(27536i, var_0.b.x, -1i, 0i)), func_3(var_0))))));
    let var_2 = _wgslsmith_dot_vec4_u32(select(~(~(~vec4<u32>(15533u, u_input.a, var_0.a.x, 78169u))), vec4<u32>(4294967295u, 6360u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, 28359u, 1915u)), var_0.a.x), func_2(u_input.a, vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)).c.x), true), vec4<u32>(~func_2(abs(13742u), _wgslsmith_f_op_vec3_f32(-var_1.wxx), vec4<bool>(true, var_0.c.x, var_0.c.x, false), !vec4<bool>(var_0.c.x, false, false, var_0.c.x)).a, 49872u, 38664u, ~(var_0.a.x >> (69587u % 32u))));
    var var_3 = var_0.c;
    var_3 = vec3<bool>(func_3(Struct_2(var_0.a, firstLeadingBit(_wgslsmith_mult_vec3_i32(var_0.b, u_input.b.xyx)), !(!vec3<bool>(true, true, var_3.x)))).x, all(select(!select(vec4<bool>(true, true, var_3.x, var_3.x), vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(false, true, true, var_3.x)), vec4<bool>(true, false, false, true), !select(vec4<bool>(var_0.c.x, var_3.x, false, var_3.x), vec4<bool>(false, var_0.c.x, false, var_0.c.x), true))), _wgslsmith_f_op_f32(-var_1.x) != var_1.x);
    var var_4 = all(!(!var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-7541i)), select(_wgslsmith_mult_i32(var_0.b.x, ~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), -1i, var_3.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 + var_1)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 694f, var_1.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-var_1))), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(-firstTrailingBit(-2147483647i), countOneBits(var_0.b.x ^ u_input.b.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(1272f * -220f)), _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -2415f)))), 1000f, _wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(min(-137f, _wgslsmith_f_op_f32(floor(var_1.x)))))));
}

