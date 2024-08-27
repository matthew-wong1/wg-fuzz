struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(-1i, ~(select(vec4<i32>(1i, -43914i, 55854i, -41576i), ~vec4<i32>(1i, 48330i, 2147483647i, -2296i), all(vec3<bool>(true, true, false))) ^ vec4<i32>(select(-1i, 2147483647i, false), -17240i, -3335i, 2147483647i)), Struct_2(867f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1735f, _wgslsmith_f_op_f32(f32(-1f) * -626f)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(true, false)), true)));
    var_0 = Struct_3(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(var_0.b.zy, ~var_0.b.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.b.x, -36692i, _wgslsmith_dot_vec2_i32(var_0.b.ww, var_0.b.yx)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, var_0.b.x, var_0.b.x, var_0.a), var_0.b >> (u_input.a % vec4<u32>(32u))))), var_0.b, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.a, var_0.d.a), _wgslsmith_f_op_f32(f32(-1f) * -703f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(191f)))), vec2<bool>(true, false));
    var_0 = Struct_3(9083i, var_0.b ^ select(var_0.b, vec4<i32>(-var_0.a, -47510i, _wgslsmith_sub_i32(var_0.b.x, var_0.b.x), ~(-59066i)), vec4<bool>(true, var_0.e.x, false, true)), var_0.d, var_0.d, var_0.e);
    let var_1 = Struct_3(~var_0.a, _wgslsmith_sub_vec4_i32(abs(-var_0.b), vec4<i32>(min(var_0.b.x & var_0.a, _wgslsmith_mod_i32(-22568i, -12419i)), min(abs(var_0.b.x), 1i), -(~var_0.a), 26123i)), var_0.c, var_0.d, !select(vec2<bool>(false, any(vec3<bool>(false, var_0.e.x, false))), vec2<bool>(false, var_0.e.x), all(select(vec2<bool>(false, var_0.e.x), vec2<bool>(false, var_0.e.x), var_0.e.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.a, -309f, var_0.c.a), vec3<f32>(var_0.c.a, 159f, 527f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2162f, 489f, 1000f)) + vec3<f32>(var_1.d.a, -199f, var_0.c.a))))), vec3<f32>(var_1.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-294f * var_0.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)), select(u_input.a.x < u_input.a.x, all(var_0.e), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d.a * var_1.d.a)))), var_1.e.x));
    return _wgslsmith_f_op_f32(var_1.c.a + -830f);
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1112f, 842f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-633f)) * _wgslsmith_div_f32(-1000f, -952f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(408f)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)))) - 331f) * _wgslsmith_f_op_f32(max(var_0.x, var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(361f, -390f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -627f), 325f))));
    var var_1 = 110f;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1221f + -700f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(var_0.x)), any(vec4<bool>(true, arg_0.c, false, false)))) - 218f) * 1133f));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> i32 {
    var var_0 = Struct_2(arg_1.x);
    let var_1 = vec3<i32>(~(~(-arg_0.b.x) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(13539u, u_input.a.x, 2147u, u_input.a.x)), vec4<u32>(u_input.a.x, 51485u, 31488u, 0u) & vec4<u32>(33708u, u_input.a.x, u_input.a.x, 34831u)) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(arg_0.a, ~(-62429i), any(vec3<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x))), _wgslsmith_dot_vec2_i32(arg_0.b.xw, vec2<i32>(arg_0.a, 42689i))), arg_0.b.zy >> (~vec2<u32>(103296u, u_input.a.x) % vec2<u32>(32u))), ~arg_0.a);
    global0 = 2169f;
    global0 = -1000f;
    var var_2 = countOneBits((-1i >> (min(4294967295u, 0u) % 32u)) & (~_wgslsmith_dot_vec2_i32(arg_0.b.ww, arg_0.b.xx) & abs(max(arg_0.a, var_1.x))));
    return -var_1.x;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mod_i32(-firstLeadingBit(-1i), func_4(Struct_3(_wgslsmith_mod_i32(1i, 2147483647i), -vec4<i32>(19819i, 2147483647i, -1i, 1i), Struct_2(-851f), Struct_2(550f), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(2147483647i, u_input.a.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1141f, -570f, -247f))))) << (4294967295u % 32u));
    var var_1 = vec2<i32>(abs(-2147483647i), ~(~(-19410i)));
    let var_2 = ~countOneBits(_wgslsmith_sub_vec4_u32(~(~u_input.a), u_input.a));
    var var_3 = abs(~(-(vec2<i32>(var_1.x, var_1.x) & vec2<i32>(var_1.x, var_1.x)))) & _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, 6092i) ^ ~vec2<i32>(var_1.x, var_1.x), ~vec2<i32>(2147483647i, -17852i)), vec2<i32>(1i >> ((u_input.a.x << (77338u % 32u)) % 32u), var_1.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f - -483f)) * _wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(f32(-1f) * -1669f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, 1491f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 336f), 1512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -247f), -1552f, false)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(36284i, u_input.a.x, true))).x)) + 1389f), _wgslsmith_f_op_f32(337f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))));
    global0 = _wgslsmith_div_f32(1605f, _wgslsmith_div_f32(var_0.x, var_0.x));
    let var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), vec4<bool>((all(vec3<bool>(false, false, false)) | true) & true, !(any(vec4<bool>(true, true, false, true)) || true), select(false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), u_input.a.x == ~u_input.a.x), true), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec3<bool>(true, false, true))), true), true));
    let var_2 = Struct_2(var_0.x);
    let var_3 = countOneBits(vec2<i32>(func_4(Struct_3(_wgslsmith_div_i32(54606i, 13297i), vec4<i32>(2147483647i, -104643i, 1i, -2147483647i) << (u_input.a % vec4<u32>(32u)), var_2, var_2, vec2<bool>(false, var_1.x)), var_0.yww), i32(-1i) * -1i));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 704f) - _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x));
    global0 = var_4.x;
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-670f, var_2.a, var_0.x, 1128f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, var_2.a, var_4.x, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_4.x, 919f, var_2.a), vec4<f32>(280f, 758f, -656f, var_2.a), var_1.x)), var_1.x)), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)))))));
    global0 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(i32(-1i) * -var_3.x), var_3.x, 60098i), abs(_wgslsmith_mult_u32(~u_input.a.x, abs(max(11810u, u_input.a.x)))));
}

