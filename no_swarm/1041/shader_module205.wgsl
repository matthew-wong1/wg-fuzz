struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(select(19919u, u_input.d.x, true), arg_3.c ^ arg_3.c), 44932u)), max(~vec3<u32>(1u, select(1u, 0u, false), 1u), vec3<u32>(15397u, firstLeadingBit(_wgslsmith_sub_u32(67221u, u_input.e)), abs(abs(0u)))), ~vec4<u32>(4294967295u, _wgslsmith_add_u32(0u, max(4294967295u, 0u)), arg_1.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(31386u, u_input.e, arg_1.c.x, 32888u), vec4<u32>(arg_1.c.x, arg_3.d.c.x, 4058u, 10171u))));
    var_0 = Struct_1(arg_1.b.xz, var_0.c.xzw, arg_3.d.c);
    var_0 = arg_1;
    var var_1 = ~firstLeadingBit(~(~vec2<u32>(0u, 47796u)) | (u_input.d.zz & (arg_3.d.a << (vec2<u32>(0u, 29083u) % vec2<u32>(32u)))));
    var var_2 = arg_1;
    return ~(~1u);
}

fn func_2() -> u32 {
    let var_0 = vec3<i32>(u_input.b, u_input.b, -1i);
    var var_1 = vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1260f, -536f, -242f, -1197f), vec4<f32>(-215f, 516f, 591f, -755f))))), Struct_1(~u_input.d.xy, vec3<u32>(~u_input.d.x, firstTrailingBit(u_input.e), ~93084u), ~(~vec4<u32>(5006u, 0u, u_input.d.x, 121689u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f * _wgslsmith_f_op_f32(ceil(-211f)))), Struct_2(vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.b) >> ((vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, 0u) | vec4<u32>(u_input.d.x, 4294967295u, 1u, 5086u)) % vec4<u32>(32u)), ~var_0, ~7525u, Struct_1(~u_input.d.zx, vec3<u32>(40356u, 0u, 5810u) >> (u_input.d % vec3<u32>(32u)), vec4<u32>(u_input.e, 0u, u_input.d.x, u_input.d.x)))), _wgslsmith_clamp_u32(u_input.e ^ 1u, _wgslsmith_div_u32(1u, 13009u), _wgslsmith_mult_u32(u_input.d.x, 10682u)), countOneBits(1u), _wgslsmith_mult_u32(~(~u_input.e), firstTrailingBit(1u ^ _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.e, 18350u, 4294967295u)))));
    let var_2 = Struct_2(vec4<i32>(-1i) * -(~vec4<i32>(1i, -2147483647i, var_0.x, -1i)), var_0, var_1.x, Struct_1(~countOneBits(~vec2<u32>(u_input.d.x, var_1.x)), ~(abs(vec3<u32>(4294967295u, 75363u, var_1.x)) >> (~u_input.d % vec3<u32>(32u))), vec4<u32>(1u, u_input.d.x, max(41044u | var_1.x, firstLeadingBit(93321u)), firstTrailingBit(var_1.x << (4294967295u % 32u)))));
    var_1 = var_2.d.c;
    var_1 = _wgslsmith_sub_vec4_u32(~(~(~var_2.d.c) << (~firstLeadingBit(var_2.d.c) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(var_2.d.c << (~abs(vec4<u32>(0u, var_1.x, 1u, var_1.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, var_1.x, u_input.d.x, var_1.x)), vec4<u32>(var_1.x >> (38765u % 32u), var_2.c, 19759u, u_input.d.x ^ u_input.e))));
    return 1u;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(!vec3<bool>(true, false, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(101f)));
    let var_2 = Struct_1(firstLeadingBit(vec2<u32>(u_input.d.x << (~4294967295u % 32u), ~4294967295u)), arg_0.d.b ^ abs(~abs(vec3<u32>(0u, u_input.e, u_input.e))), vec4<u32>(max(func_2() >> (1u % 32u), min(_wgslsmith_clamp_u32(1u, 4294967295u, arg_0.d.a.x), ~u_input.d.x)), arg_0.c, _wgslsmith_mult_u32(arg_0.d.b.x, u_input.d.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.d.b.xx, vec2<u32>(4294967295u, u_input.e)), u_input.d.x)));
    var var_3 = arg_0;
    var var_4 = vec3<f32>(var_1, _wgslsmith_f_op_f32(trunc(-157f)), _wgslsmith_f_op_f32(-239f * var_1));
    return Struct_1(~_wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(var_2.a.x, var_2.b.x)), ~(~vec2<u32>(var_3.d.c.x, u_input.e))), min(~u_input.d, ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.d.b.x, 22647u, var_2.c.x), vec3<u32>(35325u, arg_0.d.c.x, 100037u), vec3<u32>(u_input.d.x, arg_0.c, 1u)), u_input.d)), var_2.c);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_2.c.zw, ~arg_2.b, countOneBits(min(arg_2.c, ~arg_2.c)) ^ arg_2.c);
    let var_1 = (arg_1.x <= u_input.b) & arg_0;
    var var_2 = Struct_2(arg_1, arg_1.ywx, select(1u, 0u | ~arg_2.b.x, var_1), Struct_1(vec2<u32>(~(35658u ^ u_input.d.x), ~countOneBits(u_input.d.x)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 32928u, 4294967295u, 0u), var_0.c), ~u_input.d.x, countOneBits(arg_2.a.x)), vec4<u32>(arg_2.b.x, ~(~0u), var_0.a.x, 17366u)));
    let var_3 = var_2.d;
    var var_4 = select(!select(select(!vec4<bool>(true, true, var_1, true), !vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(var_1, false, false, var_1)), vec4<bool>(var_1, 17270i == u_input.b, true, any(vec4<bool>(false, false, false, true))), select(!vec4<bool>(false, var_1, true, var_1), !vec4<bool>(false, arg_0, false, true), select(vec4<bool>(var_1, var_1, arg_0, var_1), vec4<bool>(true, true, var_1, false), false))), vec4<bool>(false, false, any(vec2<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, var_1, true, arg_0)))), !arg_0), select(vec4<bool>(any(vec2<bool>(var_1, var_1)), !any(vec2<bool>(arg_0, true)), false, true), !select(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, true, true, false), vec4<bool>(false, false, var_1, arg_0)), select(vec4<bool>(var_1, true, arg_0, var_1), vec4<bool>(arg_0, true, true, true), true), !vec4<bool>(var_1, var_1, true, true)), !vec4<bool>(arg_0, true, all(vec3<bool>(false, false, var_1)), all(vec3<bool>(true, false, true)))));
    return (-4650i | arg_1.x) >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), !vec4<bool>(false, !any(vec3<bool>(false, false, false)), (u_input.d.x >= u_input.d.x) | true, !any(vec3<bool>(true, true, true))), all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = vec4<i32>(u_input.c, abs(_wgslsmith_clamp_i32(u_input.c, func_4(any(var_1.xy), abs(vec4<i32>(u_input.c, u_input.a, u_input.a, 2147483647i)), func_1(Struct_2(vec4<i32>(1i, 25562i, -20287i, -1i), vec3<i32>(2147483647i, u_input.b, u_input.c), 0u, Struct_1(vec2<u32>(u_input.d.x, 0u), vec3<u32>(4294967295u, 80680u, 57601u), vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, 1495u))))), abs(2147483647i))), u_input.c >> (select(u_input.e, u_input.e, all(!var_1.zww)) % 32u), 57716i);
    var_2 = select(countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(5539i, -9864i, -1i, u_input.b), vec4<i32>(0i, var_2.x, var_2.x, -2147483647i), vec4<i32>(0i, 0i, var_2.x, 48478i)))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-24241i, u_input.b, -1i, 1i), vec4<i32>(-19777i, -2147483647i, -33045i, -30i) << (vec4<u32>(u_input.d.x, 4771u, 28770u, u_input.d.x) % vec4<u32>(32u))), reverseBits(~vec4<i32>(-67931i, -11508i, -17116i, 0i))), all(var_1.ww)) | countOneBits(vec4<i32>(0i, 2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, var_2.x), ~u_input.b), -(~var_2.x)));
    var_0 = i32(-1i) * -34442i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.zxx, -(vec3<i32>(u_input.b, -1i, var_2.x) | vec3<i32>(u_input.c, 20768i, var_2.x)), vec3<i32>(u_input.a, max(u_input.b, var_2.x), u_input.b)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, var_2.x), 13619i, _wgslsmith_mod_i32(u_input.a, -59475i)) << (_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(46409u, u_input.d.x, 1u)), vec3<u32>(30166u, u_input.e, u_input.d.x)) % vec3<u32>(32u))), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(u_input.a, -reverseBits(0i), var_2.x), u_input.b), -867f, 30113u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-572f)), -1751f, false))));
}

