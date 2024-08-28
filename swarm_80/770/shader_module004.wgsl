struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> i32 {
    var var_0 = any(vec2<bool>(!all(vec2<bool>(false, false)), true));
    let var_1 = vec2<i32>(u_input.a.x, -2147483647i);
    return ~(-select(1i, ~(~20083i), select(select(true, true, false), all(vec3<bool>(true, true, false)), true)));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = -countOneBits(~reverseBits(vec2<i32>(u_input.a.x, arg_0)) >> (vec2<u32>(73801u, arg_1.b.x) % vec2<u32>(32u)));
    var var_1 = 28571i;
    var_0 = vec2<i32>(func_2(), -var_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, 327f, -314f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, 447f, -1000f, -152f)))))));
    var var_3 = var_2.x;
    return Struct_4(false, u_input.b.zwz);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(true);
    var var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 33405u, 1u), vec3<u32>(u_input.b.x, 1u, 16308u))), arg_2.b.x & 0u, countOneBits(u_input.b.x)), min(abs(~u_input.b | arg_0), ~min(vec4<u32>(1u, arg_2.b.x, 4294967295u, u_input.b.x), vec4<u32>(arg_2.b.x, u_input.b.x, 16836u, 14127u))));
    var_1 = ~u_input.b;
    var_1 = ~(~arg_0);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-316f, 847f, -1229f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, -1222f, -814f)))), 1i, !any(vec4<bool>(arg_2.a, arg_2.a, false, arg_1))), 538f);
    return Struct_2(var_2.a, 198f);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a, arg_1);
    var var_1 = u_input.a.yww;
    var_1 = -reverseBits(-vec3<i32>(-2147483647i, -var_0.a.b, var_1.x | -3713i));
    var var_2 = func_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(89561i, var_1.x, 37063i), u_input.a.xzz) >> (firstLeadingBit(u_input.b.zyz) % vec3<u32>(32u)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 62212i, 1i), u_input.a.zwy, vec3<i32>(var_0.a.b, 1i, u_input.a.x)), _wgslsmith_add_vec3_i32(u_input.a.zxy, vec3<i32>(arg_0.a.b, arg_0.a.b, 1i)), vec3<bool>(var_0.a.c, arg_0.a.c, false)) ^ abs(firstLeadingBit(vec3<i32>(-2147483647i, arg_0.a.b, -2147483647i)))), func_1(~arg_0.a.b, func_1(-var_0.a.b, Struct_4(true, _wgslsmith_mod_vec3_u32(u_input.b.wyy, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))))));
    let var_3 = Struct_3(all(!select(select(vec2<bool>(var_0.a.c, true), vec2<bool>(arg_0.a.c, true), vec2<bool>(var_2.a, arg_0.a.c)), !vec2<bool>(false, var_2.a), var_0.a.c)));
    return arg_0.a;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_4(!(!all(!vec3<bool>(false, false, arg_0.c))), ~u_input.b.ywy);
    let var_1 = u_input.b;
    let var_2 = func_4(func_3(vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, 52590u), ~48651u, firstTrailingBit(1u), ~_wgslsmith_mod_u32(1u, 1u)), !(!any(vec2<bool>(arg_0.c, var_0.a))), var_0, !vec3<bool>(true, true, true | arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - 1849f)))), -912f);
    let var_3 = Struct_3(select(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + -1227f) > _wgslsmith_f_op_f32(-var_2.a.x), !(!var_2.c)));
    let var_4 = var_3;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(-19878i, 12653i, arg_0.b) & u_input.a.xxz), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(20940i, 2147483647i, 0i), u_input.a.wxw)), ~vec3<i32>(var_2.b, -61077i, u_input.a.x), u_input.a.xyy)), select(~firstLeadingBit(abs(vec3<i32>(63493i, -41250i, u_input.a.x))), min(abs(vec3<i32>(2147483647i, -37506i, 0i)), u_input.a.wxy) >> (_wgslsmith_add_vec3_u32(~var_0.b, ~vec3<u32>(25228u, var_1.x, 50251u)) % vec3<u32>(32u)), select(vec3<bool>(func_1(var_2.b, Struct_4(var_3.a, var_1.wzx)).a, var_2.c || false, true), select(!vec3<bool>(var_3.a, var_2.c, var_4.a), !vec3<bool>(false, false, arg_0.c), var_3.a), !select(vec3<bool>(arg_0.c, arg_0.c, var_0.a), vec3<bool>(var_2.c, var_2.c, var_2.c), vec3<bool>(var_0.a, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1160f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1285f + -420f), -981f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-163f, -735f))))), func_5(func_4(func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 55491u, 36669u, 4294967295u), u_input.b), u_input.a.x < -9445i, func_1(36332i, Struct_4(false, u_input.b.yxw)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), -1842f, -104f)), true);
    var var_1 = vec3<bool>(!var_0.c, var_0.c, var_0.c);
    var_1 = select(select(vec3<bool>(func_3(u_input.b, 4294967295u >= u_input.b.x, Struct_4(var_0.c, vec3<u32>(0u, 77172u, u_input.b.x)), select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_0.c, var_0.c))).a.c, !var_0.c, true), !(!(!vec3<bool>(false, var_1.x, true))), !vec3<bool>(true, var_1.x & false, any(vec2<bool>(var_0.c, var_0.c)))), vec3<bool>(func_1(func_5(func_3(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), true, Struct_4(false, u_input.b.wwx), vec3<bool>(true, false, var_0.c)).a), Struct_4(false, u_input.b.yyz)).a, min(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 12828u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) <= abs(u_input.b.x & 4294967295u), !var_0.c), func_1(abs(var_0.b), func_1(-14757i, Struct_4(var_0.c, vec3<u32>(28793u, 4294967295u, u_input.b.x) >> (vec3<u32>(22602u, 1u, u_input.b.x) % vec3<u32>(32u))))).a);
    var_1 = vec3<bool>(all(vec4<bool>(all(vec4<bool>(var_0.c, var_1.x, true, true)), any(select(var_1.xz, var_1.yy, var_0.c)), false, true)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)) <= _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)) & !var_1.x, false);
    let var_2 = vec2<bool>(func_3(~(~vec4<u32>(u_input.b.x, 1u, 14747u, 0u)), false, func_1(38563i | u_input.a.x, Struct_4(false, vec3<u32>(4294967295u, 1u, u_input.b.x))), vec3<bool>(var_0.c, true, var_0.c)).b >= var_0.a.x, ((func_4(Struct_2(var_0, var_0.a.x), -1342f, 411f).b >= 50598i) && !var_1.x) != (~16549u >= _wgslsmith_mult_u32(u_input.b.x, abs(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xwz, ~vec3<i32>(-2147483647i, -18555i, var_0.b)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-41592i, var_0.b, var_0.b), vec3<i32>(var_0.b, 0i, var_0.b)))), 0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, var_0.a.x)) * _wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -706f)))));
}

