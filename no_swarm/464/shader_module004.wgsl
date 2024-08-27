struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    let var_1 = ~108857u;
    var var_2 = arg_1;
    var var_3 = 820f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1174f, -527f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1386f)))) + var_0.c.x);
    return ~(arg_1.b << (_wgslsmith_div_u32(var_0.a, var_1 | (arg_1.b & var_0.a)) % 32u));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = false;
    var var_1 = Struct_1(u_input.a.x & arg_0.d, countOneBits(24321u), -5105i);
    let var_2 = !(any(!arg_0.b) | arg_0.b.x) & !(func_3(arg_0.b.x, Struct_1(var_1.a, 86960u, var_1.c), arg_0) != var_1.b);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.x)))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), -659f)));
    var var_4 = select(select(select(select(!vec4<bool>(false, var_2, true, var_0), !vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_2, true)), select(!vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, false, true, arg_0.b.x), vec4<bool>(true, var_2, var_0, var_0)), any(!vec2<bool>(var_2, true))), vec4<bool>(true, var_0, true, arg_0.b.x), !select(vec4<bool>(false, var_0, true, true), !vec4<bool>(arg_0.b.x, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_0, true), false))), !(!(!(!vec4<bool>(true, true, false, var_0)))), any(!(!select(vec3<bool>(false, arg_0.b.x, var_2), vec3<bool>(var_0, true, false), var_2))));
    return -arg_0.d;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i) | ~u_input.a.wxx, vec3<i32>(u_input.b, func_2(Struct_2(u_input.c.x | 26787u, vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(914f, -206f, 428f) - vec3<f32>(-608f, -142f, -556f)), 1i & u_input.a.x)), 16487i));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1045f, 1000f)))) == _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(386f)), _wgslsmith_div_f32(952f, -1133f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1130f))))), 134f, 1041f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 994f, -624f) - vec3<f32>(1084f, 281f, -113f)))))), vec3<bool>(true, var_1, var_1)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1201f, var_2.x)))), _wgslsmith_f_op_f32(round(-1253f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(376f, 159f, var_2.x)), vec3<f32>(var_2.x, -912f, 580f)))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(338f - var_2.x), _wgslsmith_f_op_f32(-683f - var_2.x))))) * _wgslsmith_f_op_f32(var_2.x * 138f)), var_2.x, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(sign(-1020f))));
    return _wgslsmith_clamp_u32(u_input.c.x << (reverseBits(firstTrailingBit(4294967295u)) % 32u), firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, 91516u)), _wgslsmith_dot_vec2_u32(min(~vec2<u32>(6974u, u_input.c.x), u_input.c.yz), u_input.c.yy)) >= select(abs(u_input.c.x), u_input.c.x, any(!select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 43589u), countOneBits(vec2<u32>(90842u, arg_1.a)))) ^ 4294967295u, vec2<bool>(true, all(vec3<bool>(select(true, false, arg_0.x), any(arg_0.yz), true))), arg_1.c, _wgslsmith_div_i32(-66287i, 2139i) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 12185u, u_input.c.x, 4294967295u) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(6752u, 0u, 0u, 58884u), ~vec4<u32>(arg_1.a, arg_1.a, 1u, 33510u))) % 32u));
    var_0 = Struct_2(~var_0.a, vec2<bool>((arg_1.a > countOneBits(u_input.c.x)) | true, all(arg_0)), vec3<f32>(_wgslsmith_f_op_f32(abs(586f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.c.x)))), _wgslsmith_f_op_f32(trunc(arg_1.c.x))), 1i);
    let var_1 = arg_1.c.yx;
    var var_2 = -var_0.d;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_1.d, 25309i, u_input.a.x) | -u_input.a.zzw), ~u_input.a.ywy), arg_1.a, _wgslsmith_dot_vec4_i32(u_input.a, ~countOneBits(vec4<i32>(2147483647i, 1i, arg_1.d, -42136i))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), false, true), select(vec3<bool>(true, func_1(), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, false, true)), Struct_2(_wgslsmith_mod_u32(42380u, min(u_input.c.x, ~0u)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(any(vec2<bool>(false, true)), true, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1824f, -101f, 1321f) + vec3<f32>(-1249f, 1253f, -943f)), vec3<f32>(-168f, -118f, 1083f))), 1i));
    var var_1 = Struct_1(_wgslsmith_add_i32(firstTrailingBit(-753i), firstTrailingBit((i32(-1i) * -1i) ^ u_input.a.x)), ~(~max(2429u, 1u)), 28396i);
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.a.yw, u_input.a.yw) ^ 2147483647i, reverseBits(31612u), -firstTrailingBit(_wgslsmith_mod_i32(~u_input.a.x, ~u_input.b)));
    var_1 = Struct_1(u_input.a.x, ~u_input.c.x, -u_input.b);
    var_1 = Struct_1(~u_input.a.x, 40644u << (_wgslsmith_add_u32(u_input.c.x, ~(~1u)) % 32u), select(~_wgslsmith_clamp_i32(func_2(var_0), var_1.c, 12558i), 0i & var_1.c, any(select(select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_0.b.x, false, false), true), vec3<bool>(var_0.b.x, var_0.b.x, false), select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.b.x)))));
    var_1 = Struct_1(u_input.b, ~(firstTrailingBit(4294967295u ^ var_1.b) >> ((0u >> ((var_0.a & u_input.c.x) % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(-u_input.a & max(u_input.a, countOneBits(vec4<i32>(-1i, -56394i, 10635i, -1i))), vec4<i32>(-2147483647i, firstLeadingBit(func_2(var_0)), ~(i32(-1i) * -1i), (var_1.a << (41812u % 32u)) ^ -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 40192i, var_0.a);
}

