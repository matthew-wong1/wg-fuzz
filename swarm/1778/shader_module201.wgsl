struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f) + -821f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * 1058f))), _wgslsmith_f_op_f32(trunc(arg_1)), arg_1)));
    let var_1 = Struct_3(vec2<i32>(-17517i, 0i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<i32>(1i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -11663i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), -vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_mod_i32(6648i, 1i) ^ u_input.c.x), Struct_2(countOneBits(vec2<i32>(u_input.c.x, -14858i) >> (vec2<u32>(59181u, u_input.a.x) % vec2<u32>(32u))) ^ vec2<i32>(2147483647i, u_input.c.x), Struct_1(countOneBits(vec3<i32>(26135i, 37550i, 2147483647i))), Struct_1(abs(vec3<i32>(1i, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.b, 43487u, 15276u) % vec3<u32>(32u))))));
    var var_2 = -_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_mult_i32(u_input.c.x, 4472i), _wgslsmith_mult_i32(-2147483647i, reverseBits(var_1.a.x)) | firstLeadingBit(1i));
    var_2 = var_1.c.c.a.x;
    let var_3 = ~(u_input.a.yxw & vec3<u32>(u_input.a.x, u_input.a.x, max(_wgslsmith_sub_u32(61310u, u_input.a.x), ~u_input.a.x)));
    return countOneBits(u_input.a.x);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec4<bool>(true, -1i > _wgslsmith_mult_i32(u_input.c.x, abs(45447i)), 854f == _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -233f)))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))) || true);
    var_0 = !(!(!select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, false, var_0.x, false))));
    var_0 = select(vec4<bool>(all(select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true)), true, !(all(vec4<bool>(var_0.x, true, true, var_0.x)) || true), !(!var_0.x && any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), !(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, true, true, true))), all(!(!select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)))));
    let var_1 = Struct_1(~(-(firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) | firstLeadingBit(vec3<i32>(-48112i, u_input.c.x, 0i)))));
    var var_2 = 20190u;
    return u_input.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = ~(~1u) >> (func_3(vec4<u32>(~57762u, u_input.b, u_input.b, func_2(arg_1.x, _wgslsmith_div_f32(1886f, -892f), true))) % 32u);
    var var_1 = _wgslsmith_dot_vec4_i32(-select(vec4<i32>(1i, ~1i, _wgslsmith_add_i32(9873i, -1i), u_input.c.x), vec4<i32>(_wgslsmith_clamp_i32(15818i, 0i, arg_0.a.x), _wgslsmith_clamp_i32(u_input.c.x, 37445i, arg_0.c.a.x), 0i, u_input.c.x | arg_0.c.b.a.x), false), _wgslsmith_div_vec4_i32(-(-vec4<i32>(2147483647i, 0i, -22487i, 1i) << (~u_input.a % vec4<u32>(32u))), ~(~(vec4<i32>(-49607i, -1i, -51410i, -56250i) | vec4<i32>(-10220i, u_input.c.x, 9604i, u_input.c.x)))));
    var_0 = reverseBits(~(abs(min(u_input.a.x, u_input.a.x)) << (~4294967295u % 32u)));
    let var_2 = arg_0;
    var_0 = u_input.a.x;
    return Struct_1(max(-firstLeadingBit(vec3<i32>(arg_0.b, 0i, u_input.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, var_2.a.x) & -arg_0.c.c.a, ~(arg_0.c.c.a & vec3<i32>(-467i, -1i, var_2.c.b.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = vec4<u32>(1u, ~44650u, 4294967295u, _wgslsmith_mult_u32(1u, u_input.a.x));
    let var_1 = arg_1;
    let var_2 = Struct_3(u_input.c, reverseBits(-2147483647i), arg_1.c);
    let var_3 = var_1.a.x;
    var var_4 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), !(u_input.b <= 28063u)), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), all(vec4<bool>(false, true, false, true))), any(vec2<bool>(true, true)));
    return var_2.c.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), arg_1.x, arg_1.x), vec3<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_1.x, arg_1.x, 1u)), arg_1.x));
    let var_1 = arg_0;
    var var_2 = vec2<f32>(-453f, 302f);
    let var_3 = Struct_2(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(func_1(arg_2, vec2<bool>(false, true)).a.x, abs(arg_2.a.x)), -vec2<i32>(-1i, 0i) & vec2<i32>(arg_2.b, arg_0.a.x))), func_1(Struct_3(arg_0.a.yy, func_4(Struct_1(arg_2.c.c.a), Struct_3(arg_2.a, arg_2.a.x, arg_2.c)).a.x, arg_2.c), select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true), all(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), arg_1.x >= u_input.a.x), false)), arg_2.c.c);
    let var_4 = arg_2.c;
    return Struct_2(select(max(var_4.c.a.xx, firstTrailingBit(-var_3.b.a.yy)), ~func_1(Struct_3(arg_0.a.zy, arg_2.b, Struct_2(vec2<i32>(var_1.a.x, 41506i), Struct_1(arg_0.a), var_4.c)), vec2<bool>(true, true)).a.yz, vec2<bool>(u_input.a.x == u_input.b, any(vec4<bool>(true, true, true, true)))), func_4(func_4(func_1(arg_2, vec2<bool>(true, false)), arg_2), Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -36776i), _wgslsmith_clamp_vec2_i32(arg_0.a.yy, var_4.c.a.zy, var_1.a.yx)), var_1.a.x, var_4)), func_1(arg_2, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, countOneBits(1i)), -21004i, u_input.c.x)));
    let var_1 = func_5(func_4(Struct_1(vec3<i32>(var_0, max(0i, 6273i), -u_input.c.x)), Struct_3(vec2<i32>(abs(2147483647i), u_input.c.x), firstLeadingBit(max(1i, var_0)), Struct_2(u_input.c | u_input.c, func_1(Struct_3(vec2<i32>(-14336i, 8527i), var_0, Struct_2(u_input.c, Struct_1(vec3<i32>(0i, u_input.c.x, u_input.c.x)), Struct_1(vec3<i32>(var_0, -2147483647i, -1i)))), vec2<bool>(false, true)), func_1(Struct_3(u_input.c, 1i, Struct_2(u_input.c, Struct_1(vec3<i32>(var_0, var_0, -76478i)), Struct_1(vec3<i32>(-40178i, var_0, u_input.c.x)))), vec2<bool>(false, true))))), reverseBits(reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b, 1u, 4294967295u, 0u)), select(u_input.a, vec4<u32>(u_input.a.x, u_input.b, 11564u, u_input.a.x), true)))), Struct_3(select(func_1(Struct_3(vec2<i32>(var_0, var_0), var_0, Struct_2(u_input.c, Struct_1(vec3<i32>(u_input.c.x, var_0, u_input.c.x)), Struct_1(vec3<i32>(1i, var_0, var_0)))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)).a.yz, select(vec2<i32>(u_input.c.x, u_input.c.x), func_4(Struct_1(vec3<i32>(u_input.c.x, 2147483647i, -30196i)), Struct_3(u_input.c, 29066i, Struct_2(vec2<i32>(u_input.c.x, var_0), Struct_1(vec3<i32>(-15452i, -39470i, u_input.c.x)), Struct_1(vec3<i32>(u_input.c.x, -8107i, u_input.c.x))))).a.xz, select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), _wgslsmith_sub_i32(countOneBits(-u_input.c.x), 1i), Struct_2(firstLeadingBit(-u_input.c), func_1(Struct_3(vec2<i32>(var_0, -1i), var_0, Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), Struct_1(vec3<i32>(u_input.c.x, 26716i, u_input.c.x)), Struct_1(vec3<i32>(var_0, var_0, 1i)))), vec2<bool>(false, true)), func_4(Struct_1(vec3<i32>(-2147483647i, u_input.c.x, -2147483647i)), Struct_3(vec2<i32>(-27306i, u_input.c.x), -1i, Struct_2(u_input.c, Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(vec3<i32>(-31649i, var_0, 34609i))))))));
    let var_2 = select(select(select(vec3<bool>(u_input.b == 0u, false, all(vec3<bool>(false, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), all(vec4<bool>(true, true, false, false))), vec3<bool>(true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), any(vec3<bool>(false, false, true))), vec3<bool>(true, false, true)), !(!vec3<bool>(true, all(vec2<bool>(false, false)), true)), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1408f - 1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1049f))))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-711f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(334f * -780f), -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-178f * -1354f))))));
    var_3 = 757f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(15184u, 0u));
}

