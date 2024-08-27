struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = -22443i;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec2<i32>(u_input.a, firstLeadingBit(u_input.a) | -2147483647i);
    return select(select(vec3<bool>(all(!vec4<bool>(arg_1.b, true, true, arg_1.b)), true, false), vec3<bool>(all(!vec2<bool>(arg_1.b, arg_0.b)), !(arg_1.a.x >= arg_1.a.x), false), arg_1.b), !vec3<bool>(arg_0.c == true, any(vec3<bool>(true, arg_1.b, arg_0.c)) & (4294967295u < arg_1.d), all(vec4<bool>(arg_0.c, arg_1.c, false, true))), !(!(!(!vec3<bool>(arg_1.b, arg_0.b, arg_1.c)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = u_input.b.x;
    global1 = _wgslsmith_sub_i32(~(~var_0 >> (1u % 32u)), _wgslsmith_clamp_i32(~2147483647i, abs(~(-1i)), u_input.a) & -(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27750i, 9932i, u_input.a), vec4<i32>(1i, u_input.a, var_0, var_0))));
    var_1 = u_input.b.x;
    return !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), true), vec3<bool>(max(u_input.b.x, 4294967295u) <= firstLeadingBit(1u), true, true), !func_3(Struct_1(vec4<f32>(global0.x, global0.x, global0.x, -1815f), true, false, 4294967295u), Struct_1(vec4<f32>(global0.x, 1000f, global0.x, global0.x), true, false, u_input.b.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-184f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(-934f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-329f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-447f, 397f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))));
    var var_2 = _wgslsmith_add_vec3_u32(abs(~max(u_input.b, vec3<u32>(4294967295u, 33247u, u_input.b.x))) & (_wgslsmith_sub_vec3_u32(select(u_input.b, u_input.b, vec3<bool>(true, true, arg_2.x)), firstTrailingBit(vec3<u32>(u_input.b.x, arg_1, arg_1))) | select(~vec3<u32>(arg_1, 4294967295u, arg_1), reverseBits(u_input.b), true)), ~max(firstTrailingBit(u_input.b), ~u_input.b) ^ u_input.b);
    let var_3 = _wgslsmith_f_op_f32(max(-197f, _wgslsmith_f_op_f32(ceil(var_1.x))));
    var var_4 = Struct_3(vec4<i32>(u_input.a, 69640i, 68560i, u_input.a), any(!(!(!vec4<bool>(var_0.x, false, false, var_0.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.zw))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 148f)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3, 678f, -602f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -853f, var_1.x, var_1.x) + vec4<f32>(1000f, var_3, -1000f, 1093f))), !arg_2.x, var_0.x, firstTrailingBit(u_input.b.x & 3959u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, global0.x, -1093f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(123f, var_3, -574f, 1018f)))), global0.x >= _wgslsmith_f_op_f32(f32(-1f) * -156f), select(true, all(arg_2.yy), all(vec2<bool>(arg_2.x, arg_2.x))), 1u), vec3<u32>(116313u ^ ~arg_1, 1u, var_2.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_4.c.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_4.c.b.a.xy)) * var_1.zz), !func_2().yz)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, 708f, var_4.c.c.a.x))), vec4<f32>(2047f, var_4.c.c.a.x, var_3, global0.x), vec4<bool>(var_0.x, false, true, arg_2.x))) * var_4.c.c.a), arg_2.x, !any(select(var_0, vec3<bool>(var_4.b, false, false), var_0.x)), firstTrailingBit(min(~0u, abs(70603u)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-398f, global0.x), -1080f, global0.x, global0.x))), !(!(var_0.x & false)), true, u_input.b.x), vec3<u32>(firstLeadingBit(0u), u_input.b.x, max(arg_1, 1u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), 100f, arg_0.a.x);
    let var_1 = func_4(vec2<i32>(u_input.a, abs(_wgslsmith_add_i32(-11363i, ~u_input.a))), 1u, func_3(func_4(~vec2<i32>(0i, u_input.a), ~arg_2.x, func_3(func_4(vec2<i32>(1i, u_input.a), 1u, vec3<bool>(arg_0.c.b, arg_0.b.c, arg_0.c.b)).c, Struct_1(vec4<f32>(-867f, 517f, arg_1.x, -114f), arg_0.b.b, arg_0.b.c, arg_0.b.d))).c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, arg_1.x, global0.x, -1000f))), !all(vec4<bool>(true, true, arg_0.b.b, false)), arg_0.b.b, (65297u >> (arg_0.b.d % 32u)) << (arg_2.x % 32u)))).c;
    global0 = _wgslsmith_f_op_vec2_f32(-var_1.a.yz);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-var_1.a.x))));
    let var_2 = vec4<bool>(false, !var_1.c && all(!select(vec4<bool>(var_1.c, true, true, false), vec4<bool>(true, true, false, arg_0.b.b), var_1.c)), var_1.b, arg_0.c.c);
    return arg_0.b;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec2<u32> {
    let var_0 = 20512u;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x));
    let var_1 = arg_0.c;
    global1 = arg_0.a.x;
    var var_2 = func_5(func_4(vec2<i32>(firstTrailingBit(57024i), select(_wgslsmith_add_i32(arg_0.a.x, arg_1), 1i, var_1.a.x == global0.x)), u_input.b.x, select(func_2(), func_3(arg_0.c.b, arg_0.c.b), arg_0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1270f * _wgslsmith_f_op_f32(-171f + arg_0.c.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.a.x + -1000f)), -1370f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1.b.a.x, -1960f))), var_1.b.a.wxw)), (_wgslsmith_f_op_f32(exp2(arg_0.c.a.x)) != _wgslsmith_div_f32(arg_0.c.a.x, global0.x)) | !var_1.c.b)), ~max(vec3<u32>(125934u, var_1.c.d, var_1.c.d) << (vec3<u32>(4294967295u, arg_0.c.c.d, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, var_0, 0u)) & vec3<u32>(~arg_0.c.b.d, func_4(vec2<i32>(arg_0.a.x, arg_0.a.x), 0u, vec3<bool>(false, true, var_1.b.b)).d.x | reverseBits(var_1.b.d), var_1.b.d & _wgslsmith_clamp_u32(var_0, 39546u, u_input.b.x)));
    return vec2<u32>(min(0u, 4294967295u), ~4294967295u & _wgslsmith_mult_u32(var_0, var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, true, global0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), 281f))));
    var var_1 = -298f;
    var var_2 = ~(~(func_1(Struct_3(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), true, Struct_2(vec2<f32>(global0.x, global0.x), Struct_1(vec4<f32>(-941f, 1000f, global0.x, global0.x), false, var_0, 19400u), Struct_1(vec4<f32>(970f, -337f, global0.x, -1000f), var_0, true, 1u), vec3<u32>(22926u, u_input.b.x, u_input.b.x))), u_input.a) & ~vec2<u32>(u_input.b.x, u_input.b.x))) >> (_wgslsmith_div_vec2_u32(u_input.b.xz, vec2<u32>(func_4(~vec2<i32>(u_input.a, u_input.a), ~u_input.b.x, !vec3<bool>(true, var_0, var_0)).b.d, u_input.b.x)) % vec2<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1049f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1423f), vec2<f32>(-1046f, global0.x), var_0)))) + vec2<f32>(func_4(vec2<i32>(1i, 1i), u_input.b.x >> (34247u % 32u), select(vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, true), vec3<bool>(var_0, var_0, var_0))).b.a.x, 203f)), func_5(func_4(vec2<i32>(u_input.a, ~1i), ~countOneBits(0u), vec3<bool>(true, u_input.b.x <= u_input.b.x, select(true, var_0, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(295f - -2116f), -413f, global0.x)), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.x, 51587u, 25396u), vec3<u32>(var_2.x, var_2.x, var_2.x), ~vec3<u32>(1u, var_2.x, var_2.x)), min(min(vec3<u32>(14663u, 20322u, 9345u), vec3<u32>(52932u, 112855u, 1u)), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u) >> (vec3<u32>(0u, 0u, u_input.b.x) % vec3<u32>(32u))), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(global0.x - global0.x), global0.x)), true, !(false && (false && var_0)), ~(~u_input.b.x)), min(vec3<u32>(u_input.b.x, var_2.x, 21474u), vec3<u32>(4294967295u, reverseBits(83678u), u_input.b.x << (var_2.x % 32u)) ^ u_input.b));
    var var_4 = ~vec4<u32>(0u, ~99899u, reverseBits(4294967295u), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(var_2.x >> (var_3.c.d % 32u), 32869u)));
    let var_5 = countOneBits(countOneBits(_wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, -63452i))), min(-vec2<i32>(-1i, 46847i), vec2<i32>(u_input.a, u_input.a)), ~(~vec2<i32>(-1i, 0i)))));
    var var_6 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-525f)))), 2149f, -617f), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, var_3.c.a.x, true)))), true))));
    let var_7 = _wgslsmith_f_op_f32(max(1008f, _wgslsmith_f_op_f32(-var_3.c.a.x)));
    let var_8 = func_5(var_3, var_3.c.a.xwz, vec3<u32>(u_input.b.x, ~abs(0u), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, abs(var_5.x), var_5.x, -min(-var_5.x, u_input.a)), vec2<i32>(-_wgslsmith_mod_i32(~1i, u_input.a & u_input.a), max(countOneBits(2526i), -26671i)), ~(~var_8.d << (u_input.b.x % 32u)), _wgslsmith_add_i32(~(-2147483647i), var_5.x), var_6.x);
}

