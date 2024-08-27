struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(975f, arg_0.x, 797f, _wgslsmith_f_op_f32(floor(arg_0.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, -603f, arg_0.x, -1337f) * vec4<f32>(1050f, 1000f, arg_0.x, -450f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), arg_0.x, _wgslsmith_f_op_f32(-335f - _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(round(-584f))))));
    return u_input.b.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = vec4<u32>(u_input.a ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(22107u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u)), min(vec4<u32>(u_input.a, 0u, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 96621u))), _wgslsmith_add_u32(~min(1u, 1u), u_input.a), _wgslsmith_mult_u32(u_input.a, abs(~countOneBits(u_input.a))), ~(~((u_input.a ^ 0u) << (1u % 32u))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(var_0.x, u_input.a)), var_0.yz), vec2<bool>(false, !(!arg_1)), abs(vec4<u32>(_wgslsmith_mult_u32(26253u, 4294967295u ^ u_input.a), u_input.a, 30213u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, var_0.x, u_input.a, 4294967295u)), reverseBits(vec4<u32>(4294967295u, 22551u, u_input.a, 1u))))), !(!arg_1), min(~(-_wgslsmith_dot_vec4_i32(arg_0, arg_0)), _wgslsmith_div_i32(~1i, arg_0.x)));
    let var_2 = var_1;
    let var_3 = vec4<bool>(var_1.b.x, select(!any(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), true)), var_1.d, !(!var_2.d && (var_2.b.x || var_2.d))), var_2.b.x, false);
    let var_4 = Struct_1(min(var_1.c.x, var_0.x), var_3.zw, var_1.c, var_2.b.x, firstLeadingBit(var_1.e) | -2147483647i);
    return 22160u ^ firstTrailingBit(45888u & (var_2.a & var_4.c.x));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(func_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -func_3(vec3<f32>(-735f, 915f, 1765f))), all(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)))), vec2<bool>(arg_0, !arg_0), vec4<u32>(func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i), vec4<i32>(37135i, u_input.b.x, 40167i, u_input.b.x), vec4<i32>(1i, -1i, 0i, 30187i)), max(vec4<i32>(0i, u_input.b.x, 8853i, u_input.b.x), vec4<i32>(u_input.b.x, -483i, u_input.b.x, u_input.b.x))), arg_0), u_input.a & ~29590u, reverseBits(50720u), ~_wgslsmith_add_u32(1u, 1u)), arg_0, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, -10589i, -21981i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-26755i, 20164i, u_input.b.x), vec3<i32>(u_input.b.x, 10371i, u_input.b.x)))) ^ -(~26059i));
    let var_1 = ~_wgslsmith_add_i32(-var_0.e, abs(~u_input.b.x));
    var var_2 = Struct_1(26144u, vec2<bool>(true, true), var_0.c << (vec4<u32>(~u_input.a, u_input.a << (0u % 32u), ~_wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u) % vec4<u32>(32u)), var_0.b.x || arg_0, var_1);
    let var_3 = Struct_1(select(var_0.c.x, ~38555u, var_2.b.x), !(!(!select(var_2.b, vec2<bool>(arg_0, var_0.b.x), vec2<bool>(false, var_2.b.x)))), reverseBits(min(var_0.c, vec4<u32>(var_2.c.x, ~5373u, ~u_input.a, _wgslsmith_mod_u32(4294967295u, var_2.c.x)))), any(select(select(!vec3<bool>(var_0.d, var_0.b.x, var_2.d), !vec3<bool>(var_2.b.x, arg_0, arg_0), var_2.b.x), !select(vec3<bool>(var_0.d, var_0.b.x, true), vec3<bool>(false, var_2.d, var_2.d), vec3<bool>(true, false, arg_0)), var_0.b.x)), var_2.e);
    var_0 = var_3;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(u_input.a), ~(~var_2.c.x), 107036u), countOneBits(~vec3<u32>(_wgslsmith_add_u32(var_0.c.x, var_0.c.x), 0u, firstLeadingBit(var_0.a))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = (abs(arg_1.e) <= 1i) && (false | arg_1.d);
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1920f, -839f)), 1161f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f + 225f)))), -129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) * 1018f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1311f - 583f) + 1f)) - _wgslsmith_f_op_f32(floor(-253f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1744f)))))));
    var var_3 = -1649f;
    var_3 = -323f;
    return _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a, ~(~0u), _wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(arg_1.a, 26253u)), abs(1177u)) >> (arg_1.c % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~func_2(var_1), _wgslsmith_dot_vec2_u32(arg_1.c.xz, vec2<u32>(0u, 6757u)), 1705u, firstTrailingBit(_wgslsmith_div_u32(var_0.c.x, 4294967295u))), ~firstTrailingBit(arg_1.c) << (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.a, 21762u, 1u), var_0.c), vec4<u32>(35157u, arg_1.a, 1035u, var_0.a)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, vec2<bool>(all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), any(vec3<bool>(true, true, true))), select(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17699u, u_input.a) << (vec4<u32>(1u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(22224u, 34518u, u_input.a, 5721u))), _wgslsmith_sub_vec4_u32(func_1(-2147483647i, Struct_1(4294967295u, vec2<bool>(false, true), vec4<u32>(1u, 0u, 0u, u_input.a), true, 8451i)), vec4<u32>(70809u, 4294967295u, u_input.a, 4294967295u)) >> (~(~vec4<u32>(1u, 58655u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<bool>(!(4294967295u < u_input.a), false, true, false)), true, u_input.b.x);
    let var_1 = !(!vec2<bool>(true, (true & var_0.d) && var_0.d));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(539f))))));
    let var_3 = 1u;
    var var_4 = ~0u;
    let var_5 = var_0;
    let var_6 = max(_wgslsmith_clamp_i32(43149i, i32(-1i) * -u_input.b.x, ~u_input.b.x) << (select(1u, func_1(1555i, var_0).x, false) % 32u), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_5.e, 1i, var_0.e), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(19980i, -2147483647i, -44046i, u_input.b.x), vec4<i32>(var_0.e, var_6, 2147483647i, var_6)), countOneBits(vec4<i32>(var_0.e, var_0.e, -1i, var_6))), ~var_6, var_6, -var_5.e), ~reverseBits(-vec4<i32>(0i, var_6, -13748i, u_input.b.x))), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(~var_5.c.xw, var_0.c.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(727f + -434f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, -853f, -911f))))));
}

