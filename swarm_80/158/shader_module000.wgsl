struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = Struct_4(true);
    let var_1 = arg_0;
    var_0 = Struct_4(false);
    var var_2 = ~abs(_wgslsmith_div_u32(reverseBits(~0u), 23979u));
    var_2 = _wgslsmith_clamp_u32(13508u, u_input.c.x, _wgslsmith_add_u32(35071u, abs(arg_0.a.b | firstLeadingBit(var_1.a.b))));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = arg_1.b.a.c << (_wgslsmith_add_u32(arg_0, u_input.b.x) % 32u);
    let var_1 = func_3(arg_1.b, true);
    var var_2 = ~(~4294967295u);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(ceil(639f)), arg_1.b, _wgslsmith_f_op_f32(exp2(arg_1.d.x)), arg_1.d, -3977i);
    var_3 = arg_1;
    return select(vec4<bool>(var_1, all(select(vec2<bool>(true, var_1), vec2<bool>(false, false), false)) & !var_1, var_3.e == -select(-1i, u_input.d, var_1), true || var_1), vec4<bool>(true, true, true, true), var_1);
}

fn func_4(arg_0: bool) -> Struct_4 {
    let var_0 = 1f;
    return Struct_4(arg_0);
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = func_4(any(select(vec4<bool>(true, true, true, true), func_2(_wgslsmith_mult_u32(arg_1, 50644u), Struct_3(arg_0, Struct_2(Struct_1(vec3<i32>(u_input.d, 17304i, u_input.d), arg_1, 10377u, arg_0, -1000f), u_input.d, u_input.d), arg_0, vec4<f32>(1929f, arg_0, -2067f, 557f), u_input.d)), vec4<bool>(true, func_2(1u, Struct_3(483f, Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.d, 37659i), arg_1, u_input.b.x, -1000f, -1075f), u_input.d, 21552i), arg_0, vec4<f32>(-169f, 229f, arg_0, arg_0), 0i)).x, true, false))));
    var var_1 = Struct_3(arg_0, Struct_2(Struct_1(-vec3<i32>(1i, u_input.d, -2147483647i), 69270u, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - _wgslsmith_f_op_f32(sign(486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1229f - arg_0))), 1i, 18268i | _wgslsmith_mult_i32(i32(-1i) * -19722i, min(u_input.d, 42357i))), _wgslsmith_f_op_f32(-arg_0), vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(290f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0, _wgslsmith_f_op_f32(sign(arg_0))), -u_input.d);
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0)), 1241f)) - arg_0)), Struct_2(Struct_1(var_1.b.a.a, abs(~33790u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(26782u, var_1.b.a.c, 76001u, 18380u)), _wgslsmith_div_f32(var_1.b.a.e, _wgslsmith_div_f32(1000f, arg_0)), arg_0), _wgslsmith_add_i32(u_input.d, -_wgslsmith_div_i32(0i, -44626i)), i32(-1i) * -_wgslsmith_sub_i32(-9439i, 0i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(var_1.b.a.e * -109f))))), var_1.d, var_1.e);
    let var_2 = var_1.e;
    var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) - var_1.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 588f)))), _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, 429f, -933f) + var_1.d), var_1.d, select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a)))))), abs(_wgslsmith_sub_i32(-_wgslsmith_div_i32(u_input.d, 18777i), firstTrailingBit(var_1.b.a.a.x) << (11090u % 32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-458f + var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2354f))));
}

fn func_5(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0))))));
    let var_1 = Struct_4(true != any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    var var_2 = Struct_1(~vec3<i32>(-25973i, abs(u_input.d), u_input.d) << (vec3<u32>(firstTrailingBit(u_input.c.x), abs(u_input.a), u_input.b.x & 1u) % vec3<u32>(32u)), max(u_input.b.x, ~27284u), max(~(~u_input.c.x), min(0u, u_input.c.x | (7808u >> (u_input.b.x % 32u)))), -659f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(297f)), var_0.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(floor(var_2.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(255f, 1788f)), _wgslsmith_f_op_f32(sign(-777f))), arg_0)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), 731f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1590f)), _wgslsmith_f_op_f32(select(-188f, _wgslsmith_f_op_f32(-arg_0), var_1.a)))), _wgslsmith_f_op_f32(round(-1000f))));
    let var_4 = Struct_3(-654f, Struct_2(Struct_1(var_2.a, 1u, select(30256u, var_2.b, var_2.a.x != var_2.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.e)))), 235f), ~select(abs(-26222i), -20446i, true), ~(~(~7271i))), _wgslsmith_f_op_f32(func_1(var_3.x, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, _wgslsmith_f_op_f32(max(-623f, 674f)), _wgslsmith_f_op_f32(f32(-1f) * -937f), 842f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.x, arg_0, var_0.x)))))), _wgslsmith_dot_vec3_i32(abs(~(var_2.a >> (vec3<u32>(0u, 0u, var_2.c) % vec3<u32>(32u)))), vec3<i32>(var_2.a.x, ~_wgslsmith_add_i32(u_input.d, var_2.a.x), select(u_input.d, 1i, false) << ((1u & u_input.b.x) % 32u))));
    return _wgslsmith_div_vec2_f32(var_3.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_0, var_0)), _wgslsmith_f_op_vec2_f32(-var_3.ww), !vec2<bool>(var_1.a, true))), var_4.d.wy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(ceil(1147f)), 55622u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f * -860f)))))));
    let var_1 = abs(1u);
    var var_2 = func_4(false);
    let var_3 = vec2<f32>(1299f, 165f);
    var_2 = Struct_4(all(vec2<bool>(!(!var_2.a), true)));
    var var_4 = Struct_3(var_0.x, Struct_2(Struct_1(vec3<i32>(-1i) * -vec3<i32>(u_input.d, -2147483647i, u_input.d), max(var_1, 1u), 26959u, _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1489f + var_0.x), var_3.x, -1182f > var_3.x))), ~1i, -_wgslsmith_mult_i32(u_input.d, u_input.d)), -1074f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1265f), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(f32(-1f) * -1251f)), -713f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1279f, 431f, 862f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -464f, var_3.x, 592f)))))), -(~(-2147483647i) ^ (-2147483647i >> ((u_input.c.x ^ 19638u) % 32u))));
    var_2 = func_4(-976f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.b.a.e))), 794f, any(!vec4<bool>(var_2.a, false, true, true)))));
    var var_5 = ~(~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, -13968i, 19775i) & vec4<i32>(16501i, var_4.e, 26872i, -2147483647i), vec4<i32>(var_4.b.a.a.x, u_input.d, -2147483647i, 13637i) | vec4<i32>(u_input.d, 7532i, -9708i, var_4.e)) ^ vec4<i32>(_wgslsmith_add_i32(-18479i, -23867i), _wgslsmith_div_i32(var_4.e, 0i), var_4.e, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.e, 0i, 50566i, var_4.b.a.a.x), vec4<i32>(var_4.b.c, u_input.d, -1i, -2147483647i)))));
    var var_6 = countOneBits(0u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_5.x));
}

