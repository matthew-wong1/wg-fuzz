struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-27644i, -1i))), -select(-vec2<i32>(u_input.a, 1i), ~vec2<i32>(-17348i, -2400i), select(arg_0.d, arg_0.c.xy, vec2<bool>(false, arg_0.d.x)))) | (_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), abs(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a, -53748i), vec4<i32>(1i, -2147483647i, -34059i, u_input.a) | vec4<i32>(-5819i, u_input.a, u_input.a, u_input.a))) << (0u % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(arg_0.a));
    let var_2 = any(!arg_0.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f * 595f)) - _wgslsmith_f_op_f32(570f * arg_0.a.x))));
    var var_4 = var_3;
    return select(vec4<bool>(any(!vec3<bool>(false, true, arg_0.c.x)), any(arg_0.c.yz), true, true), vec4<bool>(false, arg_0.d.x, true, all(!vec4<bool>(var_2, true, true, var_2)) & false), vec4<bool>(any(arg_0.c), false, arg_0.d.x, false));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_5 {
    var var_0 = Struct_5(Struct_1(arg_0.a, func_3(arg_3), arg_1, 0i, 1226f), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.a), -2147483647i ^ arg_0.a.x), arg_0.a), vec4<bool>(true, false, all(func_3(Struct_2(vec2<f32>(arg_3.a.x, arg_3.a.x), arg_3.b, arg_0.b.xzw, vec2<bool>(arg_3.d.x, arg_2.x))).wx), !(arg_2.x | false)), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(~15767i, arg_1, ~1i, 9808i), abs(abs(vec4<i32>(u_input.a, 16401i, 2147483647i, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x + -405f) * arg_0.e)));
    var var_1 = arg_3.b;
    let var_2 = _wgslsmith_sub_i32(abs(u_input.a), 1i);
    let var_3 = arg_3.b.x >= countOneBits(arg_3.b.x);
    var var_4 = 0i;
    return Struct_5(arg_0, Struct_1(-(~var_0.a.a) & arg_0.a, vec4<bool>(false, _wgslsmith_mult_i32(var_0.a.d, -54568i) <= u_input.a, !(false != var_3), true), max(firstLeadingBit(var_0.a.c), _wgslsmith_div_i32(-2147483647i, 1i) << ((var_1.x | 0u) % 32u)), -26928i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.a.e, -110f)), _wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x)))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = ~abs(-reverseBits(arg_0.a.a) | ~firstLeadingBit(arg_0.b.a));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.b.e)))), 1040f))), func_2(arg_0.a, ~_wgslsmith_mult_i32(~(-1i), select(var_0.x, u_input.a, true)), !func_3(Struct_2(vec2<f32>(-766f, -118f), arg_1, arg_0.a.b.wxx, arg_0.a.b.wx)).zwy, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.e, arg_0.b.e), vec2<f32>(arg_0.b.e, -1844f)))), ~arg_1, !(!vec3<bool>(arg_0.b.b.x, arg_0.a.b.x, arg_0.b.b.x)), arg_0.b.b.yw)).b);
    var_0 = var_1.b.a;
    var_0 = vec2<i32>(_wgslsmith_add_i32(var_0.x, 0i), min(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a), -vec3<i32>(-2147483647i, 1i, -31547i))));
    var var_2 = vec2<bool>(any(var_1.b.b), true);
    return arg_1;
}

fn func_1() -> vec3<u32> {
    return func_4(func_2(Struct_1(vec2<i32>(-u_input.a, ~u_input.a), vec4<bool>(true, true, true, true), -24429i, u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f), 1259f)), min(~(~u_input.a), -u_input.a & ~(-1i)), vec3<bool>(false, true, true), Struct_2(vec2<f32>(-1000f, 2042f), vec3<u32>(27309u, max(0u, 4294967295u), 1u), vec3<bool>(true, true, true), vec2<bool>(true, all(vec2<bool>(true, true))))), countOneBits(~(~vec3<u32>(1u, 9893u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(~(-u_input.a), 1i, ~u_input.a) << (_wgslsmith_mult_vec3_u32(func_1(), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = Struct_5(func_2(func_2(Struct_1(vec2<i32>(27783i, 2147483647i), vec4<bool>(true, true, true, true), u_input.a, firstTrailingBit(var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -630f)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, 1i), _wgslsmith_mod_i32(-58667i, var_0.x)), vec3<bool>(true, true, false), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, 2270f)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true), vec2<bool>(true, false))).a, abs(0i), !vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-136f, -535f), vec2<f32>(618f, -329f))), false)), vec3<u32>(1u, 1u, 1u), func_3(Struct_2(vec2<f32>(-1068f, 1689f), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(true, false, true), vec2<bool>(true, false))).zyx, !select(vec2<bool>(true, false), vec2<bool>(false, false), true))).a, Struct_1(firstLeadingBit(var_0.zx), vec4<bool>(true, true, true, true), _wgslsmith_add_i32(var_0.x, ~u_input.a ^ 55336i), 18667i, -608f));
    var var_2 = !all(!select(!vec2<bool>(true, var_1.a.b.x), !var_1.b.b.wz, true));
    var var_3 = func_2(Struct_1(var_1.b.a, !vec4<bool>(!var_1.b.b.x, 1209f >= var_1.b.e, true || var_1.b.b.x, true), ~_wgslsmith_mod_i32(reverseBits(2147483647i), _wgslsmith_div_i32(-17947i, u_input.a)), -2147483647i & firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.e) - var_1.a.e) + -1696f)), -1i, vec3<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 34320u, 48865u), vec3<u32>(3101u, 80421u, 4199u)) < 101466u, var_1.a.b.x, var_1.a.b.x), Struct_2(vec2<f32>(1f, 1f), func_4(Struct_5(var_1.b, func_2(var_1.a, var_0.x, var_1.b.b.yxy, Struct_2(vec2<f32>(2208f, var_1.b.e), vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(false, false, var_1.b.b.x), var_1.a.b.zy)).b), vec3<u32>(~1u, ~4294967295u, abs(4294967295u))), !vec3<bool>(any(var_1.a.b.wzy), true, var_1.b.b.x), select(!select(vec2<bool>(true, true), vec2<bool>(var_1.b.b.x, true), vec2<bool>(var_1.b.b.x, false)), vec2<bool>(!var_1.b.b.x, true), _wgslsmith_f_op_f32(step(var_1.a.e, var_1.a.e)) <= 1752f)));
    var_1 = func_2(func_2(func_2(Struct_1(var_0.xz, func_3(Struct_2(vec2<f32>(1354f, var_3.b.e), vec3<u32>(76856u, 34558u, 16784u), var_1.a.b.wyx, var_1.b.b.xx)), var_1.b.a.x, var_3.b.d, -505f), firstLeadingBit(_wgslsmith_sub_i32(u_input.a, 1i)), !vec3<bool>(true, var_1.a.b.x, var_1.a.b.x), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(323f, var_3.b.e))), _wgslsmith_clamp_vec3_u32(vec3<u32>(44567u, 0u, 55826u), vec3<u32>(40714u, 1u, 48518u), vec3<u32>(33201u, 4014u, 4294967295u)), var_3.b.b.zyw, vec2<bool>(true, false))).b, var_3.b.c, select(select(func_2(var_1.a, 0i, var_1.b.b.zxw, Struct_2(vec2<f32>(376f, -1312f), vec3<u32>(22489u, 10241u, 4294967295u), vec3<bool>(true, false, true), vec2<bool>(var_3.a.b.x, var_1.a.b.x))).b.b.xyy, !var_1.b.b.wwy, !var_3.b.b.xzw), vec3<bool>(!var_1.a.b.x, var_1.b.b.x, var_3.a.b.x), true), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.e, var_3.a.e)))), vec3<u32>(~12639u, _wgslsmith_add_u32(0u, 1u), ~4294967295u), func_3(Struct_2(vec2<f32>(var_3.a.e, var_3.a.e), vec3<u32>(13165u, 6485u, 70501u), var_3.b.b.yyy, vec2<bool>(var_1.a.b.x, true))).xzw, var_3.a.b.xy)).a, -1i, !(!vec3<bool>(!var_3.b.b.x, true, func_2(Struct_1(var_1.b.a, vec4<bool>(false, true, var_1.b.b.x, true), -2147483647i, u_input.a, 516f), 6337i, var_3.a.b.yxz, Struct_2(vec2<f32>(var_1.b.e, var_1.b.e), vec3<u32>(35691u, 21426u, 26885u), var_3.b.b.zww, var_1.a.b.yw)).b.b.x)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.e, var_1.a.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, -449f))))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 74466u, 42080u), ~vec4<u32>(0u, 11595u, 4294967295u, 4294967295u)), 0u, 4294967295u), vec3<bool>(false, true, var_1.b.b.x), vec2<bool>(false, var_1.b.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(-198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.e) - -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-267f - var_1.a.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(941f + 1868f), _wgslsmith_f_op_f32(-720f * 338f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_3.b.e);
}

