struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_mod_vec3_i32(reverseBits(-vec3<i32>(-9204i, -24821i, -52962i)) >> (vec3<u32>(max(u_input.a, _wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.a), ~vec3<u32>(58466u, 3913u, u_input.a)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, 5757u)))) % vec3<u32>(32u)), countOneBits(vec3<i32>(47419i, ~1i, _wgslsmith_mult_i32(60756i, min(0i, -33726i)))));
    let var_1 = ~var_0.x;
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_mod_i32(-33240i, ~(~var_1));
    var_3 = var_1;
    return u_input.a >= 0u;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1997f)), -3899f)), 378f), -117f, -1608f, 168f);
    var var_1 = Struct_1(true, vec4<bool>(false, true, func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.wxz - vec3<f32>(-1107f, 536f, var_0.x))))), any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)))), countOneBits(-_wgslsmith_div_i32(~arg_0, _wgslsmith_mult_i32(arg_0, -59871i))), _wgslsmith_f_op_f32(exp2(var_0.x)));
    let var_2 = ~1u;
    let var_3 = Struct_2(reverseBits(u_input.a));
    var var_4 = var_1.d;
    return var_1.c ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_1.c, arg_0, 8209i), _wgslsmith_clamp_vec4_i32(vec4<i32>(12707i, var_1.c, -1i, arg_0), vec4<i32>(arg_0, var_1.c, 2147483647i, var_1.c), vec4<i32>(arg_0, 1i, var_1.c, arg_0)) << (~vec4<u32>(var_3.a, var_3.a, 4294967295u, 55163u) % vec4<u32>(32u))), -min(max(vec4<i32>(0i, 39580i, -16332i, 0i), vec4<i32>(-4120i, -53983i, 10118i, var_1.c)), ~vec4<i32>(arg_0, var_1.c, arg_0, 4516i)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mod_vec3_i32(min(-vec3<i32>(-1i, 35319i, 24368i), -vec3<i32>(2820i, -19951i, -1i) ^ select(vec3<i32>(1i, -23938i, 11041i), vec3<i32>(-1i, 38564i, 13359i), vec3<bool>(true, true, false))) >> (firstLeadingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 17891u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 55721u)), vec3<u32>(1u, 1u, 44374u), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))) % vec3<u32>(32u)), vec3<i32>(i32(-1i) * -(~(-40331i)), -(~abs(-2147483647i)), func_2(-1i)));
    var var_1 = Struct_2((~31084u | _wgslsmith_mult_u32(min(u_input.a, 1u), ~u_input.a)) | ~(u_input.a | 1u));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-33679i, -1i, 0i, var_0.x), vec4<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), -var_0.x, 7416i, -35521i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)), vec4<i32>(2147483647i, -2147483647i, 28250i, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(27494i, -2147483647i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, -1i, var_0.x))), min(vec4<i32>(var_0.x, -2147483647i, var_0.x, 2147483647i) << (vec4<u32>(77173u, 21394u, 1u, var_1.a) % vec4<u32>(32u)), vec4<i32>(var_0.x, var_0.x, 0i, -1i) ^ vec4<i32>(-3058i, var_0.x, var_0.x, 1i)))), _wgslsmith_dot_vec2_i32(~(~var_0.zy), var_0.yx), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, firstLeadingBit(abs(-32749i)), var_0.x), min(vec3<i32>(2147483647i, -1i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)) & ((vec3<i32>(var_0.x, 3943i, 0i) >> (vec3<u32>(0u, 18371u, 1u) % vec3<u32>(32u))) << (~vec3<u32>(36109u, u_input.a, 0u) % vec3<u32>(32u)))));
    let var_3 = 4294967295u;
    var_0 = vec3<i32>(2147483647i, 0i, -14003i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, ~u_input.a < _wgslsmith_clamp_u32(4294967295u, ~38629u, 9883u), !(any(vec4<bool>(true, false, false, true)) && func_1()));
    var var_1 = !vec2<bool>(select(var_0.x, var_0.x && (false != var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -867f) <= _wgslsmith_f_op_f32(round(-107f))), var_0.x);
    let var_2 = Struct_1(true, select(vec4<bool>(true || var_0.x, true, true | var_1.x, false), select(var_0, vec4<bool>(true, true, func_1(), true), var_0), var_0), 26378i ^ (-2147483647i >> ((_wgslsmith_mod_u32(0u, 16396u) & ~u_input.a) % 32u)), 982f);
    var_1 = select(select(select(!(!vec2<bool>(true, var_1.x)), select(select(var_0.wx, vec2<bool>(var_1.x, true), vec2<bool>(false, var_2.b.x)), select(vec2<bool>(var_2.a, var_2.a), var_2.b.zy, vec2<bool>(var_1.x, var_0.x)), var_1.x), vec2<bool>(var_1.x && true, var_0.x)), !vec2<bool>(true, var_1.x != true), all(select(var_2.b, select(vec4<bool>(var_2.a, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_2.b.x, var_2.a), false), vec4<bool>(var_0.x, var_0.x, false, true)))), !vec2<bool>(!var_1.x, any(var_2.b.zz)), u_input.a <= ~40081u);
    let var_3 = var_2.b.yx;
    var var_4 = Struct_2(reverseBits(u_input.a));
    let var_5 = Struct_2(0u);
    var_1 = !vec2<bool>(true, all(var_2.b.zxx));
    var var_6 = abs(0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(-661f + 1090f)), _wgslsmith_f_op_f32(step(-533f, var_2.d)), _wgslsmith_div_f32(-1558f, _wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(482f, var_2.d, var_2.d), vec3<f32>(var_2.d, var_2.d, 172f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.d, var_2.d, var_2.d))))), vec3<f32>(-578f, _wgslsmith_f_op_f32(max(var_2.d, var_2.d)), _wgslsmith_f_op_f32(step(-158f, 872f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_div_u32(~(~1u), 4294967295u));
}

