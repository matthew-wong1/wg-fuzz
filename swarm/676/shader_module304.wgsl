struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = 0i;
    var_1 = -u_input.c.x;
    var_1 = u_input.b.x << (46870u % 32u);
    var_1 = 19571i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(593f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(-(~(2147483647i ^ u_input.c.x)), _wgslsmith_clamp_vec2_i32(u_input.c.yz >> (~vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-20075i, 42779i), vec2<i32>(-1i, u_input.c.x)), vec2<i32>(firstTrailingBit(189i), _wgslsmith_mod_i32(u_input.b.x, u_input.c.x))), Struct_1(vec3<f32>(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.d)), arg_0.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 34583u), vec2<u32>(arg_0.c, 4294967295u)), _wgslsmith_f_op_f32(arg_0.d * arg_0.d)), vec3<u32>(~45100u, _wgslsmith_clamp_u32(~48103u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(arg_0.c, u_input.d)), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, arg_0.c, arg_0.c), vec4<u32>(u_input.e, 68937u, 67421u, 23589u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), 1341f, _wgslsmith_f_op_f32(arg_0.d * -547f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 754f)))), vec4<bool>(true, !(true || all(vec3<bool>(false, false, true))), true, any(vec2<bool>(true, u_input.a >= arg_0.c))));
    var var_1 = !select(select(vec3<bool>(var_0.b.x, var_0.b.x, !var_0.b.x), var_0.b.yyx, select(!vec3<bool>(true, true, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x), !var_0.b.xzw)), var_0.b.xwx, var_0.b.x);
    var var_2 = Struct_3(Struct_2(~(-(~var_0.a.b.x)), -_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 49898i), var_0.a.b), u_input.c.zy >> (vec2<u32>(11344u, 1u) % vec2<u32>(32u)), u_input.b.zy), var_0.a.e, vec3<u32>(u_input.d, 10762u, u_input.a), var_0.a.c), select(!(!select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, true, false, var_1.x), var_0.b)), var_0.b, true));
    let var_3 = min(vec3<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.x, 55651u, u_input.d, var_2.a.d.x), vec4<u32>(arg_0.c, arg_0.c, 1u, var_0.a.c.c)) << (var_0.a.d.x % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.x, var_2.a.c.c, 60405u, var_2.a.d.x), vec4<u32>(12368u, 1u, var_2.a.e.c, 0u)), abs(_wgslsmith_mod_u32(~var_2.a.d.x, ~var_2.a.e.c))), var_0.a.d);
    var_1 = vec3<bool>(false, all(!(!(!vec2<bool>(false, var_0.b.x)))), true);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.d) - arg_0.b.x), -1299f, _wgslsmith_f_op_f32(1428f - _wgslsmith_f_op_f32(-494f - arg_0.a.x)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_1)), _wgslsmith_f_op_f32(arg_0 + -1255f), -552f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, 1357f, arg_1)), ~1u, _wgslsmith_f_op_f32(sign(-1497f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 424f, arg_1)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_0, arg_1), vec3<f32>(-1000f, arg_0, -1415f)), vec3<f32>(arg_0, arg_1, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(1391f + arg_1), arg_1) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_2(80153i, -firstLeadingBit(u_input.b.zz), Struct_1(var_0.b, var_0.a, ~max(firstTrailingBit(u_input.a), max(var_0.c, u_input.d)), _wgslsmith_f_op_f32(round(var_0.a.x))), (reverseBits(~vec3<u32>(1u, 1u, 0u)) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, var_0.c), ~vec3<u32>(var_0.c, var_0.c, 4294967295u))) >> (firstTrailingBit(reverseBits(abs(vec3<u32>(var_0.c, 4294967295u, u_input.e)))) % vec3<u32>(32u)), var_0);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 923f) * -107f))))));
    var var_3 = _wgslsmith_clamp_u32(u_input.a, 4294967295u, var_0.c);
    var_1 = Struct_2(u_input.b.x, countOneBits(vec2<i32>(2147483647i, var_1.b.x)), var_1.e, ~countOneBits(~select(var_1.d, vec3<u32>(28479u, var_0.c, 1u), vec3<bool>(arg_2, true, arg_2))), var_0);
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(414f * 803f), _wgslsmith_f_op_f32(ceil(260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(arg_1, -625f, 258f), var_0.b, 7795u, 492f))).x)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-194f - -886f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true == (abs(27296u) <= (2747u ^ u_input.e));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1505f))));
    let var_2 = vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(2147483647i, u_input.b.x, -14159i, u_input.b.x)), vec4<i32>(-6703i, 13617i, -u_input.b.x, _wgslsmith_div_i32(1i, u_input.b.x))) & countOneBits(reverseBits(u_input.b.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(266f)) + _wgslsmith_f_op_f32(f32(-1f) * -1694f)), _wgslsmith_f_op_f32(trunc(-636f)), _wgslsmith_f_op_f32(round(var_1)), 837f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2241f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_3.x))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-348f, -810f), _wgslsmith_f_op_vec2_f32(var_3.zw + _wgslsmith_f_op_vec2_f32(var_3.wy * vec2<f32>(-562f, -107f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1930f))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-151f)), -262f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f) - var_3.x)));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(2141f, _wgslsmith_f_op_f32(func_1()), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 36127u, 1u), vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.e), ~u_input.e)) << (4294967295u % 32u), _wgslsmith_f_op_vec4_f32(func_2(-103f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 222f) + var_4.x))), !any(vec3<bool>(true, true, var_0)))).x, _wgslsmith_f_op_f32(min(-854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(420f, _wgslsmith_f_op_f32(746f + var_3.x)))))), var_3.yxx);
}

