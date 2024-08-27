struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~(-select(_wgslsmith_sub_vec3_i32(-vec3<i32>(14642i, -77984i, -4766i), ~vec3<i32>(25951i, arg_0, arg_0)), select(vec3<i32>(arg_0, 2147483647i, -1207i), vec3<i32>(36475i, arg_0, 1i) ^ vec3<i32>(arg_0, u_input.b, -12618i), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~53809u, u_input.c, 0u, 1u), ~countOneBits(min(vec4<u32>(1u, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 4294967295u, 1u, 41619u))) ^ max(_wgslsmith_div_vec4_u32(vec4<u32>(32400u, u_input.c, 0u, u_input.a) & vec4<u32>(u_input.d.x, 51571u, 11296u, 16197u), vec4<u32>(21556u, u_input.c, u_input.c, u_input.c)), ~(~vec4<u32>(u_input.a, u_input.a, u_input.c, 1u))));
    var_2 = vec4<u32>(firstLeadingBit(~u_input.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 96882u) << (var_2.yy % vec2<u32>(32u)), min(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(u_input.a, u_input.d.x)))), 90185u, 65978u, firstTrailingBit(_wgslsmith_dot_vec3_u32(var_2.xzz, ~vec3<u32>(1u, var_2.x, 4294967295u)) << ((var_2.x & u_input.d.x) % 32u)));
    var var_3 = Struct_5(Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(217f, 445f))), Struct_1(-var_0.zz, ~88129u), _wgslsmith_f_op_f32(f32(-1f) * -642f))), vec2<u32>(~var_2.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(14141u, 32367u, u_input.a, 1u) ^ vec4<u32>(u_input.a, 1u, var_2.x, 1u), vec4<u32>(u_input.c, var_2.x, 0u, 1u)), select(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 20521u), ~vec4<u32>(1u, 1u, u_input.c, 29804u), true))), Struct_2(2130f, Struct_1(vec2<i32>(48150i, firstTrailingBit(-2147483647i)), _wgslsmith_sub_u32(u_input.c, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -413f)));
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-214f)))));
    var var_2 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.a.x, arg_1.b.a.x, -1i, arg_3.a.b.a.x), vec4<i32>(2147483647i, u_input.b, 79038i, u_input.b)), u_input.b), vec2<i32>(-2147483647i, -u_input.b << (~4294967295u % 32u)));
    let var_3 = ~15372u;
    var_0 = 488f;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_5) -> u32 {
    var var_0 = arg_2.c;
    let var_1 = arg_2.c.b;
    let var_2 = vec3<bool>(false, arg_0, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-441f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1231f)) + _wgslsmith_f_op_f32(trunc(arg_2.c.a))), Struct_1(select(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(10661i, -36754i), vec2<bool>(arg_1.x, true)), firstTrailingBit(var_0.b.b)), 156f), func_3(arg_2.c.b.a.x << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u)), arg_2.a));
    var var_3 = Struct_4(!arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.a - arg_2.a.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -494f))), 254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f + 1392f) + arg_2.c.a))), -2147483647i, Struct_1(countOneBits(var_0.b.a), _wgslsmith_mod_u32(max(arg_2.b.x, u_input.a), _wgslsmith_mult_u32(arg_2.a.a.b.b | u_input.d.x, arg_2.b.x))));
    return 1u & ~arg_2.c.b.b;
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a, 449f, arg_3.a.c)))))), max(_wgslsmith_clamp_i32(arg_2.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -1i), 36468i), u_input.b), abs(abs(-1i))), Struct_1(vec2<i32>(arg_2.a.x, -2147483647i), ~(arg_0 | 0u)));
    var var_1 = vec2<bool>(!var_0.a, var_0.a);
    var_1 = select(select(vec2<bool>(true, _wgslsmith_f_op_f32(min(arg_3.a.a, arg_3.a.a)) < _wgslsmith_f_op_f32(var_0.b.x * 1000f)), vec2<bool>((var_0.a && true) || true, var_1.x), vec2<bool>(-1466f <= _wgslsmith_div_f32(-469f, var_0.b.x), true || var_1.x)), !(!(!select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 826f) * _wgslsmith_f_op_f32(trunc(1000f))))) > _wgslsmith_f_op_f32(-arg_3.a.c));
    var var_2 = Struct_5(Struct_3(Struct_2(_wgslsmith_f_op_f32(-1482f - 2582f), Struct_1(select(vec2<i32>(arg_2.a.x, arg_1.x), vec2<i32>(arg_2.a.x, 57794i), vec2<bool>(false, var_0.a)), ~14669u), -829f)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.xz, _wgslsmith_mod_vec2_u32(u_input.d.zz, vec2<u32>(23161u, var_0.d.b))), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, arg_2.b), vec2<u32>(arg_3.a.b.b, ~arg_3.a.b.b))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1016f, arg_3.a.a)))), var_0.d, -434f));
    var_1 = select(!vec2<bool>(var_1.x, var_1.x), select(select(select(select(vec2<bool>(false, var_0.a), vec2<bool>(var_1.x, true), false), vec2<bool>(true, true), 66005u >= arg_2.b), !(!vec2<bool>(var_1.x, var_0.a)), !(!vec2<bool>(var_0.a, true))), select(!select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a)), !(!vec2<bool>(true, var_1.x)), all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, true, false), var_1.x))), all(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), !vec4<bool>(var_0.a, var_1.x, var_0.a, true), true))), !vec2<bool>(true, var_0.a));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(arg_3.a.a + -1099f))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.b.a.x, -25947i, var_2.c.b.a.x), reverseBits(vec3<i32>(34821i, -2147483647i, var_0.d.a.x))), var_2.c.b.a.x), ~arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(select(-179f, var_0.b.x, false))))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = select(vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), all(vec3<bool>(true, true, func_3(-1i))), any(vec2<bool>(true, false)) && !select(true, false, false)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(func_4(_wgslsmith_f_op_f32(-arg_0.c), func_5(u_input.d.x, countOneBits(vec3<i32>(0i, arg_0.b.a.x, -5060i)), func_5(u_input.a, vec3<i32>(arg_0.b.a.x, u_input.b, -1i), arg_0.b, Struct_3(arg_0)).b, Struct_3(arg_0)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), Struct_3(func_5(arg_0.b.b, vec3<i32>(1i, u_input.b, -48453i), Struct_1(arg_0.b.a, 4294967295u), Struct_3(Struct_2(1381f, Struct_1(arg_2.yz, u_input.c), arg_1.x))))), false, (~arg_0.b.b | ~arg_0.b.b) >= 1u));
    return Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901f, arg_0.c, -342f)), vec3<f32>(-1235f, -1000f, arg_0.a))))), arg_2.x, arg_0.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    var var_0 = func_6(func_5(_wgslsmith_mult_u32(func_2(true, vec2<bool>(true, true), Struct_5(Struct_3(Struct_2(arg_0.x, Struct_1(vec2<i32>(0i, u_input.b), 85808u), -1135f)), vec2<u32>(0u, 4294967295u), Struct_2(-155f, Struct_1(vec2<i32>(-2147483647i, u_input.b), 42715u), -771f))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 4294967295u, 44454u), vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.d.x)), ~2486u)), ~(~(-vec3<i32>(55375i, u_input.b, -32088i))), Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(40147i, u_input.b), -vec2<i32>(350i, u_input.b)), u_input.d.x), Struct_3(Struct_2(1000f, Struct_1(vec2<i32>(u_input.b, 27634i), u_input.c), _wgslsmith_f_op_f32(ceil(-1017f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -711f) - arg_0), vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0)) * _wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(1107f, arg_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(1324f + 1932f), arg_0.x)), !select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a != 4294967295u))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 63485i, u_input.b) ^ vec3<i32>(u_input.b, 15891i, 2147483647i), vec3<i32>(u_input.b, u_input.b, -2147483647i)) ^ _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 30544i, u_input.b)), vec3<i32>(u_input.b, 4267i, -2147483647i), ~vec3<i32>(u_input.b, u_input.b, 9110i)), vec3<i32>(-1i, u_input.b, func_5(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(50548i, 6963i, u_input.b)), func_5(4294967295u, vec3<i32>(u_input.b, -1i, 0i), Struct_1(vec2<i32>(0i, -2147483647i), 4294967295u), Struct_3(Struct_2(arg_0.x, Struct_1(vec2<i32>(-1i, 2147483647i), 0u), arg_1))).b, Struct_3(Struct_2(1171f, Struct_1(vec2<i32>(-33652i, 0i), u_input.c), 1031f))).b.a.x)));
    var var_1 = Struct_4(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.b.x, arg_0.x) * vec3<f32>(-1000f, -1031f, -2333f))))), _wgslsmith_mod_i32(func_5(42977u, vec3<i32>(1i, abs(u_input.b), ~var_0.d.a.x), func_5(50828u, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d.a.x, u_input.b, 3324i), vec3<i32>(0i, var_0.c, 12874i)), Struct_1(var_0.d.a, 8273u), Struct_3(Struct_2(1215f, Struct_1(var_0.d.a, 1u), 1311f))).b, Struct_3(func_5(u_input.d.x, vec3<i32>(32135i, u_input.b, u_input.b), var_0.d, Struct_3(Struct_2(194f, Struct_1(vec2<i32>(var_0.c, -731i), var_0.d.b), var_0.b.x))))).b.a.x, func_6(func_5(~u_input.c, ~vec3<i32>(670i, 664i, 1i), Struct_1(var_0.d.a, 38558u), Struct_3(Struct_2(261f, var_0.d, 1351f))), var_0.b.xz, -(vec3<i32>(-22916i, var_0.d.a.x, -8306i) ^ vec3<i32>(var_0.d.a.x, 0i, 66921i))).c), func_5(u_input.a >> (countOneBits(~u_input.a) % 32u), ~abs(vec3<i32>(var_0.c, 2147483647i, var_0.c)), func_5(u_input.d.x, -(vec3<i32>(-2147483647i, var_0.c, -33432i) >> (vec3<u32>(33185u, u_input.a, var_0.d.b) % vec3<u32>(32u))), var_0.d, Struct_3(func_5(4294967295u, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(var_0.d.a, 66346u), Struct_3(Struct_2(1502f, Struct_1(var_0.d.a, 0u), 356f))))).b, Struct_3(func_5(~var_0.d.b, ~vec3<i32>(15130i, u_input.b, u_input.b), func_6(Struct_2(-563f, Struct_1(var_0.d.a, 12631u), -670f), vec2<f32>(arg_0.x, -1157f), vec3<i32>(2147483647i, var_0.c, 1i)).d, Struct_3(Struct_2(arg_0.x, Struct_1(var_0.d.a, u_input.a), -1222f))))).b);
    let var_2 = func_6(func_5(31393u, select(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.d.a.x, var_0.c, -1i), -vec3<i32>(0i, -82815i, u_input.b)), countOneBits(vec3<i32>(-1095i, 0i, 1i)), vec3<bool>(all(vec2<bool>(false, var_0.a)), true, var_0.a)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i) << (u_input.d.yx % vec2<u32>(32u)), vec2<i32>(-43936i, 49225i)), func_2(true, vec2<bool>(false, var_1.a), Struct_5(Struct_3(Struct_2(arg_1, Struct_1(vec2<i32>(var_1.c, var_0.d.a.x), 0u), var_0.b.x)), vec2<u32>(40962u, var_1.d.b), Struct_2(var_1.b.x, Struct_1(var_0.d.a, 71971u), arg_0.x)))), Struct_3(func_5(abs(70045u), vec3<i32>(-26511i, -2194i, -39865i), var_1.d, Struct_3(Struct_2(arg_0.x, var_0.d, 1675f))))), var_1.b.yx, _wgslsmith_clamp_vec3_i32(~min(vec3<i32>(-21817i, var_1.d.a.x, -2147483647i), vec3<i32>(u_input.b, 18286i, -1i)) & vec3<i32>(max(51009i, u_input.b), ~var_1.d.a.x, -14043i), ~(-countOneBits(vec3<i32>(var_1.c, 2147483647i, u_input.b))), abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, 1i, u_input.b)), ~vec3<i32>(54970i, -4965i, var_0.d.a.x)))));
    let var_3 = Struct_3(func_5(22485u >> ((u_input.c & 1u) % 32u), -vec3<i32>(-2147483647i, -2147483647i, var_0.c), func_5(u_input.a, vec3<i32>(func_5(5714u, vec3<i32>(-1i, 2147483647i, 23082i), var_0.d, Struct_3(Struct_2(var_2.b.x, var_2.d, -1068f))).b.a.x, 1303i, var_1.d.a.x ^ 2147483647i), Struct_1(-vec2<i32>(-2147483647i, var_2.d.a.x), _wgslsmith_clamp_u32(4294967295u, var_2.d.b, 4294967295u)), Struct_3(func_5(5201u, vec3<i32>(var_2.d.a.x, u_input.b, -2147483647i), var_2.d, Struct_3(Struct_2(-748f, Struct_1(var_0.d.a, var_1.d.b), arg_0.x))))).b, Struct_3(Struct_2(-694f, var_0.d, func_5(32733u, vec3<i32>(35724i, 57008i, var_1.d.a.x), var_2.d, Struct_3(Struct_2(var_0.b.x, var_0.d, var_2.b.x))).a))));
    var var_4 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-453f, _wgslsmith_f_op_f32(f32(-1f) * -153f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1905f))))), var_2.d, _wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1797f, -790f)))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-153f, 1155f), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(func_1(vec2<f32>(-381f, -331f), 1502f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, 1781f, 373f) * vec3<f32>(-524f, 1576f, -1305f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(197f)), 1460f, _wgslsmith_f_op_f32(-934f + -401f))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), false))))));
    let var_1 = all(vec2<bool>(true, true));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-var_0.yx), -147f)), var_0.x, func_6(Struct_2(var_0.x, Struct_1(vec2<i32>(u_input.b, u_input.b), u_input.d.x), 892f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -865i, u_input.b), vec3<i32>(-1i, 29969i, u_input.b))).a)))), -1080f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(func_5(1u, countOneBits(vec3<i32>(-8420i, u_input.b, -1i)), Struct_1(vec2<i32>(u_input.b, u_input.b), 0u), Struct_3(Struct_2(1117f, Struct_1(vec2<i32>(u_input.b, -1i), u_input.c), 301f))).a, var_0.x)));
    let var_2 = vec4<i32>(u_input.b, ~u_input.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(countOneBits(14568i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-8567i, 2147483647i)), vec2<i32>(u_input.b, -2277i))), ~u_input.b), u_input.b);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f - -373f) + var_0.x)), Struct_1(var_2.zx, 107970u), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_3.a.b.a.x, 5799i, 12391i), reverseBits(var_2.x), 15888i, _wgslsmith_div_i32(-2147483647i, var_3.a.b.a.x)), ~(~var_2)) & abs(vec4<i32>(u_input.b & u_input.b, var_2.x, var_2.x | 5833i, min(-17750i, 1i))), var_2.x ^ u_input.b);
}

