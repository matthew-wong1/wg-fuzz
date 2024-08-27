struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = vec4<i32>(abs(~1i), u_input.a, u_input.a, -u_input.a) | -abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, u_input.a, u_input.a), vec4<i32>(2147483647i, 343i, 14539i, 1218i)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    global0 = any(arg_1.xzw);
    global0 = any(vec4<bool>(arg_0.e.x, !arg_1.x, _wgslsmith_dot_vec2_u32(~arg_0.d.xz, arg_0.d.yy) < ~(~1u), all(!select(arg_1, arg_1, arg_1))));
    let var_1 = arg_0;
    return var_1.c;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global0 = ~arg_1.x > ~abs(arg_1.x);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f + arg_0)))));
    let var_1 = Struct_3(-577f, Struct_1(_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_0, Struct_1(arg_0), vec3<f32>(arg_0, -141f, -1467f), vec3<u32>(1u, arg_1.x, 29898u), vec2<bool>(true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))))))), min(arg_1.zwz ^ arg_1.wxw, ~arg_1.zyw), vec2<bool>(!((arg_0 <= arg_0) || (u_input.a < u_input.a)), all(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1187f)) + _wgslsmith_f_op_f32(f32(-1f) * -542f));
    let var_2 = 1u;
    return ~abs(var_1.d.x ^ var_2) & ~_wgslsmith_add_u32(0u, _wgslsmith_div_u32(var_2, _wgslsmith_mod_u32(74182u, var_2)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> Struct_3 {
    global0 = true;
    global0 = all(vec3<bool>(!all(vec3<bool>(true, true, true)), ~0u != func_2(-636f, vec4<u32>(15383u, 0u, 4294967295u, 0u)), func_2(1159f, vec4<u32>(29142u, 53959u, 0u, 33836u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(37815u, 7358u), vec2<u32>(0u, 4294967295u)))) && (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-1093f)))))) != arg_1);
    let var_0 = arg_2;
    let var_1 = ~vec3<i32>(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, 2147483647i, u_input.a), vec3<i32>(var_0.x, 20678i, 0i) & vec3<i32>(var_0.x, arg_2.x, 20482i))), max(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 37220i, arg_2.x, 2147483647i), firstTrailingBit(vec4<i32>(-2147483647i, arg_0, arg_2.x, -20214i)))), ~(~reverseBits(u_input.a)));
    global0 = min(-2147483647i, arg_0) != (abs(-u_input.a) << (~(~_wgslsmith_clamp_u32(4294967295u, 0u, 80705u)) % 32u));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(trunc(509f)), Struct_1(-1214f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(581f, 1044f, arg_1), vec3<f32>(arg_1, arg_1, 544f), vec3<bool>(true, false, true))), vec3<u32>(0u, 10883u, 0u), vec2<bool>(true, true)), vec4<bool>(true, true, false, select(false, false, false)))).x)), Struct_1(arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1030f, arg_1, 289f), vec3<f32>(1016f, arg_1, -562f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(386f)), 1431f, 1394f))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 0u), min(1u, 20390u)) | func_2(_wgslsmith_f_op_f32(f32(-1f) * -169f), vec4<u32>(1u, 1u, 1u, 1u)), ~11696u, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(2747u, 44882u)), max(countOneBits(vec2<u32>(16046u, 4294967295u)), select(vec2<u32>(4294967295u, 34762u), vec2<u32>(4294967295u, 0u), vec2<bool>(true, true))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), 1013f >= arg_1), vec2<bool>(true, true), true), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_3(func_1(max(-1i, _wgslsmith_add_i32(-2147483647i, arg_1.x)), 1000f, arg_1.wy & (vec2<i32>(arg_1.x, u_input.a) ^ vec2<i32>(-12388i, arg_1.x))), select(!select(vec4<bool>(arg_0.e.x, arg_0.e.x, false, arg_0.e.x), vec4<bool>(arg_0.e.x, true, arg_0.e.x, arg_0.e.x), vec4<bool>(false, arg_0.e.x, arg_0.e.x, false)), vec4<bool>(arg_0.e.x, arg_0.e.x, true, arg_0.e.x), any(!vec2<bool>(false, arg_0.e.x))))).x, arg_0.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -1000f, -3735f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1580f, -392f, arg_0.a)))), arg_0.e.x)))), vec3<u32>(42941u, firstTrailingBit(~(~arg_0.d.x)), arg_0.d.x), select(arg_0.e, select(arg_0.e, !arg_0.e, arg_0.e.x), -26348i < (arg_1.x >> (arg_0.d.x % 32u))));
    return abs(-min(abs(vec2<i32>(u_input.a, arg_1.x)), abs(-vec2<i32>(arg_1.x, 46060i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(-func_4(func_1(-2147483647i, 1274f, vec2<i32>(0i, u_input.a)), vec4<i32>(u_input.a >> (1u % 32u), _wgslsmith_mod_i32(u_input.a, 44258i), 1i, abs(u_input.a))), -select((vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-19872i, 2147483647i)) ^ -vec2<i32>(2147483647i, u_input.a), reverseBits(~vec2<i32>(u_input.a, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -553f);
    var_0 = ~(~((firstTrailingBit(vec2<i32>(var_0.x, 52060i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(30708i, var_0.x))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_2 = Struct_2(Struct_1(var_1), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1, var_1, true)), var_1)), Struct_1(1f), abs(abs(vec3<u32>(45636u, func_1(8141i, -308f, vec2<i32>(var_0.x, 2910i)).d.x, countOneBits(0u)))), vec3<u32>(808u, 4294967295u, abs(4294967295u)));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0i << (1u % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(var_1 - 1083f), _wgslsmith_f_op_f32(max(var_1, 1797f)), -431f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2067f), -640f, var_2.c.a, _wgslsmith_f_op_f32(-var_2.c.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, 1051f, -196f, var_2.b.a) + vec4<f32>(var_2.c.a, var_1, -1094f, -1000f))))) - vec4<f32>(var_2.a.a, var_2.c.a, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -556f) + _wgslsmith_f_op_f32(select(var_2.b.a, var_2.a.a, true))))), -535f);
}

