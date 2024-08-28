struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = !arg_0.b;
    var_0 = arg_0.b;
    var_0 = all(vec4<bool>(arg_0.b, arg_0.b, all(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b)) & all(vec2<bool>(true, true)), false));
    let var_1 = abs(0i);
    let var_2 = abs(~u_input.a);
    return !vec2<bool>(arg_0.b, true);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, _wgslsmith_f_op_f32(1464f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1064f, 1010f))))));
    var var_1 = any(func_3(Struct_1(~vec2<i32>(u_input.a, -1i), true, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(69659u, 1u)), ~vec2<i32>(u_input.a, u_input.a), abs(countOneBits(vec3<i32>(-29689i, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, var_0.x, 1000f, var_0.x))));
    var var_2 = -1468f;
    var_1 = !(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(true, true, true))) | any(vec4<bool>(true, any(vec2<bool>(false, false)), false, true)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1284f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(!(u_input.a < u_input.a) && true, any(vec4<bool>(true, func_2(), false, true))));
    var var_1 = max(_wgslsmith_sub_i32(~(~countOneBits(-2147483647i)), reverseBits(u_input.a)), -_wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(u_input.a, u_input.a)), reverseBits(_wgslsmith_mult_i32(1i, -2147483647i))));
    let var_2 = Struct_3(var_0.a);
    var var_3 = ~reverseBits(22168u) ^ u_input.b.x;
    let var_4 = select(!select(!vec3<bool>(true, var_0.a.a, var_0.a.a), select(!vec3<bool>(true, var_2.a.b, var_2.a.b), !vec3<bool>(var_0.a.b, false, true), var_0.a.b), !select(vec3<bool>(var_2.a.a, var_0.a.a, var_0.a.a), vec3<bool>(false, var_0.a.a, var_0.a.b), vec3<bool>(var_2.a.a, true, var_0.a.b))), !(!(!vec3<bool>(var_0.a.b, false, false))), !select(vec3<bool>(-1i != u_input.a, var_2.a.a && var_0.a.b, false), vec3<bool>(any(vec3<bool>(var_0.a.a, true, false)), func_3(Struct_1(vec2<i32>(u_input.a, -30666i), var_2.a.a, u_input.b.x, vec2<i32>(-1i, u_input.a), vec3<i32>(u_input.a, 17947i, 2147483647i)), vec4<f32>(-359f, -782f, -1350f, -649f)).x, var_0.a.a || true), !all(vec2<bool>(false, var_2.a.b))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_3(Struct_1(vec2<i32>(reverseBits(-4500i), min(u_input.a & 2147483647i, abs(-1i))), false && func_1().a.b, abs(u_input.b.x), ~vec2<i32>(~u_input.a, u_input.a), firstTrailingBit(reverseBits(vec3<i32>(0i, u_input.a, u_input.a)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, 18191i), vec3<i32>(u_input.a, u_input.a, -420i), vec3<i32>(-3710i, u_input.a, 0i)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1739f)) * -568f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-603f, 463f))))), -1073f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(384f - 1314f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f + -1236f) * _wgslsmith_f_op_f32(485f + -1000f))))));
    let var_2 = Struct_1(vec2<i32>(u_input.a, max(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -46680i, 1i), vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a)) << (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u))), true, select(u_input.b.x, ~select(1u, u_input.b.x | u_input.b.x, !var_1.x), true), vec2<i32>(-82773i, 28725i), reverseBits(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(6460i, u_input.a, 0i), -vec3<i32>(2147483647i, -1i, u_input.a), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -1i)))));
    var_0 = Struct_3(func_1().a);
    let var_3 = ~min(_wgslsmith_mod_vec2_u32(select(~u_input.b.yy, ~u_input.b.ww, !vec2<bool>(var_2.b, var_1.x)), vec2<u32>(17863u, 12929u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c, u_input.b.x), select(vec2<u32>(u_input.b.x, var_2.c), u_input.b.xz, vec2<bool>(var_0.a.a, false))) >> (~(~u_input.b.zw) % vec2<u32>(32u)));
    var_0 = Struct_3(var_0.a);
    var var_4 = var_2;
    var var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -283f))), select(5184u, var_4.c, func_1().a.b), (countOneBits(~vec4<i32>(42375i, var_2.d.x, u_input.a, 9629i)) & vec4<i32>(1i, 1i, ~(-20319i), 1i)) | (vec4<i32>(-92225i, -1i, firstTrailingBit(77510i), -2147483647i) << (u_input.b % vec4<u32>(32u))), 1u, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(31193i, u_input.a, 13160i)) & _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_4.e.x, var_2.d.x), var_4.e), -var_2.e | var_4.e, vec3<i32>(u_input.a | u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(21115i, 49968i, var_2.a.x), vec3<i32>(var_2.a.x, 4634i, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -34681i, var_4.a.x), var_2.e))));
}

