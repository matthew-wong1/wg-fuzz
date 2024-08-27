struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(vec4<bool>(true, !arg_0.a.x, any(vec2<bool>(-2147483647i >= u_input.b, arg_1.b.x != arg_0.b.x)), !any(select(vec3<bool>(true, false, arg_1.b.x), vec3<bool>(true, false, false), arg_0.a.x))), vec3<bool>(true, arg_0.a.x, true));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(step(-171f, -734f)) <= _wgslsmith_f_op_f32(-1f), ~1i < ~(u_input.b << (u_input.a % 32u)));
    let var_2 = vec3<bool>(true, false, u_input.a <= _wgslsmith_add_u32(~_wgslsmith_mod_u32(0u, u_input.a), select(~4294967295u, firstTrailingBit(4294967295u), true)));
    var_1 = select(vec2<bool>(!(!select(var_2.x, arg_1.b.x, var_1.x)), var_0.b.x), !vec2<bool>(any(vec3<bool>(var_1.x, var_0.b.x, true)), true & (var_2.x & true)), arg_1.a.ww);
    var_0 = Struct_1(!select(select(var_0.a, var_0.a, var_0.a.x), vec4<bool>(true, true, true, var_1.x), any(select(vec2<bool>(arg_0.a.x, true), var_0.a.yz, true))), select(vec3<bool>(all(vec4<bool>(arg_1.a.x, arg_0.b.x, var_1.x, arg_1.a.x)), false, var_0.b.x), arg_0.b, arg_0.b));
    return select(!arg_0.a.xx, select(!arg_0.a.zw, select(select(!arg_0.b.yy, vec2<bool>(var_0.a.x, var_1.x), var_0.b.x && false), vec2<bool>(select(var_2.x, arg_1.a.x, false), true), arg_1.a.xx), vec2<bool>(var_2.x, any(arg_0.a))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: f32) -> vec3<u32> {
    let var_0 = vec3<bool>(true, !arg_0.x, func_3(global0[_wgslsmith_index_u32(u_input.a, 5u)], Struct_1(!arg_2, vec3<bool>(u_input.b < 1i, true || arg_0.x, arg_1.x))).x);
    global0 = array<Struct_1, 5>();
    var var_1 = ~countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -21506i, -23943i), vec3<i32>(u_input.b, 0i, -1i)), ~vec3<i32>(u_input.b, 44968i, -2147483647i)), u_input.b));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(f32(-1f) * -922f), false)), 303f);
    var var_3 = vec2<i32>(u_input.b, -24983i);
    return vec3<u32>(~_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mod_u32(25391u, u_input.a)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(66031u, 0u)), vec2<u32>(4294967295u, u_input.a))), 0u, ~_wgslsmith_mult_u32(u_input.a >> (min(1u, u_input.a) % 32u), ~1u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = select(_wgslsmith_mod_i32(u_input.b << (~reverseBits(u_input.a) % 32u), u_input.b), 0i, true);
    global0 = array<Struct_1, 5>();
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_mult_vec3_u32(~max(~vec3<u32>(u_input.a, 56351u, u_input.a), firstLeadingBit(vec3<u32>(40940u, 55742u, 1u))), _wgslsmith_mod_vec3_u32(func_4(!vec3<bool>(true, arg_2, arg_0.b.x), func_3(Struct_1(vec4<bool>(arg_0.b.x, arg_2, arg_2, arg_2), arg_0.a.ywx), Struct_1(vec4<bool>(arg_0.a.x, arg_2, arg_2, true), arg_0.b)), vec4<bool>(arg_0.b.x, arg_0.a.x, arg_2, false), _wgslsmith_div_f32(-1000f, -1140f)), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u))));
    let var_3 = vec4<bool>(max(~var_2.x << (~var_2.x % 32u), 103155u) != ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 5141u), vec4<u32>(52939u, 17482u, 24135u, var_2.x))), !(!arg_0.b.x), true, arg_0.a.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(237f)), 1454f);
}

fn func_1() -> Struct_1 {
    var var_0 = 1562f;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f * 161f) - _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 5u)], 1385f, false, 1680f))) * 1226f))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1766f - -275f), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 + var_1))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) + var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(34849u, 5u)], -1000f, true, -1280f))), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, false, true)), var_1, true, _wgslsmith_f_op_f32(f32(-1f) * -828f))), false))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    var var_3 = 1i;
    return global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 5u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(u_input.a, u_input.a));
    var var_1 = arg_0;
    var_1 = func_1();
    let var_2 = abs(((vec4<u32>(var_0, 0u, 0u, 63191u) & ~vec4<u32>(29138u, var_0, var_0, u_input.a)) | vec4<u32>(0u, ~u_input.a, var_0, 176u)) << (abs(~vec4<u32>(u_input.a, 0u, var_0, var_0)) % vec4<u32>(32u)));
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, abs(u_input.a)), 5u)], vec3<f32>(_wgslsmith_div_f32(-1000f, 617f), _wgslsmith_f_op_f32(sign(-1000f)), -834f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_f_op_f32(f32(-1f) * -441f), -1055f), func_1()), !vec3<bool>(true, u_input.b != -22251i, func_1().a.x)), func_3(func_1(), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(4294967295u), u_input.a, u_input.a), 5u)]).x && func_1().b.x, Struct_1(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), false), !func_1().b));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = Struct_1(vec4<bool>(all(vec2<bool>(var_0.a.x, !var_0.b.x)), !(!var_0.b.x) || var_0.a.x, !var_0.b.x, true), func_5(Struct_1(vec4<bool>(func_5(global0[_wgslsmith_index_u32(58845u, 5u)], vec3<f32>(-130f, -472f, 868f), vec4<f32>(-574f, 1883f, 129f, 423f), var_0).x, u_input.a <= u_input.a, select(true, var_0.b.x, true), true), var_0.a.wxy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, 1300f, 588f) - vec3<f32>(-2236f, 1439f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(736f, 963f, -868f, -346f), vec4<f32>(1050f, 140f, 506f, 585f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(260f, 178f, 833f, -581f))))), Struct_1(func_5(Struct_1(vec4<bool>(var_0.a.x, false, true, true), var_0.a.yzx), vec3<f32>(276f, -1025f, 1000f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1032f, -694f, 878f, 1000f))), func_6(Struct_1(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec3<bool>(true, true, var_0.a.x)), false, Struct_1(vec4<bool>(true, var_0.a.x, true, false), var_0.b))), !var_0.b)).xzw);
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(276f)) + -1320f), -211f)) + -700f)));
    var var_4 = 413f;
    var var_5 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~min(53030u, u_input.a), firstLeadingBit(~21271u)), 30018u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(46472u, 4294967295u, 1u, 0u)), vec4<u32>(u_input.a, 5416u, 0u, _wgslsmith_mult_u32(44106u, u_input.a)))), vec3<u32>(62829u, countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 53768u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 20270u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

