struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-2422f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(679f, -1217f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0 - var_0))))), ~5628u, vec4<i32>(u_input.b, u_input.b, (-u_input.b << (~4294967295u % 32u)) << (_wgslsmith_mult_u32(arg_1, 4294967295u) % 32u), max(abs(max(-1i, -26296i)), max(_wgslsmith_mod_i32(u_input.b, 2147483647i), ~(-2147483647i)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f - var_1.a))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.a)))));
    var_2 = var_1.a;
    let var_3 = abs(0u);
    return var_3;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = ~vec4<u32>(u_input.a.x >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(arg_0, arg_0), ~arg_0.x) % 32u), ~(_wgslsmith_mod_u32(arg_0.x, arg_0.x) << (1u % 32u)), 0u, ~arg_0.x);
    var var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1469f * 2157f))))), _wgslsmith_dot_vec3_u32(max(countOneBits(arg_0.wzw), ~_wgslsmith_mult_vec3_u32(vec3<u32>(76710u, 925u, 47530u), var_0.zzy)), vec3<u32>(u_input.a.x, max(func_3(false, u_input.a.x), var_0.x), var_0.x)), vec4<i32>(abs(u_input.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -4878i, u_input.b) & vec4<i32>(u_input.b, u_input.b, 2889i, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), i32(-1i) * -u_input.b), 11993i, u_input.b));
    var var_3 = Struct_3(Struct_1(597f, countOneBits(u_input.a.x), var_2.c));
    let var_4 = true;
    return var_2.c.x;
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_mod_vec3_i32(-vec3<i32>(func_2(vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u)), u_input.b | u_input.b, u_input.b), vec3<i32>(i32(-1i) * -u_input.b, _wgslsmith_div_i32(countOneBits(35570i), _wgslsmith_sub_i32(2147483647i, u_input.b)), u_input.b));
    let var_1 = Struct_2(-u_input.b, _wgslsmith_f_op_f32(354f - 962f), select(vec3<bool>(!any(vec3<bool>(false, false, false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), select(all(vec4<bool>(false, false, true, true)), true, true)), vec3<bool>(true, all(vec2<bool>(true, true)), false), vec3<bool>(!any(vec3<bool>(false, true, true)), false, 1u <= (u_input.a.x & u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -789f), _wgslsmith_f_op_f32(floor(-994f))))), _wgslsmith_mult_u32(u_input.a.x, 62353u) & (_wgslsmith_add_u32(1u, u_input.a.x) >> (~1u % 32u)), abs(countOneBits(-vec4<i32>(16414i, u_input.b, -2170i, -21445i)))));
    var var_2 = vec3<f32>(-610f, var_1.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, var_1.b), 1068f), _wgslsmith_f_op_f32(max(var_1.d.a, _wgslsmith_f_op_f32(floor(1243f)))))), var_1.b));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x * var_1.d.a), _wgslsmith_f_op_f32(select(var_2.x, 2178f, true)), var_1.c.x)) + _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(147f * var_2.x))))));
    var_3 = -409f;
    return -146f;
}

fn func_4(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = firstLeadingBit(func_3(false, max(min(u_input.a.x, u_input.a.x), 91256u))) << (25968u % 32u);
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, ~19564u), select(vec3<u32>(1u, 26239u, firstTrailingBit(arg_0)) & (reverseBits(vec3<u32>(51877u, u_input.a.x, 4294967295u)) | (vec3<u32>(54194u, arg_0, arg_0) ^ vec3<u32>(arg_0, 51177u, 75281u))), vec3<u32>(arg_0 & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0, u_input.a.x)), ~arg_0, 53143u), vec3<bool>(true, true, true)));
    var var_2 = Struct_2(min(2467i, max(-(i32(-1i) * -1i), u_input.b)), _wgslsmith_f_op_f32(-arg_1), vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), any(vec2<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, true)))), any(vec2<bool>(all(vec2<bool>(false, true)), true))), Struct_1(arg_1, select(~arg_0, 32346u, select(true, any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)))), ~(-vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b))));
    var_2 = Struct_2(u_input.b, _wgslsmith_f_op_f32(-934f - arg_1), var_2.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), select(4294967295u | ~var_2.d.b, firstTrailingBit(9245u), any(!var_2.c.zz)), countOneBits(-vec4<i32>(u_input.b, u_input.b, 92277i, u_input.b)) ^ vec4<i32>(u_input.b, func_2(vec4<u32>(12671u, var_2.d.b, u_input.a.x, arg_0)), _wgslsmith_mult_i32(-1i, 32803i), var_2.d.c.x)));
    var var_3 = func_3(true, var_1.x) > 4294967295u;
    return 8094u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = u_input.a.x;
    var_1 = 33885u;
    var_1 = func_4(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + -583f));
    var_1 = u_input.a.x & (u_input.a.x >> (u_input.a.x % 32u));
    var_1 = max(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.b), ~min(25127i, u_input.b), 1i, u_input.b), ~_wgslsmith_sub_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, reverseBits(vec2<u32>(1u, u_input.a.x)), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)))), ~(~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -2602f) * -249f)), vec4<i32>(_wgslsmith_div_i32(17244i, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, -2147483647i)))), -51515i, ~(~u_input.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -1i, 1i, 0i), select(vec4<i32>(u_input.b, u_input.b, 2147483647i, 0i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), true)) | ~11172i));
}

