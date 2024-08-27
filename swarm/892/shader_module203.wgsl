struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(Struct_1(u_input.d), _wgslsmith_mult_vec4_u32(~u_input.b, arg_3.b), arg_3.c);
    let var_1 = -1i;
    var var_2 = u_input.d;
    var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32((4294967295u & var_0.a.a) << (_wgslsmith_mult_u32(0u, arg_3.b.x) % 32u), ~arg_3.c.a), _wgslsmith_div_u32(var_0.b.x, 72622u)), _wgslsmith_mod_u32(u_input.b.x << (var_0.b.x % 32u), _wgslsmith_clamp_u32(43273u, 63778u, arg_3.a.a)));
    var var_3 = Struct_1(u_input.b.x);
    return firstLeadingBit(~min(arg_3.b.x, arg_3.c.a));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(func_3(min(firstTrailingBit(vec3<i32>(1i, 0i, 10713i)), -vec3<i32>(-2147483647i, 13420i, arg_0)), true, vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), true), Struct_3(Struct_1(1u), abs(vec4<u32>(u_input.d, 1u, 17618u, 1u)), Struct_2(u_input.b.x, Struct_1(28017u), Struct_1(15605u))))), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, u_input.b.x, u_input.d, 14863u), vec4<u32>(u_input.d, u_input.b.x, 8624u, 53589u), true), ~vec4<u32>(u_input.b.x, 4294967295u, 42749u, 0u)) >> (u_input.b % vec4<u32>(32u))), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(0u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), max(u_input.b.x, 36226u)), vec3<u32>(select(13011u, u_input.b.x, false), u_input.d, ~4294967295u)), Struct_1((1u >> (u_input.d % 32u)) ^ max(4294967295u, 0u)), Struct_1(firstLeadingBit(72921u))));
    var var_1 = _wgslsmith_dot_vec2_u32(reverseBits(var_0.b.xx), vec2<u32>(u_input.d, 116921u));
    var var_2 = 0u;
    var_0 = Struct_3(Struct_1(firstTrailingBit(countOneBits(1u))), vec4<u32>(~abs(1u) & ~firstTrailingBit(2562u), _wgslsmith_sub_u32(90309u, 10619u), 14412u, u_input.b.x), Struct_2(var_0.b.x, var_0.a, var_0.c.b));
    var var_3 = 289f;
    return vec4<bool>(all(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), arg_1 != arg_1)), false, ((_wgslsmith_f_op_f32(sign(-756f)) <= -545f) & any(vec4<bool>(false, true, true, false))) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -319f))) + -1256f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1609f * _wgslsmith_f_op_f32(1430f + -397f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -920f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_mult_u32(~arg_2.x, 0u), Struct_1(countOneBits(52183u)), Struct_1(arg_1));
    var var_1 = Struct_2(u_input.b.x, var_0.b, var_0.b);
    var var_2 = Struct_3(var_1.c, vec4<u32>(func_3(vec3<i32>(select(1i, -2147483647i, false), i32(-1i) * -2147483647i, 25532i << (var_1.a % 32u)), false, arg_0, Struct_3(var_1.b, ~vec4<u32>(43032u, var_1.c.a, var_1.b.a, 4294967295u), Struct_2(arg_2.x, var_0.b, Struct_1(12458u)))), arg_2.x, 4294967295u, 0u), Struct_2(u_input.b.x, var_1.c, var_1.b));
    let var_3 = true;
    var_2 = Struct_3(Struct_1(min(_wgslsmith_mod_u32(4294967295u, 0u | var_0.b.a), ~u_input.b.x)), select(vec4<u32>(select(~u_input.b.x, 0u, arg_0.x), var_2.b.x, _wgslsmith_dot_vec4_u32(select(u_input.b, vec4<u32>(arg_1, 51891u, 55805u, arg_1), false), var_2.b), 1u), ~(~(~var_2.b)), true), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, ~u_input.b.x, min(58090u, 0u)), (vec3<u32>(var_1.a, var_1.c.a, 41429u) ^ var_2.b.xww) & (vec3<u32>(arg_1, var_2.a.a, arg_2.x) | u_input.b.zww)), Struct_1(0u), var_1.b));
    return Struct_3(var_2.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.a, func_3(vec3<i32>(u_input.a.x, u_input.c, 8400i) ^ vec3<i32>(60902i, -13196i, u_input.c), arg_3.x < arg_3.x, vec4<bool>(var_3, true, true, var_3), Struct_3(Struct_1(140140u), u_input.b, var_2.c)), arg_1, ~u_input.d), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, var_2.b)), ~firstLeadingBit(var_2.b)), Struct_2(var_0.b.a, var_2.a, var_0.b));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<f32> {
    var var_0 = func_4(select(func_2(~22977i, 1i), select(vec4<bool>(true, func_2(u_input.a.x, 1i).x, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), select(false, all(vec3<bool>(false, false, true)), u_input.b.x > u_input.d)), any(vec2<bool>(func_2(-1i, u_input.a.x).x, false))), _wgslsmith_div_u32(0u, ~firstTrailingBit(u_input.d)), countOneBits(u_input.b.zy | max(~u_input.b.yz, ~vec2<u32>(u_input.d, u_input.b.x))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(357f)), -334f)), -131f));
    var var_1 = vec2<bool>(false, true);
    let var_2 = var_0.c;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 - -1199f), _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(floor(743f)), _wgslsmith_div_f32(197f, arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, _wgslsmith_f_op_f32(arg_1 * -1000f), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1479f, 172f, arg_1)))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f + 1257f))), _wgslsmith_f_op_f32(step(-275f, arg_1)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-363f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) + _wgslsmith_div_f32(arg_2, arg_2)))), !((arg_1.a >> (74205u % 32u)) <= 0u))), _wgslsmith_f_op_f32(sign(arg_2)));
    let var_1 = arg_0.wwx;
    var var_2 = vec2<bool>(all(!vec2<bool>(false, any(vec4<bool>(true, true, false, true)))), false);
    var var_3 = arg_1;
    var var_4 = u_input.b.xzw;
    return _wgslsmith_mod_i32(~(i32(-1i) * -u_input.a.x), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(247f, 586f, 493f, 448f) - vec4<f32>(694f, 611f, 159f, 981f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1207f, 797f, -1166f, 1602f)))), _wgslsmith_div_vec4_f32(vec4<f32>(136f, 1252f, 1303f, 1290f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(870f, 1402f, 292f, -652f), vec4<f32>(-605f, 1365f, -524f, 1832f))))))));
    let var_1 = vec2<i32>(0i, func_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(-u_input.a.x, _wgslsmith_f_op_f32(-192f - var_0.x))))), Struct_1(firstLeadingBit(_wgslsmith_mod_u32(57110u, u_input.b.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    let var_2 = u_input.d;
    var var_3 = true;
    let var_4 = true && (133f == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -273f))));
    var var_5 = func_4(vec4<bool>((!var_4 || true) && all(vec4<bool>(true, true, true, false)), var_4, !any(!vec4<bool>(var_4, var_4, false, false)), all(vec2<bool>(true, any(vec4<bool>(false, false, var_4, var_4))))), var_2, ~(~u_input.b.wx) >> (abs(~abs(vec2<u32>(8503u, u_input.b.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(475f, 122f) - var_0.zy) + var_0.wz)));
    var var_6 = ~_wgslsmith_dot_vec4_u32(func_4(vec4<bool>(var_4 && true, true, true, any(vec4<bool>(var_4, var_4, false, var_4))), 30173u, ~firstTrailingBit(vec2<u32>(var_5.a.a, 42336u)), var_0.wz).b, u_input.b);
    var_5 = Struct_3(Struct_1(32608u), vec4<u32>(9515u, var_2, ~0u, 0u), Struct_2(~1u, Struct_1(~select(39569u, 17235u, true)), Struct_1(28838u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(vec4<i32>(-1i) * -select(vec4<i32>(var_1.x, 46799i, u_input.a.x, 4448i), vec4<i32>(0i, var_1.x, 36139i, -28514i), var_4)), ~(firstTrailingBit(45959u) & 4294967295u), -1058f);
}

