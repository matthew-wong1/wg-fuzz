struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = vec4<i32>(~(~firstTrailingBit(firstLeadingBit(1i))), firstLeadingBit(arg_0.d.x) ^ (_wgslsmith_add_i32(firstLeadingBit(arg_0.b), global1.x) & arg_2.b), 1i, ~(arg_2.d.x | ~(-22986i)));
    var var_0 = vec2<bool>(true, all(vec2<bool>(!arg_2.a, !arg_2.c)));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(379f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.e.x)))))), 563f));
    global1 = max(vec4<i32>(countOneBits(0i), reverseBits(_wgslsmith_dot_vec3_i32(global1.xxy, vec3<i32>(-5837i, arg_0.b, 11316i))), ~u_input.d.x, _wgslsmith_sub_i32(3008i, arg_0.b) ^ (i32(-1i) * -84175i)), vec4<i32>(countOneBits(-u_input.b), max(-global1.x, _wgslsmith_clamp_i32(u_input.b, global1.x, 0i)), global1.x, ~(~(-48864i)))) & ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(14947i, u_input.a), -17015i), u_input.a, ~66542i, global1.x);
    global1 = firstLeadingBit(min(countOneBits(max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, 1i, 0i), vec4<i32>(arg_0.d.x, global1.x, arg_2.d.x, arg_0.b)), max(vec4<i32>(u_input.b, 33337i, u_input.d.x, -1018i), vec4<i32>(2147483647i, 21609i, global1.x, global1.x)))), abs(vec4<i32>(_wgslsmith_mod_i32(arg_0.b, 0i), arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4001i, arg_2.d.x, 2147483647i), vec4<i32>(u_input.a, -2147483647i, -53655i, arg_0.b)), -2147483647i))));
    return -1i;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3.e.x * var_0.e.x))), -291f), _wgslsmith_f_op_f32(-arg_3.e.x)), _wgslsmith_f_op_f32(arg_1 - var_0.e.x)));
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(20066i, -1i, func_3(arg_3, vec3<f32>(818f, var_0.e.x, -301f), arg_3, var_0.a), i32(-1i) * -2147483647i) << (~(~vec4<u32>(54529u, u_input.c.x, 0u, 1963u)) % vec4<u32>(32u)), vec4<i32>(var_0.b, 1i, -2147483647i | firstTrailingBit(-1i), u_input.d.x));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = -arg_0;
    var var_1 = _wgslsmith_div_i32(min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_clamp_i32(arg_0, -1i, -2147483647i), firstLeadingBit(global1.x), 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-62341i, 29574i, 14217i, arg_1) ^ vec4<i32>(-21456i, 9210i, arg_0, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, -1626i, 0i), vec4<i32>(arg_1, 15156i, var_0, 42356i), vec4<i32>(global1.x, arg_0, 10757i, 23353i))))), _wgslsmith_mult_i32(_wgslsmith_add_i32(func_2(25736i, -124f, firstTrailingBit(global1.xyy), Struct_1(false, 6824i, false, vec2<i32>(-36489i, 48853i), vec4<f32>(-541f, arg_3, arg_3, -360f))), firstTrailingBit(global1.x)), arg_0));
    global0 = arg_3;
    var_1 = 1i;
    let var_2 = i32(-1i) * -arg_1;
    return Struct_1(any(!vec4<bool>(1430f <= arg_3, all(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, false, false)), false)), max(-(~arg_1), ~(arg_0 | 1i) << (~25720u % 32u)), false, global1.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1000f, -801f, 1008f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, arg_3, arg_3, arg_3))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-325f, -740f, arg_3, 261f), vec4<f32>(arg_3, arg_3, -2591f, arg_3))))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = ~(arg_1.b >> (abs(1u) % 32u));
    global1 = ~vec4<i32>(u_input.b, -(global1.x ^ 0i), _wgslsmith_clamp_i32(-59398i, arg_1.d.x, arg_1.d.x) | arg_2.x, arg_2.x) << (~(~(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec4<u32>(79406u, 32867u, 1u, 79640u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 5999u)))) % vec4<u32>(32u));
    var var_1 = func_4(global1.x, firstTrailingBit(global1.x), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30303u, 60266u, 4294967295u), select(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, 0u), arg_1.c)), 637u), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(104434u, u_input.c.x, u_input.c.x), u_input.c)), ~min(~0u, 59911u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f * 130f)))));
    var var_2 = Struct_1(arg_3 || (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(arg_1.e.x + -1977f))) <= _wgslsmith_f_op_f32(exp2(1f))), firstTrailingBit(i32(-1i) * -1366i), var_1.c, global1.ww, arg_1.e);
    let var_3 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.e.x, var_2.e.x))) <= _wgslsmith_f_op_f32(-var_2.e.x)) && false);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1337f - _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_1.e.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(ceil(-353f)))))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_5(arg_0.e.xyx, func_4(~abs(arg_0.b), ~func_2(i32(-1i) * -1i, _wgslsmith_f_op_f32(min(199f, arg_0.e.x)), firstTrailingBit(vec3<i32>(-2147483647i, global1.x, global1.x)), arg_0), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(66665u, u_input.c.x, 23913u, 50459u), vec4<u32>(75413u, u_input.c.x, 18625u, 647u)), u_input.c.x, 0u), arg_0.e.x), vec2<i32>(_wgslsmith_sub_i32(func_4(arg_0.b, global1.x, vec3<u32>(u_input.c.x, u_input.c.x, 42182u), -1049f).b, global1.x) >> (1u % 32u), _wgslsmith_div_i32(~arg_0.d.x, ~(global1.x & -7734i))), all(!(!vec2<bool>(true, arg_0.a)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-785f)), _wgslsmith_f_op_f32(-arg_0.e.x), any(select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.c), arg_0.a)))));
    global1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.d.x, arg_0.b, 1i), vec4<i32>(22950i, -5022i, u_input.a, 9605i)), ~(-vec4<i32>(u_input.a, 14722i, u_input.d.x, 2147483647i))), firstLeadingBit(vec4<i32>(~(-20722i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.x, global1.x), vec2<i32>(30989i, u_input.d.x)), _wgslsmith_sub_i32(0i, u_input.d.x), global1.x)));
    var var_0 = func_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0.b, 1i, -8257i), vec4<i32>(-2147483647i, -2147483647i, -17624i, 2147483647i))), global1.x), 42680i), ~arg_0.b, vec3<u32>(u_input.c.x ^ (u_input.c.x >> (select(18823u, 51079u, arg_0.a) % 32u)), u_input.c.x, max(u_input.c.x, select(4360u, ~u_input.c.x, true))), -820f);
    let var_1 = Struct_1(arg_0.c | var_0.c, abs(_wgslsmith_mod_i32(u_input.b, ~reverseBits(global1.x))), true, vec2<i32>(-53902i, var_0.b), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), 1313f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_div_f32(var_0.e.x, 403f)), -234f), _wgslsmith_f_op_f32(max(arg_0.e.x, -238f))));
    return (~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(52604u, u_input.c.x, u_input.c.x, 4294967295u)) | u_input.c.x) & (~abs(~u_input.c.x) | u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = ~(~func_1(Struct_1(all(vec3<bool>(false, false, false)), _wgslsmith_mod_i32(-2147483647i, global1.x), all(vec3<bool>(false, true, true)), global1.yx << (u_input.c.zx % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, -301f, -1277f, -728f)))));
    let var_1 = u_input.c.x;
    let var_2 = func_4(global1.x, ~u_input.a, vec3<u32>(~(~4294967295u), ~firstLeadingBit(reverseBits(4294967295u)), min(u_input.c.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f * -304f)))));
    var var_3 = u_input.c.zy;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f - -266f));
}

