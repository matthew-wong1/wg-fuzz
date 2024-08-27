struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: vec2<i32>;

var<private> global2: bool = false;

var<private> global3: array<vec3<u32>, 2>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    var var_0 = !(!(!vec3<bool>(true, all(vec2<bool>(false, true)), true)));
    global0 = array<vec2<u32>, 21>();
    let var_1 = select(vec4<bool>(false, true, var_0.x, min(u_input.d, _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.d, 2u)], vec3<u32>(57004u, 0u, u_input.d))) != _wgslsmith_clamp_u32(45564u, 1u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.d, 21u)], vec2<u32>(32069u, u_input.d)))), !select(vec4<bool>(false | var_0.x, false, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), any(var_0.xz)), vec4<bool>(u_input.d != 1284u, var_0.x, false, false), select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, false, false, var_0.x))), var_0.x);
    var var_2 = abs(-u_input.c);
    var_2 = ~global1.x;
    return all(var_1);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_1 {
    global2 = func_3();
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(1i, 3726i)) | -(arg_1.xz << (global0[_wgslsmith_index_u32(1430u, 21u)] % vec2<u32>(32u))), u_input.b, max(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(-2147483647i, 12053i)), vec2<i32>(0i, u_input.a)), vec2<i32>(~global1.x, abs(0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1174f + -1474f) - _wgslsmith_div_f32(132f, arg_0.x)) + _wgslsmith_f_op_f32(max(-338f, -548f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(999f * arg_0.x))), true);
    global2 = all(vec3<bool>(var_0.d, all(select(vec4<bool>(var_0.d, true, false, false), vec4<bool>(var_0.d, var_0.d, var_0.d, false), !vec4<bool>(var_0.d, var_0.d, true, var_0.d))), -241f < var_0.b));
    global1 = vec2<i32>(countOneBits(-2147483647i), global1.x);
    var var_1 = firstTrailingBit(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d));
    return Struct_1(u_input.b, arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -695f) + -980f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), false)), _wgslsmith_div_u32(u_input.d, max(15554u, ~3033u)) < ~reverseBits(~3609u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec2<u32>, 21>();
    global1 = -func_2(vec2<f32>(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, arg_0.b) + vec2<f32>(arg_0.b, -1149f)), vec3<i32>(arg_0.a.x, var_0.a.x, 34877i)).b, _wgslsmith_f_op_f32(ceil(arg_1.c))), ~(-select(vec3<i32>(63554i, arg_1.a.x, 144i), vec3<i32>(global1.x, 10854i, 0i), var_0.d))).a;
    global2 = ~(~(~3413u)) >= u_input.d;
    let var_1 = arg_1;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_1.b, 522f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.b, arg_0.b), vec2<f32>(arg_1.b, 228f)))))), abs(max(vec3<i32>(2147483647i, var_0.a.x, arg_0.a.x), vec3<i32>(var_1.a.x, global1.x, u_input.c))) << (global3[_wgslsmith_index_u32(u_input.d, 2u)] % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), arg_2.c)) * arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -761f)) - func_2(_wgslsmith_f_op_vec2_f32(floor(arg_1.xw)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, 1i, u_input.c), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_0.a.x))).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.c)))), -2496f)));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(291f * var_0.c))), arg_2.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.xz))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1345f, var_1.x), _wgslsmith_f_op_f32(-319f * -1535f))))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~arg_2.a, vec2<i32>(arg_2.a.x, global1.x) ^ vec2<i32>(1i, 107868i)), u_input.b) | max(-vec2<i32>(u_input.c, -50445i), vec2<i32>(arg_2.a.x, _wgslsmith_sub_i32(var_0.a.x, arg_0.a.x))), arg_1.x, -714f, any(!(!(!vec4<bool>(true, false, arg_2.d, false)))));
    global2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(-vec2<i32>(-27472i, -u_input.b.x), _wgslsmith_f_op_f32(func_5(func_4(func_2(vec2<f32>(-558f, -1616f), vec3<i32>(u_input.b.x, -19366i, 1i)), Struct_1(-u_input.b, _wgslsmith_f_op_f32(round(-611f)), _wgslsmith_f_op_f32(abs(-834f)), true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(454f, 1246f, 206f, -599f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, 1000f, 221f, -2544f) + vec4<f32>(-1762f, -1004f, -1000f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-968f, -316f, -762f, -382f)))), func_4(Struct_1(min(vec2<i32>(global1.x, 29994i), u_input.b), -301f, _wgslsmith_f_op_f32(round(191f)), any(vec4<bool>(true, true, true, false))), func_4(Struct_1(vec2<i32>(-1i, global1.x), 1000f, -339f, true), Struct_1(u_input.b, 422f, 252f, false), any(vec2<bool>(false, true))), true))), 789f, true | !(!select(false, true, false)));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, ~abs(firstTrailingBit(-1i))), -27654i, _wgslsmith_div_i32(countOneBits(max(func_2(vec2<f32>(var_0.c, -474f), vec3<i32>(-20805i, 20923i, var_0.a.x)).a.x, var_0.a.x & u_input.c)), _wgslsmith_mod_i32(~global1.x, 2147483647i) << (~_wgslsmith_sub_u32(1614u, u_input.d) % 32u)));
    let var_2 = true;
    global1 = _wgslsmith_add_vec2_i32(~(reverseBits(min(u_input.b, var_0.a)) >> (firstTrailingBit(vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u))), -func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1571f, 1889f) + vec2<f32>(var_0.b, 2716f))), min(~var_1, vec3<i32>(2147483647i, var_0.a.x, 2147483647i))).a);
    var var_3 = Struct_1(-_wgslsmith_sub_vec2_i32(var_0.a, _wgslsmith_mult_vec2_i32(-var_0.a, ~vec2<i32>(global1.x, var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b + -386f), _wgslsmith_f_op_f32(var_0.c - var_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f + -264f))) * var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-811f)) - -1638f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -396f)))), var_2 & all(vec2<bool>(func_3(), var_0.d)));
    return select(select(!select(select(vec2<bool>(var_3.d, true), vec2<bool>(var_2, var_3.d), var_2), select(vec2<bool>(true, true), vec2<bool>(true, false), var_2), false), vec2<bool>(!any(vec4<bool>(var_2, true, var_3.d, true)), var_0.d), vec2<bool>(var_0.a.x <= var_3.a.x, !var_3.d & func_3())), !(!select(vec2<bool>(true, var_0.d), select(vec2<bool>(var_2, var_3.d), vec2<bool>(true, var_3.d), var_0.d), vec2<bool>(false, var_3.d))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1231f) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-711f, -260f), _wgslsmith_f_op_f32(select(770f, 149f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -720f), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1192f + -1595f)))) * _wgslsmith_f_op_f32(select(337f, _wgslsmith_f_op_f32(1169f + -386f), true))), any(!func_1(~58235u)));
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0.a.x, -60645i), min(var_0.a << (vec2<u32>(u_input.d, 24268u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, 0i), vec2<i32>(2147483647i, global1.x)))) & -var_0.a, -1779f, -692f, select(false, any(select(select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true)), !vec2<bool>(false, var_0.d), func_1(u_input.d).x)), var_0.d));
    global0 = array<vec2<u32>, 21>();
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 86409u, 1u, abs(_wgslsmith_sub_u32(1034u, u_input.d) | u_input.d)), ~select(~(~vec4<u32>(1u, 79558u, u_input.d, 65551u)), vec4<u32>(70057u, 77148u, 7698u, 4294967295u) & ~vec4<u32>(86457u, u_input.d, 2911u, 0u), select(select(vec4<bool>(var_0.d, var_0.d, false, var_0.d), vec4<bool>(false, var_1.d, false, true), vec4<bool>(var_1.d, var_1.d, true, true)), select(vec4<bool>(var_0.d, true, true, true), vec4<bool>(false, var_0.d, true, var_1.d), vec4<bool>(false, var_0.d, true, true)), vec4<bool>(false, true, true, false))));
    var var_3 = select(~firstLeadingBit(~vec4<u32>(u_input.d, 10323u, u_input.d, 1u)) ^ ~abs(abs(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d))), vec4<u32>(countOneBits(~_wgslsmith_sub_u32(u_input.d, u_input.d)), u_input.d, abs(~max(u_input.d, u_input.d)), ~1u), !select(vec4<bool>(var_1.b != var_0.b, false, true, func_1(0u).x), !vec4<bool>(var_1.d, true, var_1.d, var_0.d), vec4<bool>(!var_1.d, var_0.d, any(vec2<bool>(var_0.d, var_1.d)), var_1.a.x != u_input.a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_0.b, var_0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, 144f, _wgslsmith_f_op_f32(626f * var_4.x), _wgslsmith_f_op_f32(floor(var_4.x))))), var_3.x, 468f);
}

