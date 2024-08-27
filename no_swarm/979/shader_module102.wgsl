struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = -1554f;
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = any(!vec2<bool>(true, all(vec2<bool>(arg_0.b, arg_0.b)) && select(true, false, arg_0.b)));
    var var_3 = _wgslsmith_clamp_vec4_u32(~(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(34252u, arg_0.a, arg_0.a, arg_0.a)), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 26772u)) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(64529u, 0u, arg_0.a, 1u), vec4<u32>(4294967295u, arg_0.a, arg_0.a, 1u))) % vec4<u32>(32u))), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, u_input.a, 26270u, 1u), vec4<u32>(85212u, 0u, arg_0.a, 41791u))) & vec4<u32>(_wgslsmith_add_u32(82377u, _wgslsmith_dot_vec4_u32(vec4<u32>(28217u, arg_0.a, 15323u, 0u), vec4<u32>(28427u, 52622u, 4294967295u, arg_0.a))), _wgslsmith_mult_u32(1u, 10637u), ~4294967295u << (~u_input.a % 32u), 4294967295u), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 28150u, 0u, u_input.a) << (~vec4<u32>(12770u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 32601u, arg_0.a, 53240u), ~vec4<u32>(arg_0.a, arg_0.a, arg_0.a, u_input.a)))));
    return -11036i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(761f * -1000f), _wgslsmith_f_op_f32(ceil(-989f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1003f, -1091f), _wgslsmith_div_vec2_f32(vec2<f32>(-1875f, -430f), vec2<f32>(-1885f, 285f)), false))))));
    var var_1 = Struct_1(vec2<i32>(func_3(Struct_3(7077u, true), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-27047i, -24267i), vec2<i32>(-2147483647i, -10355i)), vec2<f32>(var_0.x, var_0.x))), -24269i), vec2<f32>(_wgslsmith_f_op_f32(-1735f * -822f), 610f));
    let var_2 = Struct_2(abs(vec4<i32>(~(-1i), var_1.a.x, 1i << (arg_1 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, -2232i), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1.a.x, var_1.a.x), vec3<i32>(var_1.a.x, -5267i, var_1.a.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 465f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -1000f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(149f, 891f, var_0.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -129f, var_0.x), vec3<f32>(var_1.b.x, -842f, -469f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_0.x, var_0.x))))));
    var var_4 = select(select(select(select(!vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(false, arg_2.x, true, false), true), vec4<bool>(arg_2.x, false, arg_2.x, false)), !(!vec4<bool>(true, true, arg_2.x, arg_2.x)), !any(arg_2)), vec4<bool>(false, arg_2.x, !arg_2.x & true, false), vec4<bool>(!all(vec3<bool>(true, true, arg_2.x)), !arg_2.x || true, any(vec3<bool>(false, true, arg_2.x)) || true, arg_2.x)), vec4<bool>(false, true, arg_2.x, arg_2.x), !select(!(!vec4<bool>(true, arg_2.x, true, true)), !vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), false)));
    return Struct_1(~min(vec2<i32>(-var_1.a.x, -10938i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, var_2.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), var_1.a, var_2.a.yy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + _wgslsmith_f_op_vec2_f32(select(var_3.zx, vec2<f32>(var_3.x, -1280f), vec2<bool>(true, var_4.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1329f, var_3.x) + var_1.b)) + _wgslsmith_f_op_vec2_f32(-var_1.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(922f + arg_1.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) - arg_1.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, 1270f)), _wgslsmith_f_op_f32(-arg_0.b.x), true)), _wgslsmith_f_op_f32(floor(arg_1.x)), all(vec3<bool>(true, true, true))))) <= -388f;
    return ~abs(~18424u);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(-arg_3) >= -1411f, true, !all(vec4<bool>(false, true, false, false)) || false);
    var var_1 = Struct_3(func_4(func_2(_wgslsmith_mod_u32(reverseBits(u_input.a), _wgslsmith_mult_u32(1u, 18302u)), 5332u, !vec2<bool>(var_0.x, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(201f, -157f, 328f, arg_3))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, -992f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, arg_3, arg_3, arg_3))))))), Struct_2(arg_2)), true);
    var var_2 = false;
    let var_3 = Struct_2(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2420i, -18998i, -22673i, 58537i) | vec4<i32>(arg_2.x, arg_0, arg_1, 6204i), _wgslsmith_div_vec4_i32(arg_2, arg_2)), arg_2));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3)));
    return func_2(~firstTrailingBit(func_4(func_2(var_1.a, var_1.a, var_0.yz), vec4<f32>(241f, -1649f, arg_3, 697f), Struct_2(arg_2))), ~(~_wgslsmith_mult_u32(0u, u_input.a) >> (var_1.a % 32u)), var_0.xx);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(~arg_3), _wgslsmith_add_vec3_i32(vec3<i32>(~(-34486i), -23757i, arg_3.x >> (0u % 32u)), vec3<i32>(_wgslsmith_sub_i32(arg_1.a.x, 17157i), -arg_3.x, arg_3.x | arg_3.x))), _wgslsmith_sub_i32(-10766i, arg_1.a.x) & _wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(arg_3.x, -15521i, arg_3.x) | arg_3), arg_3.x | 1i, _wgslsmith_div_i32(func_2(32599u, u_input.a, select(vec2<bool>(true, false), vec2<bool>(true, true), true)).a.x, i32(-1i) * -arg_1.a.x));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x))) * arg_1.b.x))));
    var_2 = _wgslsmith_f_op_f32(-arg_1.b.x);
    let var_3 = arg_2;
    return vec3<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) | true, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, any(vec4<bool>(true, true, false, false)) | false, true), func_5(~u_input.a, func_1(_wgslsmith_mod_i32(-1i, 24292i), ~11153i, ~vec4<i32>(-1i, -19011i, 0i, 0i), -1414f), ~8473u, -_wgslsmith_div_vec3_i32(vec3<i32>(14438i, 0i, 27282i), vec3<i32>(-14625i, -39608i, -2147483647i))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_1 = func_4(func_1(_wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(1i, -65771i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -11711i), vec2<i32>(58309i, 2147483647i)), 1i)), ~firstLeadingBit(reverseBits(-2147483647i)), vec4<i32>(-1i, abs(i32(-1i) * -13489i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 27306i, 35971i), vec4<i32>(-2147483647i, -2147483647i, -43327i, 31391i))), -2147483647i << (0u % 32u)), -255f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)), _wgslsmith_f_op_f32(527f * _wgslsmith_f_op_f32(round(-1236f))), _wgslsmith_f_op_f32(f32(-1f) * -356f), -1993f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1146f, -1000f, -283f, 1000f) * vec4<f32>(490f, -834f, 1000f, -344f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(856f, 613f, -406f, 830f), vec4<f32>(-429f, -1164f, -134f, -250f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1628f, -691f, 388f, 619f)))), true))), Struct_2(vec4<i32>((-28179i >> (u_input.a % 32u)) ^ ~19965i, abs(0i), abs(abs(1i)), func_2(u_input.a, 48176u, !var_0.zy).a.x)));
    var var_2 = func_5(func_4(func_1(~firstTrailingBit(0i), ~(~1i), ~select(vec4<i32>(-1i, 32203i, 1i, -1i), vec4<i32>(-1i, 0i, -2147483647i, 53568i), vec4<bool>(var_0.x, false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1966f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, _wgslsmith_f_op_f32(f32(-1f) * -1640f), _wgslsmith_f_op_f32(sign(1678f)), _wgslsmith_f_op_f32(step(-1119f, -499f)))), Struct_2(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -17685i, -1i, -2147483647i), vec4<i32>(-28976i, -11186i, 1i, 1i))))), func_2(_wgslsmith_clamp_u32(1u, u_input.a, ~(~u_input.a)), _wgslsmith_clamp_u32(~0u, u_input.a, u_input.a), !(!(!vec2<bool>(var_0.x, true)))), 0u, min(-vec3<i32>(~(-31415i), ~(-52604i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -45443i), vec2<i32>(2147483647i, -1671i))), vec3<i32>(31410i, ~_wgslsmith_mult_i32(45194i, 19876i), firstTrailingBit(-2147483647i))));
    let var_3 = vec3<bool>(var_2.x, var_2.x, false);
    var_2 = func_5(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(max(u_input.a, u_input.a), u_input.a), ~(u_input.a ^ ~1u)), func_1(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(-2147483647i, 0i, 5348i)), firstTrailingBit(vec3<i32>(-2147483647i, -25608i, -49685i))), 0i, firstLeadingBit(-reverseBits(vec4<i32>(-12654i, 5788i, 2147483647i, 29884i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(723f)) - func_2(u_input.a, 20578u, var_2.zx).b.x))), u_input.a, vec3<i32>(reverseBits(1i >> (u_input.a % 32u)), 23552i, _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(9781i, 35283i, 2664i)), -vec3<i32>(1i, 0i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(func_2(u_input.a, u_input.a | 4294967295u, !vec2<bool>(var_3.x, var_2.x)).b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-404f)))))), _wgslsmith_f_op_f32(-203f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1089f)) + -1261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -313f), _wgslsmith_f_op_f32(round(-481f)), 0u > u_input.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-393f, -600f, var_0.x)), -590f)), func_2(~39269u, abs(u_input.a), !select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, false))).b.x), _wgslsmith_sub_u32(50260u, ~u_input.a), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -14422i), vec2<i32>(50046i, -29294i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-121i, -30752i), vec2<i32>(-5600i, -10727i))), reverseBits(-23300i), ~0i), _wgslsmith_mult_i32(-max(-36884i, -1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(7904i, 2147483647i), vec2<i32>(1i, 1i)))));
}

