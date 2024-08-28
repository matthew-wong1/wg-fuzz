struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~countOneBits(~34853u);
    global1 = array<Struct_2, 8>();
    var var_1 = !vec3<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))) || all(vec2<bool>(true, true)), !all(vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -319f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), global0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1018f, global0.x, global0.x, -233f), vec4<f32>(-684f, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -130f, global0.x, global0.x) * vec4<f32>(global0.x, -868f, -1511f, -164f)))))));
    let var_2 = ~u_input.b < u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -2122f))), global0.x) * global0.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.yx));
    global1 = array<Struct_2, 8>();
    var var_1 = var_0.a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), -1002f) * vec2<f32>(_wgslsmith_f_op_f32(1607f + global0.x), _wgslsmith_f_op_f32(387f + -2271f)))));
    let var_3 = true;
    return Struct_3(Struct_2(_wgslsmith_mod_u32(select(25672u, abs(58051u), var_3), ~u_input.d), arg_0.b, arg_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(min(global0.xw, _wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(arg_1, arg_1)))))), arg_0.e), all(select(vec2<bool>(select(var_3, var_3, false), !var_3), select(select(vec2<bool>(var_3, var_3), vec2<bool>(var_3, var_3), var_3), select(vec2<bool>(var_3, true), vec2<bool>(var_3, var_3), var_3), true), true)), var_3, _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c, -38788i), -3554i, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.b)), ~(-2147483647i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = 67361i;
    return func_2(global1[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1588f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + 247f), -159f))) - arg_1.x)).a.b;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(u_input.a, vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x)))), global0.x), func_2(global1[_wgslsmith_index_u32(~((1316u | u_input.d) >> (1u % 32u)), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -386f) + 664f) - global0.x)), -1000f);
    var var_1 = func_2(func_2(Struct_2(abs(min(40831u, u_input.d)), func_4(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_0.a.x, -573f), global0.yyx)), func_2(global1[_wgslsmith_index_u32(u_input.d, 8u)], global0.x), 1047f), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.ww)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a)), func_2(global1[_wgslsmith_index_u32(select(u_input.d, 1u, false), 8u)], _wgslsmith_f_op_f32(-global0.x)).a.b), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 27790u), 8u)], _wgslsmith_f_op_f32(ceil(1025f))).a.b.a.x).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))));
    var_1 = Struct_3(Struct_2(_wgslsmith_clamp_u32(~var_1.a.a, ~1u, countOneBits(u_input.d)) ^ (_wgslsmith_sub_u32(u_input.d, var_1.a.a) << (3792u % 32u)), Struct_1(vec2<f32>(func_4(u_input.a, global0.xwz, Struct_3(Struct_2(u_input.d, var_1.a.c, Struct_1(var_0.a), Struct_1(vec2<f32>(-598f, -581f)), var_1.a.c), false, true, u_input.c), global0.x).a.x, _wgslsmith_f_op_f32(-var_1.a.c.a.x))), var_1.a.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1625f, global0.x))), var_1.a.c.a, !var_1.c))), func_4(vec3<i32>(-17110i, -2147483647i, 61674i) & vec3<i32>(-1i, u_input.c, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.xzy + vec3<f32>(1686f, -1557f, 1021f)) - _wgslsmith_f_op_vec3_f32(-global0.zyw)), Struct_3(Struct_2(66295u, var_1.a.e, Struct_1(var_0.a), Struct_1(vec2<f32>(global0.x, -1000f)), Struct_1(var_1.a.c.a)), false, true, u_input.a.x), global0.x)), false, !(!var_1.b), _wgslsmith_div_i32(var_1.d, var_1.d));
    let var_2 = var_0.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f * -356f)), global0.x)));
    var var_3 = func_2(Struct_2(1u, func_4(~select(vec3<i32>(-3867i, -15624i, u_input.c), u_input.a, var_1.c), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-806f, var_1.a.d.a.x, -1220f), global0.wyy, vec3<bool>(var_1.c, var_2, false))))), Struct_3(var_1.a, !var_1.c, !var_2, -50806i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c.a.x)))), var_1.a.d, var_1.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.wy)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -917f) + global0.x) * var_1.a.e.a.x), 369f)));
    return func_2(Struct_2(~(~0u), func_4(u_input.a, _wgslsmith_f_op_vec3_f32(abs(global0.wyy)), Struct_3(Struct_2(u_input.d, var_1.a.b, var_1.a.e, var_1.a.c, Struct_1(var_1.a.b.a)), any(vec4<bool>(var_2, true, true, true)), !var_1.c, ~var_1.d), -162f), var_1.a.d, var_1.a.e, func_4(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1511f, global0.x) + _wgslsmith_div_vec3_f32(global0.zyy, vec3<f32>(var_1.a.b.a.x, -1651f, -727f))), Struct_3(func_2(Struct_2(1u, Struct_1(var_1.a.e.a), Struct_1(var_3.a.d.a), var_1.a.d, var_3.a.b), global0.x).a, false, var_3.b, -25895i), 1000f)), var_1.a.e.a.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), true, any(vec3<bool>(true, false, true)), ~_wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(u_input.a.x)), ~u_input.c));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -326f), var_0.a.e.a.x, _wgslsmith_f_op_f32(-var_0.a.d.a.x), _wgslsmith_f_op_f32(-779f * global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(516f, global0.x, var_0.a.d.a.x, -500f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-766f, var_0.a.d.a.x, -344f, var_0.a.b.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(800f, global0.x, 609f, -689f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, var_0.a.b.a.x, -1000f, var_0.a.c.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1167f, global0.x, var_0.a.e.a.x) - vec4<f32>(-704f, 1104f, 694f, -907f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, var_0.a.c.a.x, 1000f, var_0.a.c.a.x) + vec4<f32>(var_0.a.b.a.x, var_0.a.e.a.x, global0.x, -1435f)) * vec4<f32>(global0.x, -812f, global0.x, global0.x)))));
    global0 = vec4<f32>(-1837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.a.x * _wgslsmith_f_op_f32(global0.x - -1172f)) * -738f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(trunc(959f))), var_0.a.b.a.x);
    let var_1 = var_0.a;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 471f, 273f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 269f, -1538f) + vec4<f32>(var_1.c.a.x, 1355f, 168f, var_1.e.a.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.a.x + -1344f) - global0.x), var_0.a.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)), 825f)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<i32>(2147483647i, u_input.a.x) << (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u))) >> (vec2<u32>(select(24371u, _wgslsmith_add_u32(u_input.d, 4294967295u), false), u_input.d) % vec2<u32>(32u)), var_1.b.a, _wgslsmith_f_op_f32(-var_0.a.e.a.x), ~(~var_0.d));
}

