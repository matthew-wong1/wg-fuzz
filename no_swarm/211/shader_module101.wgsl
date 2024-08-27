struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> u32 {
    global1 = Struct_1(~39752u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, 57310u), _wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.yy), select(30573u, 36143u, true)), vec3<u32>(0u | u_input.a, global1.a, 4294967295u)) % 32u), select(global2.x > ~u_input.c.x, true, global0[_wgslsmith_index_u32(u_input.a, 4u)]));
    var var_0 = Struct_1(_wgslsmith_add_u32(u_input.a, u_input.a), all(select(vec2<bool>(true, true), vec2<bool>(global1.b, !global0[_wgslsmith_index_u32(33557u, 4u)]), global1.b)));
    var var_1 = Struct_1(~var_0.a, global1.b);
    let var_2 = vec2<i32>(~(u_input.b.x ^ countOneBits(_wgslsmith_mult_i32(u_input.b.x, -2147483647i))), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(9666i, u_input.b.x, 1i, -2147483647i), vec4<i32>(1i, u_input.b.x, u_input.b.x, -3169i), true) | vec4<i32>(19951i, 2147483647i, global2.x, u_input.b.x)), firstLeadingBit(countOneBits(vec4<i32>(global2.x, global2.x, 12658i, global2.x))) ^ vec4<i32>(select(u_input.c.x, 20327i, var_0.b), global2.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global2.x, 9437i)), global2.x)));
    global1 = Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(max(_wgslsmith_div_vec2_u32(arg_1.xz, vec2<u32>(4294967295u, var_0.a)), ~arg_1.yx), arg_1.xz)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], !global1.b, true, 0i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global2.x), var_2))));
    return _wgslsmith_div_u32(16177u, ~(~58041u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_1(func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1768f, -1272f)) - arg_1), 539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 282f))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 21154u, abs(arg_0.a)), ~vec3<u32>(global1.a, 83366u, 16018u))), true);
    var var_1 = vec2<u32>(~func_3(vec3<f32>(arg_2, -800f, 1396f), ~vec3<u32>(u_input.a, arg_0.a, global1.a)), select(u_input.a, 4294967295u, global1.b)) >> (~(~(vec2<u32>(8450u, global1.a) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, 6229u), vec2<u32>(arg_0.a, 39534u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_2 = Struct_1(3757u, !(!global1.b));
    var_2 = var_0;
    global0 = array<bool, 4>();
    return vec2<u32>(~(_wgslsmith_add_u32(101756u, 26229u) >> (1u % 32u)), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global1 = Struct_1(65309u, any(vec2<bool>(true, true)));
    global2 = ~vec3<i32>(global2.x, -global2.x, _wgslsmith_clamp_i32(0i, 2147483647i, -25180i));
    let var_0 = min(vec2<i32>(2147483647i, _wgslsmith_div_i32(-2147483647i, -18937i)), u_input.c);
    var var_1 = 24647u;
    var_1 = ~_wgslsmith_mod_u32(u_input.a | arg_0.a, global1.a);
    return Struct_1(_wgslsmith_sub_u32(78493u, u_input.a), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = arg_2;
    let var_0 = Struct_1(1u, global1.b);
    var var_1 = func_4(var_0, func_2(arg_2, _wgslsmith_f_op_f32(998f - arg_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1027f - -488f) + _wgslsmith_f_op_f32(-575f * 1078f))))));
    var var_2 = _wgslsmith_f_op_f32(select(399f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -261f)))))), !(true | var_0.b)));
    global1 = Struct_1(abs(u_input.a), arg_2.b);
    return Struct_1(func_2(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(ceil(arg_1))).x, func_4(var_0, vec2<u32>(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -2811f), vec3<f32>(649f, -1138f, -235f)), firstLeadingBit(vec3<u32>(var_1.a, global1.a, var_1.a))), var_0.a)).b);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = func_4(func_1(select(~countOneBits(vec3<i32>(global2.x, global2.x, -9664i)), vec3<i32>(49770i, -u_input.b.x, min(global2.x, 2147483647i)), !(!vec3<bool>(arg_2.b, true, false))), -233f, Struct_1(arg_2.a, true)), vec2<u32>(~1u, ~arg_2.a));
    let var_1 = 675f;
    global1 = var_0;
    var var_2 = select(false, !all(!(!vec4<bool>(true, var_0.b, true, false))), global1.b | true);
    var var_3 = arg_0;
    return ~(~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~global1.a, true);
    var var_0 = Struct_1(abs(func_5(func_1(~vec3<i32>(2147483647i, -778i, global2.x), -120f, Struct_1(u_input.a, false)), ~min(vec3<u32>(u_input.a, 70607u, 21004u), vec3<u32>(0u, global1.a, global1.a)), func_1(vec3<i32>(-2147483647i, 15338i, global2.x), -696f, func_4(Struct_1(global1.a, global1.b), vec2<u32>(1u, 2949u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-894f)) + -573f))), false);
    let var_1 = func_4(Struct_1(global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(588f, 112f)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-869f - 840f), 1f))), reverseBits(max(vec2<u32>(1u, u_input.a >> (43360u % 32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(global1.a, 44650u), ~vec2<u32>(1u, 29547u)))));
    var_0 = func_4(func_4(var_1, ~max(vec2<u32>(u_input.a, 48214u), vec2<u32>(var_1.a, 34837u) << (vec2<u32>(1u, 56642u) % vec2<u32>(32u)))), ~select(firstLeadingBit(~vec2<u32>(var_0.a, 4294967295u)), vec2<u32>(var_1.a ^ 30006u, firstLeadingBit(var_1.a)), true));
    global2 = _wgslsmith_clamp_vec3_i32(-min(~vec3<i32>(u_input.b.x, 23338i, -1i), ~vec3<i32>(global2.x, global2.x, global2.x)) >> (~vec3<u32>(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, var_0.a), vec2<u32>(u_input.a, var_1.a)), 4654u ^ u_input.a) % vec3<u32>(32u)), abs(vec3<i32>(~global2.x, u_input.c.x, 1i ^ u_input.b.x) >> (~(~vec3<u32>(1105u, u_input.a, 37078u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, ~(-30081i), firstLeadingBit(global2.x)) | firstTrailingBit(-vec3<i32>(u_input.b.x, 0i, global2.x)), (max(vec3<i32>(-48466i, -12502i, global2.x), vec3<i32>(-9219i, global2.x, 7855i)) ^ countOneBits(vec3<i32>(33199i, -2147483647i, u_input.c.x))) & _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, -29735i, -51255i), select(vec3<i32>(u_input.c.x, global2.x, global2.x), vec3<i32>(global2.x, u_input.c.x, global2.x), global0[_wgslsmith_index_u32(u_input.a, 4u)])), vec3<i32>(i32(-1i) * -global2.x, _wgslsmith_div_i32(u_input.b.x, -36089i), -2147483647i)));
    var var_2 = _wgslsmith_mod_i32(-1i & u_input.b.x, -50282i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1809f + _wgslsmith_f_op_f32(-1566f + _wgslsmith_f_op_f32(select(-214f, 1000f, var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, 212f) + 1133f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-330f))), _wgslsmith_f_op_f32(897f + 633f))), _wgslsmith_f_op_f32(step(-1067f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(796f, 520f))))));
    var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(18068i, 78054i), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(20160u | global1.a, _wgslsmith_clamp_u32(var_1.a >> (17363u % 32u), _wgslsmith_add_u32(u_input.a, 1u), reverseBits(62287u)), ~var_0.a, ~_wgslsmith_mod_u32(0u, global1.a)), firstTrailingBit(reverseBits(vec4<u32>(1u, global1.a, 98674u, u_input.a))) ^ ~(~(~vec4<u32>(4294967295u, global1.a, var_1.a, global1.a))), max(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 10357i, global2.x), vec4<i32>(global2.x, u_input.c.x, global2.x, global2.x))), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-597f, var_3.x, var_3.x)), vec3<f32>(-935f, var_3.x, _wgslsmith_f_op_f32(1000f - 1681f))) - var_3.wwy));
}

