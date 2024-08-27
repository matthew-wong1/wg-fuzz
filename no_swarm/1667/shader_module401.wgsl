struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), arg_1.x, -481f, _wgslsmith_f_op_f32(-813f - -496f)) * arg_1) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2171f, 1926f, arg_0.x, _wgslsmith_div_f32(2727f, global0.x))))) + _wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(-903f)), _wgslsmith_f_op_f32(round(-190f)), -1459f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, arg_1.x, -451f, 1000f))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true), true))))));
    global0 = arg_1;
    var var_0 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 46329u), 10346u), abs(u_input.a.x) >> (1u % 32u), _wgslsmith_mod_u32(min(48973u, u_input.a.x), ~u_input.a.x), ~(~4294967295u)), ~max(~(~u_input.a.yxw), vec3<u32>(~u_input.a.x, ~64543u, u_input.a.x)), firstLeadingBit(u_input.a.x));
    let var_1 = Struct_1(select(u_input.a, ~var_0.a, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), ~(~vec3<u32>(9785u, ~67090u, 1u)), select(abs(~var_0.a.x) >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, 54446u) | vec2<u32>(var_0.b.x, 81929u)), var_0.b.zz), any(vec3<bool>(select(true, false, true), any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true))))));
    var var_2 = (abs(min(vec3<i32>(14100i, 0i, -46141i), vec3<i32>(-2147483647i, -2147483647i, 14384i))) ^ vec3<i32>(6909i, -_wgslsmith_mult_i32(0i, 10980i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -9602i), vec3<i32>(1i, 1i, 1i)))) << (reverseBits(vec3<u32>(69711u, ~_wgslsmith_sub_u32(var_0.b.x, 1u), ~33035u)) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + _wgslsmith_f_op_f32(-1165f - global0.x)), _wgslsmith_f_op_f32(trunc(198f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - -1074f))), -1661f)));
}

fn func_2() -> vec4<f32> {
    var var_0 = global0.yw;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-global0.zxy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 510f, 1000f, -813f)))) * vec4<f32>(-1480f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(-272f, 1000f)), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = select(select(vec3<bool>(true, false, any(vec2<bool>(true, true)) || false), vec3<bool>(!any(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), true)), vec3<bool>(_wgslsmith_dot_vec3_u32(~u_input.a.wzw, ~u_input.a.wwy) == firstLeadingBit(u_input.a.x << (u_input.a.x % 32u)), true, global0.x < _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))), !vec3<bool>(all(vec3<bool>(true, true, true)), true, false));
    var_0 = global0.xw;
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.wx - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-global0.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -235f, var_0.x, -1002f);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(0u, ~(~1u), min(0u, u_input.a.x) << (abs(33917u) % 32u));
    global0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(max(u_input.a.xy, var_0.xy)), vec2<u32>(0u, 11785u) & vec2<u32>(0u, arg_0.c)), ~(arg_0.c | ~4294967295u)) >> (~select(abs(vec2<u32>(arg_0.c, 0u)), _wgslsmith_clamp_vec2_u32(~u_input.a.yy, vec2<u32>(var_0.x, 0u), reverseBits(arg_0.a.zw)), true) % vec2<u32>(32u));
    var var_2 = 0i;
    let var_3 = select(select(!vec3<bool>(all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, false)), false), !vec3<bool>(false, true, global0.x >= -1000f), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(all(vec4<bool>(true, true, false, true)), true, var_0.x < var_0.x))), vec3<bool>(true, true, true), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))));
    return Struct_1(abs(u_input.a), ~vec3<u32>(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, arg_0.a.x)), _wgslsmith_add_u32(1u, arg_0.b.x), var_0.x), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1174f, arg_3.x, global0.x, 1129f)) - vec4<f32>(global0.x, arg_3.x, global0.x, 301f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, arg_3.x, 357f, global0.x))), vec4<bool>(true, true, true, true)))));
    let var_2 = arg_3.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-354f, arg_3.x, 1045f, var_1.x), vec4<f32>(1352f, -838f, var_1.x, 1410f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, -784f, arg_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(411f, -696f, -1000f, var_2), vec4<f32>(arg_3.x, var_1.x, var_1.x, var_2)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(705f - global0.x), var_1.x, var_1.x, arg_3.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 206f, 207f, -1394f)))));
    let var_3 = -25068i;
    return func_1(func_1(func_1(func_1(arg_1))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(global0.x)), global0.x, _wgslsmith_f_op_f32(min(750f, global0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1109f * -1036f), global0.x, global0.x, _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(1000f, global0.x, -1211f), vec4<f32>(1330f, -2171f, -1017f, 804f))).x) + vec4<f32>(_wgslsmith_f_op_f32(global0.x - -1146f), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(floor(-2023f)), global0.x))));
    let var_0 = select(vec4<bool>(true, true, true, true), !vec4<bool>((31819u >> (u_input.a.x % 32u)) >= countOneBits(4294967295u), any(vec2<bool>(false, false)), any(vec2<bool>(false, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec4<bool>(_wgslsmith_f_op_f32(-global0.x) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2456f + global0.x), _wgslsmith_f_op_f32(-244f * 812f), true)), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)) & true, true));
    let var_1 = func_4(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 354u, u_input.a.x, 0u), u_input.a), vec4<u32>(12899u, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), arg_0.a), func_4(arg_0, arg_0, -vec2<i32>(1i, -34086i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x)))).a), vec3<u32>(51082u, u_input.a.x, 6071u) | vec3<u32>(abs(arg_0.c), arg_0.b.x ^ 26520u, func_4(Struct_1(arg_0.a, u_input.a.wyz, arg_0.b.x), Struct_1(vec4<u32>(u_input.a.x, arg_0.c, 52611u, 496u), vec3<u32>(arg_0.c, 98014u, u_input.a.x), u_input.a.x), vec2<i32>(-52778i, 34113i), global0.xw).a.x), ~(~30033u)), func_4(func_1(Struct_1(vec4<u32>(u_input.a.x, 26797u, 50668u, u_input.a.x), u_input.a.xwx, max(4294967295u, 18224u))), func_1(func_1(arg_0)), firstLeadingBit(min(~vec2<i32>(1i, -31390i), -vec2<i32>(-1i, -5572i))), global0.zw), -abs(firstTrailingBit(~vec2<i32>(-6293i, -1574i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-631f, 982f) + global0.yy), vec2<f32>(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.xy * global0.xy)))));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(-778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1479f, 1f)) - _wgslsmith_f_op_f32(global0.x * -1357f)), -812f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1070f, _wgslsmith_f_op_f32(abs(-537f)), false)), -579f, global0.x, -478f)));
    var var_2 = Struct_1(reverseBits(select(arg_0.a | ~arg_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(16222u, var_1.b.x, 5703u, 1u), vec4<u32>(2752u, arg_0.a.x, 79852u, 1u)), true)), firstTrailingBit(select(~vec3<u32>(1u, 0u, 1u) & ~vec3<u32>(arg_0.b.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec3_u32(~vec3<u32>(98385u, 4294967295u, var_1.a.x), vec3<u32>(1u, 41986u, 4294967295u)), !var_0.x)), select(~(~var_1.a.x), _wgslsmith_sub_u32(97109u, _wgslsmith_div_u32(~var_1.c, min(u_input.a.x, arg_0.c))), !any(var_0)));
    return func_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 308f, -1445f, 1534f))) * vec4<f32>(global0.x, -703f, 1205f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-296f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) - 1362f)), _wgslsmith_f_op_f32(-global0.x)), !all(vec2<bool>(true, true))));
    let var_0 = func_5(func_4(func_1(Struct_1(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(0u, u_input.a.x))), func_1(Struct_1(vec4<u32>(1u, 38405u, u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(45203u, 0u, 15127u)), ~19299u)), vec2<i32>(_wgslsmith_sub_i32(select(37001i, 13893i, true), -47706i << (u_input.a.x % 32u)), 20389i), global0.zz));
    global0 = vec4<f32>(-272f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1507f + -385f) + _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), !all(vec2<bool>(true, true)) & ((0u >= u_input.a.x) & false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))) + global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(701f, global0.x)), _wgslsmith_f_op_f32(max(-1015f, global0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    var var_1 = !(!any(vec4<bool>(true, true, true, true))) | true;
    let var_2 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -2644f, 1037f))), vec4<u32>(abs(countOneBits(min(u_input.a.x, 0u))), 15147u, _wgslsmith_sub_u32(47353u, 1u), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, var_0.c), select(var_0.b.x, 19797u, false)))));
}

