struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = vec4<f32>(1084f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(sign(arg_2.a))), arg_1, 1f);
    let var_1 = _wgslsmith_f_op_f32(arg_0.a + 472f);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-751f)), _wgslsmith_f_op_f32(arg_1 * -1680f), _wgslsmith_f_op_f32(round(var_0.x))) + vec3<f32>(arg_0.d.d.a, -543f, _wgslsmith_f_op_f32(1372f + arg_0.b.x)))))));
}

fn func_1() -> vec3<f32> {
    var var_0 = u_input.a;
    let var_1 = -10588i;
    var_0 = firstTrailingBit(abs(u_input.a));
    var var_2 = abs(firstTrailingBit(~43232u));
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(-5241i, firstTrailingBit(abs(2147483647i)), -15614i), 0i, _wgslsmith_div_i32(var_1, 849i)) & vec3<i32>(-var_1 >> (~(~u_input.a) % 32u), _wgslsmith_div_i32(var_1, var_1), abs(var_1));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(257f, -1000f, 543f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(172f, -1098f, -3358f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, 180f, -2143f)) + _wgslsmith_f_op_vec3_f32(func_2(Struct_3(-1000f, vec3<f32>(-1000f, -1936f, -1261f), vec2<bool>(true, true), Struct_2(vec2<u32>(1u, 35130u), u_input.a, vec2<u32>(u_input.a, u_input.a), Struct_1(-444f), vec2<f32>(-226f, 1340f))), -111f, Struct_1(263f), vec4<i32>(41839i, -2147483647i, var_3.x, var_3.x)))))));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = ~vec2<i32>(abs(54259i), -_wgslsmith_clamp_i32(2147483647i, 16014i, 35359i) & _wgslsmith_dot_vec4_i32(min(vec4<i32>(12295i, -1i, 59751i, -1i), vec4<i32>(2147483647i, -25926i, 1310i, 1i)), max(vec4<i32>(-11576i, 35451i, 0i, 2147483647i), vec4<i32>(-1i, -25942i, -2147483647i, -34608i))));
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -363f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -537f, 608f));
    let var_4 = -4491i >> (_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(7150u, u_input.a, 12564u), vec3<u32>(4294967295u, u_input.a, 46027u) << (vec3<u32>(46767u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 0u, u_input.a), vec3<u32>(49680u, 48503u, 25559u)), ~vec3<u32>(0u, 4294967295u, u_input.a)), select(select(vec3<bool>(true, true, var_1), vec3<bool>(false, var_1, var_1), var_1), !vec3<bool>(var_1, true, true), select(vec3<bool>(true, false, false), vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, var_1)))), vec3<u32>(~_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a) >> (min(u_input.a, 11490u) % 32u), u_input.a)) % 32u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-529f, var_2.a, false)) * var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    let var_1 = Struct_1(var_0.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) - _wgslsmith_f_op_f32(min(-1146f, var_0.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-1321f, var_1.a), _wgslsmith_f_op_f32(trunc(-378f)))), _wgslsmith_f_op_f32(round(-2173f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1588f), var_0.x, var_1.a)));
    var var_4 = ~((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 1u, 0u)), max(u_input.a, 11584u), 64089u) ^ _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 10502u), vec3<bool>(false, false, true)), vec3<u32>(0u, u_input.a, 72459u))) & vec3<u32>(_wgslsmith_mod_u32(48427u, firstTrailingBit(u_input.a)), ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, u_input.a, 70715u)), _wgslsmith_div_vec3_u32(vec3<u32>(15046u, u_input.a, u_input.a), vec3<u32>(1u, 0u, u_input.a)))));
    var var_5 = Struct_3(313f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.wwy))))), select(vec2<bool>((86309u << (var_4.x % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_4.xz), select(true, true, true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false)), vec2<bool>(true, true)), true), Struct_2(reverseBits(vec2<u32>(0u, u_input.a)), u_input.a, vec2<u32>(u_input.a, ~90670u), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1812f, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-34025i, 0i))), vec2<i32>(-1i) * -vec2<i32>(-40286i, 12117i)), max(2147483647i, _wgslsmith_mult_i32(-1381i, _wgslsmith_dot_vec3_i32(vec3<i32>(8997i, 2147483647i, 11836i), vec3<i32>(39695i, 34250i, 2147483647i))))), -vec3<i32>(-2791i, 7587i, -1i));
}

