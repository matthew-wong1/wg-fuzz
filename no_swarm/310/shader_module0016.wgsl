struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -693f;

var<private> global1: Struct_1 = Struct_1(2147483647i, vec2<u32>(28642u, 23331u), 15430u, 63673u, vec2<u32>(4294967295u, 0u));

var<private> global2: Struct_1 = Struct_1(73661i, vec2<u32>(1u, 1u), 63767u, 1u, vec2<u32>(4145u, 32141u));

var<private> global3: bool;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_u32(reverseBits(u_input.a), arg_3);
    global1 = arg_0;
    global3 = true;
    let var_1 = arg_0;
    var var_2 = !global4.x;
    return ~2147483647i;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a ^ u_input.d, ~39935i, global1.a, u_input.d), vec4<i32>(-1i, 2147483647i, _wgslsmith_div_i32(firstLeadingBit(u_input.c), 6043i), ~_wgslsmith_dot_vec2_i32(arg_2.zx, arg_2.wz))), ~vec2<u32>(global2.d, arg_3.b.x) << (abs(vec2<u32>(global2.b.x, global2.c)) % vec2<u32>(32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~global1.d, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 19642u), _wgslsmith_clamp_vec2_u32(vec2<u32>(3859u, 1u) & arg_3.b, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_3.b.x), global1.e, vec2<u32>(0u, arg_3.c))), arg_3.b)), ~(~reverseBits(arg_3.c)), ~vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, arg_3.d)) | (~(vec2<u32>(arg_3.b.x, arg_3.c) >> (vec2<u32>(global1.e.x, arg_3.e.x) % vec2<u32>(32u))) & global2.b));
    let var_1 = vec2<f32>(-1715f, arg_1);
    global0 = 822f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = arg_3;
    global0 = arg_0.x;
    global1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(max(arg_1.zz, arg_1.zx), arg_1.zy), vec2<i32>(firstTrailingBit(arg_3.a), arg_1.x)), vec2<i32>(countOneBits(countOneBits(arg_1.x)), arg_1.x ^ (u_input.c ^ 11665i))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 78410u, arg_3.b.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.d, 0u, u_input.b.x), vec3<u32>(u_input.b.x, arg_2.b.x, 1u)) % vec3<u32>(32u)), ~(~u_input.b)), 61822u), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_3.e.x, arg_2.e.x), arg_3.e.x, u_input.a.x)), ~(~59225u), ~arg_2.e);
    var var_0 = Struct_1(reverseBits(_wgslsmith_div_i32(-1i, -2147483647i)), min(~vec2<u32>(arg_2.d, arg_3.c), ~vec2<u32>(0u, 1u)) >> (vec2<u32>(~(~18828u), firstLeadingBit(global1.b.x) ^ _wgslsmith_add_u32(arg_2.c, arg_3.b.x)) % vec2<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~92815u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 4294967295u, 1u, 4294967295u), vec4<u32>(23705u, global2.b.x, u_input.a.x, 16992u)), _wgslsmith_clamp_u32(4085u, global1.b.x, u_input.a.x), _wgslsmith_mult_u32(u_input.b.x, global2.b.x)), vec4<u32>(global1.d, _wgslsmith_sub_u32(global2.c, global1.c), ~3199u, ~global2.b.x)), u_input.a.x), ~(~4294967295u), ~vec2<u32>(1u, 27234u));
    let var_1 = select(global4.wwx, select(!(!vec3<bool>(global4.x, true, global4.x)), !vec3<bool>(false, global4.x == false, global4.x || global4.x), vec3<bool>(true, global4.x, true)), true);
    return any(!vec4<bool>(true, global2.a <= reverseBits(-12065i), true, select(true, any(vec4<bool>(true, var_1.x, false, global4.x)), global4.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-907f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x), vec3<f32>(_wgslsmith_f_op_f32(func_3(-2147483647i, arg_2.x, arg_0, Struct_1(global1.a, vec2<u32>(global2.d, global1.e.x), global1.e.x, 26389u, u_input.a.zx))), -1370f, _wgslsmith_f_op_f32(trunc(arg_2.x))))), -_wgslsmith_div_vec3_i32(max(select(vec3<i32>(0i, -1i, global1.a), vec3<i32>(-44616i, 40294i, global1.a), global4.x), arg_0.wwx), vec3<i32>(i32(-1i) * -14997i, global1.a >> (1439u % 32u), _wgslsmith_mod_i32(5709i, u_input.c))), Struct_1(-1i, firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(global2.b.x, global1.e.x), vec2<u32>(1u, 74035u))), 1u, global2.e.x ^ _wgslsmith_div_u32(~global2.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 1u, 0u, 87983u), vec4<u32>(u_input.b.x, global2.b.x, global2.c, u_input.a.x))), select(global1.b, vec2<u32>(min(59464u, u_input.b.x), ~1u), true)), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2744i, u_input.d), vec2<i32>(1i, -2147483647i)), vec2<i32>(-2426i, 2147483647i)), arg_0.ww), global1.b >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a.x), global1.b) % vec2<u32>(32u)), _wgslsmith_mod_u32(74730u, _wgslsmith_sub_u32(global1.e.x, global2.c)), _wgslsmith_sub_u32(global1.e.x << (u_input.b.x % 32u), _wgslsmith_add_u32(u_input.b.x, 47488u)) | _wgslsmith_sub_u32(abs(global2.c), ~33085u), vec2<u32>(global2.c & 1u, global1.d << (~46742u % 32u))));
    var var_0 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1052f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -789f)), !func_4(vec3<f32>(-677f, arg_2.x, arg_2.x), vec3<i32>(global2.a, global1.a, u_input.d), Struct_1(-46654i, vec2<u32>(global1.d, 54698u), global2.c, 4294967295u, u_input.a.zx), Struct_1(0i, global2.b, 19709u, global2.c, global2.e)))))));
    global4 = vec4<bool>(all(vec2<bool>(!arg_1.x, !(!arg_1.x))), false, !all(global4.xzz), false);
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, arg_2.x)));
    let var_1 = max(4294967295u, 4294967295u);
    return Struct_1(u_input.d, global1.e, var_1, 50078u, global2.b);
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec4<i32>(-72491i, select(_wgslsmith_div_i32(0i, u_input.c), reverseBits(arg_1.a), true) | (~global1.a >> (~17893u % 32u)), ~(-global1.a) << (_wgslsmith_dot_vec2_u32(arg_1.e, u_input.a.zx) % 32u), -1i), select(global4.yxy, global4.yxy, true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-970f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1702f)) - 162f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(935f, -628f))))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, min(12589i, -2147483647i)), abs(-2147483647i)) < arg_1.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, 1516f)))), vec2<f32>(399f, 274f)));
    var var_2 = var_0;
    let var_3 = -(~(-select(countOneBits(vec2<i32>(global2.a, global2.a)), abs(vec2<i32>(var_0.a, global2.a)), true)));
    var var_4 = vec4<u32>(arg_1.d, countOneBits(37207u), firstLeadingBit(u_input.a.x), func_2(_wgslsmith_div_vec4_i32(select(max(vec4<i32>(-10101i, var_2.a, -8074i, var_2.a), vec4<i32>(103263i, -61820i, var_3.x, 63115i)), reverseBits(vec4<i32>(0i, 0i, var_0.a, arg_1.a)), true), min(vec4<i32>(2147483647i, 1i, -73416i, 2147483647i) & vec4<i32>(global2.a, 12708i, var_3.x, global2.a), ~vec4<i32>(-67350i, -31176i, 1i, u_input.c))), global4.ywx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-873f, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1386f, var_1.x)), true))), false).e.x);
    return Struct_1(0i, func_2(_wgslsmith_mult_vec4_i32(~max(vec4<i32>(u_input.c, var_3.x, 27764i, u_input.c), vec4<i32>(var_3.x, var_3.x, 7081i, -58621i)), countOneBits(max(vec4<i32>(2147483647i, var_0.a, arg_1.a, var_2.a), vec4<i32>(var_0.a, u_input.c, global2.a, -7971i)))), !select(vec3<bool>(global4.x, arg_0, global4.x), global4.yyw, global4.wxw), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -480f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1380f, var_1.x), vec2<f32>(var_1.x, var_1.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))))), false).b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, select(_wgslsmith_div_u32(var_4.x, 7809u), max(41827u, 5894u), arg_0), var_2.d, 15862u), vec4<u32>(func_2(select(vec4<i32>(var_3.x, 35438i, var_3.x, global2.a), vec4<i32>(-30094i, u_input.d, var_2.a, u_input.d), vec4<bool>(global4.x, true, true, false)), select(global4.xxz, vec3<bool>(true, false, false), false), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(383f, var_1.x))), all(vec4<bool>(arg_0, global4.x, global4.x, true))).d, _wgslsmith_div_u32(u_input.b.x, firstTrailingBit(arg_1.e.x)), global2.e.x, 63446u)), ~(1u & var_0.c), arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(countOneBits(1i), global1.b, 1u, _wgslsmith_mod_u32(~(_wgslsmith_sub_u32(u_input.b.x, global1.d) >> (1u % 32u)), 44821u), _wgslsmith_mult_vec2_u32(~vec2<u32>(select(u_input.a.x, 0u, true), 18015u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), firstLeadingBit(reverseBits(global2.e)))));
    global0 = -2028f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1626f)), 695f);
    let var_0 = global4.wyw;
    let var_1 = 4294967295u;
    var var_2 = func_5(true, func_2(select(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global1.a, 2147483647i, global2.a, 48303i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-15417i, 2147483647i, global2.a, global2.a), vec4<i32>(-29258i, 22210i, 23814i, u_input.c))), vec4<i32>(-1i & u_input.c, -60460i, 36251i, func_1(Struct_1(u_input.d, global2.b, global2.b.x, 31037u, vec2<u32>(var_1, 4294967295u)), vec3<i32>(u_input.c, u_input.c, 15456i), vec3<i32>(33325i, -61532i, 14198i), vec3<u32>(1u, 34351u, 8737u))), false), !(!vec3<bool>(global4.x, var_0.x, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-970f, 340f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2398f, -1824f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(979f, 1679f)), var_0.xx))), any(vec2<bool>(var_0.x, any(vec3<bool>(global4.x, global4.x, global4.x))))));
    global1 = func_2(vec4<i32>(max(-28752i, 9191i), ~var_2.a, 2147483647i, ~(~_wgslsmith_div_i32(u_input.c, var_2.a))), select(vec3<bool>(!select(true, global4.x, false), var_0.x, true), select(vec3<bool>(all(vec4<bool>(global4.x, global4.x, false, false)), true, true), select(select(global4.wyx, vec3<bool>(false, var_0.x, true), true), select(global4.wzw, global4.wxz, var_0.x), global4.xyy), select(select(global4.zzy, vec3<bool>(global4.x, var_0.x, global4.x), false), !vec3<bool>(var_0.x, var_0.x, var_0.x), false)), vec3<bool>(true || any(vec4<bool>(true, false, false, true)), var_0.x, true)), vec2<f32>(_wgslsmith_f_op_f32(379f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-490f, -545f)) * -757f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(f32(-1f) * -1266f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(714f)), -1104f))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, -460f, 850f) - vec3<f32>(300f, -1307f, 420f)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1.a, -2748i), vec3<i32>(global1.a, 6381i, -50748i)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(26670u, var_2.e.x, u_input.a.x), firstTrailingBit(vec3<u32>(12473u, global2.c, 9151u))) % vec3<u32>(32u)), func_5(true, func_2(-vec4<i32>(-31373i, global1.a, u_input.c, -1i), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), global4.www), vec2<f32>(115f, 143f), !global4.x)), func_2(countOneBits(select(vec4<i32>(-2147483647i, -2147483647i, 0i, global2.a), vec4<i32>(-4845i, global2.a, 67388i, global1.a), vec4<bool>(true, false, var_0.x, var_0.x))), !vec3<bool>(var_0.x, true, var_0.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-249f, -152f))), all(vec4<bool>(global4.x, false, false, var_0.x)))));
    let var_3 = func_5((~_wgslsmith_mod_u32(global2.d, var_1) < (_wgslsmith_sub_u32(4294967295u, var_1) >> (global2.c % 32u))) & true, func_5(var_0.x, Struct_1(global1.a & ~var_2.a, countOneBits(vec2<u32>(global1.c, var_1)), countOneBits(_wgslsmith_div_u32(var_2.e.x, 13032u)), ~func_2(vec4<i32>(global2.a, 2147483647i, global1.a, u_input.d), global4.wyw, vec2<f32>(792f, 1034f), true).b.x, abs(countOneBits(vec2<u32>(u_input.a.x, global2.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, 933f, 179f, -221f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1967f, -1000f, 181f, -809f) * vec4<f32>(1725f, 1639f, -970f, -337f)))) * vec4<f32>(-1092f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(228f))), _wgslsmith_f_op_f32(708f - -783f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1591f - 766f))))), min(0u, _wgslsmith_mod_u32(u_input.a.x, ~global1.c)));
}

