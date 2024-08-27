struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 59126u, 4294967295u));

var<private> global1: array<bool, 13> = array<bool, 13>(true, false, false, false, true, true, false, true, false, false, true, true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec3<f32> {
    global0 = Struct_1(vec3<u32>(~1u, global0.a.x, 0u));
    let var_0 = -_wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(26885i, -5983i, 11853i, u_input.a.x) & vec4<i32>(2147483647i, u_input.a.x, 11600i, -30198i)), ~vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), true), firstLeadingBit(~(~u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(210f)), _wgslsmith_f_op_f32(-arg_1)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 521f) + vec2<f32>(arg_1, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -752f), vec2<f32>(arg_1, -874f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1450f, 1691f)) * vec2<f32>(981f, arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, -601f)))), !global1[_wgslsmith_index_u32(global0.a.x, 13u)])));
    global1 = array<bool, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1762f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - var_1.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))))), -1682f);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    let var_1 = var_0;
    let var_2 = Struct_1(~global0.a);
    let var_3 = Struct_2(u_input.a.wzx, var_2.a.yy, var_1, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(ceil(880f))))))));
    return Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a, var_2.a), var_3.c.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = array<bool, 13>();
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(1i), u_input.a.x, ~u_input.a.x), u_input.a.xyx), global0.a.zx, func_2(vec2<i32>(~_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, _wgslsmith_f_op_f32(step(607f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -911f))))));
    var_0 = Struct_2(vec3<i32>(select(_wgslsmith_mult_i32(23923i, var_0.a.x), var_0.a.x, true), 2147483647i, ~u_input.a.x) & vec3<i32>(var_0.a.x, -select(-2147483647i, var_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]), var_0.a.x), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, 51472u), min(global0.a.zz, vec2<u32>(global0.a.x, 27779u)), vec2<u32>(arg_0.a.x, arg_1.a.x)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 13534u), vec3<u32>(1u, arg_1.a.x, arg_1.a.x)), u_input.b)), func_2(vec2<i32>(~(~(-1i)), abs(1i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-113f, _wgslsmith_f_op_f32(415f + -2817f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)) + _wgslsmith_div_f32(1270f, 973f)), global1[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_f_op_f32(-var_0.d.x)));
    var_0 = Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, var_0.a.x, 3707i) & var_0.a, var_0.a), max(select(vec2<u32>(0u, global0.a.x), select(~vec2<u32>(global0.a.x, arg_0.a.x), reverseBits(vec2<u32>(arg_1.a.x, global0.a.x)), vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.a.x, 13u)], global1[_wgslsmith_index_u32(var_0.c.a.x, 13u)])), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 13u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a.x, 13u)]), -414f < var_0.d.x)), arg_1.a.zx), func_2(var_0.a.zz), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x))), -1110f)), var_0.d.x, _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-240f, var_0.d.x))))));
    let var_1 = global1[_wgslsmith_index_u32(75251u, 13u)];
    return _wgslsmith_f_op_f32(min(-503f, 1000f));
}

fn func_1() -> Struct_2 {
    return Struct_2(u_input.a.wyy << (vec3<u32>((4294967295u | u_input.b) | ~0u, 0u, ~firstTrailingBit(28096u)) % vec3<u32>(32u)), vec2<u32>(abs(_wgslsmith_mult_u32(global0.a.x, global0.a.x)), ~0u), Struct_1(min(~(~global0.a), vec3<u32>(abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), global0.a), _wgslsmith_mult_u32(u_input.b, global0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(u_input.a.yy), Struct_1(vec3<u32>(0u, u_input.b, global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(706f, 1170f))))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~u_input.a.x;
    var_0 = 17645i;
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c.a.x), global0.a.xy), 68181u), 4294967295u), u_input.b), 62926u);
    let var_2 = arg_0;
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(countOneBits(var_1.x), 623u >> (arg_0.c.a.x % 32u), ~(~1u)), _wgslsmith_div_u32(~(~var_2.b.x) | arg_0.b.x, arg_0.b.x));
    return func_2(func_1().a.zz);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = func_5(func_1());
    global1 = array<bool, 13>();
    var_0 = arg_0;
    let var_1 = !vec4<bool>(all(vec3<bool>(all(vec4<bool>(false, arg_2.x, global1[_wgslsmith_index_u32(u_input.b, 13u)], arg_2.x)), arg_2.x & false, all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(18500u, 13u)], true)))), arg_2.x || true, true, true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f));
    return var_1.wz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_6(func_5(func_1()), 34761i, vec3<bool>(true, true, true), ~max(vec4<i32>(u_input.a.x, 31783i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x))));
    var var_1 = abs(u_input.a.zz) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), ~vec4<u32>(1u, global0.a.x, 28336u, 24598u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, u_input.b, global0.a.x), vec4<u32>(1u, 4294967295u, global0.a.x, 1u)) ^ vec4<u32>(0u, 31550u, 12634u, 1u)), 36915u) % vec2<u32>(32u));
    var var_2 = ~(~93329i);
    global1 = array<bool, 13>();
    var var_3 = min(~(-2147483647i), u_input.a.x);
    global1 = array<bool, 13>();
    var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(30278u, 33910u)), ~vec2<u32>(func_5(Struct_2(vec3<i32>(-26513i, 23114i, u_input.a.x), global0.a.yx, Struct_1(vec3<u32>(u_input.b, 32868u, global0.a.x)), vec3<f32>(876f, 2159f, -1520f))).a.x, global0.a.x)), ~select(~(~25883u), abs(0u), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 13u)], true, false))), max(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstLeadingBit(72930i), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.wx), ~(-1i)), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(select(1481f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, 1983f)).x))), var_0.x)));
}

