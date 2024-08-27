struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, false, true, true));

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = true;
    global3 = arg_1;
    var var_1 = global2.a.x;
    var_1 = arg_1.a.x;
    var_1 = global2.a.x;
    return Struct_2(global2.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mod_vec3_i32((vec3<i32>(reverseBits(arg_1.c), 1i, 1i) >> (vec3<u32>(~arg_3, 26462u, _wgslsmith_add_u32(0u, global3.d.x)) % vec3<u32>(32u))) ^ vec3<i32>(global3.b.x, -15869i, 2543i), -vec3<i32>(_wgslsmith_dot_vec3_i32(select(u_input.b, u_input.b, true), vec3<i32>(global3.b.x, -8336i, 27762i)), arg_1.c, ~arg_1.c));
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(select(firstLeadingBit(abs(-1i)), ~max(var_1.x, arg_1.c), !arg_1.b.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 0i, -1i, global3.b.x), vec4<i32>(-1i, u_input.c.x, 0i, arg_1.c) | vec4<i32>(global3.b.x, var_1.x, 24172i, 18000i)), -vec4<i32>(-1i, var_1.x, 2147483647i, u_input.b.x) ^ vec4<i32>(38967i, -13095i, -6145i, 37280i)), arg_1.c & countOneBits(1i)), u_input.b);
    var var_2 = ~_wgslsmith_sub_i32(countOneBits(arg_1.c), select(~global3.b.x, _wgslsmith_mod_i32(select(47548i, 0i, true), u_input.b.x), true));
    var var_3 = Struct_3(arg_1.d);
    return select(var_0.d, !(!vec4<bool>(true, false, 0i != var_1.x, true)), true);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = func_2(vec3<f32>(-443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)) * _wgslsmith_f_op_f32(1649f + _wgslsmith_f_op_f32(min(-631f, 875f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.a.x))))), Struct_1(global3.a, ~(-u_input.b.xz) ^ abs(reverseBits(global3.b)), global3.c, global3.d, (max(-49447i, u_input.c.x) | u_input.c.x) != global3.b.x), -663f);
    let var_1 = !(!global3.c.x) & !arg_0.d.x;
    return vec4<bool>(all(arg_0.b.a.xxy), !(u_input.a >= 1i), true & var_1, func_3(func_2(arg_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, var_0.a.x, -2423f) + vec3<f32>(-1000f, global1.x, global2.a.x)), -arg_1, arg_0.d.zy, ~global3.d, all(vec2<bool>(true, false))), -311f), arg_0, 27598u, _wgslsmith_div_u32(firstLeadingBit(global3.d.x), ~(~u_input.d))).x);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global3.a);
    let var_1 = select(vec4<bool>(false, false, !(!global3.e) && global3.c.x, true), func_4(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1244f, global2.a.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global3.a.x, global3.a.x) - vec3<f32>(-1003f, 615f, var_0.x))), Struct_3(global0.a), countOneBits(i32(-1i) * -56835i), func_3(func_2(global3.a, Struct_1(vec3<f32>(-1048f, 624f, global1.x), u_input.b.zx, global0.a.yz, vec3<u32>(global3.d.x, global3.d.x, global3.d.x), global0.a.x), -2428f), Struct_4(var_0, Struct_3(global0.a), global3.b.x, vec4<bool>(global3.e, true, global3.e, global0.a.x)), 32869u, global3.d.x)), vec2<i32>(-12675i, ~reverseBits(0i))), !global0.a);
    let var_2 = 9976i;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.yx, var_0.yy)));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1758f, 1040f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1027f, global3.a.x, global1.x)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(123f, 611f, 491f), var_0)))))), countOneBits(abs(firstLeadingBit(global3.b ^ vec2<i32>(-1i, var_2)))), global0.a.wz, vec3<u32>((global3.d.x << (reverseBits(43560u) % 32u)) & global3.d.x, firstLeadingBit(countOneBits(u_input.d)), 4294967295u), any(select(select(vec2<bool>(global0.a.x, false), global3.c, true), func_4(Struct_4(global3.a, Struct_3(var_1), u_input.a, global0.a), ~vec2<i32>(u_input.c.x, 20996i)).ww, !var_1.x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1100f)) - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(191f, -2538f)))))), global3.a.x, true));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_4 {
    global2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -780f))))), _wgslsmith_f_op_f32(1143f + -653f), global1.x), Struct_1(arg_2.wwx, -vec2<i32>(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(65362i, 0i, u_input.c.x, 43602i), vec4<i32>(arg_0.x, -2008i, 0i, -1i))), vec2<bool>(any(global0.a.xxx), _wgslsmith_f_op_f32(-global3.a.x) < _wgslsmith_f_op_f32(612f - -278f)), global3.d, false), global2.a.x);
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) * _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global1.x * 419f)))));
    var var_1 = 1u;
    global1 = _wgslsmith_f_op_vec3_f32(floor(arg_2.xxy));
    global1 = _wgslsmith_f_op_vec3_f32(step(global3.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2049f, var_0.a.x, var_0.a.x) + vec3<f32>(global1.x, global3.a.x, -2246f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, global3.a.x, global3.a.x), global3.a, arg_1.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-476f, 724f, 418f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.yyx, arg_2.wxz))))), select(global0.a.xxy, !(!arg_1), global0.a.xyx)))));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f * -442f)), -1962f, _wgslsmith_f_op_f32(-global2.a.x)), Struct_3(global0.a), _wgslsmith_mult_i32(_wgslsmith_div_i32(-22409i, _wgslsmith_mult_i32(global3.b.x, 6769i) ^ -1i), abs(u_input.c.x)), vec4<bool>(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(269f - arg_2.x))) > _wgslsmith_f_op_f32(step(global2.a.x, -762f)), global3.c.x, arg_1.x, all(select(!arg_1.zz, vec2<bool>(global0.a.x, global0.a.x), !global3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, global3.d.x), vec4<u32>(22213u, global3.d.x, u_input.d, 0u)))));
    let var_1 = func_5(firstTrailingBit((_wgslsmith_mult_vec2_i32(vec2<i32>(-22834i, global3.b.x), vec2<i32>(0i, global3.b.x)) >> (abs(var_0.yy) % vec2<u32>(32u))) << (vec2<u32>(~var_0.x, _wgslsmith_add_u32(1u, 31369u)) % vec2<u32>(32u))), global0.a.ywx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1316f))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1278f - -652f) - -120f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global2.a.x, global2.a.x, global2.a.x)))))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(sign(-502f)), -442f, func_2(var_1.a, Struct_1(vec3<f32>(-789f, -960f, -161f), vec2<i32>(var_1.c, 2147483647i), global3.c, var_0.wzw, var_1.d.x), 1408f).a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-global3.a), u_input.b.zz, select(!var_1.b.a.xx, vec2<bool>(true, func_4(var_1, vec2<i32>(u_input.c.x, var_1.c)).x), all(select(vec2<bool>(true, true), vec2<bool>(global3.c.x, global0.a.x), true))), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.d.x, var_0.x, u_input.d), var_0.yxy) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), var_0.xzy), -2147483647i < global3.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -562f), var_1.a.x)))), _wgslsmith_f_op_f32(-var_1.a.x), 44405u <= countOneBits(global3.d.x ^ global3.d.x))));
    let var_3 = var_0.x;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-288f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(634f)) + _wgslsmith_f_op_f32(round(-980f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global3.a.x)))), global3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(i32(-1i) * -global3.b.x, var_1.c), global3.d ^ var_0.zxx, abs(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.d.x, 59899u, 71191u, 4770u), vec4<u32>(u_input.d, 24713u, 0u, u_input.d)), ~_wgslsmith_div_u32(u_input.d, 22742u), ~_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x), 30047u)), vec2<u32>(global3.d.x, ~(~firstTrailingBit(1700u))));
}

