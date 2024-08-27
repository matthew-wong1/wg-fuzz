struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(15533u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.x, u_input.c, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(76543u, global0.x, 1u, 85472u), vec4<u32>(global0.x, 4294967295u, u_input.a, 2771u))) ^ u_input.c), u_input.c);
    let var_0 = false;
    global0 = firstTrailingBit(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, global0.x)) ^ ~vec2<u32>(0u, global0.x), min(~vec2<u32>(0u, 1u), max(vec2<u32>(u_input.c, global0.x), vec2<u32>(global0.x, global0.x)))));
    var var_1 = arg_0;
    var var_2 = Struct_1(var_1.c.x >= u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(step(var_1.b, -596f)))), firstTrailingBit(_wgslsmith_mult_vec3_i32(arg_0.c, var_1.c ^ -vec3<i32>(24397i, arg_0.c.x, -1i))), true, _wgslsmith_add_vec2_i32(~(u_input.b | max(vec2<i32>(arg_0.e.x, var_1.c.x), arg_0.c.yz)), -arg_0.c.xx));
    return ~_wgslsmith_div_vec2_u32(~vec2<u32>(~95726u, u_input.a), min(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 56171u))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(42823u, 0u)))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(2041f + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(step(-112f, arg_0.x)), -1783f);
    global0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(reverseBits(func_3(Struct_1(false, arg_0.x, vec3<i32>(u_input.b.x, -14778i, -17073i), false, vec2<i32>(u_input.b.x, -26284i)))) ^ ~vec2<u32>(86235u, 67527u), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(24386u, u_input.c)), _wgslsmith_mult_u32(u_input.c, global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.c), reverseBits(43111u)), ~(~vec2<u32>(global0.x, u_input.a)))));
    global0 = ~(~select(vec2<u32>(global0.x, u_input.c ^ global0.x), ~func_3(Struct_1(false, -765f, vec3<i32>(u_input.b.x, 20327i, 48150i), true, vec2<i32>(u_input.b.x, 22913i))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_1 = var_0.yzz;
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -230f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1261f) + _wgslsmith_div_f32(var_0.x, -672f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-723f, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * 806f), _wgslsmith_f_op_f32(round(482f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, -1775f, -1003f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.zyy)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.xxy, _wgslsmith_div_vec3_f32(vec3<f32>(-494f, 1000f, 167f), var_0.xwz))), vec3<f32>(515f, -224f, _wgslsmith_f_op_f32(step(1397f, 153f))))));
    return 607f;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 169f)), vec3<i32>(_wgslsmith_mod_i32(-abs(u_input.b.x), 39222i), u_input.b.x, u_input.b.x), all(vec2<bool>(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, false)))), vec2<i32>(u_input.b.x, u_input.b.x));
    global0 = vec2<u32>(~0u, func_3(var_0).x);
    var var_1 = Struct_1(true, var_0.b, ~(~max(vec3<i32>(var_0.c.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, -1i, -42209i))), all(select(select(!vec3<bool>(false, var_0.d, true), !vec3<bool>(false, var_0.a, var_0.d), true), select(!vec3<bool>(var_0.d, var_0.d, false), select(vec3<bool>(true, var_0.a, var_0.d), vec3<bool>(var_0.a, true, false), var_0.d), select(vec3<bool>(false, true, false), vec3<bool>(var_0.d, false, false), true)), vec3<bool>(true, var_0.d, !var_0.a))), ~firstLeadingBit(u_input.b));
    return Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-291f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-573f, var_1.b))), var_0.b))), _wgslsmith_add_vec3_i32(select(~firstTrailingBit(var_0.c), var_1.c, vec3<bool>(-2147483647i == var_0.c.x, false, any(vec3<bool>(true, var_1.d, var_0.d)))), _wgslsmith_clamp_vec3_i32(var_0.c, ~vec3<i32>(u_input.b.x, 0i, var_1.c.x), -var_1.c)), var_1.d, abs(_wgslsmith_sub_vec2_i32(var_1.e, ~vec2<i32>(-2147483647i, -36107i))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, arg_0))))), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(25152u, 52452u, arg_2), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.a, u_input.c, 121560u), vec3<u32>(4294967295u, arg_2, u_input.c))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, arg_2, 0u), vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, arg_2, 23600u)) | (~vec3<u32>(43465u, 32190u, arg_2) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(1621u, 1588u, 1u)))));
    var var_1 = countOneBits(~arg_2 << (1u % 32u));
    var var_2 = select(vec3<bool>(!all(vec3<bool>(false, var_0.a, true)), !arg_1.d, !(!func_4(arg_0, vec3<u32>(0u, global0.x, 981u)).d)), !vec3<bool>(_wgslsmith_clamp_u32(0u, arg_2, 0u) < global0.x, arg_1.a, select(true, false & arg_1.a, global0.x >= arg_2)), select(select(vec3<bool>(arg_1.d, false, false), vec3<bool>(func_4(428f, vec3<u32>(arg_2, arg_2, arg_2)).a, true, func_4(var_0.b, vec3<u32>(global0.x, 0u, 52904u)).a), arg_1.a), !(!vec3<bool>(true, var_0.a, arg_1.d)), !var_0.d));
    var var_3 = var_0.c.zx << (min(abs(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(8846u, u_input.c, global0.x))), ~countOneBits(countOneBits(vec2<u32>(arg_2, 42751u)))) % vec2<u32>(32u));
    let var_4 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-852f, arg_0.b))) - _wgslsmith_f_op_f32(arg_0.b * func_1(651f, Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.a, vec2<i32>(-3560i, 2147483647i)), 0u).b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_0.b)))));
    var var_1 = func_1(-436f, Struct_1(all(!vec2<bool>(arg_0.a, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * 1083f), _wgslsmith_div_f32(var_0.x, -870f)) * 1509f), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(7132i, u_input.b.x, u_input.b.x), abs(vec3<i32>(-24622i, -2147483647i, arg_0.e.x))), arg_0.c), _wgslsmith_f_op_f32(floor(var_0.x)) != -130f, ~vec2<i32>(abs(arg_0.c.x), -12366i)), 21339u);
    let var_2 = Struct_1(true, var_0.x, vec3<i32>(abs(firstTrailingBit(arg_0.e.x)), _wgslsmith_add_i32(func_1(arg_0.b, arg_0, 0u).e.x, 3029i), arg_0.c.x), select(!var_1.a, any(select(vec2<bool>(true, true), vec2<bool>(var_1.d, true), vec2<bool>(true, var_1.d))) & !var_1.a, var_1.d), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-7087i, 1i, 8764i), vec3<i32>(-1i, 2147483647i, var_1.c.x))), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), ~(~vec2<i32>(-17137i, arg_0.e.x))));
    var var_3 = select(select(vec2<bool>(any(vec3<bool>(var_1.a, false, arg_0.a)), any(vec2<bool>(false, arg_0.d)) == any(vec4<bool>(true, var_2.a, arg_0.d, true))), !(!(!vec2<bool>(arg_0.a, var_2.d))), var_1.a), !(!vec2<bool>(arg_0.e.x > -8543i, 9327u > global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-404f + var_2.b))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
    let var_4 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(630f, _wgslsmith_f_op_f32(552f - var_1.b)))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-877f)), arg_0.b), vec3<u32>(u_input.c, 1u, (0u | global0.x) & 0u)), 2980u);
    return func_4(_wgslsmith_f_op_f32(trunc(var_0.x)), vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(func_3(arg_0).x, 1u)), ~(~u_input.a), ~(~43678u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2033f * 1000f))))), vec3<i32>(-(func_5(arg_0).c.x & 216i), arg_3.c.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(func_1(590f, arg_3, 17495u).c.x, -27197i), abs(abs(arg_0.c.x)))), true, arg_0.c.xz);
    global0 = vec2<u32>(global0.x, global0.x);
    let var_1 = 1u;
    var var_2 = !arg_1.d;
    let var_3 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(-605f + arg_0.b), select(~abs(vec3<i32>(5373i, var_0.e.x, 0i)) & max(countOneBits(var_0.c), arg_1.c), vec3<i32>(~countOneBits(18112i), var_0.e.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, arg_0.c.x, arg_2), vec4<i32>(-26719i, 50854i, arg_0.c.x, 45034i))), vec3<bool>(!arg_0.a, true, arg_3.a)), true, vec2<i32>(~(-2147483647i), -2147483647i));
    return var_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, u_input.c), max(vec2<u32>(14412u, u_input.a), vec2<u32>(92321u, 79238u))) & select(max(vec2<u32>(global0.x, u_input.c), vec2<u32>(u_input.c, 0u)), vec2<u32>(_wgslsmith_sub_u32(1u, 0u), 4294967295u), !arg_1), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(14698u, 42091u), _wgslsmith_clamp_vec2_u32(vec2<u32>(102896u, 4294967295u), vec2<u32>(65098u, u_input.a), vec2<u32>(42360u, global0.x)))) << (~(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 0u)) ^ vec2<u32>(u_input.a, u_input.c)) % vec2<u32>(32u)));
    global0 = func_3(arg_0) << (vec2<u32>(abs(_wgslsmith_mult_u32(~2182u, reverseBits(u_input.c))), u_input.a | (u_input.a & global0.x)) % vec2<u32>(32u));
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.zy);
    global0 = min(~vec2<u32>(firstLeadingBit(abs(4294967295u)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global0.x, 22230u)), vec3<u32>(0u, u_input.a, 0u) << (vec3<u32>(u_input.a, 0u, 0u) % vec3<u32>(32u)))), _wgslsmith_sub_vec2_u32(~select(~vec2<u32>(u_input.c, 1u), ~vec2<u32>(global0.x, 1178u), !vec2<bool>(arg_0.d, arg_0.d)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(11476u, 23927u), vec2<u32>(global0.x, 1u)))));
    let var_1 = func_5(arg_0);
    return reverseBits(reverseBits(~48562u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec2<u32>(~max(reverseBits(70276u), min(global0.x, 4294967295u)), _wgslsmith_div_u32((13105u ^ global0.x) << (global0.x % 32u), countOneBits(~4294967295u))));
    global0 = vec2<u32>(global0.x, func_7(func_6(func_5(func_1(1000f, Struct_1(true, 419f, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), true, vec2<i32>(u_input.b.x, u_input.b.x)), 60248u)), func_1(169f, Struct_1(true, -249f, vec3<i32>(-1i, -4638i, 9854i), true, vec2<i32>(22201i, u_input.b.x)), u_input.c | global0.x), abs(-15296i), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1457f), _wgslsmith_sub_vec3_i32(vec3<i32>(51039i, u_input.b.x, 42951i), vec3<i32>(u_input.b.x, -26373i, u_input.b.x)), false, ~vec2<i32>(31800i, u_input.b.x))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), any(vec3<bool>(false, true, true))), vec4<f32>(-806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(873f, 457f))) - _wgslsmith_f_op_f32(-253f + 639f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(2132f, -1000f)), _wgslsmith_f_op_f32(floor(-838f)))), 1462f)));
    var var_0 = -389f;
    var var_1 = ~u_input.a;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(251f)))), -157f))), 130f);
    let var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-874f, -785f), func_1(773f, Struct_1(false, -636f, vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), true, vec2<i32>(-9917i, 20827i)), global0.x).b)) * 411f), func_1(_wgslsmith_f_op_f32(531f - -356f), Struct_1(all(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(516f + 1658f), abs(vec3<i32>(u_input.b.x, 2147483647i, 0i)), true, _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x))), u_input.a).b), ~vec3<u32>(global0.x, global0.x, 0u));
    var_1 = abs(u_input.a) | firstTrailingBit(u_input.a);
    global0 = vec2<u32>(_wgslsmith_div_u32(~abs(1u), global0.x), _wgslsmith_clamp_u32(global0.x, ~(_wgslsmith_clamp_u32(u_input.c, u_input.a, u_input.a) ^ ~global0.x), 1u));
    let var_3 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(firstTrailingBit(firstLeadingBit(-vec4<i32>(49924i, 0i, 45855i, 2147483647i)))), vec4<i32>(-1i) * -(vec4<i32>(var_2.c.x, var_2.e.x, -2147483647i, var_2.e.x) ^ vec4<i32>(16108i, u_input.b.x, var_2.e.x, var_2.c.x)), -max(select(~vec4<i32>(-1i, 2147483647i, -36376i, u_input.b.x), min(vec4<i32>(1i, var_2.e.x, -48439i, 47529i), vec4<i32>(u_input.b.x, -18166i, 1i, 0i)), !vec4<bool>(var_2.a, var_2.a, var_2.d, true)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.e.x, u_input.b.x, 1i, -2147483647i), vec4<i32>(40127i, u_input.b.x, 6549i, u_input.b.x), vec4<i32>(-31403i, var_2.c.x, var_2.e.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, -1463f, var_2.b, var_2.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -1363f, 638f, 260f)))))), ~(~(~29785u)), _wgslsmith_sub_u32(~select(4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a), var_2.d), 1u));
}

