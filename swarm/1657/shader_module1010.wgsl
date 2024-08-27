struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 0i, 1i);

var<private> global1: vec3<u32> = vec3<u32>(0u, 79963u, 20084u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    global1 = ~countOneBits(arg_0.zyz);
    global1 = abs(arg_0.wxz);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-261f - 1100f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-726f)), _wgslsmith_f_op_f32(ceil(1419f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2262f)))))));
    let var_1 = select(vec2<bool>(true, -504f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) - var_0.x)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(reverseBits(u_input.c.x) > global0.x, global1.x <= arg_0.x), select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true));
    global1 = arg_0.xzw;
    return !vec4<bool>(any(var_1), 5384u > _wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(67128u, 22923u)), var_1.x, (~8150u ^ arg_0.x) >= 1u);
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = select(vec4<bool>(!(!arg_0.x) | arg_0.x, arg_0.x, arg_0.x, false), select(select(!(!vec4<bool>(true, arg_0.x, true, arg_0.x)), select(!vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, true, true, arg_0.x), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(true, false, true, true))), true), !(!select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, true, arg_0.x, true), vec4<bool>(false, true, arg_0.x, true))), arg_0.x), func_3(~vec4<u32>(u_input.d, u_input.d, 0u, _wgslsmith_sub_u32(u_input.d, global1.x))));
    var var_1 = any(vec4<bool>(var_0.x, !any(vec3<bool>(false, false, var_0.x)), select(func_3(vec4<u32>(0u, global1.x, 31210u, global1.x)).x, true, true), select(true, true, !var_0.x) && (arg_0.x && true)));
    global0 = firstLeadingBit(u_input.c.wzz);
    return vec2<bool>(all(vec4<bool>(true, true, !(!arg_0.x), true)), all(var_0));
}

fn func_4(arg_0: Struct_5) -> vec2<f32> {
    var var_0 = u_input.a;
    global1 = firstTrailingBit(~(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(6612u, u_input.b, global1.x), vec3<u32>(global1.x, 34218u, 4294967295u)), ~vec3<u32>(global1.x, u_input.d, 86183u), max(vec3<u32>(0u, 23675u, u_input.b), vec3<u32>(global1.x, global1.x, 34825u))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.b, 4294967295u), min(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(u_input.d, 1u, global1.x))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-223f + -902f))), _wgslsmith_f_op_f32(max(1506f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(799f)) + 516f))), -257f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-708f, -1000f, 644f), vec3<f32>(-1217f, -1009f, 267f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -573f), ~reverseBits(-_wgslsmith_clamp_i32(u_input.c.x, -13538i, 1791i)));
    var var_3 = arg_0;
    return var_1.yx;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(Struct_5(func_2(vec2<bool>(false, true)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, false, false), true)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-848f, _wgslsmith_div_f32(-1000f, 1068f)), -150f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1100f))), _wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(571f * -1012f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 144f) * _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(false, true, true), true))) * vec2<f32>(927f, 372f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(480f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, var_0.x)), true && all(vec4<bool>(true, true, true, false)))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), var_0.x));
    global1 = reverseBits(_wgslsmith_sub_vec3_u32(~select(~vec3<u32>(37089u, 10467u, 39276u), abs(vec3<u32>(u_input.d, global1.x, global1.x)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(9651u, global1.x, 4148u), ~vec3<u32>(u_input.b, global1.x, global1.x))));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var var_1 = Struct_1(any(select(vec4<bool>(u_input.c.x >= u_input.c.x, true, var_0.x < var_0.x, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), func_3(vec4<u32>(global1.x, u_input.b, 4294967295u, u_input.d))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false))), false);
    let var_2 = vec3<u32>(~firstLeadingBit(_wgslsmith_add_u32(abs(0u), global1.x)), u_input.b, global1.x);
    let var_3 = 24606i << (global1.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(2468f, var_0.x), -1797f, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzz, u_input.c.zxz), global0.x));
}

