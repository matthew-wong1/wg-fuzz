struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1365f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: i32, arg_3: bool) -> bool {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) - -1229f)))));
    let var_0 = arg_3;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(123f, 586f), _wgslsmith_f_op_f32(round(-402f))), 1f, any(select(vec2<bool>(false, false), vec2<bool>(true, var_0), false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1138f, _wgslsmith_f_op_f32(abs(1516f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f + 283f) - _wgslsmith_f_op_f32(-883f + 448f)))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(380f * -1763f)));
    global0 = _wgslsmith_f_op_f32(-1330f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(ceil(1f))));
    return arg_3;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(1i, func_1(abs(vec2<u32>(4294967295u, 0u)) >> (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~(~(421u << (u_input.a % 32u))), firstLeadingBit(1i), true), min(~2147483647i, 1i), vec4<bool>(!func_1(vec2<u32>(1u, 59524u), abs(1u), _wgslsmith_mult_i32(0i, 0i), true), true, true, false));
    let var_1 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1287f * -168f), _wgslsmith_f_op_f32(204f - -421f))))) * -1497f);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))));
    var var_0 = !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(vec2<u32>(u_input.a, u_input.a), u_input.a, 56155i, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    let var_1 = Struct_2(select(vec2<u32>(1u >> (u_input.a % 32u), 7083u), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(u_input.a, 1u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), true))), 397f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(1311f))))), !(!any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), var_0.x))), Struct_1(0i, false, 1i, select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), select(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x), select(u_input.a, 1u, var_0.x) > 59412u)), Struct_1(0i, select(true, false, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x))), 2147483647i, select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, var_0.x, var_0.x), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(false, false, true, var_0.x)), vec4<bool>(var_0.x, true, false, false), any(vec2<bool>(true, true)))), Struct_1(select(-34592i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -30801i)), true), true, ~(-9186i), !vec4<bool>(var_0.x, all(vec3<bool>(false, var_0.x, true)), var_0.x, false || var_0.x)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2128f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1000f + 804f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-835f - -954f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1612f, 324f, true))), -915f))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec2<u32>(u_input.a, ~u_input.a), func_1(vec2<u32>(countOneBits(u_input.a & 45155u), 2601u), 1u, ~_wgslsmith_add_i32(countOneBits(-1i), -3024i >> (u_input.a % 32u)), true), func_2(), Struct_1(-27634i, func_2().d.x, ~(-(i32(-1i) * -805i)), !vec4<bool>(any(vec3<bool>(true, true, true)), true, u_input.a != u_input.a, true)), func_2());
    let var_1 = Struct_2(vec2<u32>(~(~_wgslsmith_mult_u32(47582u, 0u)), max(0u, 1u)), !var_0.c.b, func_2(), Struct_1(abs(func_2().a), var_0.e.b, ~reverseBits(12647i), vec4<bool>(var_0.c.d.x, !var_0.c.b, any(vec2<bool>(var_0.c.d.x, var_0.e.d.x)), !(-1i >= var_0.d.c))), func_2());
    var var_2 = Struct_3(var_0.c.d.x, Struct_2(~var_1.a, true, var_0.d, var_1.c, func_2()), _wgslsmith_mod_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, u_input.a, var_0.a.x), vec3<u32>(0u, 4294967295u, 1501u))), ~(~firstLeadingBit(vec3<u32>(4294967295u, var_1.a.x, var_0.a.x)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_0.c.c), var_0.e.c), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1.c.a), vec2<i32>(-20532i, 1i)), firstLeadingBit(vec2<i32>(var_0.d.a, 0i)))), -39528i));
    let var_3 = ~abs(vec2<u32>(0u >> (~var_0.a.x % 32u), ~var_0.a.x));
    let var_4 = var_1;
    var var_5 = 30020u;
    var var_6 = _wgslsmith_sub_u32(var_2.b.a.x, 4294967295u);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(~var_2.b.d.c) & _wgslsmith_div_i32(47473i, -8926i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, -857f, -680f)))))), var_4.a);
}

