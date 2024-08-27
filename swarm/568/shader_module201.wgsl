struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<f32, 32> = array<f32, 32>(-303f, -712f, -759f, 481f, 411f, 213f, 986f, -1000f, 343f, 432f, -645f, -108f, 561f, 249f, 1104f, -1518f, 1727f, -818f, 671f, -1000f, -517f, 1640f, 359f, -667f, -1077f, 1543f, 896f, -821f, -1113f, 166f, -235f, 1193f);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(0i, 11023i, i32(-2147483648), 1i), 1i, false);

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(2101f, 1007f, 598f), vec3<f32>(275f, 598f, -344f), vec3<f32>(-2431f, 267f, 264f), vec3<f32>(1103f, -1212f, -758f), vec3<f32>(2294f, -482f, -692f), vec3<f32>(794f, 406f, -505f), vec3<f32>(343f, -1901f, -2197f), vec3<f32>(-787f, 559f, -1923f), vec3<f32>(915f, -1632f, 707f), vec3<f32>(-1611f, 1058f, 1298f), vec3<f32>(-1057f, -1579f, -1000f), vec3<f32>(1000f, -1206f, 1000f), vec3<f32>(1000f, -366f, 208f), vec3<f32>(321f, -815f, 1481f), vec3<f32>(-773f, -266f, 570f), vec3<f32>(1023f, 134f, 1000f), vec3<f32>(496f, -1119f, -1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    global2 = Struct_3(vec4<i32>(~_wgslsmith_mod_i32(global2.a.x, 3841i) | ~global2.a.x, 3248i, 22422i, 13271i), global2.b, !arg_1.b & (_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(142f, global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), arg_0.x)) > _wgslsmith_f_op_f32(arg_0.x * 882f)));
    var var_0 = Struct_1(~(~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 42367u, 0u, arg_1.a.a.x), arg_1.a.a), arg_1.a.a, true)), 3936u);
    return -vec4<i32>(-(firstLeadingBit(global2.a.x) ^ abs(global2.a.x)), 2147483647i | firstTrailingBit(abs(u_input.d)), ~(i32(-1i) * -6083i), global2.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_i32(max(u_input.d, _wgslsmith_mult_i32(~(arg_1.b ^ 458i), ~arg_1.a.x & 1i)), _wgslsmith_dot_vec3_i32(global2.a.zyx, -vec3<i32>(-93564i, -1i, arg_1.b)));
    global3 = array<vec3<f32>, 17>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b, 1u), vec4<u32>(2134u, arg_0.a.x, arg_0.a.x, u_input.c.x)))), arg_0.a), ~0u), 17u)];
    let var_2 = arg_2;
    let var_3 = vec2<i32>(-2147483647i, -(countOneBits(global2.a.x) & 2147483647i) ^ u_input.d);
    return global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0.a.xzx | arg_0.a.yyw, vec3<u32>(1u, select(arg_0.b, 4294967295u, false), arg_0.b))), 17u)];
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.a), ~0u), Struct_3(func_3(vec2<f32>(global1[_wgslsmith_index_u32(44729u, 32u)], -148f), Struct_2(Struct_1(vec4<u32>(97867u, 36760u, u_input.a, 4294967295u), u_input.b), arg_1.c), Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 53911u), 34553u), global2.c)), -30958i, !arg_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2277f - global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), _wgslsmith_div_f32(1844f, global1[_wgslsmith_index_u32(u_input.c.x, 32u)]))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global1[_wgslsmith_index_u32(22406u, 32u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1732f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 32u)] + 1416f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], -440f, var_0.x, global1[_wgslsmith_index_u32(u_input.a, 32u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, var_0.x, 1000f, 1046f))))), u_input.a >= u_input.a));
    var var_2 = any(select(vec3<bool>(true || (u_input.c.x < 47022u), all(vec2<bool>(false, global2.c)) | global2.c, arg_1.c), !select(select(vec3<bool>(false, arg_0.c, global2.c), vec3<bool>(global2.c, arg_0.c, false), vec3<bool>(arg_1.c, false, arg_1.c)), select(vec3<bool>(true, arg_0.c, global2.c), vec3<bool>(true, arg_1.c, global2.c), arg_1.c), vec3<bool>(false, true, true)), true != (arg_1.c && false)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 1190f), -123f);
    let var_4 = select(!vec4<bool>(true, _wgslsmith_f_op_f32(step(var_1.x, 289f)) == _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b, 32u)])), global2.c, !(!arg_1.c)), vec4<bool>(any(select(!vec4<bool>(global2.c, global2.c, arg_1.c, arg_0.c), vec4<bool>(global2.c, true, arg_1.c, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, arg_0.c, global2.c), vec4<bool>(arg_1.c, false, arg_0.c, true)))), (firstTrailingBit(4833i) << (u_input.b % 32u)) < ~(-11543i), !(!arg_0.c), all(!select(vec2<bool>(false, arg_1.c), vec2<bool>(arg_0.c, arg_0.c), global2.c))), vec4<bool>(true != (var_1.x > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 32u)])), true, true, !all(vec4<bool>(true, false, arg_1.c, true))));
    return -997i;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-global2.a.x, global2.b), _wgslsmith_mod_i32(select(countOneBits(global2.a.x), u_input.d, global1[_wgslsmith_index_u32(u_input.b, 32u)] < 517f), func_2(global0[_wgslsmith_index_u32(18934u, 10u)], global0[_wgslsmith_index_u32(~0u, 10u)])), min(-2147483647i, 65629i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(min(-u_input.d, ~u_input.d), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 32u)], -361f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)])), Struct_2(Struct_1(vec4<u32>(1u, 52094u, 47484u, u_input.a), 58797u), false), Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a, u_input.a, 76979u), u_input.b), true)).x, 20331i), global2.a.yzw);
    let var_1 = Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, min(abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(0u, 15742u, 4294967295u))), u_input.a), u_input.a), global2.c);
    let var_2 = var_1.a;
    let var_3 = Struct_2(var_2, true);
    let var_4 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_add_vec2_i32(global2.a.yw & vec2<i32>(-6305i, u_input.d), global2.a.yz)) >> (~(~var_1.a.a.yy) % vec2<u32>(32u)), -(~vec2<i32>(-global2.a.x, -global2.a.x)));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_1(), 32u)])) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.c, u_input.c, true) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1193u, 26187u), u_input.c) % vec2<u32>(32u)), min(vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c))), 32u)]), _wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(select(global2.a.wz, global2.a.xy, global2.c), global2.a.ww), vec2<i32>(func_3(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 32u)], -635f), Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u), 0u), true), Struct_2(Struct_1(vec4<u32>(u_input.c.x, 50134u, 4294967295u, 4974u), 8966u), global2.c)).x, ~(-2147483647i)), vec2<i32>(select(-20876i, -11612i, true) ^ (i32(-1i) * -20102i), _wgslsmith_sub_i32(i32(-1i) * -1i, global2.b ^ 38888i))));
}

