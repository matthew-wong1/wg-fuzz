struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = !(!vec3<bool>(false, !(arg_3 && arg_0), arg_3));
    var var_1 = Struct_1(true, vec2<bool>(true, any(vec4<bool>(any(vec2<bool>(arg_0, arg_0)), arg_0, true, all(vec2<bool>(arg_0, false))))), u_input.b.x);
    var_1 = Struct_1(!any(var_0.zy), var_1.b, var_1.c);
    var_1 = Struct_1(false, var_1.b, ~4294967295u);
    var var_2 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-6570i, 82830i), vec2<i32>(5337i, -17620i)) | -11568i, i32(-1i) * -1i), 1i);
    return Struct_2(!(!var_0.yy), Struct_1(any(select(select(var_0, var_0, var_0), var_0, select(vec3<bool>(arg_0, false, false), var_0, vec3<bool>(arg_0, arg_0, var_0.x)))), var_0.zx, 10627u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_1.x)))), Struct_1(true, vec2<bool>(all(vec2<bool>(true, false)), true), 47925u));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = Struct_2(vec2<bool>(1u <= ~(4294967295u ^ u_input.b.x), true), func_2(true, vec3<f32>(-750f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, -601f, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -902f), 212f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), 569f), _wgslsmith_f_op_f32(-1040f + 1114f), 275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f + 233f))), ~select(4294967295u, arg_0, false) < (~22164u >> (1u % 32u))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1371f * _wgslsmith_f_op_f32(ceil(2114f)))))), func_2(!any(vec4<bool>(true, false, true, false)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(741f, -1824f, 1000f, 330f))))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))).d);
    var var_1 = true;
    let var_2 = var_0.b.a;
    var var_3 = Struct_4(func_2(!(reverseBits(-69995i) == _wgslsmith_clamp_i32(17732i, -37690i, -14862i)), vec3<f32>(-941f, _wgslsmith_f_op_f32(f32(-1f) * -404f), var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1181f, var_0.c, var_0.c)))))), true), -vec4<i32>(arg_1, select(i32(-1i) * -14155i, arg_1, func_2(true, vec3<f32>(-303f, var_0.c, 1426f), vec4<f32>(161f, var_0.c, -821f, 1000f), true).a.x), arg_1, firstTrailingBit(arg_1)), select(select(vec4<bool>(!var_0.b.b.x, true, var_2 | true, true), vec4<bool>(select(var_2, true, var_0.b.a), any(vec3<bool>(var_2, var_0.d.a, var_2)), true, true), vec4<bool>(any(vec4<bool>(false, var_0.b.a, var_0.b.a, false)), var_2, !var_0.a.x, true)), !(!vec4<bool>(false, var_0.d.a, false, false)), false), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1041f)), vec3<f32>(453f, _wgslsmith_f_op_f32(sign(-904f)), var_0.c))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(var_2, vec3<f32>(1422f, 199f, var_0.c), vec4<f32>(var_0.c, 895f, var_0.c, var_0.c), false).c, -1390f)), vec2<f32>(var_0.c, -884f), func_2(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, -1214f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, -900f, var_0.c, var_0.c), vec4<f32>(-1736f, var_0.c, var_0.c, 879f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c))), all(vec4<bool>(var_0.a.x, var_2, false, true)) && true).d.a)));
    var_1 = any(var_3.c) && !all(vec4<bool>(false, all(vec2<bool>(var_0.d.a, false)), func_2(var_0.d.b.x, vec3<f32>(-232f, var_3.a.c, -584f), vec4<f32>(var_0.c, -369f, var_3.e.x, var_3.a.c), true).a.x, 54172u > arg_0));
    return -603f;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_3(func_2(!select(any(vec4<bool>(false, false, false, false)), false, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zzx - _wgslsmith_f_op_vec3_f32(arg_0.xzy * vec3<f32>(arg_0.x, arg_0.x, -325f)))), arg_0, (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) | u_input.a.x) <= min(u_input.b.x, ~0u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(103f + arg_0.x), -1000f, _wgslsmith_f_op_f32(ceil(arg_0.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.wzz + vec3<f32>(arg_0.x, -381f, 1000f)), _wgslsmith_f_op_vec3_f32(-arg_0.yww), true))))), (vec3<i32>(-19298i, reverseBits(-32622i), 1i) & (vec3<i32>(4915i, 27832i, 7911i) >> (vec3<u32>(21747u, u_input.b.x, 1u) % vec3<u32>(32u)))) | _wgslsmith_div_vec3_i32(abs(vec3<i32>(0i, 1i, -119566i)), vec3<i32>(1i, 1i, 1i)));
    let var_1 = arg_0;
    return _wgslsmith_f_op_f32(abs(func_2(var_0.a.a.x, vec3<f32>(-514f, _wgslsmith_f_op_f32(ceil(-1601f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 495f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.a.x, 3718i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(832f + var_1.x) + arg_0.x)), (false != (2147483647i == var_0.c.x)) || select(all(vec4<bool>(true, false, var_0.a.a.x, var_0.a.a.x)), any(vec3<bool>(false, var_0.a.d.b.x, true)), any(vec3<bool>(false, var_0.a.d.a, false)))).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), Struct_1(false, vec2<bool>(true, true), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 0u, 6039u), vec4<u32>(0u, 6008u, u_input.b.x, u_input.a.x)), vec4<u32>(26910u, 41970u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 0u)), _wgslsmith_div_u32(select(0u, 4294967295u, true), 18848u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-774f, -501f, 507f, 300f)))) - _wgslsmith_f_op_f32(ceil(-489f))), -462f)), Struct_1(func_2(true, vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -419f, 1191f, -843f)), true & all(vec2<bool>(false, false))).b.a, vec2<bool>(select(false, true, false), !any(vec4<bool>(true, false, true, true))), u_input.a.x));
    var var_1 = Struct_3(Struct_2(!(!var_0.a), var_0.b, 889f, Struct_1(false, var_0.a, var_0.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(var_0.c - 2191f)))), vec3<i32>(1i, _wgslsmith_add_i32(1i, -16953i), -1i));
    var_1 = Struct_3(Struct_2(vec2<bool>(var_0.b.a, true), func_2(var_1.a.a.x, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1183f, 809f, var_0.c, var_0.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(917f, var_1.a.c, var_1.a.c, var_0.c))), true).b, var_0.c, func_2(var_1.a.b.b.x, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c, var_1.b.x, 1342f, var_1.a.c) + vec4<f32>(var_1.b.x, 1337f, -1545f, var_0.c)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1230f, 1787f, var_0.c, var_0.c), vec4<f32>(-1000f, var_1.a.c, var_0.c, -1535f)))), -723f <= _wgslsmith_f_op_f32(floor(-1517f))).b), var_1.b, var_1.c);
    var var_2 = select(u_input.b, u_input.b, select(vec3<bool>(var_0.a.x, !var_1.a.a.x, var_0.d.a | var_0.a.x), select(select(select(vec3<bool>(var_1.a.d.a, var_1.a.b.a, false), vec3<bool>(false, false, var_0.d.b.x), false), select(vec3<bool>(var_0.b.b.x, true, var_0.d.b.x), vec3<bool>(var_0.b.a, var_1.a.d.a, true), vec3<bool>(true, var_1.a.d.a, true)), false), vec3<bool>(false, false, select(var_1.a.a.x, false, var_1.a.b.b.x)), var_1.a.d.a), !(~4294967295u > _wgslsmith_dot_vec2_u32(vec2<u32>(103157u, u_input.a.x), u_input.b.zx))));
    let var_3 = select(!(!(!vec4<bool>(true, var_0.d.b.x, false, var_1.a.b.a))), select(select(!(!vec4<bool>(true, var_1.a.a.x, var_1.a.d.b.x, true)), select(select(vec4<bool>(var_0.a.x, false, var_0.b.a, true), vec4<bool>(false, var_0.a.x, var_0.d.b.x, false), vec4<bool>(false, var_0.d.a, false, false)), select(vec4<bool>(var_0.b.b.x, false, var_0.a.x, var_1.a.d.a), vec4<bool>(true, false, var_0.d.b.x, true), true), var_0.a.x), any(vec3<bool>(true, true, true))), !vec4<bool>(all(vec4<bool>(var_1.a.a.x, true, var_0.d.b.x, false)), true, true, !var_1.a.a.x), false), vec4<bool>(_wgslsmith_mult_i32(~(-1i), min(var_1.c.x, 2147483647i)) > select(var_1.c.x, 1i, true), true, var_0.b.b.x, false));
    var_2 = u_input.b;
    let var_4 = countOneBits(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.a.x, 0u, var_1.a.d.c) >> (min(vec4<u32>(4294967295u, 29651u, var_1.a.d.c, 6183u), vec4<u32>(1u, 4264u, 4294967295u, 0u)) % vec4<u32>(32u))), select(~vec4<u32>(1u, 64844u, var_0.b.c, 4294967295u), ~(~vec4<u32>(4294967295u, var_1.a.d.c, var_1.a.d.c, 43277u)), all(var_3) || (var_1.a.b.c <= u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_i32(_wgslsmith_sub_i32(-1737i, var_1.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -50533i), var_1.c.zy))));
}

