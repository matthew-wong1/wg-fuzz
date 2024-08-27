struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: u32 = 8270u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    global2 = u_input.c.x;
    let var_1 = Struct_1(vec4<i32>(~6645i, ~u_input.a.x, 18845i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(34889i, -2147483647i), reverseBits(u_input.a.x)))), ~u_input.c.wxw, u_input.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-542f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f - -189f) * global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), -234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)))));
    global2 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~var_1.b.zx, min(vec2<u32>(4294967295u, 1u), u_input.c.yz)), var_1.b.x);
    let var_2 = global0.x;
    return u_input.c.x != _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(3392u, var_1.b.x), 64848u), u_input.b.x, u_input.b.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = func_3();
    var var_1 = ~select(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-68555i), ~u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 0i)), vec3<i32>(-19205i, u_input.a.x, u_input.a.x)), i32(-1i) * -u_input.a.x, true);
    let var_2 = vec4<f32>(1291f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-918f + 1059f), _wgslsmith_div_f32(640f, global0.x)) - 1369f), 1000f);
    global1 = array<vec4<i32>, 2>();
    var var_3 = Struct_1(u_input.a, u_input.b, 16116u, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_2.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1949f)))), _wgslsmith_f_op_f32(-global0.x)), 1f, global0.x));
    return Struct_1(-var_3.a, ~vec3<u32>(3696u, ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, var_3.b.x, 1u, u_input.c.x)), u_input.c.x), ~0u, global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_2.wzw)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = func_2(!any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    return false;
}

fn func_1() -> vec3<u32> {
    let var_0 = ~(~_wgslsmith_div_u32(_wgslsmith_div_u32(23262u, 43687u), u_input.c.x) & u_input.c.x);
    let var_1 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(global0.x + 535f) <= 2248f, func_4(func_2(false), vec2<f32>(-456f, global0.x), func_2(true), func_2(false)), true), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), true));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -954f, global0.x, -474f) + vec4<f32>(-788f, global0.x, 2644f, 980f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1512f, -1703f, global0.x, global0.x), vec4<f32>(-1558f, -1908f, -294f, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1583f, -764f, 415f) * vec4<f32>(-1166f, global0.x, -248f, 852f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, -1145f, global0.x))))));
    var var_2 = var_1.x;
    let var_3 = Struct_1(~(vec4<i32>(-1i) * -abs(vec4<i32>(0i, u_input.a.x, -2597i, 2147483647i))), select(vec3<u32>(reverseBits(4294967295u), 40797u, ~1u), ~u_input.c.zyx << (select(~vec3<u32>(u_input.b.x, 4294967295u, 1u), func_2(var_1.x).b, global0.x >= 928f) % vec3<u32>(32u)), true), firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(trunc(global0.x))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1544f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f)))), -1138f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) + vec3<f32>(-533f, global0.x, -369f))))));
    return select(~_wgslsmith_sub_vec3_u32(var_3.b, reverseBits(firstTrailingBit(var_3.b))), _wgslsmith_mult_vec3_u32(min(u_input.c.yzz, firstTrailingBit(vec3<u32>(4294967295u, 42139u, 51242u))) | min(abs(vec3<u32>(0u, 18202u, 4058u)), vec3<u32>(var_0, var_0, 4294967295u)), ~select(~vec3<u32>(var_0, 4294967295u, 4294967295u), vec3<u32>(87526u, u_input.b.x, 0u), var_1.xwx)), var_1.xwz);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1452f <= arg_0.d), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true)), true || all(vec3<bool>(true, false, true))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 834f, arg_0.d) + vec4<f32>(global0.x, -816f, -1478f, -259f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), -595f, -1290f, _wgslsmith_f_op_f32(f32(-1f) * -178f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, 427f, arg_0.d, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, arg_0.e.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(floor(1450f)), _wgslsmith_f_op_f32(global0.x + -1000f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -352f, 1717f, -350f)))))));
    let var_1 = Struct_1(arg_0.a, vec3<u32>(~select(~17906u, max(0u, arg_0.b.x), var_0), ((0u >> (1u % 32u)) >> (max(arg_0.c, arg_0.c) % 32u)) << (~1u % 32u), arg_0.b.x), func_1().x, 1154f, global0.yxz);
    let var_2 = arg_0;
    let var_3 = func_2(global0.x < arg_0.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(37354u, ~(~_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c)));
    var var_0 = false & !(_wgslsmith_dot_vec3_u32(vec3<u32>(18829u, u_input.b.x, 75291u), ~vec3<u32>(4294967295u, 24060u, u_input.b.x)) > 33913u);
    global2 = u_input.b.x;
    var var_1 = func_5(Struct_1(abs(firstLeadingBit(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x))) << (~u_input.c % vec4<u32>(32u)), func_1(), _wgslsmith_mod_u32(55920u, abs(u_input.b.x)), global0.x, global0.zzy));
    var_1 = func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_1.b, 62739u, var_1.d);
}

