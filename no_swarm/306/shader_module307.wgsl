struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(~firstLeadingBit(firstTrailingBit(u_input.b.yxw)), vec3<u32>(~30654u ^ u_input.a, reverseBits(arg_1), 4294967295u), min(vec3<u32>(4294967295u, 1u, u_input.a), ~vec3<u32>(4294967295u, 4294967295u, 45276u))) ^ u_input.b.zzx;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_div_f32(arg_0, arg_0)))) - -726f) + arg_2.x);
    global0 = arg_2.x;
    global0 = 779f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x)))))) - 1000f);
    return select(!(!any(vec4<bool>(true, true, true, true))), _wgslsmith_mod_i32(abs(~0i), -31917i) < _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1645i, 59056i, 45552i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, -27571i), vec3<i32>(-1i, -1i, 18533i)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), firstLeadingBit(vec3<i32>(10011i, 1i, -9890i))), true);
}

fn func_2() -> vec3<u32> {
    let var_0 = func_3(-774f, _wgslsmith_add_u32(u_input.b.x, min(reverseBits(_wgslsmith_add_u32(u_input.a, u_input.a)), 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, -271f, -563f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1157f, -1016f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 798f, _wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(-647f + _wgslsmith_div_f32(-909f, -746f)))) - vec3<f32>(-968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-720f, -1422f) + -1353f) * -1457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(ceil(-211f)))))));
    var var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0, false), true));
    return select(~u_input.b.wxw, vec3<u32>(67534u, u_input.b.x, ~(u_input.b.x << (u_input.a % 32u))) | reverseBits(u_input.b.wxx), select(!vec3<bool>(true, var_0, var_0), !vec3<bool>(!var_0, true, false && var_0), false));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_dot_vec3_u32(~(min(u_input.b.wzy, _wgslsmith_mult_vec3_u32(u_input.b.xyx, arg_0)) << (_wgslsmith_sub_vec3_u32(~arg_1, arg_1) % vec3<u32>(32u))), ~select(~arg_0, vec3<u32>(0u, arg_2.x, arg_1.x), all(vec4<bool>(false, true, false, false))) >> (arg_1 % vec3<u32>(32u)));
    let var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(!all(vec3<bool>(true, false, true)), true), vec2<bool>(true, true)));
    var var_3 = vec3<i32>(-1i, ~(-27544i), ~(-reverseBits(4180i))) ^ select(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(52515i, 2147483647i), vec2<i32>(1i, 0i)), _wgslsmith_mod_i32(-2147483647i, -1i), ~2147483647i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(16240i, -15850i, 47881i) << (vec3<u32>(arg_0.x, arg_2.x, arg_2.x) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, -32532i, 33095i)), select(vec3<bool>(true, false, true), !(!vec3<bool>(false, var_2.a.x, false)), !any(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true))));
    let var_4 = var_2;
    return vec2<bool>(all(select(select(select(vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x), vec4<bool>(true, var_4.a.x, var_4.a.x, false), vec4<bool>(false, true, var_4.a.x, true)), select(vec4<bool>(true, var_4.a.x, var_4.a.x, false), vec4<bool>(true, true, true, var_4.a.x), vec4<bool>(true, var_4.a.x, true, var_4.a.x)), false != var_4.a.x), select(select(vec4<bool>(true, var_4.a.x, var_2.a.x, var_4.a.x), vec4<bool>(var_2.a.x, var_4.a.x, true, false), vec4<bool>(var_2.a.x, true, var_4.a.x, var_2.a.x)), !vec4<bool>(var_4.a.x, true, false, true), var_2.a.x & var_4.a.x), any(var_4.a) && all(vec3<bool>(var_2.a.x, var_4.a.x, var_2.a.x)))), true);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global0 = arg_1;
    var var_0 = Struct_1(func_4(_wgslsmith_add_vec3_u32(func_2() | firstLeadingBit(u_input.b.wzy), ~func_2()), min(u_input.b.yzz, abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 28450u)))), ~u_input.b.zxz));
    var_0 = arg_3;
    let var_1 = vec3<bool>(var_0.a.x, all(!select(select(vec4<bool>(false, var_0.a.x, arg_3.a.x, false), vec4<bool>(var_0.a.x, false, var_0.a.x, arg_3.a.x), vec4<bool>(false, false, var_0.a.x, arg_3.a.x)), !vec4<bool>(true, var_0.a.x, var_0.a.x, true), arg_3.a.x & arg_3.a.x)), func_4(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.a, 4294967295u, 83666u)), vec3<u32>(13593u, u_input.a, 0u)), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(arg_0, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(68972u, u_input.a), vec2<u32>(0u, 0u)))), ~vec3<u32>(9857u, 1u, ~1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, reverseBits(arg_0), ~11521u), _wgslsmith_mod_vec3_u32(countOneBits(u_input.b.wxw), _wgslsmith_sub_vec3_u32(vec3<u32>(27237u, 1u, 6071u), vec3<u32>(arg_0, arg_0, arg_0))))).x);
    var var_2 = Struct_1(arg_3.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * _wgslsmith_f_op_f32(trunc(-906f)));
    var var_0 = ~(~(max(0u, u_input.a) >> (func_1(~30996u, -1136f, firstLeadingBit(vec3<i32>(-2147483647i, -6449i, 44300i)), Struct_1(vec2<bool>(false, false))) % 32u)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1135f, -1000f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-542f)) - _wgslsmith_f_op_f32(min(-1034f, -815f))))), 237f));
    let var_1 = ~u_input.a >= _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.a)) ^ ~select(u_input.a, u_input.b.x, false), 28257u);
    var var_2 = Struct_1(!func_4(vec3<u32>(func_1(30442u, -213f, vec3<i32>(5249i, 1i, 0i), Struct_1(vec2<bool>(false, var_1))), u_input.a, ~86784u), ~vec3<u32>(1u, 0u, 0u), ~vec3<u32>(4294967295u, u_input.a, u_input.b.x) | ~vec3<u32>(u_input.a, 0u, u_input.a)));
    let var_3 = vec2<u32>(6863u, firstTrailingBit(u_input.b.x));
    let var_4 = !vec2<bool>(true, func_4(abs(~vec3<u32>(4294967295u, u_input.a, 1u)), _wgslsmith_sub_vec3_u32(u_input.b.zwx, u_input.b.zyz), u_input.b.wwx).x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(~_wgslsmith_div_i32(2147483647i, -1i), -1i, _wgslsmith_div_i32(-49012i, _wgslsmith_div_i32(34675i, -29123i)), -15658i)), _wgslsmith_f_op_f32(f32(-1f) * -512f));
}

