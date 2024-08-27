struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> vec2<f32> {
    var var_0 = countOneBits(-vec3<i32>(arg_1, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, u_input.c), -2147483647i), u_input.c));
    var_0 = max(~_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, -26467i), vec3<i32>(-1i, arg_1, 91i)), ~vec3<i32>(37559i, arg_1, 1i)), vec3<i32>(_wgslsmith_mod_i32(-36297i, 11510i), min(586i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.x, var_0.x), vec3<i32>(17950i, 20354i, arg_1)))), -(vec3<i32>(-45628i, var_0.x, -13753i) >> (_wgslsmith_mod_vec3_u32(arg_0, min(vec3<u32>(u_input.a.x, u_input.b, 0u), arg_0)) % vec3<u32>(32u))));
    var_0 = select(vec3<i32>(arg_1, -30374i, 0i), -(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, var_0.x) ^ vec3<i32>(arg_1, -58423i, -17935i), -vec3<i32>(2020i, 1i, var_0.x)) | firstTrailingBit(reverseBits(vec3<i32>(-1i, 0i, -2099i)))), !select(select(!vec3<bool>(arg_3, false, true), select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, true, arg_3), arg_3), arg_0.x < 0u), !(!vec3<bool>(arg_3, arg_3, false)), vec3<bool>(arg_2.x < -1000f, !arg_3, any(vec2<bool>(arg_3, arg_3)))));
    var_0 = min(select(abs(vec3<i32>(-1i) * -vec3<i32>(1i, var_0.x, u_input.d.x)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -1i, u_input.d.x), vec3<i32>(-40465i, var_0.x, -12017i) | vec3<i32>(arg_1, -1i, var_0.x)), ~(~vec3<i32>(2147483647i, arg_1, u_input.d.x))), !(!select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, true, false), true))), vec3<i32>(~(~1i), -4904i, arg_1));
    var_0 = max(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_1, firstTrailingBit(-38736i)) & vec3<i32>(_wgslsmith_add_i32(var_0.x, -4598i), 19269i, 1i), -(vec3<i32>(arg_1, 22161i, 14920i) & vec3<i32>(-1i, -1375i, arg_1)) & vec3<i32>(-29539i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 31663i, 46026i), vec3<i32>(0i, var_0.x, u_input.d.x)), 1i)), firstLeadingBit(~vec3<i32>(-2147483647i, 1i, -1i)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(arg_2, _wgslsmith_f_op_vec2_f32(-arg_2))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(36960u);
    var_1 = Struct_1(1u >> (~firstLeadingBit(var_0) % 32u));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1579f * 197f), _wgslsmith_f_op_f32(1632f + 234f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~u_input.a, ~_wgslsmith_mult_i32(u_input.c, 39530i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 1594f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1101f, 1000f) - vec2<f32>(-582f, -1400f))), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1409f, _wgslsmith_f_op_f32(-1083f * -594f)) + vec2<f32>(_wgslsmith_f_op_f32(1076f + 1441f), -981f))));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(select(select(firstTrailingBit(vec2<u32>(0u, var_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(49564u, u_input.b), u_input.a.zx, vec2<u32>(var_0, u_input.b)), vec2<bool>(false, false)), u_input.a.zz << (~u_input.a.zx % vec2<u32>(32u)), vec2<bool>(true, true)), ~(~u_input.a.yz) << (~_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(var_0, var_1.a)) % vec2<u32>(32u))));
    return Struct_1(_wgslsmith_add_u32(4294967295u << (_wgslsmith_add_u32(var_0 | var_1.a, ~var_1.a) % 32u), _wgslsmith_div_u32(countOneBits(var_1.a), 1u)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~min(19809u & u_input.a.x, u_input.a.x)));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_add_i32(-60566i, ~0i);
    let var_3 = u_input.a.x;
    let var_4 = Struct_2(var_0.a);
    return Struct_2(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~10819u, _wgslsmith_add_u32(~u_input.b, 12909u)), ~_wgslsmith_dot_vec3_u32(min(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.b)), vec3<u32>(57510u, u_input.b, u_input.b)));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = -1257f;
    var_1 = 36856i;
    var var_3 = func_1(-35949i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-912f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1890f), _wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(floor(-1041f))))), var_3.a.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 968f) + 338f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(59625u, u_input.a.x, var_3.a.a), u_input.c, vec2<f32>(505f, -317f), true)).x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(-3049f, _wgslsmith_f_op_f32(321f + 279f)))), _wgslsmith_f_op_vec2_f32(func_3(~(u_input.a | vec3<u32>(10931u, 58460u, var_3.a.a)), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, 1325f))), true)).x));
}

