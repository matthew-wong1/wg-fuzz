struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(sign(-1287f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_3(arg_2, arg_2, arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.b, -102f), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1027f), arg_2.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -745f, 230f, var_0)))), vec3<u32>(arg_2.e.x, ~_wgslsmith_add_u32(5486u, 25748u), 21153u)), arg_2);
    var_1 = Struct_3(Struct_2(~(4294967295u | countOneBits(var_1.e.a)), -140f, false, arg_3.x, ~(arg_1.e | max(var_1.a.e, arg_1.e))), var_1.a, arg_2, Struct_1(vec4<f32>(-310f, 1274f, -1098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(select(var_1.b.b, 1000f, arg_2.c)))), vec3<u32>(0u, _wgslsmith_mod_u32(arg_2.e.x, max(var_1.b.e.x, 47584u)), abs(_wgslsmith_mult_u32(arg_1.e.x, 0u)))), Struct_2(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1010f)) - _wgslsmith_f_op_f32(sign(-212f))) - var_0), var_1.a.d, arg_2.c, vec2<u32>(arg_1.e.x, arg_1.a ^ firstLeadingBit(24484u))));
    let var_2 = vec3<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.b, 0i), vec4<i32>(u_input.a, u_input.c, u_input.a, -35387i)) & u_input.c) ^ countOneBits(~41902i), -16824i, u_input.c);
    let var_3 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(min(-56230i, -2147483647i), u_input.b, var_2.x ^ 0i, u_input.c), ~(~vec4<i32>(3300i, -2147483647i, u_input.c, var_2.x))));
    return vec2<i32>(u_input.c, _wgslsmith_clamp_i32(-19189i, var_3.x, 2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> bool {
    let var_0 = select(vec4<bool>(((u_input.b | -2147483647i) & countOneBits(arg_2.x)) >= -31791i, arg_0.b.c, arg_3, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_3, arg_3, arg_0.a.c), all(vec3<bool>(arg_0.c.d, true, arg_3))))), vec4<bool>(!(_wgslsmith_dot_vec3_u32(arg_0.d.b, arg_0.d.b) != ~32366u), arg_3, true, !all(vec4<bool>(arg_0.b.c, arg_0.b.c, false, false))), vec4<bool>(all(select(!vec4<bool>(arg_3, arg_0.b.c, false, false), select(vec4<bool>(false, arg_3, true, false), vec4<bool>(true, true, arg_0.a.c, true), arg_0.c.d), !vec4<bool>(true, arg_0.e.d, true, arg_0.e.d))), false, arg_3, all(vec2<bool>(false, arg_3))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(-arg_0.b.b)), -2602f, arg_0.e.b);
    var var_2 = -_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 1i, arg_2.x), _wgslsmith_mod_vec3_i32(-abs(vec3<i32>(arg_2.x, arg_2.x, u_input.b)), (vec3<i32>(arg_2.x, -2147483647i, 37187i) << (arg_0.d.b % vec3<u32>(32u))) >> (~arg_0.d.b % vec3<u32>(32u))));
    var var_3 = ~(~4294967295u);
    var var_4 = any(!select(!vec4<bool>(var_0.x, var_0.x, false, arg_3), !(!vec4<bool>(var_0.x, false, arg_3, var_0.x)), select(var_0, vec4<bool>(true, var_0.x, arg_3, var_0.x), true)));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(0u, 932f, select(true, all(vec2<bool>(true, true)), all(vec3<bool>(true, false, true))), func_4(Struct_3(Struct_2(4294967295u, -1837f, true, false, vec2<u32>(1u, 1u)), Struct_2(42171u, 1340f, true, false, vec2<u32>(48800u, 1u)), Struct_2(4294967295u, 1000f, true, false, vec2<u32>(4294967295u, 91009u)), Struct_1(vec4<f32>(-433f, 238f, 1125f, 1000f), vec3<u32>(4030u, 67730u, 0u)), Struct_2(51047u, -239f, false, true, vec2<u32>(4294967295u, 53128u))), 0u, ~func_3(true, Struct_2(0u, -305f, false, false, vec2<u32>(4294967295u, 1u)), Struct_2(8208u, -161f, false, false, vec2<u32>(3389u, 36429u)), vec2<bool>(false, true)), false), ~_wgslsmith_sub_vec2_u32(vec2<u32>(15863u, 4294967295u), vec2<u32>(1u, 1u))), Struct_2(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(559f)))), true, false, ~vec2<u32>(~7260u, 26347u)), Struct_2(~(~9420u), -1000f, select(~1u, _wgslsmith_clamp_u32(0u, 11718u, 19714u), true) >= 1u, !(all(vec2<bool>(false, false)) & true), firstTrailingBit(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(70997u, 1u, 1u, 1u), vec4<u32>(51685u, 2844u, 4294967295u, 61651u))))), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-164f * 472f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(620f, -471f)), _wgslsmith_f_op_f32(abs(634f))))), vec3<u32>(1u, 1u, 1u)), Struct_2(0u, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-521f * -1653f), _wgslsmith_f_op_f32(-2669f * 385f)))), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), _wgslsmith_add_vec2_u32(select(vec2<u32>(0u, 4294967295u), vec2<u32>(38281u, 4294967295u), true) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 7456u), vec2<u32>(4294967295u, 116588u)), vec2<u32>(1u, 1u))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.e.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)), -1555f, _wgslsmith_f_op_f32(max(912f, 930f))), var_0.d.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    return Struct_3(Struct_2(41550u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1310f - -522f))), all(vec3<bool>(true, true, true)) == any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), false, ~(~vec2<u32>(arg_2, 4294967295u))), Struct_2(~0u, -1000f, ~1u < _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_0.b.x, arg_2)), all(vec2<bool>(true, true)), vec2<u32>(~_wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x), ~0u)), Struct_2(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.a.x), true, all(vec3<bool>(true, true, true)), ~(~vec2<u32>(arg_0.b.x, arg_2))), func_2(), Struct_2(max(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, 40609u, 4294967295u)), countOneBits(vec4<u32>(arg_0.b.x, 24821u, 105u, arg_2))), _wgslsmith_add_u32(~arg_2, ~arg_2)), _wgslsmith_f_op_f32(step(743f, arg_0.a.x)), any(vec4<bool>(true, true, true, select(false, true, false))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), arg_0.b.zx));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.c, 9006i, u_input.a, u_input.b), vec4<i32>(0i, u_input.a, 0i, 0i)), -vec4<i32>(23474i, 2147483647i, u_input.c, 176i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.a, 20443i, -68745i), vec4<i32>(u_input.b, -2147483647i, 1305i, -1i)), select(vec4<i32>(-5901i, 0i, -12338i, u_input.c), vec4<i32>(0i, u_input.a, u_input.b, u_input.c), vec4<bool>(false, true, true, false))), vec4<i32>(_wgslsmith_mult_i32(1i, -69407i), ~u_input.c, -1i, -78746i | u_input.b)), ~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(u_input.c, 0i, u_input.c, 11197i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, 2147483647i), min(vec4<i32>(1i, u_input.b, u_input.c, 0i), vec4<i32>(1i, u_input.b, -23924i, -30627i)))));
    let var_1 = ~(~countOneBits(~(~vec4<u32>(0u, 0u, 0u, 0u))));
    let var_2 = countOneBits(~(var_1.x >> (~(~5078u) % 32u)));
    var var_3 = func_5(func_2(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -129f))), 13499u);
    let var_4 = -var_0 ^ var_0;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.a.x)), -1540f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.e.b))), var_3.e.b), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.xyw & var_1.wzz, vec3<u32>(var_3.a.a, 4645u, 0u)), ~var_3.d.b)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -449f));
    var var_1 = u_input.a;
    var var_2 = Struct_2(0u, arg_2.x, select(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), any(vec2<bool>(false, true)), true), false, firstLeadingBit(~(~firstLeadingBit(vec2<u32>(1u, arg_0.b.x)))));
    var var_3 = Struct_3(Struct_2(arg_0.b.x, -1452f, true, -13049i >= u_input.a, var_2.e), func_5(func_2(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, var_2.b) * vec2<f32>(173f, var_2.b)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b, -1551f)))), _wgslsmith_f_op_vec2_f32(arg_2.zy * arg_0.a.yy), var_2.c)), firstTrailingBit(min(~74529u, min(var_2.e.x, 4294967295u)))).c, func_5(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.zz, vec2<f32>(1012f, -1132f))) * arg_0.a.ww), _wgslsmith_clamp_u32(46151u, ~min(4294967295u, 1686u), ~var_2.a)).a, func_1(), Struct_2(0u, -1000f, !var_2.c || true, var_2.c, _wgslsmith_mod_vec2_u32(var_2.e << (var_2.e % vec2<u32>(32u)), vec2<u32>(func_1().b.x, select(arg_0.b.x, 4294967295u, var_2.c)))));
    var_1 = 0i;
    return Struct_3(var_3.e, func_5(Struct_1(vec4<f32>(-909f, _wgslsmith_f_op_f32(-arg_0.a.x), func_2().a.x, _wgslsmith_f_op_f32(step(967f, var_3.d.a.x))), select(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, arg_0.b.x)), var_3.d.b, select(vec3<bool>(var_2.c, var_2.c, var_2.d), vec3<bool>(false, var_2.c, var_3.a.d), var_3.e.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 968f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1446f, var_2.b))), _wgslsmith_f_op_vec2_f32(func_1().a.yz * _wgslsmith_f_op_vec2_f32(arg_0.a.yw + arg_0.a.yz))), 4294967295u).c, var_3.a, arg_0, Struct_2(0u, _wgslsmith_f_op_f32(f32(-1f) * -1139f), true, true, ~vec2<u32>(_wgslsmith_sub_u32(var_2.a, 20643u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), 1870i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, -480f, 1380f) + vec3<f32>(374f, -1208f, -435f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(134f, 585f, 593f) * vec3<f32>(-456f, -1434f, 1174f))))));
    var_0 = Struct_3(func_6(var_0.d, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -1i), -19443i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.a.wwz - var_0.d.a.zxy))))).b, func_6(func_2(), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_5(var_0.d, var_0.d.a.xz, var_0.e.a).d.a.ywz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-504f, 820f, var_0.b.b)), var_0.a.d | var_0.a.d)))).b, Struct_2(~_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(var_0.d.b.x, 1u), func_6(Struct_1(vec4<f32>(var_0.e.b, 876f, -1074f, 1000f), vec3<u32>(var_0.b.a, var_0.a.a, 41960u)), u_input.c, vec3<f32>(1000f, var_0.b.b, -985f)).e.e.x), _wgslsmith_f_op_f32(-var_0.c.b), !(~u_input.b <= _wgslsmith_mod_i32(-1i, u_input.a)), !any(vec4<bool>(var_0.a.d, true, var_0.a.c, var_0.c.c)), var_0.c.e), func_2(), var_0.b);
    var_0 = func_5(var_0.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, func_2().a.x)))), var_0.a.a);
    let var_1 = vec3<bool>(false, all(vec2<bool>(!func_6(var_0.d, 17098i, vec3<f32>(-1054f, var_0.a.b, var_0.b.b)).b.c, true)), var_0.b.c);
    let var_2 = max(select(vec4<u32>(1u, func_5(Struct_1(var_0.d.a, vec3<u32>(0u, 4294967295u, var_0.e.e.x)), var_0.d.a.xx, var_0.d.b.x).b.a, var_0.a.e.x, reverseBits(var_0.a.e.x)) | vec4<u32>(~37723u, ~var_0.c.a, 52013u, var_0.a.a | var_0.c.a), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 28111u, var_0.c.e.x), vec4<u32>(var_0.b.a, 4294967295u, var_0.c.e.x, var_0.d.b.x)), vec4<u32>(1u, var_0.e.a, 55796u, 16061u)), select(vec4<bool>(true, var_1.x, var_1.x, true != var_1.x), !(!vec4<bool>(var_1.x, true, var_0.a.c, false)), !vec4<bool>(var_1.x, false, var_0.b.d, true))), ~(vec4<u32>(var_0.c.a, 0u, 4294967295u, _wgslsmith_dot_vec2_u32(var_0.d.b.yx, vec2<u32>(var_0.d.b.x, 17763u))) ^ ((vec4<u32>(4294967295u, var_0.d.b.x, var_0.c.a, var_0.a.a) << (vec4<u32>(var_0.a.a, 4294967295u, 16855u, 4294967295u) % vec4<u32>(32u))) ^ vec4<u32>(74879u, 0u, var_0.b.e.x, var_0.a.a))));
    var var_3 = firstTrailingBit(u_input.a);
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(var_2.x, 4294967295u, 0u & var_2.x)), -1935f, reverseBits(-vec4<i32>(countOneBits(var_4), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(var_4, u_input.a)), ~(-1i), abs(16837i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, u_input.c, var_4) & vec3<i32>(-1i, -4244i, 2147483647i), -(~vec3<i32>(u_input.b, 0i, var_4))) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.e.e.x, 4294967295u, 1u), vec3<u32>(max(17028u, var_2.x), 45028u, var_0.c.a)) % vec3<u32>(32u)));
}

