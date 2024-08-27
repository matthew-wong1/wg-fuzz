struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<Struct_1, 2>;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - -142f)), 1086f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-178f, _wgslsmith_f_op_f32(240f - -1385f))), 466f, false))))));
    global1 = false;
    let var_1 = select(select(vec2<bool>(true, false), vec2<bool>(true, true), min(arg_0.x, arg_0.x) >= -2147483647i), vec2<bool>(211f < _wgslsmith_f_op_f32(abs(var_0)), true), true);
    let var_2 = global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.b.zx)))), 2u)];
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(abs(u_input.b.yx)) ^ _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(1u, var_2.b)), max(vec2<u32>(u_input.c.x, arg_1), vec2<u32>(9301u, arg_1)), u_input.c), var_2.c)), 2u)];
    return select(!vec3<bool>(_wgslsmith_div_f32(var_3.e, 504f) > _wgslsmith_f_op_f32(round(1000f)), true, true), select(vec3<bool>(var_2.d, true, all(!vec2<bool>(var_2.d, var_3.d))), !(!(!vec3<bool>(var_2.d, var_3.d, var_1.x))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_3.d, var_2.d), false), !select(vec3<bool>(false, var_1.x, var_3.d), vec3<bool>(false, var_1.x, var_2.d), vec3<bool>(var_1.x, true, false)), !select(vec3<bool>(var_3.d, var_3.d, true), vec3<bool>(var_3.d, var_1.x, var_1.x), vec3<bool>(true, false, false)))), !select(vec3<bool>(all(vec4<bool>(true, var_3.d, false, var_1.x)), var_2.d, false), vec3<bool>(!var_2.d, var_3.d, true), all(vec2<bool>(var_1.x, var_2.d))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1(vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(121282u, 0u), u_input.c.x), ~abs(u_input.b.x ^ u_input.c.x), firstTrailingBit(4294967295u)), ~(abs(1u) >> ((_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) << (u_input.b.x % 32u)) % 32u)), ~(~(~_wgslsmith_mod_vec2_u32(u_input.c, u_input.c))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-945f)))) * _wgslsmith_f_op_f32(1f - 578f)));
    var var_1 = _wgslsmith_div_vec2_u32(var_0.a.yy, vec2<u32>(1u, ~70140u));
    let var_2 = u_input.d;
    return vec3<u32>(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 4294967295u), 4294967295u);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1488f);
    var var_1 = u_input.c.x;
    let var_2 = Struct_1(func_4(any(func_3(vec4<i32>(-2147483647i, 5225i, 1i, u_input.a.x), 4294967295u)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false)) | max(vec3<u32>(0u, abs(u_input.b.x), u_input.c.x), countOneBits(vec3<u32>(0u, 1u, 36010u) >> (vec3<u32>(0u, 0u, u_input.b.x) % vec3<u32>(32u)))), ~(~firstLeadingBit(25160u)) & u_input.b.x, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b.zx, abs(countOneBits(vec2<u32>(u_input.c.x, u_input.b.x)))), u_input.b.yy), all(func_3(vec4<i32>(reverseBits(0i), 0i, 0i, abs(u_input.d)), ~select(4294967295u, u_input.b.x, false)).xy), 532f);
    let var_3 = ~14455i;
    var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, 197f, 1000f) + vec3<f32>(-1000f, -2767f, 2419f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, var_2.e, -1000f) + vec3<f32>(var_2.e, var_2.e, -1074f)))), vec3<f32>(_wgslsmith_f_op_f32(round(-956f)), 795f, var_2.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f + -430f)))));
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(arg_1, u_input.c.x, _wgslsmith_mod_u32(select(arg_1, u_input.b.x, all(vec2<bool>(false, true))), arg_1)), _wgslsmith_sub_u32(~12228u | (64153u << (arg_1 % 32u)), u_input.b.x), u_input.b.zx, true, _wgslsmith_f_op_f32(select(-1622f, _wgslsmith_f_op_f32(func_2()), all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))))));
    global0 = array<Struct_1, 2>();
    let var_1 = !select(!vec4<bool>(!var_0.d, 1000f <= var_0.e, !var_0.d, var_0.d | var_0.d), vec4<bool>(!any(vec3<bool>(true, var_0.d, true)), true, false, false), vec4<bool>(var_0.d, false, var_0.e == _wgslsmith_f_op_f32(f32(-1f) * -1618f), var_0.d | (var_0.d & var_0.d)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.e, -741f, -250f)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, var_0.e)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, arg_0, arg_0) + vec3<f32>(var_0.e, arg_0, var_0.e)))), vec3<f32>(_wgslsmith_f_op_f32(-689f * var_0.e), _wgslsmith_f_op_f32(ceil(var_0.e)), arg_0));
    let var_3 = _wgslsmith_f_op_f32(686f * -514f);
    return Struct_1(select(~(~var_0.a) | vec3<u32>(0u, _wgslsmith_div_u32(1u, arg_1), u_input.c.x), reverseBits(_wgslsmith_mult_vec3_u32(~u_input.b, select(u_input.b, u_input.b, vec3<bool>(false, var_1.x, true)))), !var_1.x), ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 1u), vec2<u32>(1u, var_0.c.x)) | ~u_input.b.x) | u_input.b.x) | _wgslsmith_div_u32(~var_0.c.x, var_0.b), abs(min(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, 1u), vec2<u32>(u_input.b.x, 0u) ^ vec2<u32>(59074u, 45421u)), ~var_0.a.xz)), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.x)))) * _wgslsmith_f_op_f32(-715f + _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global1 = !var_0 | !var_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, _wgslsmith_f_op_f32(ceil(-399f))));
    var var_2 = var_1.x;
    var var_3 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), 1u);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_3.b & var_3.b, 70028u, 1u), ~vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 24728u), _wgslsmith_mod_u32(min(var_3.b, u_input.c.x), u_input.c.x), _wgslsmith_div_u32(4294967295u, u_input.c.x), 0u)), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b, 84326u, u_input.c, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-621f)))))));
    var var_1 = -876f;
    var_1 = _wgslsmith_f_op_f32(trunc(-109f));
    let var_2 = func_1();
    let var_3 = Struct_1(var_0.a, 1u, ~countOneBits(firstTrailingBit(~u_input.b.yx)), false, 1421f);
    var var_4 = func_5(var_2.e, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1000f))), ~_wgslsmith_mult_u32(22486u << (var_0.b % 32u), var_2.a.x)).a.x);
    var_4 = func_5(645f, ~var_3.a.x);
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x);
}

