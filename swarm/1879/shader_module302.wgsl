struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = ~(~(~_wgslsmith_sub_u32(reverseBits(1u), abs(36424u))));
    var var_1 = vec4<f32>(1500f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.a.a.x, -1435f, false)))))), arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.a.x, -862f, global0.c)), _wgslsmith_div_f32(-1000f, global0.a.a.x)))));
    global0 = arg_0;
    var var_2 = _wgslsmith_add_u32(~(~_wgslsmith_sub_u32(firstTrailingBit(39849u), ~6899u)), countOneBits(46292u));
    var var_3 = vec4<bool>(global0.b, !any(!(!vec2<bool>(global0.b, global0.b))), false, true);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1024f - _wgslsmith_f_op_f32(f32(-1f) * -2015f)), 105f, 1149f, _wgslsmith_f_op_f32(exp2(global0.a.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.a.x, 650f, var_1.x, global0.a.a.x), vec4<f32>(var_1.x, var_1.x, -638f, 230f), global0.b))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(983f, -1000f, arg_0.a.a.x, -1000f), vec4<f32>(var_1.x, global0.a.a.x, global0.a.a.x, arg_0.a.a.x), var_3.x))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<u32> {
    var var_0 = -183f;
    var var_1 = -1867f;
    var_0 = arg_1.c.x;
    let var_2 = _wgslsmith_f_op_f32(-811f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.c.x)), _wgslsmith_f_op_f32(sign(3122f))))));
    var_0 = -155f;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(45430u, arg_1.a, _wgslsmith_mod_u32(1u, 6036u) | arg_2.x), arg_2.x, _wgslsmith_div_u32(abs(arg_2.x), arg_1.a)), _wgslsmith_clamp_vec3_u32(min(min(vec3<u32>(8443u, arg_2.x, 31931u), ~vec3<u32>(7170u, 4294967295u, 0u)), abs(firstLeadingBit(vec3<u32>(1u, 56524u, arg_1.a)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(43342u, arg_2.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_2.x, arg_1.a), vec3<u32>(arg_2.x, 0u, arg_2.x))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a, arg_2.x, arg_2.x), firstTrailingBit(vec3<u32>(1u, 55181u, arg_2.x)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, 0u, arg_1.a), vec3<u32>(1u, arg_1.a, 0u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x), global0.a.a.x)), Struct_3(reverseBits(1u), global0.a.a.yx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(global0.a, false, false, -2147483647i, global0.e))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, 644f, -2118f, -1588f)))), vec2<u32>(~abs(0u), 0u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(vec3<u32>(73730u, 1u, 45u))));
    var var_1 = vec3<i32>(select(countOneBits(_wgslsmith_add_i32(-27361i, -1428i)), _wgslsmith_add_i32(-22318i, 1i), any(select(vec2<bool>(global0.c, global0.c), select(vec2<bool>(global0.c, true), vec2<bool>(true, global0.b), vec2<bool>(false, false)), !global0.c))), ~(-(~global0.d ^ u_input.a)), -(u_input.a | u_input.a));
    let var_2 = true;
    global0 = Struct_4(global0.a, var_2, !var_2, -13692i, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.e, arg_0.x)), arg_0)));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(14112u, 4294967295u, 4294967295u, 2157u), vec4<u32>(16240u, 0u, 4294967295u, 49337u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_u32(67248u, 1u), ~0u) ^ vec3<u32>(1u, 1u, 1u);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) + _wgslsmith_f_op_f32(-global0.a.a.x)), 1751f);
}

fn func_5(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global0.a.a))), false & !((2371i >> (1u % 32u)) == countOneBits(u_input.a)), true, _wgslsmith_mod_i32(~global0.d, 1i) & global0.e, u_input.a);
    let var_0 = Struct_1(!global0.c);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1668f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.a.x + global0.a.a.x))), arg_0.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.a.a)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(step(arg_0.x, -720f))))));
    var var_3 = ~firstTrailingBit(-vec3<i32>(u_input.a, -294i, global0.d) | -(~vec3<i32>(-14358i, u_input.a, -2147483647i)));
    return ~(~select(vec2<u32>(0u, 65911u), ~vec2<u32>(58627u, 88184u), !vec2<bool>(var_0.a, global0.b)) >> (~(vec2<u32>(1u, 1u) >> (firstLeadingBit(vec2<u32>(42067u, 2860u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = select(!select(vec2<bool>(false, all(vec4<bool>(true, true, true, global0.b))), vec2<bool>(true, global0.c), true), vec2<bool>(select(false && global0.c, u_input.a <= -1i, global0.c) & false, all(vec2<bool>(global0.b, false)) & false), true);
    var var_1 = ~(-12903i);
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(2901u, _wgslsmith_mod_u32(min(19260u, 20020u), 1u)), min(~_wgslsmith_div_vec2_u32(vec2<u32>(7869u, 60021u), vec2<u32>(83627u, 1u)), func_5(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(global0.e, -5914i), u_input.a))))), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44948u, 0u, 4294967295u, 4294967295u), ~vec4<u32>(76234u, 1u, 34580u, 115000u)), 11269u)));
    var var_3 = Struct_1(global0.b);
    var_2 = select(abs(firstTrailingBit(vec2<u32>(var_2.x, ~var_2.x))), vec2<u32>(24294u, ~abs(42181u) & ~var_2.x), vec2<bool>(global0.a.a.x < 1000f, !(!all(vec3<bool>(global0.c, false, false)))));
    return Struct_2(global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var_0 = func_1();
    let var_1 = _wgslsmith_mult_i32(0i, -_wgslsmith_clamp_i32(min(global0.e, 48793i), _wgslsmith_mult_i32(-1i, 2147483647i), global0.d << (0u % 32u)) & countOneBits(_wgslsmith_mod_i32(~u_input.a, reverseBits(-9358i))));
    var_0 = func_1();
    global0 = Struct_4(global0.a, firstTrailingBit(1u) >= ~12280u, all(!vec2<bool>(false | global0.c, true)), -20972i, 61784i);
    global0 = Struct_4(Struct_2(vec3<f32>(877f, _wgslsmith_div_f32(global0.a.a.x, -2670f), 152f)), global0.b, any(!vec4<bool>(global0.c, global0.b, 1i != u_input.a, !global0.c)), ~u_input.a << (_wgslsmith_add_u32(~1u, 0u) % 32u), global0.e);
    var var_2 = i32(-1i) * -((-u_input.a & -32799i) | global0.d);
    var_2 = 46696i;
    global0 = Struct_4(func_1(), all(!(!vec3<bool>(false, global0.c, global0.b))), select(global0.c, select(global0.b, true, global0.c), any(vec3<bool>(true, global0.c, global0.b))), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1, 0i) | -_wgslsmith_add_vec2_i32(vec2<i32>(global0.d, var_1), vec2<i32>(global0.e, -16802i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-34611i, var_1), -max(vec2<i32>(var_1, -12322i), vec2<i32>(1i, 1i)))), _wgslsmith_clamp_i32(-27114i, 14765i, _wgslsmith_mod_i32(11793i, 10040i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(global0.a, true, any(vec3<bool>(true, global0.b, global0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -15963i, global0.e), vec3<i32>(-25800i, global0.e, global0.e)), -2332i))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(12367i, 33923i), u_input.a)).x + -502f))), global0.a.a.zx, 0u);
}

