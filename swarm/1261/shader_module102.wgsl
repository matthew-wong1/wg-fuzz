struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(arg_0, -5444i, 17309i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(4294967295u, 37709u, u_input.b), vec3<u32>(u_input.b, 52293u, 1u)) % vec3<u32>(32u)), vec3<i32>(arg_0, 18004i, u_input.c.x) >> (~vec3<u32>(3291u, u_input.b, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(0i, u_input.a, 7211i) & vec3<i32>(u_input.a, u_input.c.x, u_input.d)), select(vec3<i32>(arg_0, 1i, arg_0) << (vec3<u32>(18006u, u_input.b, 11376u) % vec3<u32>(32u)), vec3<i32>(arg_0, arg_0, -14644i), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), countOneBits(reverseBits(-vec3<i32>(u_input.c.x, u_input.c.x, arg_0)))));
    var var_1 = select(-select(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, -32357i), arg_0), _wgslsmith_clamp_i32(i32(-1i) * -8276i, ~var_0.x, _wgslsmith_mult_i32(var_0.x, u_input.c.x)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true))), -1i, !any(vec2<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(323f)), -807f))));
    var var_3 = u_input.b;
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1140f)))));
    return select(!vec2<bool>(!any(vec3<bool>(true, false, false)), select(u_input.d < -1i, true, false)), select(vec2<bool>(!select(false, false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), -(i32(-1i) * -2147483647i) >= -(~(-31947i) << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    let var_0 = vec3<u32>(~(~u_input.b), ~24816u, _wgslsmith_div_u32(~arg_2.b.a.c, ~firstLeadingBit(reverseBits(arg_3.b.c))));
    let var_1 = arg_3.b;
    var var_2 = !arg_2.d.b.xyx;
    var var_3 = ~firstLeadingBit(_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(arg_2.c, 19484u, arg_0.c, arg_0.e.c)), ~vec4<u32>(0u, u_input.b, 0u, var_0.x) ^ firstLeadingBit(vec4<u32>(arg_2.c, u_input.b, arg_2.c, 13561u))));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-1305f - 862f), _wgslsmith_f_op_f32(f32(-1f) * -1213f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, arg_1.b, -781f) + vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(892f - arg_1.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-308f * -661f), 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1293f)), _wgslsmith_f_op_f32(-arg_1.b))) - _wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(round(504f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b)))));
    return true;
}

fn func_2() -> Struct_5 {
    let var_0 = func_4(Struct_3(Struct_2(Struct_1(func_3(u_input.d), vec4<bool>(true, true, true, true), u_input.b), Struct_1(vec2<bool>(true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), u_input.b)), Struct_2(Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec4<bool>(true, true, true, true), 1u), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), u_input.b)), 628u, Struct_1(vec2<bool>(-2147483647i != u_input.a, true), vec4<bool>(select(true, true, false), all(vec2<bool>(true, true)), -1i > u_input.c.x, true), _wgslsmith_mod_u32(abs(u_input.b), u_input.b)), Struct_1(vec2<bool>(true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false)), u_input.b)), Struct_4(select(vec3<u32>(~u_input.b, min(u_input.b, u_input.b), u_input.b ^ 0u), ~(vec3<u32>(u_input.b, 1770u, u_input.b) | vec3<u32>(u_input.b, u_input.b, u_input.b)), (u_input.c.x << (1u % 32u)) > (u_input.c.x ^ u_input.d)), _wgslsmith_f_op_f32(sign(1194f))), Struct_3(Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec4<bool>(true, true, false, true), ~1u), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), 1u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, true, true), countOneBits(0u)), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), countOneBits(u_input.b))), ~u_input.b, Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), _wgslsmith_div_u32(u_input.b, ~u_input.b)), Struct_1(func_3(-1i), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), 0u >= u_input.b), u_input.b)), Struct_2(Struct_1(vec2<bool>(true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), 0u), Struct_1(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.c.x, 44608i), vec3<i32>(-2147483647i, -2147483647i, u_input.a))), vec4<bool>(true, true, true, true), _wgslsmith_clamp_u32(abs(15733u), reverseBits(u_input.b), _wgslsmith_clamp_u32(1u, u_input.b, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-196f, -802f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-657f, 709f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(271f, -306f) + vec2<f32>(-1498f, -1000f)), var_0)))), any(vec4<bool>(true, false, func_4(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(var_0, var_0, var_0, var_0), 0u), Struct_1(vec2<bool>(false, var_0), vec4<bool>(var_0, var_0, false, false), u_input.b)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<bool>(var_0, var_0, var_0, true), 1u), Struct_1(vec2<bool>(true, var_0), vec4<bool>(var_0, false, false, false), 0u)), u_input.b, Struct_1(vec2<bool>(var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), 35723u), Struct_1(vec2<bool>(true, false), vec4<bool>(true, var_0, var_0, var_0), 0u)), Struct_4(vec3<u32>(u_input.b, 54110u, u_input.b), 755f), Struct_3(Struct_2(Struct_1(vec2<bool>(var_0, true), vec4<bool>(var_0, var_0, false, var_0), 30327u), Struct_1(vec2<bool>(false, var_0), vec4<bool>(true, false, var_0, var_0), 4294967295u)), Struct_2(Struct_1(vec2<bool>(var_0, var_0), vec4<bool>(var_0, var_0, true, true), u_input.b), Struct_1(vec2<bool>(var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), u_input.b)), 1u, Struct_1(vec2<bool>(var_0, false), vec4<bool>(false, false, false, var_0), 12772u), Struct_1(vec2<bool>(var_0, true), vec4<bool>(false, var_0, var_0, false), 34036u)), Struct_2(Struct_1(vec2<bool>(var_0, var_0), vec4<bool>(true, var_0, var_0, true), u_input.b), Struct_1(vec2<bool>(false, var_0), vec4<bool>(var_0, var_0, false, true), 32665u))), var_0)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, 709f), vec2<f32>(-429f, var_1.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-610f, 1662f), vec2<f32>(-894f, var_1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -211f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, -673f))))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), var_1.x));
    let var_2 = reverseBits(abs(14969i) << (u_input.b % 32u)) != _wgslsmith_add_i32(18030i << (u_input.b % 32u), -47392i);
    var var_3 = true;
    return Struct_5(vec2<bool>(true, var_2), var_1.x);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_dot_vec3_u32(~max(_wgslsmith_div_vec3_u32(arg_0, arg_0), firstTrailingBit(arg_0)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 68249u), vec2<u32>(1280u, arg_2.x)), 1u, 0u)) != ~(~_wgslsmith_clamp_u32(arg_3.b.c, 66878u, 72769u));
    let var_2 = Struct_4(arg_0, -952f);
    let var_3 = func_2().b;
    var var_4 = func_3(_wgslsmith_add_i32(u_input.a, u_input.a)).x;
    return vec3<bool>(any(var_0.a), true, !arg_3.a.b.x || any(select(vec2<bool>(arg_3.b.b.x, true), arg_3.b.b.yw, select(var_0.a, vec2<bool>(arg_3.a.a.x, arg_3.a.a.x), vec2<bool>(true, var_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), select(func_1(vec3<u32>(u_input.b, u_input.b, u_input.b), 0u, vec2<u32>(u_input.b, 0u), Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, false), 1u), Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, true, true), u_input.b))), vec3<bool>(true, true, true), false)), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), true));
    let var_1 = any(vec3<bool>(false, u_input.b < u_input.b, func_3(27194i).x));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-378f, 336f, 1067f, 1314f), vec4<f32>(-465f, 1210f, -2138f, 555f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1544f, 117f, -1442f, 140f) - vec4<f32>(-176f, 1802f, 595f, 1000f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 917f, -1637f, -1734f)), vec4<f32>(-1728f, 1597f, 503f, -1502f), vec4<bool>(false, true, true, false))))))));
    let var_3 = firstLeadingBit(_wgslsmith_mult_i32(~u_input.c.x, min(-2147483647i, ~2147483647i >> (min(u_input.b, 4294967295u) % 32u))));
    var var_4 = vec3<bool>(var_1, false, var_0);
    var_4 = vec3<bool>(false, !(func_3(100408i).x || var_1), !(var_2.x == -1109f));
    var var_5 = u_input.d;
    let var_6 = 491f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(firstTrailingBit(_wgslsmith_sub_i32(var_3, 1i)), 2147483647i), -_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_3, 2147483647i)), reverseBits(var_3)), var_2.x, select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(18399i, -1i, 0i), vec3<i32>(-1i, -2147483647i, u_input.d), vec3<bool>(false, var_4.x, var_0)), reverseBits(vec3<i32>(u_input.d, 56872i, -3519i))), select(vec3<i32>(u_input.c.x, -3733i, var_3), vec3<i32>(-34014i, 2147483647i, 1i), false) << (~vec3<u32>(26067u, 37311u, u_input.b) % vec3<u32>(32u))), ~(-(var_3 << (u_input.b % 32u))), true), vec2<i32>(0i, _wgslsmith_div_i32(-_wgslsmith_add_i32(0i, -15776i), reverseBits(var_3 & u_input.c.x))));
}

