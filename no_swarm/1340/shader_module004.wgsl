struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(463f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * -153f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-746f)) * _wgslsmith_f_op_f32(f32(-1f) * -608f)))))));
    var var_1 = arg_1.x;
    var var_2 = Struct_1(vec4<i32>(u_input.e.x, 49620i, 1i ^ firstTrailingBit(~u_input.e.x), -arg_3.x), 6636u != _wgslsmith_dot_vec2_u32(abs(select(u_input.b.xx, u_input.b.yz, global0.x)), ~(~u_input.b.zz)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(714f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_0.wz, arg_1), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(788f, -998f))))))), ~arg_3.x);
    global0 = !select(!select(!vec2<bool>(var_2.b, false), vec2<bool>(true, true), vec2<bool>(true, global0.x)), !vec2<bool>(any(vec2<bool>(true, arg_2)), arg_3.x <= var_2.e), !(!select(vec2<bool>(var_2.b, arg_2), vec2<bool>(global0.x, arg_2), vec2<bool>(arg_2, false))));
    var var_3 = select(select(select(vec3<bool>(select(arg_2, global0.x, false), arg_2, !var_2.b), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, var_2.b), vec3<bool>(true, true, false), vec3<bool>(arg_2, arg_2, true)), true), !(!vec3<bool>(true, arg_2, var_2.b))), vec3<bool>(any(vec3<bool>(global0.x, arg_2, true)), reverseBits(2147483647i) >= abs(var_2.e), true), select(vec3<bool>(true, global0.x, false), select(!vec3<bool>(arg_2, var_2.b, false), !vec3<bool>(false, arg_2, var_2.b), !vec3<bool>(false, arg_2, global0.x)), !select(vec3<bool>(true, true, false), vec3<bool>(var_2.b, arg_2, var_2.b), true))), vec3<bool>(1f >= _wgslsmith_f_op_f32(trunc(arg_1.x)), true, all(vec3<bool>(!var_2.b, any(vec3<bool>(var_2.b, global0.x, true)), var_2.b && var_2.b))), select(!(!select(vec3<bool>(global0.x, var_2.b, true), vec3<bool>(true, var_2.b, false), vec3<bool>(true, true, var_2.b))), select(!select(vec3<bool>(var_2.b, false, arg_2), vec3<bool>(true, arg_2, false), false), vec3<bool>(global0.x, any(vec3<bool>(true, true, var_2.b)), arg_2 | arg_2), vec3<bool>(true, true, true)), true));
    return vec2<bool>(!(max(max(u_input.a, u_input.d), min(1u, u_input.c.x)) >= 36558u), var_3.x);
}

fn func_2(arg_0: bool) -> i32 {
    global0 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(false, true), vec2<bool>(arg_0, false)), select(vec2<bool>(arg_0, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, arg_0)), arg_0), select(!vec2<bool>(global0.x, false), func_3(vec3<i32>(44059i, u_input.e.x, -2147483647i), vec2<f32>(-1114f, 939f), false, vec4<i32>(u_input.e.x, -1i, u_input.e.x, 1i)), all(vec4<bool>(arg_0, true, true, global0.x))), select(select(vec2<bool>(arg_0, true), vec2<bool>(global0.x, arg_0), true), !vec2<bool>(arg_0, true), arg_0 & global0.x)), select(!(!vec2<bool>(arg_0, false)), !(!vec2<bool>(global0.x, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -133f) < _wgslsmith_f_op_f32(round(1365f))));
    global0 = !select(select(!(!vec2<bool>(global0.x, false)), func_3(vec3<i32>(1i, u_input.e.x, u_input.e.x), vec2<f32>(-344f, -1503f), all(vec4<bool>(arg_0, arg_0, false, false)), -vec4<i32>(u_input.e.x, -5837i, u_input.e.x, u_input.e.x)), (arg_0 & arg_0) & true), !select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0), all(select(!vec4<bool>(arg_0, global0.x, false, global0.x), !vec4<bool>(true, false, global0.x, false), true)));
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(14878i, 2147483647i, -62096i, -9871i) ^ vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), countOneBits(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) << (vec4<u32>(u_input.c.x, 36328u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -763f, 1301f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-347f, 2812f, -2421f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1470f, 2196f, 1454f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1136f, 522f))), u_input.e.x), _wgslsmith_div_vec3_f32(vec3<f32>(1206f, 813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, 643f, 365f) * vec3<f32>(884f, 1000f, -288f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 290f, 1644f))))), _wgslsmith_clamp_vec2_i32(reverseBits(select(-u_input.e, ~vec2<i32>(10192i, u_input.e.x), true)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), vec2<i32>(-2147483647i, 23797i))), max(-u_input.e, u_input.e)), vec2<i32>(-2147483647i, abs(_wgslsmith_add_i32(1i, 1i)))));
    let var_2 = var_1;
    return _wgslsmith_sub_i32(17597i, -(~(abs(var_1.c.x) >> (abs(1u) % 32u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0.b;
    let var_1 = Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(12399i, arg_0.a.x, arg_2.e, arg_0.e)), vec4<i32>(arg_0.e, -46798i, -2147483647i, arg_0.e)), -33611i, -2147483647i, 0i), arg_2.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.e.x, u_input.e.x, _wgslsmith_dot_vec2_i32(select(arg_0.a.xx, arg_2.a.wy, arg_0.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-43625i, u_input.e.x), vec2<i32>(35593i, 8947i))), _wgslsmith_add_i32(2147483647i, ~(-1i))), -min(_wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(1i, arg_0.e, -2147483647i, 0i)), ~arg_0.a), vec4<i32>(arg_0.e, -arg_0.e, 7126i, func_2(true))), arg_2.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1054f, arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(736f * arg_0.c.x)) + vec4<f32>(_wgslsmith_f_op_f32(max(-489f, arg_0.c.x)), _wgslsmith_f_op_f32(select(237f, arg_2.c.x, arg_0.b)), _wgslsmith_f_op_f32(-202f + arg_2.c.x), _wgslsmith_f_op_f32(-arg_2.d.x)))));
    var_0 = true;
    let var_2 = _wgslsmith_sub_i32(~var_1.a.x, select(1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, u_input.e.x), firstTrailingBit(u_input.e)), _wgslsmith_sub_i32(arg_2.a.x, 1i) >= u_input.e.x));
    var var_3 = Struct_3(arg_2.a, arg_0.a | (firstTrailingBit(arg_2.a) ^ ~vec4<i32>(50717i, -25748i, arg_0.a.x, 2147483647i)), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) + arg_2.d.x))), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + 102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d.x + 285f)))), var_1.c));
    return var_1.d.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    global0 = !select(select(vec2<bool>(false, -252f >= arg_0.d.x), select(vec2<bool>(false, false), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, global0.x), vec2<bool>(false, false)), !arg_2), ~arg_0.a.x <= 0i), vec2<bool>(u_input.d == ~28597u, false), !(!vec2<bool>(arg_2, arg_2)));
    let var_0 = vec4<f32>(arg_0.d.x, arg_0.d.x, 751f, _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(arg_0.d.x - arg_0.c))));
    var var_1 = var_0.zzz;
    var var_2 = var_1.x;
    var var_3 = Struct_2(Struct_1(arg_0.b, _wgslsmith_div_u32(69438u, firstTrailingBit(4294967295u)) <= 0u, _wgslsmith_f_op_vec3_f32(arg_0.d.ywy - vec3<f32>(_wgslsmith_f_op_f32(select(1396f, -477f, global0.x)), _wgslsmith_f_op_f32(step(601f, arg_0.c)), var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(3071f - arg_0.c)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, 1026f) * vec2<f32>(var_0.x, -878f)))), -(-23960i >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-230f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f + var_0.x) - -1000f))), -vec2<i32>(arg_0.a.x, arg_0.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(~vec4<i32>(-30818i, -u_input.e.x, -24097i, 42563i), vec4<i32>(u_input.e.x, -u_input.e.x, u_input.e.x, u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1045f)) + _wgslsmith_f_op_f32(f32(-1f) * -777f)), vec4<f32>(-103f, _wgslsmith_f_op_f32(abs(-863f)), -269f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(0i, 1i, u_input.e.x, u_input.e.x), global0.x, vec3<f32>(1024f, -1000f, 350f), vec2<f32>(-364f, 226f), 0i), global0.x, Struct_1(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), global0.x, vec3<f32>(286f, -614f, -1108f), vec2<f32>(722f, -2774f), -42253i))) - _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(-1i, 0i, u_input.e.x, u_input.e.x), false, vec3<f32>(1677f, 909f, -314f), vec2<f32>(-573f, -394f), 1i), global0.x, Struct_1(vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.e.x), global0.x, vec3<f32>(-888f, 126f, 436f), vec2<f32>(193f, 173f), 1i)))))), -vec2<i32>(2147483647i, ~_wgslsmith_mult_i32(u_input.e.x, -25001i)), all(!vec4<bool>(global0.x, all(vec2<bool>(global0.x, global0.x)), all(vec3<bool>(global0.x, false, true)), true)));
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~26083u));
}

