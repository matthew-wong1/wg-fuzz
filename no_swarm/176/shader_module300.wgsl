struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1 ^ _wgslsmith_dot_vec2_u32(vec2<u32>(16318u, 0u), vec2<u32>(1u, 1u)), arg_1), vec2<u32>(~arg_1, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, arg_1) & vec2<u32>(u_input.b, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 48026u), vec2<u32>(arg_1, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.c.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-226f, 1096f), _wgslsmith_div_f32(1000f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1099f), arg_0.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-358f)), _wgslsmith_div_f32(-315f, _wgslsmith_f_op_f32(f32(-1f) * -1192f)))));
    let var_2 = -539f;
    let var_3 = Struct_1(true, arg_3.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.c), _wgslsmith_f_op_vec3_f32(-arg_0.a.c), arg_3.xyx)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-939f - 1000f), _wgslsmith_f_op_f32(min(-318f, var_2)), 1000f)))), arg_0.a.d);
    var var_4 = Struct_1(!(arg_1 != _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, 11753u), arg_1)), !any(!vec3<bool>(false, arg_0.a.a, var_3.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, -1119f, _wgslsmith_f_op_f32(-var_3.c.x)) - var_3.c), abs(reverseBits(firstTrailingBit(vec4<i32>(u_input.a.x, 0i, arg_2, 1i)))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, -576f, var_4.c.x) - vec3<f32>(251f, -210f, var_2)))))))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f * -1599f));
    var_0 = 849f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-457f, -889f, -378f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, 274f, 498f)))) * _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(arg_1.x, true, vec3<f32>(-441f, -1000f, 2275f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 464f, vec4<i32>(0i, u_input.a.x, 0i, -19443i)), ~arg_0, ~u_input.a.x, !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))), vec3<f32>(-1940f, 807f, _wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(step(359f, 959f))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-888f + 662f) * _wgslsmith_f_op_f32(min(var_1.x, -470f))))), var_1.x);
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-395f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(692f))))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(!(true != (all(vec3<bool>(true, false, false)) || any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(u_input.b, vec2<bool>(true, true))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(max(-1450f, -690f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(false, true, vec3<f32>(-2033f, -348f, 1031f), vec4<i32>(66818i, 0i, -38655i, -797i)), -863f, vec4<i32>(u_input.a.x, -2147483647i, -1i, -1i)), _wgslsmith_div_u32(43664u, u_input.b), -2147483647i, select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))) + vec3<f32>(_wgslsmith_div_f32(-489f, 728f), _wgslsmith_f_op_f32(f32(-1f) * -1310f), -1128f)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-2147483647i, 11316i, u_input.a.x, u_input.a.x), countOneBits(vec4<i32>(u_input.a.x, -808i, 22351i, u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -16283i), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-15629i, u_input.a.x, 3977i, 16001i), vec4<i32>(-6034i, u_input.a.x, -1i, 2147483647i)))), ~abs(vec4<i32>(u_input.a.x, u_input.a.x, -35673i, -2147483647i)) | (-vec4<i32>(-1i, -8467i, u_input.a.x, u_input.a.x) | max(vec4<i32>(-1i, 2147483647i, -5314i, -6239i), vec4<i32>(-10033i, u_input.a.x, u_input.a.x, 0i))), firstTrailingBit(~vec4<i32>(31432i, -1i, u_input.a.x, u_input.a.x))));
    var_0 = Struct_1(all(vec4<bool>(false, any(!vec4<bool>(false, var_0.b, false, false)), all(vec4<bool>(true, var_0.b, true, var_0.b)), any(vec2<bool>(var_0.b, false)))), any(vec2<bool>(true, !var_0.a)), var_0.c, min(-var_0.d, ~var_0.d));
    var var_1 = Struct_1(true, true, _wgslsmith_f_op_vec3_f32(-var_0.c), var_0.d);
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(select(false, true, ~4294967295u > _wgslsmith_mult_u32(~u_input.b, 1u)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -832f, var_1.c.x))) + var_0.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(var_0.c)))))), _wgslsmith_mult_vec4_i32(-(~select(vec4<i32>(u_input.a.x, var_2, var_0.d.x, 60846i), var_1.d, true)), var_0.d));
    return ~countOneBits(min(vec4<u32>(u_input.b, 10982u, u_input.b, u_input.b), select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), var_0.a)) >> (_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, 72047u, 0u, 84831u), vec4<u32>(u_input.b, 0u, u_input.b, 89017u)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-169f, _wgslsmith_f_op_f32(-696f + 560f), true)), -438f, _wgslsmith_f_op_f32(trunc(-1283f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-192f))))));
    var var_1 = Struct_2(Struct_1(all(vec4<bool>(true, 1311f >= var_0.x, var_0.x >= 886f, true)), true & (var_0.x >= _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-var_0.xyy), (-vec4<i32>(-7684i, -16575i, u_input.a.x, u_input.a.x) >> (func_1() % vec4<u32>(32u))) >> (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 68063u, 0u, 4294967295u), vec4<u32>(5204u, u_input.b, 4294967295u, 1u))) % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(298f)), var_0.x), vec4<i32>(0i, ~(-(2147483647i >> (u_input.b % 32u))), u_input.a.x, u_input.a.x));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -513f, 345f, -233f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(441f, var_1.a.c.x, 495f, 1000f) + vec4<f32>(var_0.x, 748f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1013f, var_1.b, var_1.b)))), _wgslsmith_clamp_i32(18200i, u_input.a.x, 1i) <= u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_1.a, var_1.a.c.x, vec4<i32>(2147483647i, u_input.a.x, -16242i, -5557i)), u_input.b, -2147483647i, vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, false))).x, _wgslsmith_f_op_f32(var_1.a.c.x * var_0.x), _wgslsmith_f_op_f32(abs(-101f)), 112f))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_1.a.c.x, false))))), firstLeadingBit(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(6327i, 0i, var_1.c.x, var_1.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.d.x, 15544i, 0i, -2147483647i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 2147483647i), var_1.a.d)))));
    var var_2 = -51304i;
    var var_3 = u_input.a.x;
    var_3 = u_input.a.x;
    var_1 = Struct_2(Struct_1(true, false, _wgslsmith_f_op_vec3_f32(var_0.xyw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, 1260f, var_0.x), var_1.a.c)))), abs(vec4<i32>(8643i, abs(2147483647i), u_input.a.x, u_input.a.x))), 1112f, var_1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(4294967295u, 4294967295u)), abs(~vec2<u32>(104841u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(8753u, u_input.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)))), vec2<u32>(u_input.b, 0u)));
}

