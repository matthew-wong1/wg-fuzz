struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<u32> {
    let var_0 = min(firstLeadingBit(-(~(~vec2<i32>(1i, 1i)))), -vec2<i32>(-reverseBits(-12759i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(8549i, 5657i), vec2<i32>(-1i, 31982i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 18240i, -2147483647i, 15520i), vec4<i32>(-15752i, -4508i, 1i, 37519i)))));
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(216f, 656f, -582f, 1771f), vec4<f32>(135f, -174f, -169f, -211f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-573f, _wgslsmith_f_op_f32(f32(-1f) * -1480f), 533f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-875f)) * _wgslsmith_f_op_f32(step(var_1.x, 320f))), 825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - -2895f))))));
    return abs(~firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = arg_0.zx;
    var var_1 = !(true || !any(!vec3<bool>(false, false, arg_0.x)));
    var var_2 = Struct_3(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), func_3()), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-341f)) - _wgslsmith_f_op_f32(round(579f))), _wgslsmith_f_op_f32(f32(-1f) * -2417f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(3058f, -665f, 115f, 642f))) * vec4<f32>(-771f, 397f, -1439f, -309f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1741f, -915f, -454f, 597f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1111f, -1154f, -591f, -105f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(260f, 922f))), -237f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-699f, -261f, true)), _wgslsmith_f_op_f32(step(2601f, -1121f))), 222f)), Struct_2(arg_0.yy), vec4<f32>(-1575f, -223f, 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-627f)))))));
    let var_3 = Struct_4(firstLeadingBit(~(~vec2<u32>(var_2.a, 74683u)) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.a), vec2<u32>(4294967295u, u_input.a)), ~0u)), var_2.a, var_2.d.a.x || (~_wgslsmith_div_u32(u_input.a, 21581u) >= ~1u), Struct_2(select(!var_2.d.a, !select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), var_0.x), var_2.d.a.x != var_2.d.a.x)));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.e.zxw))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_2.e.xwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-560f, var_2.b.x, 1399f), var_2.e.wxw)))))));
    return Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_div_vec2_f32(var_4.xy, _wgslsmith_f_op_vec2_f32(sign(var_2.c.yx)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.x, var_2.e.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, var_4.x) - vec2<f32>(-1221f, var_2.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.e.wy)) * var_2.c.wx))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(1273f * -243f), _wgslsmith_f_op_f32(-var_2.b.x), 344f), var_2.e, select(!vec4<bool>(var_0.x, var_2.d.a.x, true, true), !vec4<bool>(var_3.d.a.x, true, true, var_2.d.a.x), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_4.x, var_2.c.x), _wgslsmith_f_op_f32(var_2.b.x + 1098f))), _wgslsmith_f_op_f32(select(var_4.x, -1963f, any(arg_0))), 1291f, _wgslsmith_f_op_f32(338f - _wgslsmith_f_op_f32(-var_4.x)))), Struct_2(select(vec2<bool>(true, 59017i != arg_1.x), var_2.d.a, all(select(var_2.d.a, arg_0.zx, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.c - var_2.e))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_3, 1>();
    let var_0 = arg_0.a;
    var var_1 = vec3<bool>(true, false, !(!(!arg_2.a.x | any(vec2<bool>(arg_0.d.a.x, true)))));
    global0 = array<Struct_3, 1>();
    var var_2 = _wgslsmith_div_f32(arg_0.b.x, 1236f);
    return 114f;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = ~0u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(vec3<bool>(arg_0 < arg_0, true, false), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-13611i, 84590i, -16220i), vec3<i32>(-2147483647i, 64293i, -18922i)), vec3<i32>(2147483647i, -4934i, 1i))), u_input.a, func_2(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, false)), true), vec3<i32>(1i, ~(-1i), -9497i)).d)), 325f);
    let var_2 = !vec4<bool>(all(vec2<bool>(all(vec3<bool>(false, true, true)), false)), !any(vec2<bool>(true, true)), -abs(-48247i) <= reverseBits(0i << (u_input.a % 32u)), !all(vec2<bool>(false, false)) && false);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1330f, var_1.x, var_2.x)), 1085f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1400f, var_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 268f) * vec2<f32>(var_1.x, -1000f)))))));
    let var_4 = func_2(var_2.zwy, _wgslsmith_mod_vec3_i32(-vec3<i32>(0i, _wgslsmith_mod_i32(-50582i, 8519i), -1i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(11144i, 0i, -2147483647i))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(true, any(vec2<bool>(any(vec2<bool>(false, true)), true))));
    var var_1 = Struct_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)))), _wgslsmith_div_u32(select(~(~4290u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(39289u, u_input.a, u_input.a, 878u), vec4<u32>(36379u, u_input.a, 45734u, 46091u)), _wgslsmith_mult_u32(u_input.a, 1u), u_input.a), any(!vec3<bool>(var_0.a.x, false, false))), 0u), var_0.a.x);
    global0 = array<Struct_3, 1>();
    var_1 = Struct_5(func_2(select(!vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(false, !var_0.a.x, select(false, true, false)), select(vec3<bool>(true, true, var_0.a.x), select(vec3<bool>(var_1.c, var_0.a.x, true), vec3<bool>(false, true, false), true), !vec3<bool>(false, false, var_0.a.x))), ~(-vec3<i32>(-12199i, 0i, 2147483647i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(112925i, -1955i, -43029i), vec3<i32>(1i, 0i, -2147483647i), vec3<i32>(-2147483647i, 22919i, -2147483647i)))), u_input.a, var_1.a.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.c.x), -698f)), 1f)))));
}

