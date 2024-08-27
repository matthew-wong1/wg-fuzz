struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1333f, arg_0.x, -771f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, 563f, arg_0.x, -360f), vec4<f32>(538f, arg_0.x, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, arg_0.x, -1023f, -1844f) + vec4<f32>(arg_0.x, arg_0.x, 1357f, arg_0.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -225f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1000f, arg_0.x, arg_0.x), vec4<f32>(286f, var_0.x, arg_0.x, 1031f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(857f, 1000f, arg_0.x, arg_0.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-480f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(ceil(314f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-412f * -1356f), all(vec3<bool>(false, false, true))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1855f + -1000f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(ceil(1068f)))))));
    global0 = array<vec4<i32>, 19>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 315f, -709f, 832f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1202f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 448f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 419f, var_0.x, -1087f))))));
    global0 = array<vec4<i32>, 19>();
    return ~(~u_input.a.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1926f, 310f, -355f), vec3<f32>(891f, -1154f, -608f), vec3<bool>(true, true, arg_0.x))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(684f, -1381f, -236f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-732f * -509f), _wgslsmith_f_op_f32(round(-900f)), 359f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(462f, -1344f, 486f), vec3<f32>(688f, 105f, -1559f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))))));
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    var var_1 = arg_0;
    var var_2 = max(min(_wgslsmith_clamp_i32(~16085i, -(i32(-1i) * -17964i), -_wgslsmith_mod_i32(9647i, -13132i)), -2147483647i), ~_wgslsmith_add_i32(select(~16445i, _wgslsmith_mult_i32(-21337i, 1i), true), ~1i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)))))));
}

fn func_2(arg_0: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -444f, 491f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(605f, -524f, -1813f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1062f)), _wgslsmith_f_op_f32(min(1085f, -1166f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(736f)) < -353f)) - _wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-788f, -1000f, 505f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(771f, -255f, -283f)) * vec3<f32>(_wgslsmith_f_op_f32(-674f - -193f), -840f, -1130f)), vec3<f32>(1f, 840f, _wgslsmith_div_f32(1393f, -839f)), true)));
    var var_1 = -433f;
    var var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(-9121i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-52732i, -77779i, 12027i, -17134i), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(31883i, -57378i, true) ^ firstTrailingBit(1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(-2147483647i, 23888i, 1i), vec3<i32>(-29208i, 2147483647i, 0i))), ~firstTrailingBit(vec3<i32>(1i, 0i, 33995i)), abs(~vec3<i32>(56790i, 5027i, 1i))), ~vec3<i32>(4901i, 0i, ~(-2147483647i)), vec3<i32>(~min(-2147483647i, 18883i), -11431i, max(-37697i, reverseBits(-2147483647i)))));
    let var_3 = Struct_2(var_0);
    var var_4 = Struct_1(_wgslsmith_mult_i32(max(_wgslsmith_sub_i32(var_2.x, 1i), var_2.x), -(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<i32>(-2147483647i, 81250i, 905i, -11644i)) << (u_input.a.x % 32u))), ~(~0u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(38095i, var_2.x), -reverseBits(16687i)) << (func_3(_wgslsmith_f_op_vec3_f32(round(var_0))) % 32u), vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.x, 20966i, var_2.x), -vec3<i32>(var_2.x, -24131i, 25376i)) >= 1i));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -955f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -685f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, var_3.a.x, 613f, 194f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(852f, -1846f, var_3.a.x, var_3.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_3.a.x, -1032f, 935f, 1000f)), vec4<f32>(-2826f, var_0.x, 967f, var_3.a.x))))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<vec4<i32>, 19>();
    var var_0 = arg_2;
    var_0 = Struct_2(arg_1.xzw);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) - arg_0))));
    var var_2 = -_wgslsmith_sub_i32(~_wgslsmith_div_i32(2965i, 1i), -abs(-17747i)) & ~(~(~(0i << (u_input.a.x % 32u))));
    return arg_2;
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = array<vec4<i32>, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(399f, -261f, -1212f), vec3<f32>(-1431f, -370f, -391f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, -1000f, -954f) + vec3<f32>(770f, 744f, -880f)))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(max(-1301f, _wgslsmith_f_op_f32(f32(-1f) * -1884f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)))));
    let var_1 = func_5(1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.x))), Struct_2(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, arg_0.x, false), 72384u)).x, _wgslsmith_f_op_f32(var_0.a.x * -485f), var_0.a.x)));
    var var_2 = true;
    global0 = array<vec4<i32>, 19>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    let var_0 = vec3<bool>(func_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, true)), false, true), vec3<bool>(true, true, true))), false, true);
    var var_1 = vec4<u32>(u_input.a.x, u_input.a.x ^ 40588u, ~u_input.a.x, 1081u);
    var var_2 = ~(~(~(~(~vec2<u32>(1u, var_1.x)))));
    let var_3 = select(vec4<u32>(var_1.x, ~(~0u), ~var_2.x, u_input.a.x), vec4<u32>(var_1.x, u_input.a.x, var_2.x, reverseBits(var_1.x)), vec4<bool>(true, true, true, true));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(var_0.x, false, false), var_0, true), var_3.x)).x, _wgslsmith_f_op_f32(select(-1501f, _wgslsmith_f_op_f32(ceil(-192f)), true)))), 498f));
    let var_5 = _wgslsmith_f_op_vec2_f32(-var_4);
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(var_3 & vec4<u32>(var_1.x, var_2.x, 4294967295u, var_1.x)), reverseBits(min(vec4<u32>(30031u, 1u, 0u, var_1.x), var_3))) ^ ~countOneBits(vec4<u32>(1u, 1u, var_3.x, 8574u)), (_wgslsmith_div_vec2_u32(var_3.xx, ~u_input.a) >> (reverseBits(firstTrailingBit(var_1.yx)) % vec2<u32>(32u))) & vec2<u32>(58940u, abs(var_3.x) ^ max(1u, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-830f, var_4.x, 1029f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, var_5.x, var_5.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -475f, 675f))), var_0.x))), _wgslsmith_f_op_vec3_f32(func_4(var_0, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_2.x, 34519u), func_3(vec3<f32>(var_5.x, -1000f, var_5.x))))));
}

