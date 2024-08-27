struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(-1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) * _wgslsmith_f_op_f32(ceil(-821f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(f32(-1f) * -720f), true))))));
    var var_1 = Struct_4(Struct_1(vec2<i32>(-u_input.c | ~(-7036i), -76367i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -u_input.a), reverseBits(min(u_input.b.zz, u_input.b.zw))), countOneBits(u_input.d)), Struct_1(u_input.b.wz, u_input.b.ww, 0u), Struct_3(Struct_2(Struct_1(min(u_input.b.wy, u_input.b.xy), min(u_input.b.zy, vec2<i32>(1i, u_input.a)), _wgslsmith_mod_u32(u_input.d, u_input.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, var_0)), -195f), select(~u_input.b, u_input.b | u_input.b, vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xw, vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.b.x)), -vec2<i32>(u_input.c, 6669i)), vec2<i32>(u_input.c, -26507i), 1u), Struct_2(Struct_1(-vec2<i32>(14980i, -41655i), vec2<i32>(u_input.b.x, -17854i), u_input.d), 760f, -_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-22958i, u_input.b.x, u_input.a, -15487i)))), Struct_1(countOneBits(vec2<i32>(abs(19590i), -u_input.a)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.wx, u_input.b.ww), vec2<i32>(-27072i, u_input.a) ^ ~vec2<i32>(u_input.c, u_input.a)), u_input.d));
    var var_2 = 1u;
    var var_3 = var_1.b;
    let var_4 = !(!select(vec4<bool>(true, select(false, true, false), true, u_input.c == var_3.a.x), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true), false));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1426f)))), 1095f) + vec2<f32>(var_1.c.c.b, -1200f));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.yx), -((u_input.b.zy >> (vec2<u32>(1u, arg_2.x) % vec2<u32>(32u))) & (u_input.b.zy & vec2<i32>(u_input.b.x, u_input.c))), u_input.d), arg_0, vec4<i32>(-11124i, -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(2147483647i, 12037i, -28587i, u_input.b.x)), reverseBits(-2147483647i)) & _wgslsmith_add_i32(1i << (u_input.d % 32u), u_input.b.x), u_input.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(-744f * -492f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1808f, -1250f), vec2<f32>(var_0.b, var_0.b)) * _wgslsmith_f_op_vec2_f32(func_3())), vec2<f32>(-639f, _wgslsmith_f_op_f32(-arg_0))))));
    let var_2 = Struct_2(var_0.a, _wgslsmith_f_op_f32(min(-1257f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-var_1.x))))), min(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(54345i, var_0.a.a.x, u_input.b.x, -2147483647i)), vec4<i32>(13933i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, 25315i), max(-63380i, var_0.a.b.x)), -_wgslsmith_sub_i32(-29283i, 8172i), ~_wgslsmith_clamp_i32(-1i, var_0.c.x, var_0.c.x))));
    return Struct_4(var_2.a, var_0.a, Struct_3(Struct_2(var_2.a, var_0.b, var_0.c), Struct_1(u_input.b.wz, _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, var_2.c.x), -vec2<i32>(var_2.a.b.x, -1i)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.a.c, arg_1) << (vec3<u32>(56697u, 40974u, var_0.a.c) % vec3<u32>(32u)), ~vec3<u32>(arg_2.x, arg_2.x, 21757u))), var_2), var_2.a);
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.c.a.b * arg_0.c.a.b);
    var var_1 = vec2<i32>(arg_0.a.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.b.yz, arg_0.b.a)), ~(~arg_0.c.b.b)), ~(-50733i >> (_wgslsmith_mod_u32(0u, arg_0.b.c) % 32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.b + _wgslsmith_f_op_f32(-179f * arg_0.c.c.b)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = arg_0.a.b;
    return vec3<u32>(_wgslsmith_mult_u32(u_input.d << (1u % 32u), 1u), _wgslsmith_mod_u32(1u, arg_0.c.a.a.c), ~(_wgslsmith_clamp_u32(arg_0.b.c | 1u, _wgslsmith_div_u32(u_input.d, 4294967295u), abs(u_input.d)) >> (countOneBits(20469u) % 32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(arg_1 || true, false, all(vec2<bool>(true, true))))), select(select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)), vec2<bool>(true, arg_1), false), select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(false, arg_1)), vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1)), u_input.c >= firstTrailingBit(arg_0.x)), select(vec2<bool>(select(arg_1, false, arg_1), all(vec3<bool>(false, arg_1, true))), !vec2<bool>(true, arg_1), select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), !vec2<bool>(true, arg_1))), all(select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, false, true, arg_1), !vec4<bool>(arg_1, arg_1, false, arg_1)))), select(select(!(!vec2<bool>(true, arg_1)), vec2<bool>(true, true), false), select(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), true), vec2<bool>(true, arg_1), true), select(!vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), false), any(!vec3<bool>(arg_1, true, arg_1))), select(select(select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, true))), select(!vec2<bool>(false, arg_1), !vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, false), arg_1)), !vec2<bool>(false, arg_1))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.x, arg_3.x, -1468f))))), arg_3)));
    var_0 = vec2<bool>(!arg_1, true | var_0.x);
    let var_2 = abs(arg_2) ^ ~_wgslsmith_add_vec3_u32(~arg_2, ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2.x, 2817u), arg_2));
    var_0 = vec2<bool>(arg_1, !any(select(!vec4<bool>(false, arg_1, true, false), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(var_0.x, arg_1, arg_1, var_0.x), arg_1), any(vec4<bool>(true, false, arg_1, false)))));
    return Struct_2(Struct_1(vec2<i32>(-60569i, firstLeadingBit(-8074i)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xy, -vec2<i32>(-55539i, 25006i)), ~abs(vec2<i32>(u_input.a, u_input.a))), arg_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -754f))))), -countOneBits(func_2(-1709f, arg_2.x, vec2<u32>(var_2.x, u_input.d)).c.a.c));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, ~(~9009u)));
    let var_1 = func_5(~firstTrailingBit(u_input.b.xwy), true, func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -710f), var_0.x, var_0)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1033f, -115f, 290f), vec3<f32>(1218f, -381f, -1568f))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1823f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b))));
    let var_3 = var_1.a;
    let var_4 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_3.b.x, u_input.a), var_3.b.x, var_3.a.x), -var_1.c.xzx) & -u_input.b.xzx);
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(step(var_2, 338f))), var_1.b), _wgslsmith_mod_u32(~(~var_3.c), ~u_input.d), ~abs(_wgslsmith_div_vec2_u32(var_0, vec2<u32>(41295u, var_3.c)))).c.c;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-657f + _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x), 4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(93803u, 3183u, 57717u), _wgslsmith_add_vec3_u32(vec3<u32>(14241u, u_input.d, 96538u), vec3<u32>(arg_0.a.c, arg_0.a.c, arg_0.a.c))) % 32u), _wgslsmith_div_vec2_u32(~(~vec2<u32>(6692u, arg_0.a.c)), ~(vec2<u32>(6024u, u_input.d) >> (vec2<u32>(arg_0.a.c, u_input.d) % vec2<u32>(32u))))).b, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -159f)), u_input.b);
    let var_1 = true;
    let var_2 = -arg_0.a.b.x;
    let var_3 = 1u;
    let var_4 = !vec2<bool>(all(select(vec4<bool>(var_1, true, var_1, var_1), select(vec4<bool>(false, false, true, var_1), vec4<bool>(true, var_1, false, var_1), vec4<bool>(false, true, true, false)), any(vec3<bool>(false, false, var_1)))), any(select(select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, false)), !vec3<bool>(true, var_1, var_1), all(vec2<bool>(var_1, var_1)))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_5(vec3<i32>(arg_0.c.x, var_2, var_0.a.a.x), true, vec3<u32>(4294967295u, 35728u, arg_0.a.c), vec3<f32>(1508f, arg_1.x, var_0.b)).b, -434f, func_5(vec3<i32>(var_2, u_input.c, arg_0.a.b.x), false, vec3<u32>(20934u, 1u, var_3), arg_1).b, func_2(-359f, var_0.a.c, vec2<u32>(var_3, arg_0.a.c)).c.a.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, arg_0.b, 248f, arg_1.x) - vec4<f32>(arg_1.x, arg_0.b, 968f, 607f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(260f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_0.b, arg_1.x, arg_0.b, arg_0.b), vec4<bool>(true, true, false, true)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_0.b, arg_1.x, 1278f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, -542f, arg_0.b, var_0.b)))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_5 {
    let var_0 = _wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(23170i, -55367i), vec2<i32>(arg_1.a.x, -9474i)), (-arg_1.b.x ^ arg_1.a.x) >> (23318u % 32u), _wgslsmith_sub_i32(u_input.c, ~arg_1.a.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-36841i >> (1u % 32u), ~arg_1.b.x, -1i ^ arg_1.a.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.xxz), vec3<i32>(-1i, 1i, -35813i) & vec3<i32>(u_input.b.x, u_input.b.x, -11852i)), min(countOneBits(2147483647i), 1295i))));
    var var_1 = 1u >> (arg_1.c % 32u);
    var_1 = ~(_wgslsmith_sub_u32(~1u, 1u) >> (arg_1.c % 32u));
    var var_2 = _wgslsmith_sub_i32(var_0, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(u_input.b.zwx & vec3<i32>(-1112i, u_input.c, -18609i), vec3<i32>(-2147483647i, arg_1.a.x, 1i) << (vec3<u32>(13393u, 11119u, 11896u) % vec3<u32>(32u))), max(var_0, arg_1.b.x)));
    var var_3 = !select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), 1u == ~u_input.d), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(false, true), vec2<bool>(true, false), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, true)), u_input.b.x > select(-12357i, -25813i, true));
    return Struct_5(select(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a, 15667i)), _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), arg_1.a.x), 72474i, _wgslsmith_mult_i32(arg_1.b.x, 20924i) ^ countOneBits(arg_1.b.x)), func_5(-(u_input.b.yww | u_input.b.zzx), all(vec2<bool>(false, false)), select(max(vec3<u32>(16928u, arg_1.c, arg_1.c), vec3<u32>(7687u, 0u, 0u)), vec3<u32>(6991u, u_input.d, 1u), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -456f, -1000f) - arg_0.xyx) + vec3<f32>(-1380f, arg_0.x, -1804f))).c, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, true)), vec3<bool>(true, true, true), var_3.x | true))), ~select(2147483647i, max(2147483647i, arg_1.b.x), !var_3.x) <= _wgslsmith_mult_i32(-2147483647i << (u_input.d % 32u), ~(-6156i)), 504f, func_1(), select(select(!(!vec4<bool>(true, true, var_3.x, true)), vec4<bool>(arg_1.c == 1u, false, all(vec2<bool>(var_3.x, var_3.x)), true), all(!vec2<bool>(false, var_3.x))), select(!(!vec4<bool>(false, var_3.x, false, false)), !select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(true, false, false, var_3.x)), !var_3.x), vec4<bool>(arg_1.c != firstTrailingBit(30587u), false & !var_3.x, !(!var_3.x), var_3.x | (true & var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-914f, 172f, -247f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -628f), 1f, _wgslsmith_f_op_f32(863f - 734f), -908f))), func_2(-960f, abs(47329u), abs(vec2<u32>(u_input.d, 41237u)) ^ ~vec2<u32>(u_input.d, u_input.d)).b, 567f);
    let var_1 = vec3<u32>(var_0.d.a.c, 0u, select(_wgslsmith_mult_u32(0u, func_5(-vec3<i32>(39189i, var_0.d.a.a.x, -604i), var_0.e.x, firstTrailingBit(vec3<u32>(65785u, 53565u, var_0.d.a.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -684f, -1518f)))).a.c), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d.a.c, var_0.d.a.c), select(vec2<u32>(4294967295u, u_input.d), vec2<u32>(9853u, 0u), var_0.e.xz)), ~(~vec2<u32>(var_0.d.a.c, 68689u))), 18260u > func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1344f, var_0.c, 686f, 763f)), func_7(vec4<f32>(1324f, -791f, 1652f, var_0.d.b), Struct_1(u_input.b.xy, var_0.a.wx, u_input.d), var_0.c).d.a, func_1().b).d.a.c));
    let var_2 = var_0.e.zw;
    var var_3 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, -10719i) << (68802u % 32u), abs(u_input.a) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(22500i, -1i, -5605i, var_0.d.c.x), select(var_0.d.c, var_0.d.c, vec4<bool>(true, var_2.x, var_0.e.x, var_2.x)), any(var_0.e.wwz)), u_input.b), 6903i, var_0.a.x);
    var var_4 = Struct_5(vec4<i32>(u_input.b.x, ~(~1i), 49535i, _wgslsmith_clamp_i32(u_input.b.x, 30065i, -2147483647i) >> (~4294967295u % 32u)), false | !(_wgslsmith_add_i32(0i, 4779i) <= _wgslsmith_dot_vec3_i32(var_3.www, u_input.b.xzw)), var_0.c, var_0.d, var_0.e);
    let var_5 = vec4<bool>(true, !(var_4.d.a.c >= ~var_4.d.a.c), true, any(vec4<bool>(true, firstLeadingBit(-14031i) <= var_0.a.x, (u_input.d <= var_0.d.a.c) & true, var_4.b)));
    let var_6 = Struct_4(Struct_1(var_4.d.c.zy, min(-vec2<i32>(var_3.x, u_input.a), ~select(var_4.a.wz, u_input.b.zw, vec2<bool>(true, var_0.e.x))), var_4.d.a.c), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_dot_vec2_u32(var_1.xz, ~vec2<u32>(u_input.d, 4294967295u) | vec2<u32>(var_4.d.a.c, 0u)), vec2<u32>(~(~var_1.x), _wgslsmith_mult_u32(27438u, var_0.d.a.c & var_1.x))).b, func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1194f))), u_input.d, max(~(~var_1.yy), vec2<u32>(u_input.d, ~var_4.d.a.c))).c, Struct_1(min(vec2<i32>(var_0.d.a.b.x, 1i), var_0.a.wz), _wgslsmith_div_vec2_i32(vec2<i32>(func_2(1321f, 12071u, vec2<u32>(var_4.d.a.c, 4294967295u)).c.c.a.b.x, -1i), u_input.b.yz), ~1u));
    var var_7 = var_6;
    var_3 = var_7.c.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(var_3.x, ~var_6.b.b.x, var_7.a.a.x & var_6.b.b.x, _wgslsmith_add_i32(var_6.a.b.x, 1i))), reverseBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.a.x, -13135i, 0i, 0i), u_input.b, true) ^ (u_input.b << (vec4<u32>(u_input.d, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u))), var_4.a)), ~(((4294967295u | var_7.c.a.a.c) >> (select(u_input.d, 66981u, false) % 32u)) ^ func_4(var_6).x));
}

